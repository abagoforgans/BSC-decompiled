contract main {




// =====================  Runtime code  =====================


const sub_66941984(?) = 0x779b9d7b1cefd23059ce3e2b194efb3183a6685dd830e8cbb723b0cbeb982b28

const sub_8a7056dc(?) = 4100095

const GAME_ADMIN = 0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab

const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of struct roleAdmin;
uint8 paused;
address sub_dddd1c12Address;
address sub_f9817570Address;
address stor204;
mapping of uint256 stor205;
mapping of uint256 sub_39db7b76;
mapping of uint256 sub_526ed434;
mapping of uint256 rate;
uint8 stor209;
uint256 stor209; offset 8
uint256 sub_862a4d47;
mapping of uint256 sub_ad45d318;
mapping of uint256 sub_8eff008f;
uint8 stor212;
uint256 stor212; offset 8
uint256 sub_07632c39;
uint8 stor213;
uint256 stor213; offset 8
uint256 sub_9d5a3f7c;
uint8 stor214;
uint256 stor214; offset 8
uint256 sub_86d3e217;
uint8 stor215;
uint256 stor215; offset 8
uint256 maxRate;
uint256 mintFee;
uint256 stor217;
address sub_e1fff237Address;
uint8 isRefund; offset 160
uint8 sub_044be762; offset 168
uint8 sub_2ff9ec3b; offset 176
uint8 sub_35b300c5; offset 184
uint128 stor219; offset 184
uint128 stor219; offset 176
uint128 stor219; offset 168
uint128 stor219; offset 160
address stor219;
uint256 stor1BEC;
uint256 stor1195;
uint256 stor2079;
uint256 stor2518;
uint256 stor2C64;
uint256 stor34C6;
uint256 stor4BEC;
uint256 stor59AB;
uint256 stor6779;
uint256 stor77F2;
uint256 stor790D;
uint256 stor7E7D;
uint256 stor92D3;
uint256 stor93C9;
uint256 storB740;
uint256 storD3F5;
uint256 storDB00;

function sub_044be762(?) payable {
    return bool(sub_044be762)
}

function sub_07632c39(?) payable {
    return sub_07632c39
}

function mintFee() payable {
    return mintFee
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_2ff9ec3b(?) payable {
    return bool(sub_2ff9ec3b)
}

function sub_35b300c5(?) payable {
    return bool(sub_35b300c5)
}

function sub_39db7b76(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 6
    return sub_39db7b76[arg1]
}

function rate(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 6
    return rate[arg1]
}

function sub_526ed434(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 6
    return sub_526ed434[arg1]
}

function paused() payable {
    return bool(paused)
}

function sub_862a4d47(?) payable {
    return sub_862a4d47
}

function sub_86d3e217(?) payable {
    return sub_86d3e217
}

function sub_8eff008f(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < 6
    return sub_8eff008f[arg1][arg2]
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_9d5a3f7c(?) payable {
    return sub_9d5a3f7c
}

function sub_ad45d318(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 6
    return sub_ad45d318[arg1]
}

function isRefund() payable {
    return bool(isRefund)
}

function sub_dddd1c12(?) payable {
    return sub_dddd1c12Address
}

function sub_e1fff237(?) payable {
    return sub_e1fff237Address
}

function maxRate() payable {
    return maxRate
}

function sub_f9817570(?) payable {
    return sub_f9817570Address
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

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0][address(msg.sender)].field_0:
        sub_dddd1c12Address = arg1
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function setSpaceship(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0][address(msg.sender)].field_0:
        sub_f9817570Address = arg1
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function setGameWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0][address(msg.sender)].field_0:
        sub_e1fff237Address = arg1
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function setRandom(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0][address(msg.sender)].field_0:
        address(stor219.field_0) = arg1
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function sub_ad80e451(?) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0:
        stor217 = arg1
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
        s = 0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab
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
}

function setMintFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0:
        mintFee = arg1
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
        s = 0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function setRefund(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0][address(msg.sender)].field_0:
        Mask(96, 0, stor219.field_160) = Mask(96, 0, arg1)
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function sub_02da0ac7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if roleAdmin[0][address(msg.sender)].field_0:
        Mask(72, 0, stor219.field_184) = Mask(72, 0, bool(arg1))
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function sub_5ad523c7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if roleAdmin[0][address(msg.sender)].field_0:
        Mask(88, 0, stor219.field_168) = Mask(88, 0, bool(arg1))
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function sub_9e13da36(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if roleAdmin[0][address(msg.sender)].field_0:
        Mask(80, 0, stor219.field_176) = Mask(80, 0, bool(arg1))
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function sub_5217382c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < 6
    if roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0:
        if arg1 > 5:
            revert with 0, 33
        sub_ad45d318[arg1] = arg2
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
        s = 0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab
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
}

function setMaxRate(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0:
        uint8(stor215.field_0) = arg1
        Mask(248, 0, stor215.field_8) = 0
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
        s = 0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab
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
}

function setMaxClass(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0:
        uint8(stor212.field_0) = arg1
        Mask(248, 0, stor212.field_8) = 0
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
        s = 0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab
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
}

function setMaxRarity(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0:
        uint8(stor214.field_0) = arg1
        Mask(248, 0, stor214.field_8) = 0
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
        s = 0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab
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
}

function setMaxElement(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0:
        uint8(stor213.field_0) = arg1
        Mask(248, 0, stor213.field_8) = 0
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
        s = 0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab
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
}

function sub_742f3aa6(?) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0:
        if arg1 > 5:
            revert with 0, 33
        if sub_526ed434[arg1] > -2:
            revert with 0, 17
        sub_526ed434[arg1]++
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
        s = 0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab
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
}

function resetLimitByMonth() payable {
    if not roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0:
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
            s = 0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab
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
    sub_8eff008f[uint256(stor209.field_0)][0] = stor2079
    sub_8eff008f[uint256(stor209.field_0)][1] = storB740
    sub_8eff008f[uint256(stor209.field_0)][2] = stor2518
    sub_8eff008f[uint256(stor209.field_0)][3] = stor1BEC
    sub_8eff008f[uint256(stor209.field_0)][4] = stor92D3
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function setDateTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
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
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
    stor204 = arg1
    require ext_code.size(arg1)
    staticcall arg1.getMonth(uint256 arg1) with:
            gas gas_remaining wei
           args block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    uint8(stor209.field_0) = ext_call.return_data[31 len 1]
    Mask(248, 0, stor209.field_8) = 0
}

function withdrawAll(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0x779b9d7b1cefd23059ce3e2b194efb3183a6685dd830e8cbb723b0cbeb982b28][address(msg.sender)].field_0:
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
            s = 0x779b9d7b1cefd23059ce3e2b194efb3183a6685dd830e8cbb723b0cbeb982b28
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
    require ext_code.size(sub_dddd1c12Address)
    staticcall sub_dddd1c12Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_dddd1c12Address)
    call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not roleAdmin[0x779b9d7b1cefd23059ce3e2b194efb3183a6685dd830e8cbb723b0cbeb982b28][address(msg.sender)].field_0:
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
            s = 0x779b9d7b1cefd23059ce3e2b194efb3183a6685dd830e8cbb723b0cbeb982b28
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
    require ext_code.size(sub_dddd1c12Address)
    staticcall sub_dddd1c12Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'IA'
    require ext_code.size(sub_dddd1c12Address)
    call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function initialize() payable {
    if uint8(stor0.field_8):
        paused = 0
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            paused = 0
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                paused = 0
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                uint8(stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    paused = 0
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        paused = 0
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            paused = 0
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            paused = 0
                            uint8(stor0.field_8) = 0
    if not roleAdmin[0][address(msg.sender)].field_0:
        roleAdmin[0][address(msg.sender)].field_0 = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function setSpec() payable {
    if not roleAdmin[0][address(msg.sender)].field_0:
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
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
    storD3F5 = 3999999
    stor2C64 = 79999
    stor7E7D = 16999
    stor59AB = 2999
    stor1195 = 99
    maxRate = 5
    stor790D = 48800
    stor77F2 = 20000
    stor6779 = 1000
    stor34C6 = 200
    stor93C9 = 0
    idx = 0
    s = 100000
    while idx < maxRate:
        if idx > 5:
            revert with 0, 33
        mem[0] = idx
        mem[32] = 208
        if s < rate[idx]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s - rate[idx]
        continue 
    stor4BEC = (100000 * maxRate) + (100000 * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (s * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + 100000
    sub_ad45d318[0] = 333333
    sub_ad45d318[1] = 6667
    sub_ad45d318[2] = 1417
    sub_ad45d318[3] = 250
    sub_ad45d318[4] = 8
    sub_07632c39 = 0
    sub_9d5a3f7c = 3
    sub_86d3e217 = 3
    sub_862a4d47 = 1
    mintFee = 500 * 10^18
    stor217 = 800000
}

function sub_87a688ee(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < 6
    if not roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0:
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
            s = 0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab
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
    if arg1 > 5:
        revert with 0, 33
    if arg1 <= 0:
        revert with 0, 'NSR0'
    if arg1 > maxRate:
        revert with 0, 'NOMR'
    idx = maxRate
    s = 0
    while idx:
        if idx == arg1:
            if s > !arg2:
                revert with 0, 17
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = s + arg2
            continue 
        if idx > 5:
            revert with 0, 33
        mem[0] = idx
        mem[32] = 208
        if s > !rate[idx]:
            revert with 0, 17
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = s + rate[idx]
        continue 
    if s > 100000:
        revert with 0, 'OVER100P'
    if arg1 > 5:
        revert with 0, 33
    rate[arg1] = arg2
    idx = 0
    s = 100000
    while idx < maxRate:
        if idx > 5:
            revert with 0, 33
        mem[0] = idx
        mem[32] = 208
        if s < rate[idx]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s - rate[idx]
        continue 
    stor4BEC = (100000 * maxRate) + (100000 * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (100000 * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + (s * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate * maxRate) + 100000
}

function createSpaceship(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0:
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
            s = 0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab
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
    if paused:
        revert with 0, 'Pausable: paused'
    if gas_remaining <= stor217:
        revert with 0, 'MC:GL0'
    require ext_code.size(stor204)
    staticcall stor204.getMonth(uint256 arg1) with:
            gas gas_remaining wei
           args block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if ext_call.return_data[31 len 1] == sub_862a4d47:
        require ext_code.size(sub_f9817570Address)
        staticcall sub_f9817570Address.totalSupply() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 4100095:
            revert with 0, 'FT'
        require ext_code.size(address(stor219.field_0))
        call address(stor219.field_0).0xe8bbd87 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        storDB00++
        if sha3(ext_call.return_data[0], storDB00 + 1) % 100001 > -1:
            revert with 0, 17
        if 1 > !maxRate:
            revert with 0, 17
        idx = maxRate + 1
        s = 0
        while idx:
            if idx < 1:
                revert with 0, 17
            if idx - 1 > 5:
                revert with 0, 33
            mem[0] = idx - 1
            mem[32] = 208
            if s > !rate[idx - 1]:
                revert with 0, 17
            if sha3(ext_call.return_data[0], storDB00 + 1) % 100001 > s + rate[idx - 1]:
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = s + rate[idx - 1]
                continue 
            if idx - 1 == maxRate:
                if maxRate == maxRate:
                    if not isRefund:
                        return -1
                    if sub_044be762:
                        if sub_2ff9ec3b:
                            require ext_code.size(sub_e1fff237Address)
                            if not sub_35b300c5:
                                call sub_e1fff237Address.0xebfdcf99 with:
                                     gas gas_remaining wei
                                    args address(arg1), mintFee
                            else:
                                call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), mintFee
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            return -1
                        mem[(4 * ceil32(return_data.size)) + 196] = arg1
                        mem[(4 * ceil32(return_data.size)) + 228] = mintFee
                        require ext_code.size(sub_dddd1c12Address)
                        call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), mintFee
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        return -1, mem[(6 * ceil32(return_data.size)) + 224 len 9 * ceil32(return_data.size)]
                    storDB00++
                    if sha3(ext_call.return_data[0], storDB00 + 1) % 11 > -86:
                        revert with 0, 17
                    if mintFee and (sha3(ext_call.return_data[0], storDB00 + 1) % 11) + 85 > -1 / mintFee:
                        revert with 0, 17
                    if sub_2ff9ec3b:
                        require ext_code.size(sub_e1fff237Address)
                        if not sub_35b300c5:
                            call sub_e1fff237Address.0xebfdcf99 with:
                                 gas gas_remaining wei
                                args address(arg1), (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                        else:
                            call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        return -1
                    mem[(4 * ceil32(return_data.size)) + 292] = arg1
                    mem[(4 * ceil32(return_data.size)) + 324] = (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                    require ext_code.size(sub_dddd1c12Address)
                    call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    return -1, mem[(6 * ceil32(return_data.size)) + 320 len 9 * ceil32(return_data.size)]
                storDB00++
                if sub_07632c39 < 0:
                    revert with 0, 17
                if 1 > !sub_07632c39:
                    revert with 0, 17
                if not sub_07632c39 + 1:
                    revert with 0, 18
                if sha3(ext_call.return_data[0], storDB00 + 1) % sub_07632c39 + 1 > -1:
                    revert with 0, 17
                storDB00++
                if sub_9d5a3f7c < 0:
                    revert with 0, 17
                if 1 > !sub_9d5a3f7c:
                    revert with 0, 17
                if not sub_9d5a3f7c + 1:
                    revert with 0, 18
                if sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1 > -1:
                    revert with 0, 17
                if maxRate > 5:
                    revert with 0, 33
                if sub_8eff008f[uint256(stor209.field_0)][uint256(stor215.field_0)] < 1:
                    revert with 0, 17
                sub_8eff008f[uint256(stor209.field_0)][uint256(stor215.field_0)]--
                if maxRate > 5:
                    revert with 0, 33
                if sub_526ed434[uint256(stor215.field_0)] > -2:
                    revert with 0, 17
                sub_526ed434[uint256(stor215.field_0)]++
                require ext_code.size(sub_f9817570Address)
                if 2 == sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1:
                    call sub_f9817570Address.0x4bf5a97c with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0], maxRate, sha3(ext_call.return_data[0], storDB00 + 1) % sub_07632c39 + 1, sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1, ext_call.return_data[0], 0
                else:
                    call sub_f9817570Address.0x4bf5a97c with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0], maxRate, 0, sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1, ext_call.return_data[0], 0
            else:
                if idx - 1 > 5:
                    revert with 0, 33
                mem[0] = idx - 1
                mem[32] = sha3(sub_862a4d47, 211)
                if sub_526ed434[idx - 1] >= sub_39db7b76[idx - 1]:
                    if idx - 1 <= 0:
                        revert with 0, 'AMOR'
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = s + rate[idx - 1]
                    continue 
                if 0 == sub_8eff008f[uint256(stor209.field_0)][idx - 1]:
                    if idx - 1 <= 0:
                        revert with 0, 'AMOM'
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = s + rate[idx - 1]
                    continue 
                if idx - 1 == maxRate:
                    if not isRefund:
                        return -1
                    if sub_044be762:
                        if sub_2ff9ec3b:
                            require ext_code.size(sub_e1fff237Address)
                            if not sub_35b300c5:
                                call sub_e1fff237Address.0xebfdcf99 with:
                                     gas gas_remaining wei
                                    args address(arg1), mintFee
                            else:
                                call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), mintFee
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            return -1
                        mem[(4 * ceil32(return_data.size)) + 196] = arg1
                        mem[(4 * ceil32(return_data.size)) + 228] = mintFee
                        require ext_code.size(sub_dddd1c12Address)
                        call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), mintFee
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        return -1, mem[(6 * ceil32(return_data.size)) + 224 len 9 * ceil32(return_data.size)]
                    storDB00++
                    if sha3(ext_call.return_data[0], storDB00 + 1) % 11 > -86:
                        revert with 0, 17
                    if mintFee and (sha3(ext_call.return_data[0], storDB00 + 1) % 11) + 85 > -1 / mintFee:
                        revert with 0, 17
                    if sub_2ff9ec3b:
                        require ext_code.size(sub_e1fff237Address)
                        if not sub_35b300c5:
                            call sub_e1fff237Address.0xebfdcf99 with:
                                 gas gas_remaining wei
                                args address(arg1), (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                        else:
                            call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        return -1
                    mem[(4 * ceil32(return_data.size)) + 292] = arg1
                    mem[(4 * ceil32(return_data.size)) + 324] = (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                    require ext_code.size(sub_dddd1c12Address)
                    call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    return -1, mem[(6 * ceil32(return_data.size)) + 320 len 9 * ceil32(return_data.size)]
                storDB00++
                if sub_07632c39 < 0:
                    revert with 0, 17
                if 1 > !sub_07632c39:
                    revert with 0, 17
                if not sub_07632c39 + 1:
                    revert with 0, 18
                if sha3(ext_call.return_data[0], storDB00 + 1) % sub_07632c39 + 1 > -1:
                    revert with 0, 17
                storDB00++
                if sub_9d5a3f7c < 0:
                    revert with 0, 17
                if 1 > !sub_9d5a3f7c:
                    revert with 0, 17
                if not sub_9d5a3f7c + 1:
                    revert with 0, 18
                if sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1 > -1:
                    revert with 0, 17
                if idx - 1 > 5:
                    revert with 0, 33
                if sub_8eff008f[uint256(stor209.field_0)][idx - 1] < 1:
                    revert with 0, 17
                sub_8eff008f[uint256(stor209.field_0)][idx - 1]--
                if idx - 1 > 5:
                    revert with 0, 33
                if sub_526ed434[idx - 1] > -2:
                    revert with 0, 17
                sub_526ed434[idx - 1]++
                require ext_code.size(sub_f9817570Address)
                if 2 == sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1:
                    call sub_f9817570Address.0x4bf5a97c with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0], idx - 1, sha3(ext_call.return_data[0], storDB00 + 1) % sub_07632c39 + 1, sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1, ext_call.return_data[0], 0
                else:
                    call sub_f9817570Address.0x4bf5a97c with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0], idx - 1, 0, sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1, ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            return ext_call.return_data[0]
        if maxRate == maxRate:
            if not isRefund:
                return -1
            if sub_044be762:
                if sub_2ff9ec3b:
                    require ext_code.size(sub_e1fff237Address)
                    if not sub_35b300c5:
                        call sub_e1fff237Address.0xebfdcf99 with:
                             gas gas_remaining wei
                            args address(arg1), mintFee
                    else:
                        call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), mintFee
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    return -1
                mem[(4 * ceil32(return_data.size)) + 196] = arg1
                mem[(4 * ceil32(return_data.size)) + 228] = mintFee
                require ext_code.size(sub_dddd1c12Address)
                call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), mintFee
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                return -1, mem[(6 * ceil32(return_data.size)) + 224 len 9 * ceil32(return_data.size)]
            storDB00++
            if sha3(ext_call.return_data[0], storDB00 + 1) % 11 > -86:
                revert with 0, 17
            if mintFee and (sha3(ext_call.return_data[0], storDB00 + 1) % 11) + 85 > -1 / mintFee:
                revert with 0, 17
            if sub_2ff9ec3b:
                require ext_code.size(sub_e1fff237Address)
                if not sub_35b300c5:
                    call sub_e1fff237Address.0xebfdcf99 with:
                         gas gas_remaining wei
                        args address(arg1), (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                else:
                    call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                return -1
            mem[(4 * ceil32(return_data.size)) + 292] = arg1
            mem[(4 * ceil32(return_data.size)) + 324] = (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
            require ext_code.size(sub_dddd1c12Address)
            call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            return -1, mem[(6 * ceil32(return_data.size)) + 320 len 9 * ceil32(return_data.size)]
    else:
        require ext_code.size(stor204)
        staticcall stor204.getMonth(uint256 arg1) with:
                gas gas_remaining wei
               args block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        uint8(stor209.field_0) = ext_call.return_data[31 len 1]
        Mask(248, 0, stor209.field_8) = 0
        sub_8eff008f[uint256(stor209.field_0)][0] = stor2079
        sub_8eff008f[uint256(stor209.field_0)][1] = storB740
        sub_8eff008f[uint256(stor209.field_0)][2] = stor2518
        sub_8eff008f[uint256(stor209.field_0)][3] = stor1BEC
        sub_8eff008f[uint256(stor209.field_0)][4] = stor92D3
        require ext_code.size(sub_f9817570Address)
        staticcall sub_f9817570Address.totalSupply() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 4100095:
            revert with 0, 'FT'
        require ext_code.size(address(stor219.field_0))
        call address(stor219.field_0).0xe8bbd87 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        storDB00++
        if sha3(ext_call.return_data[0], storDB00 + 1) % 100001 > -1:
            revert with 0, 17
        if 1 > !maxRate:
            revert with 0, 17
        idx = maxRate + 1
        s = 0
        while idx:
            if idx < 1:
                revert with 0, 17
            if idx - 1 > 5:
                revert with 0, 33
            mem[0] = idx - 1
            mem[32] = 208
            if s > !rate[idx - 1]:
                revert with 0, 17
            if sha3(ext_call.return_data[0], storDB00 + 1) % 100001 > s + rate[idx - 1]:
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = s + rate[idx - 1]
                continue 
            if idx - 1 == maxRate:
                if maxRate == maxRate:
                    if isRefund:
                        if sub_044be762:
                            if sub_2ff9ec3b:
                                require ext_code.size(sub_e1fff237Address)
                                if not sub_35b300c5:
                                    call sub_e1fff237Address.0xebfdcf99 with:
                                         gas gas_remaining wei
                                        args address(arg1), mintFee
                                else:
                                    call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), mintFee
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(sub_dddd1c12Address)
                                call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), mintFee
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            storDB00++
                            if sha3(ext_call.return_data[0], storDB00 + 1) % 11 > -86:
                                revert with 0, 17
                            if mintFee and (sha3(ext_call.return_data[0], storDB00 + 1) % 11) + 85 > -1 / mintFee:
                                revert with 0, 17
                            if sub_2ff9ec3b:
                                require ext_code.size(sub_e1fff237Address)
                                if not sub_35b300c5:
                                    call sub_e1fff237Address.0xebfdcf99 with:
                                         gas gas_remaining wei
                                        args address(arg1), (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                                else:
                                    call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(sub_dddd1c12Address)
                                call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    return -1
                storDB00++
                if sub_07632c39 < 0:
                    revert with 0, 17
                if 1 > !sub_07632c39:
                    revert with 0, 17
                if not sub_07632c39 + 1:
                    revert with 0, 18
                if sha3(ext_call.return_data[0], storDB00 + 1) % sub_07632c39 + 1 > -1:
                    revert with 0, 17
                storDB00++
                if sub_9d5a3f7c < 0:
                    revert with 0, 17
                if 1 > !sub_9d5a3f7c:
                    revert with 0, 17
                if not sub_9d5a3f7c + 1:
                    revert with 0, 18
                if sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1 > -1:
                    revert with 0, 17
                if maxRate > 5:
                    revert with 0, 33
                if sub_8eff008f[uint256(stor209.field_0)][uint256(stor215.field_0)] < 1:
                    revert with 0, 17
                sub_8eff008f[uint256(stor209.field_0)][uint256(stor215.field_0)]--
                if maxRate > 5:
                    revert with 0, 33
                if sub_526ed434[uint256(stor215.field_0)] > -2:
                    revert with 0, 17
                sub_526ed434[uint256(stor215.field_0)]++
                require ext_code.size(sub_f9817570Address)
                if 2 == sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1:
                    call sub_f9817570Address.0x4bf5a97c with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0], maxRate, sha3(ext_call.return_data[0], storDB00 + 1) % sub_07632c39 + 1, sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1, ext_call.return_data[0], 0
                else:
                    call sub_f9817570Address.0x4bf5a97c with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0], maxRate, 0, sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1, ext_call.return_data[0], 0
            else:
                if idx - 1 > 5:
                    revert with 0, 33
                mem[0] = idx - 1
                mem[32] = sha3(sub_862a4d47, 211)
                if sub_526ed434[idx - 1] >= sub_39db7b76[idx - 1]:
                    if idx - 1 <= 0:
                        revert with 0, 'AMOR'
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = s + rate[idx - 1]
                    continue 
                if 0 == sub_8eff008f[uint256(stor209.field_0)][idx - 1]:
                    if idx - 1 <= 0:
                        revert with 0, 'AMOM'
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = s + rate[idx - 1]
                    continue 
                if idx - 1 == maxRate:
                    if isRefund:
                        if sub_044be762:
                            if sub_2ff9ec3b:
                                require ext_code.size(sub_e1fff237Address)
                                if not sub_35b300c5:
                                    call sub_e1fff237Address.0xebfdcf99 with:
                                         gas gas_remaining wei
                                        args address(arg1), mintFee
                                else:
                                    call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), mintFee
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(sub_dddd1c12Address)
                                call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), mintFee
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            storDB00++
                            if sha3(ext_call.return_data[0], storDB00 + 1) % 11 > -86:
                                revert with 0, 17
                            if mintFee and (sha3(ext_call.return_data[0], storDB00 + 1) % 11) + 85 > -1 / mintFee:
                                revert with 0, 17
                            if sub_2ff9ec3b:
                                require ext_code.size(sub_e1fff237Address)
                                if not sub_35b300c5:
                                    call sub_e1fff237Address.0xebfdcf99 with:
                                         gas gas_remaining wei
                                        args address(arg1), (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                                else:
                                    call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(sub_dddd1c12Address)
                                call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    return -1
                storDB00++
                if sub_07632c39 < 0:
                    revert with 0, 17
                if 1 > !sub_07632c39:
                    revert with 0, 17
                if not sub_07632c39 + 1:
                    revert with 0, 18
                if sha3(ext_call.return_data[0], storDB00 + 1) % sub_07632c39 + 1 > -1:
                    revert with 0, 17
                storDB00++
                if sub_9d5a3f7c < 0:
                    revert with 0, 17
                if 1 > !sub_9d5a3f7c:
                    revert with 0, 17
                if not sub_9d5a3f7c + 1:
                    revert with 0, 18
                if sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1 > -1:
                    revert with 0, 17
                if idx - 1 > 5:
                    revert with 0, 33
                if sub_8eff008f[uint256(stor209.field_0)][idx - 1] < 1:
                    revert with 0, 17
                sub_8eff008f[uint256(stor209.field_0)][idx - 1]--
                if idx - 1 > 5:
                    revert with 0, 33
                if sub_526ed434[idx - 1] > -2:
                    revert with 0, 17
                sub_526ed434[idx - 1]++
                require ext_code.size(sub_f9817570Address)
                if 2 == sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1:
                    call sub_f9817570Address.0x4bf5a97c with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0], idx - 1, sha3(ext_call.return_data[0], storDB00 + 1) % sub_07632c39 + 1, sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1, ext_call.return_data[0], 0
                else:
                    call sub_f9817570Address.0x4bf5a97c with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0], idx - 1, 0, sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1, ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            return ext_call.return_data[0]
        if maxRate == maxRate:
            if isRefund:
                if sub_044be762:
                    if sub_2ff9ec3b:
                        require ext_code.size(sub_e1fff237Address)
                        if not sub_35b300c5:
                            call sub_e1fff237Address.0xebfdcf99 with:
                                 gas gas_remaining wei
                                args address(arg1), mintFee
                        else:
                            call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), mintFee
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_code.size(sub_dddd1c12Address)
                        call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), mintFee
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    storDB00++
                    if sha3(ext_call.return_data[0], storDB00 + 1) % 11 > -86:
                        revert with 0, 17
                    if mintFee and (sha3(ext_call.return_data[0], storDB00 + 1) % 11) + 85 > -1 / mintFee:
                        revert with 0, 17
                    if sub_2ff9ec3b:
                        require ext_code.size(sub_e1fff237Address)
                        if not sub_35b300c5:
                            call sub_e1fff237Address.0xebfdcf99 with:
                                 gas gas_remaining wei
                                args address(arg1), (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                        else:
                            call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_code.size(sub_dddd1c12Address)
                        call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
            return -1
    ('iszero', ('eq', ('stor', ('name', 'maxRate', 215)), ('stor', ('name', 'maxRate', 215))))
    storDB00++
    if sub_07632c39 < 0:
        revert with 0, 17
    if 1 > !sub_07632c39:
        revert with 0, 17
    if not sub_07632c39 + 1:
        revert with 0, 18
    if sha3(ext_call.return_data[0], storDB00 + 1) % sub_07632c39 + 1 > -1:
        revert with 0, 17
    storDB00++
    if sub_9d5a3f7c < 0:
        revert with 0, 17
    if 1 > !sub_9d5a3f7c:
        revert with 0, 17
    if not sub_9d5a3f7c + 1:
        revert with 0, 18
    if sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1 > -1:
        revert with 0, 17
    if maxRate > 5:
        revert with 0, 33
    if sub_8eff008f[uint256(stor209.field_0)][uint256(stor215.field_0)] < 1:
        revert with 0, 17
    sub_8eff008f[uint256(stor209.field_0)][uint256(stor215.field_0)]--
    if maxRate > 5:
        revert with 0, 33
    if sub_526ed434[uint256(stor215.field_0)] > -2:
        revert with 0, 17
    sub_526ed434[uint256(stor215.field_0)]++
    require ext_code.size(sub_f9817570Address)
    if 2 == sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1:
        call sub_f9817570Address.0x4bf5a97c with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0], maxRate, sha3(ext_call.return_data[0], storDB00 + 1) % sub_07632c39 + 1, sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1, ext_call.return_data[0], 0
    else:
        call sub_f9817570Address.0x4bf5a97c with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0], maxRate, 0, sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1, ext_call.return_data[0], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0]
}

function issueSpaceship() payable {
    if tx.origin != msg.sender:
        revert with 0, 'ONC'
    if block.number <= stor205[address(msg.sender)]:
        revert with 0, 'OPB'
    stor205[address(msg.sender)] = block.number
    require ext_code.size(sub_e1fff237Address)
    staticcall sub_e1fff237Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= mintFee:
        mem[ceil32(return_data.size) + 132] = mintFee
        require ext_code.size(sub_e1fff237Address)
        call sub_e1fff237Address.deduct(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, mintFee
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if paused:
            revert with 0, 'Pausable: paused'
        if gas_remaining <= stor217:
            revert with 0, 'MC:GL0'
        mem[ceil32(return_data.size) + 100] = block.timestamp
        require ext_code.size(stor204)
        staticcall stor204.getMonth(uint256 arg1) with:
                gas gas_remaining wei
               args block.timestamp
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if ext_call.return_data[31 len 1] == sub_862a4d47:
            require ext_code.size(sub_f9817570Address)
            staticcall sub_f9817570Address.totalSupply() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 4100095:
                revert with 0, 'FT'
            require ext_code.size(address(stor219.field_0))
            call address(stor219.field_0).0xe8bbd87 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            storDB00++
            if sha3(ext_call.return_data[0], storDB00 + 1) % 100001 > -1:
                revert with 0, 17
            if 1 > !maxRate:
                revert with 0, 17
            idx = maxRate + 1
            s = 0
            while idx:
                if idx < 1:
                    revert with 0, 17
                if idx - 1 > 5:
                    revert with 0, 33
                mem[0] = idx - 1
                mem[32] = 208
                if s > !rate[idx - 1]:
                    revert with 0, 17
                if sha3(ext_call.return_data[0], storDB00 + 1) % 100001 > s + rate[idx - 1]:
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = s + rate[idx - 1]
                    continue 
                if idx - 1 == maxRate:
                    if maxRate == maxRate:
                        if isRefund:
                            if sub_044be762:
                                if sub_2ff9ec3b:
                                    require ext_code.size(sub_e1fff237Address)
                                    if not sub_35b300c5:
                                        call sub_e1fff237Address.0xebfdcf99 with:
                                             gas gas_remaining wei
                                            args msg.sender, mintFee
                                    else:
                                        call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, mintFee
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(sub_dddd1c12Address)
                                    call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, mintFee
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                storDB00++
                                if sha3(ext_call.return_data[0], storDB00 + 1) % 11 > -86:
                                    revert with 0, 17
                                if mintFee and (sha3(ext_call.return_data[0], storDB00 + 1) % 11) + 85 > -1 / mintFee:
                                    revert with 0, 17
                                if sub_2ff9ec3b:
                                    require ext_code.size(sub_e1fff237Address)
                                    if not sub_35b300c5:
                                        call sub_e1fff237Address.0xebfdcf99 with:
                                             gas gas_remaining wei
                                            args msg.sender, (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                                    else:
                                        call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(sub_dddd1c12Address)
                                    call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        return -1
                    storDB00++
                    if sub_07632c39 < 0:
                        revert with 0, 17
                    if 1 > !sub_07632c39:
                        revert with 0, 17
                    if not sub_07632c39 + 1:
                        revert with 0, 18
                    if sha3(ext_call.return_data[0], storDB00 + 1) % sub_07632c39 + 1 > -1:
                        revert with 0, 17
                    storDB00++
                    if sub_9d5a3f7c < 0:
                        revert with 0, 17
                    if 1 > !sub_9d5a3f7c:
                        revert with 0, 17
                    if not sub_9d5a3f7c + 1:
                        revert with 0, 18
                    if sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1 > -1:
                        revert with 0, 17
                    if maxRate > 5:
                        revert with 0, 33
                    if sub_8eff008f[uint256(stor209.field_0)][uint256(stor215.field_0)] < 1:
                        revert with 0, 17
                    sub_8eff008f[uint256(stor209.field_0)][uint256(stor215.field_0)]--
                    if maxRate > 5:
                        revert with 0, 33
                    if sub_526ed434[uint256(stor215.field_0)] > -2:
                        revert with 0, 17
                    sub_526ed434[uint256(stor215.field_0)]++
                    require ext_code.size(sub_f9817570Address)
                    if 2 == sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1:
                        call sub_f9817570Address.0x4bf5a97c with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0], maxRate, sha3(ext_call.return_data[0], storDB00 + 1) % sub_07632c39 + 1, sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1, ext_call.return_data[0], 0
                    else:
                        call sub_f9817570Address.0x4bf5a97c with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0], maxRate, 0, sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1, ext_call.return_data[0], 0
                else:
                    if idx - 1 > 5:
                        revert with 0, 33
                    mem[0] = idx - 1
                    mem[32] = sha3(sub_862a4d47, 211)
                    if sub_526ed434[idx - 1] >= sub_39db7b76[idx - 1]:
                        if idx - 1 <= 0:
                            revert with 0, 'AMOR'
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        s = s + rate[idx - 1]
                        continue 
                    if 0 == sub_8eff008f[uint256(stor209.field_0)][idx - 1]:
                        if idx - 1 <= 0:
                            revert with 0, 'AMOM'
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        s = s + rate[idx - 1]
                        continue 
                    if idx - 1 == maxRate:
                        if isRefund:
                            if sub_044be762:
                                if sub_2ff9ec3b:
                                    require ext_code.size(sub_e1fff237Address)
                                    if not sub_35b300c5:
                                        call sub_e1fff237Address.0xebfdcf99 with:
                                             gas gas_remaining wei
                                            args msg.sender, mintFee
                                    else:
                                        call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, mintFee
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(sub_dddd1c12Address)
                                    call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, mintFee
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                storDB00++
                                if sha3(ext_call.return_data[0], storDB00 + 1) % 11 > -86:
                                    revert with 0, 17
                                if mintFee and (sha3(ext_call.return_data[0], storDB00 + 1) % 11) + 85 > -1 / mintFee:
                                    revert with 0, 17
                                if sub_2ff9ec3b:
                                    require ext_code.size(sub_e1fff237Address)
                                    if not sub_35b300c5:
                                        call sub_e1fff237Address.0xebfdcf99 with:
                                             gas gas_remaining wei
                                            args msg.sender, (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                                    else:
                                        call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(sub_dddd1c12Address)
                                    call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        return -1
                    storDB00++
                    if sub_07632c39 < 0:
                        revert with 0, 17
                    if 1 > !sub_07632c39:
                        revert with 0, 17
                    if not sub_07632c39 + 1:
                        revert with 0, 18
                    if sha3(ext_call.return_data[0], storDB00 + 1) % sub_07632c39 + 1 > -1:
                        revert with 0, 17
                    storDB00++
                    if sub_9d5a3f7c < 0:
                        revert with 0, 17
                    if 1 > !sub_9d5a3f7c:
                        revert with 0, 17
                    if not sub_9d5a3f7c + 1:
                        revert with 0, 18
                    if sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1 > -1:
                        revert with 0, 17
                    if idx - 1 > 5:
                        revert with 0, 33
                    if sub_8eff008f[uint256(stor209.field_0)][idx - 1] < 1:
                        revert with 0, 17
                    sub_8eff008f[uint256(stor209.field_0)][idx - 1]--
                    if idx - 1 > 5:
                        revert with 0, 33
                    if sub_526ed434[idx - 1] > -2:
                        revert with 0, 17
                    sub_526ed434[idx - 1]++
                    require ext_code.size(sub_f9817570Address)
                    if 2 == sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1:
                        call sub_f9817570Address.0x4bf5a97c with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0], idx - 1, sha3(ext_call.return_data[0], storDB00 + 1) % sub_07632c39 + 1, sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1, ext_call.return_data[0], 0
                    else:
                        call sub_f9817570Address.0x4bf5a97c with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0], idx - 1, 0, sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1, ext_call.return_data[0], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                return ext_call.return_data[0]
            if maxRate == maxRate:
                if isRefund:
                    if sub_044be762:
                        if sub_2ff9ec3b:
                            require ext_code.size(sub_e1fff237Address)
                            if not sub_35b300c5:
                                call sub_e1fff237Address.0xebfdcf99 with:
                                     gas gas_remaining wei
                                    args msg.sender, mintFee
                            else:
                                call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, mintFee
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(sub_dddd1c12Address)
                            call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, mintFee
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        storDB00++
                        if sha3(ext_call.return_data[0], storDB00 + 1) % 11 > -86:
                            revert with 0, 17
                        if mintFee and (sha3(ext_call.return_data[0], storDB00 + 1) % 11) + 85 > -1 / mintFee:
                            revert with 0, 17
                        if sub_2ff9ec3b:
                            require ext_code.size(sub_e1fff237Address)
                            if not sub_35b300c5:
                                call sub_e1fff237Address.0xebfdcf99 with:
                                     gas gas_remaining wei
                                    args msg.sender, (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                            else:
                                call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(sub_dddd1c12Address)
                            call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                return -1
        else:
            mem[(2 * ceil32(return_data.size)) + 100] = block.timestamp
            require ext_code.size(stor204)
            staticcall stor204.getMonth(uint256 arg1) with:
                    gas gas_remaining wei
                   args block.timestamp
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            uint8(stor209.field_0) = ext_call.return_data[31 len 1]
            Mask(248, 0, stor209.field_8) = 0
            sub_8eff008f[uint256(stor209.field_0)][0] = stor2079
            sub_8eff008f[uint256(stor209.field_0)][1] = storB740
            sub_8eff008f[uint256(stor209.field_0)][2] = stor2518
            sub_8eff008f[uint256(stor209.field_0)][3] = stor1BEC
            sub_8eff008f[uint256(stor209.field_0)][4] = stor92D3
            require ext_code.size(sub_f9817570Address)
            staticcall sub_f9817570Address.totalSupply() with:
                    gas gas_remaining wei
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 4100095:
                revert with 0, 'FT'
            mem[(6 * ceil32(return_data.size)) + 100] = msg.sender
            require ext_code.size(address(stor219.field_0))
            call address(stor219.field_0).0xe8bbd87 with:
                 gas gas_remaining wei
                args msg.sender
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            storDB00++
            mem[(7 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 160] = storDB00 + 1
            mem[(7 * ceil32(return_data.size)) + 96] = 64
            if sha3(ext_call.return_data[0], storDB00 + 1) % 100001 > -1:
                revert with 0, 17
            if 1 > !maxRate:
                revert with 0, 17
            idx = maxRate + 1
            s = 0
            while idx:
                if idx < 1:
                    revert with 0, 17
                if idx - 1 > 5:
                    revert with 0, 33
                mem[0] = idx - 1
                mem[32] = 208
                if s > !rate[idx - 1]:
                    revert with 0, 17
                if sha3(ext_call.return_data[0], storDB00 + 1) % 100001 > s + rate[idx - 1]:
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = s + rate[idx - 1]
                    continue 
                if idx - 1 == maxRate:
                    if maxRate == maxRate:
                        if not isRefund:
                            return -1
                        if sub_044be762:
                            if sub_2ff9ec3b:
                                require ext_code.size(sub_e1fff237Address)
                                if not sub_35b300c5:
                                    call sub_e1fff237Address.0xebfdcf99 with:
                                         gas gas_remaining wei
                                        args msg.sender, mintFee
                                else:
                                    call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, mintFee
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return -1
                            mem[(7 * ceil32(return_data.size)) + 196] = msg.sender
                            mem[(7 * ceil32(return_data.size)) + 228] = mintFee
                            require ext_code.size(sub_dddd1c12Address)
                            call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, mintFee
                            mem[(7 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(8 * ceil32(return_data.size)) + 192] = -1
                            return memory
                              from (8 * ceil32(return_data.size)) + 192
                               len ceil32(return_data.size) + 32
                        storDB00++
                        if sha3(ext_call.return_data[0], storDB00 + 1) % 11 > -86:
                            revert with 0, 17
                        if mintFee and (sha3(ext_call.return_data[0], storDB00 + 1) % 11) + 85 > -1 / mintFee:
                            revert with 0, 17
                        if sub_2ff9ec3b:
                            require ext_code.size(sub_e1fff237Address)
                            if not sub_35b300c5:
                                call sub_e1fff237Address.0xebfdcf99 with:
                                     gas gas_remaining wei
                                    args msg.sender, (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                            else:
                                call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            return -1
                        mem[(7 * ceil32(return_data.size)) + 292] = msg.sender
                        mem[(7 * ceil32(return_data.size)) + 324] = (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                        require ext_code.size(sub_dddd1c12Address)
                        call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                        mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(8 * ceil32(return_data.size)) + 288] = -1
                        return memory
                          from (8 * ceil32(return_data.size)) + 288
                           len ceil32(return_data.size) + 32
                    storDB00++
                    if sub_07632c39 < 0:
                        revert with 0, 17
                    if 1 > !sub_07632c39:
                        revert with 0, 17
                    if not sub_07632c39 + 1:
                        revert with 0, 18
                    if sha3(ext_call.return_data[0], storDB00 + 1) % sub_07632c39 + 1 > -1:
                        revert with 0, 17
                    storDB00++
                    if sub_9d5a3f7c < 0:
                        revert with 0, 17
                    if 1 > !sub_9d5a3f7c:
                        revert with 0, 17
                    if not sub_9d5a3f7c + 1:
                        revert with 0, 18
                    if sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1 > -1:
                        revert with 0, 17
                    if maxRate > 5:
                        revert with 0, 33
                    if sub_8eff008f[uint256(stor209.field_0)][uint256(stor215.field_0)] < 1:
                        revert with 0, 17
                    sub_8eff008f[uint256(stor209.field_0)][uint256(stor215.field_0)]--
                    if maxRate > 5:
                        revert with 0, 33
                    if sub_526ed434[uint256(stor215.field_0)] > -2:
                        revert with 0, 17
                    sub_526ed434[uint256(stor215.field_0)]++
                    require ext_code.size(sub_f9817570Address)
                    if 2 == sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1:
                        call sub_f9817570Address.0x4bf5a97c with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0], maxRate, sha3(ext_call.return_data[0], storDB00 + 1) % sub_07632c39 + 1, sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1, ext_call.return_data[0], 0
                    else:
                        call sub_f9817570Address.0x4bf5a97c with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0], maxRate, 0, sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1, ext_call.return_data[0], 0
                else:
                    if idx - 1 > 5:
                        revert with 0, 33
                    mem[0] = idx - 1
                    mem[32] = sha3(sub_862a4d47, 211)
                    if sub_526ed434[idx - 1] >= sub_39db7b76[idx - 1]:
                        if idx - 1 <= 0:
                            revert with 0, 'AMOR'
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        s = s + rate[idx - 1]
                        continue 
                    if 0 == sub_8eff008f[uint256(stor209.field_0)][idx - 1]:
                        if idx - 1 <= 0:
                            revert with 0, 'AMOM'
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        s = s + rate[idx - 1]
                        continue 
                    if idx - 1 == maxRate:
                        if not isRefund:
                            return -1
                        if sub_044be762:
                            if sub_2ff9ec3b:
                                require ext_code.size(sub_e1fff237Address)
                                if not sub_35b300c5:
                                    call sub_e1fff237Address.0xebfdcf99 with:
                                         gas gas_remaining wei
                                        args msg.sender, mintFee
                                else:
                                    call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, mintFee
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return -1
                            mem[(7 * ceil32(return_data.size)) + 196] = msg.sender
                            mem[(7 * ceil32(return_data.size)) + 228] = mintFee
                            require ext_code.size(sub_dddd1c12Address)
                            call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, mintFee
                            mem[(7 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(8 * ceil32(return_data.size)) + 192] = -1
                            return memory
                              from (8 * ceil32(return_data.size)) + 192
                               len ceil32(return_data.size) + 32
                        storDB00++
                        if sha3(ext_call.return_data[0], storDB00 + 1) % 11 > -86:
                            revert with 0, 17
                        if mintFee and (sha3(ext_call.return_data[0], storDB00 + 1) % 11) + 85 > -1 / mintFee:
                            revert with 0, 17
                        if sub_2ff9ec3b:
                            require ext_code.size(sub_e1fff237Address)
                            if not sub_35b300c5:
                                call sub_e1fff237Address.0xebfdcf99 with:
                                     gas gas_remaining wei
                                    args msg.sender, (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                            else:
                                call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            return -1
                        mem[(7 * ceil32(return_data.size)) + 292] = msg.sender
                        mem[(7 * ceil32(return_data.size)) + 324] = (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                        require ext_code.size(sub_dddd1c12Address)
                        call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                        mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(8 * ceil32(return_data.size)) + 288] = -1
                        return memory
                          from (8 * ceil32(return_data.size)) + 288
                           len ceil32(return_data.size) + 32
                    storDB00++
                    if sub_07632c39 < 0:
                        revert with 0, 17
                    if 1 > !sub_07632c39:
                        revert with 0, 17
                    if not sub_07632c39 + 1:
                        revert with 0, 18
                    if sha3(ext_call.return_data[0], storDB00 + 1) % sub_07632c39 + 1 > -1:
                        revert with 0, 17
                    storDB00++
                    if sub_9d5a3f7c < 0:
                        revert with 0, 17
                    if 1 > !sub_9d5a3f7c:
                        revert with 0, 17
                    if not sub_9d5a3f7c + 1:
                        revert with 0, 18
                    if sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1 > -1:
                        revert with 0, 17
                    if idx - 1 > 5:
                        revert with 0, 33
                    if sub_8eff008f[uint256(stor209.field_0)][idx - 1] < 1:
                        revert with 0, 17
                    sub_8eff008f[uint256(stor209.field_0)][idx - 1]--
                    if idx - 1 > 5:
                        revert with 0, 33
                    if sub_526ed434[idx - 1] > -2:
                        revert with 0, 17
                    sub_526ed434[idx - 1]++
                    require ext_code.size(sub_f9817570Address)
                    if 2 == sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1:
                        call sub_f9817570Address.0x4bf5a97c with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0], idx - 1, sha3(ext_call.return_data[0], storDB00 + 1) % sub_07632c39 + 1, sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1, ext_call.return_data[0], 0
                    else:
                        call sub_f9817570Address.0x4bf5a97c with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0], idx - 1, 0, sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1, ext_call.return_data[0], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                return ext_call.return_data[0]
            if maxRate == maxRate:
                if not isRefund:
                    return -1
                if sub_044be762:
                    if sub_2ff9ec3b:
                        require ext_code.size(sub_e1fff237Address)
                        if not sub_35b300c5:
                            call sub_e1fff237Address.0xebfdcf99 with:
                                 gas gas_remaining wei
                                args msg.sender, mintFee
                        else:
                            call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, mintFee
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        return -1
                    mem[(7 * ceil32(return_data.size)) + 196] = msg.sender
                    mem[(7 * ceil32(return_data.size)) + 228] = mintFee
                    require ext_code.size(sub_dddd1c12Address)
                    call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, mintFee
                    mem[(7 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(8 * ceil32(return_data.size)) + 192] = -1
                    return memory
                      from (8 * ceil32(return_data.size)) + 192
                       len ceil32(return_data.size) + 32
                storDB00++
                if sha3(ext_call.return_data[0], storDB00 + 1) % 11 > -86:
                    revert with 0, 17
                if mintFee and (sha3(ext_call.return_data[0], storDB00 + 1) % 11) + 85 > -1 / mintFee:
                    revert with 0, 17
                if sub_2ff9ec3b:
                    require ext_code.size(sub_e1fff237Address)
                    if not sub_35b300c5:
                        call sub_e1fff237Address.0xebfdcf99 with:
                             gas gas_remaining wei
                            args msg.sender, (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                    else:
                        call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    return -1
                mem[(7 * ceil32(return_data.size)) + 292] = msg.sender
                mem[(7 * ceil32(return_data.size)) + 324] = (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                require ext_code.size(sub_dddd1c12Address)
                call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(8 * ceil32(return_data.size)) + 288] = -1
                return memory
                  from (8 * ceil32(return_data.size)) + 288
                   len ceil32(return_data.size) + 32
    else:
        if mintFee < ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(sub_e1fff237Address)
        call sub_e1fff237Address.deduct(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 100] = msg.sender
        mem[ceil32(return_data.size) + 132] = this.address
        mem[ceil32(return_data.size) + 164] = mintFee - ext_call.return_data[0]
        require ext_code.size(sub_dddd1c12Address)
        call sub_dddd1c12Address.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, this.address, mintFee - ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if paused:
            revert with 0, 'Pausable: paused'
        if gas_remaining <= stor217:
            revert with 0, 'MC:GL0'
        mem[(2 * ceil32(return_data.size)) + 100] = block.timestamp
        require ext_code.size(stor204)
        staticcall stor204.getMonth(uint256 arg1) with:
                gas gas_remaining wei
               args block.timestamp
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if ext_call.return_data[31 len 1] == sub_862a4d47:
            require ext_code.size(sub_f9817570Address)
            staticcall sub_f9817570Address.totalSupply() with:
                    gas gas_remaining wei
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 4100095:
                revert with 0, 'FT'
            mem[(6 * ceil32(return_data.size)) + 100] = msg.sender
            require ext_code.size(address(stor219.field_0))
            call address(stor219.field_0).0xe8bbd87 with:
                 gas gas_remaining wei
                args msg.sender
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            storDB00++
            mem[(7 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 160] = storDB00 + 1
            mem[(7 * ceil32(return_data.size)) + 96] = 64
            if sha3(ext_call.return_data[0], storDB00 + 1) % 100001 > -1:
                revert with 0, 17
            if 1 > !maxRate:
                revert with 0, 17
            idx = maxRate + 1
            s = 0
            while idx:
                if idx < 1:
                    revert with 0, 17
                if idx - 1 > 5:
                    revert with 0, 33
                mem[0] = idx - 1
                mem[32] = 208
                if s > !rate[idx - 1]:
                    revert with 0, 17
                if sha3(ext_call.return_data[0], storDB00 + 1) % 100001 > s + rate[idx - 1]:
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = s + rate[idx - 1]
                    continue 
                if idx - 1 == maxRate:
                    if maxRate == maxRate:
                        if not isRefund:
                            return -1
                        if sub_044be762:
                            if sub_2ff9ec3b:
                                require ext_code.size(sub_e1fff237Address)
                                if not sub_35b300c5:
                                    call sub_e1fff237Address.0xebfdcf99 with:
                                         gas gas_remaining wei
                                        args msg.sender, mintFee
                                else:
                                    call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, mintFee
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return -1
                            mem[(7 * ceil32(return_data.size)) + 196] = msg.sender
                            mem[(7 * ceil32(return_data.size)) + 228] = mintFee
                            require ext_code.size(sub_dddd1c12Address)
                            call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, mintFee
                            mem[(7 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(8 * ceil32(return_data.size)) + 192] = -1
                            return memory
                              from (8 * ceil32(return_data.size)) + 192
                               len ceil32(return_data.size) + 32
                        storDB00++
                        if sha3(ext_call.return_data[0], storDB00 + 1) % 11 > -86:
                            revert with 0, 17
                        if mintFee and (sha3(ext_call.return_data[0], storDB00 + 1) % 11) + 85 > -1 / mintFee:
                            revert with 0, 17
                        if sub_2ff9ec3b:
                            require ext_code.size(sub_e1fff237Address)
                            if not sub_35b300c5:
                                call sub_e1fff237Address.0xebfdcf99 with:
                                     gas gas_remaining wei
                                    args msg.sender, (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                            else:
                                call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            return -1
                        mem[(7 * ceil32(return_data.size)) + 292] = msg.sender
                        mem[(7 * ceil32(return_data.size)) + 324] = (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                        require ext_code.size(sub_dddd1c12Address)
                        call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                        mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(8 * ceil32(return_data.size)) + 288] = -1
                        return memory
                          from (8 * ceil32(return_data.size)) + 288
                           len ceil32(return_data.size) + 32
                    storDB00++
                    if sub_07632c39 < 0:
                        revert with 0, 17
                    if 1 > !sub_07632c39:
                        revert with 0, 17
                    if not sub_07632c39 + 1:
                        revert with 0, 18
                    if sha3(ext_call.return_data[0], storDB00 + 1) % sub_07632c39 + 1 > -1:
                        revert with 0, 17
                    storDB00++
                    if sub_9d5a3f7c < 0:
                        revert with 0, 17
                    if 1 > !sub_9d5a3f7c:
                        revert with 0, 17
                    if not sub_9d5a3f7c + 1:
                        revert with 0, 18
                    if sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1 > -1:
                        revert with 0, 17
                    if maxRate > 5:
                        revert with 0, 33
                    if sub_8eff008f[uint256(stor209.field_0)][uint256(stor215.field_0)] < 1:
                        revert with 0, 17
                    sub_8eff008f[uint256(stor209.field_0)][uint256(stor215.field_0)]--
                    if maxRate > 5:
                        revert with 0, 33
                    if sub_526ed434[uint256(stor215.field_0)] > -2:
                        revert with 0, 17
                    sub_526ed434[uint256(stor215.field_0)]++
                    require ext_code.size(sub_f9817570Address)
                    if 2 == sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1:
                        call sub_f9817570Address.0x4bf5a97c with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0], maxRate, sha3(ext_call.return_data[0], storDB00 + 1) % sub_07632c39 + 1, sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1, ext_call.return_data[0], 0
                    else:
                        call sub_f9817570Address.0x4bf5a97c with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0], maxRate, 0, sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1, ext_call.return_data[0], 0
                else:
                    if idx - 1 > 5:
                        revert with 0, 33
                    mem[0] = idx - 1
                    mem[32] = sha3(sub_862a4d47, 211)
                    if sub_526ed434[idx - 1] >= sub_39db7b76[idx - 1]:
                        if idx - 1 <= 0:
                            revert with 0, 'AMOR'
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        s = s + rate[idx - 1]
                        continue 
                    if 0 == sub_8eff008f[uint256(stor209.field_0)][idx - 1]:
                        if idx - 1 <= 0:
                            revert with 0, 'AMOM'
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        s = s + rate[idx - 1]
                        continue 
                    if idx - 1 == maxRate:
                        if not isRefund:
                            return -1
                        if sub_044be762:
                            if sub_2ff9ec3b:
                                require ext_code.size(sub_e1fff237Address)
                                if not sub_35b300c5:
                                    call sub_e1fff237Address.0xebfdcf99 with:
                                         gas gas_remaining wei
                                        args msg.sender, mintFee
                                else:
                                    call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, mintFee
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return -1
                            mem[(7 * ceil32(return_data.size)) + 196] = msg.sender
                            mem[(7 * ceil32(return_data.size)) + 228] = mintFee
                            require ext_code.size(sub_dddd1c12Address)
                            call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, mintFee
                            mem[(7 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(8 * ceil32(return_data.size)) + 192] = -1
                            return memory
                              from (8 * ceil32(return_data.size)) + 192
                               len ceil32(return_data.size) + 32
                        storDB00++
                        if sha3(ext_call.return_data[0], storDB00 + 1) % 11 > -86:
                            revert with 0, 17
                        if mintFee and (sha3(ext_call.return_data[0], storDB00 + 1) % 11) + 85 > -1 / mintFee:
                            revert with 0, 17
                        if sub_2ff9ec3b:
                            require ext_code.size(sub_e1fff237Address)
                            if not sub_35b300c5:
                                call sub_e1fff237Address.0xebfdcf99 with:
                                     gas gas_remaining wei
                                    args msg.sender, (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                            else:
                                call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            return -1
                        mem[(7 * ceil32(return_data.size)) + 292] = msg.sender
                        mem[(7 * ceil32(return_data.size)) + 324] = (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                        require ext_code.size(sub_dddd1c12Address)
                        call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                        mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(8 * ceil32(return_data.size)) + 288] = -1
                        return memory
                          from (8 * ceil32(return_data.size)) + 288
                           len ceil32(return_data.size) + 32
                    storDB00++
                    if sub_07632c39 < 0:
                        revert with 0, 17
                    if 1 > !sub_07632c39:
                        revert with 0, 17
                    if not sub_07632c39 + 1:
                        revert with 0, 18
                    if sha3(ext_call.return_data[0], storDB00 + 1) % sub_07632c39 + 1 > -1:
                        revert with 0, 17
                    storDB00++
                    if sub_9d5a3f7c < 0:
                        revert with 0, 17
                    if 1 > !sub_9d5a3f7c:
                        revert with 0, 17
                    if not sub_9d5a3f7c + 1:
                        revert with 0, 18
                    if sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1 > -1:
                        revert with 0, 17
                    if idx - 1 > 5:
                        revert with 0, 33
                    if sub_8eff008f[uint256(stor209.field_0)][idx - 1] < 1:
                        revert with 0, 17
                    sub_8eff008f[uint256(stor209.field_0)][idx - 1]--
                    if idx - 1 > 5:
                        revert with 0, 33
                    if sub_526ed434[idx - 1] > -2:
                        revert with 0, 17
                    sub_526ed434[idx - 1]++
                    require ext_code.size(sub_f9817570Address)
                    if 2 == sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1:
                        call sub_f9817570Address.0x4bf5a97c with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0], idx - 1, sha3(ext_call.return_data[0], storDB00 + 1) % sub_07632c39 + 1, sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1, ext_call.return_data[0], 0
                    else:
                        call sub_f9817570Address.0x4bf5a97c with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0], idx - 1, 0, sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1, ext_call.return_data[0], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                return ext_call.return_data[0]
            if maxRate == maxRate:
                if not isRefund:
                    return -1
                if sub_044be762:
                    if sub_2ff9ec3b:
                        require ext_code.size(sub_e1fff237Address)
                        if not sub_35b300c5:
                            call sub_e1fff237Address.0xebfdcf99 with:
                                 gas gas_remaining wei
                                args msg.sender, mintFee
                        else:
                            call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, mintFee
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        return -1
                    mem[(7 * ceil32(return_data.size)) + 196] = msg.sender
                    mem[(7 * ceil32(return_data.size)) + 228] = mintFee
                    require ext_code.size(sub_dddd1c12Address)
                    call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, mintFee
                    mem[(7 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(8 * ceil32(return_data.size)) + 192] = -1
                    return memory
                      from (8 * ceil32(return_data.size)) + 192
                       len ceil32(return_data.size) + 32
                storDB00++
                if sha3(ext_call.return_data[0], storDB00 + 1) % 11 > -86:
                    revert with 0, 17
                if mintFee and (sha3(ext_call.return_data[0], storDB00 + 1) % 11) + 85 > -1 / mintFee:
                    revert with 0, 17
                if sub_2ff9ec3b:
                    require ext_code.size(sub_e1fff237Address)
                    if not sub_35b300c5:
                        call sub_e1fff237Address.0xebfdcf99 with:
                             gas gas_remaining wei
                            args msg.sender, (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                    else:
                        call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    return -1
                mem[(7 * ceil32(return_data.size)) + 292] = msg.sender
                mem[(7 * ceil32(return_data.size)) + 324] = (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                require ext_code.size(sub_dddd1c12Address)
                call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(8 * ceil32(return_data.size)) + 288] = -1
                return memory
                  from (8 * ceil32(return_data.size)) + 288
                   len ceil32(return_data.size) + 32
        else:
            require ext_code.size(stor204)
            staticcall stor204.getMonth(uint256 arg1) with:
                    gas gas_remaining wei
                   args block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            uint8(stor209.field_0) = ext_call.return_data[31 len 1]
            Mask(248, 0, stor209.field_8) = 0
            sub_8eff008f[uint256(stor209.field_0)][0] = stor2079
            sub_8eff008f[uint256(stor209.field_0)][1] = storB740
            sub_8eff008f[uint256(stor209.field_0)][2] = stor2518
            sub_8eff008f[uint256(stor209.field_0)][3] = stor1BEC
            sub_8eff008f[uint256(stor209.field_0)][4] = stor92D3
            require ext_code.size(sub_f9817570Address)
            staticcall sub_f9817570Address.totalSupply() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 4100095:
                revert with 0, 'FT'
            require ext_code.size(address(stor219.field_0))
            call address(stor219.field_0).0xe8bbd87 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            storDB00++
            if sha3(ext_call.return_data[0], storDB00 + 1) % 100001 > -1:
                revert with 0, 17
            if 1 > !maxRate:
                revert with 0, 17
            idx = maxRate + 1
            s = 0
            while idx:
                if idx < 1:
                    revert with 0, 17
                if idx - 1 > 5:
                    revert with 0, 33
                mem[0] = idx - 1
                mem[32] = 208
                if s > !rate[idx - 1]:
                    revert with 0, 17
                if sha3(ext_call.return_data[0], storDB00 + 1) % 100001 > s + rate[idx - 1]:
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = s + rate[idx - 1]
                    continue 
                if idx - 1 == maxRate:
                    if maxRate == maxRate:
                        if not isRefund:
                            return -1
                        if sub_044be762:
                            if sub_2ff9ec3b:
                                require ext_code.size(sub_e1fff237Address)
                                if not sub_35b300c5:
                                    call sub_e1fff237Address.0xebfdcf99 with:
                                         gas gas_remaining wei
                                        args msg.sender, mintFee
                                else:
                                    call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, mintFee
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return -1
                            mem[(8 * ceil32(return_data.size)) + 196] = msg.sender
                            mem[(8 * ceil32(return_data.size)) + 228] = mintFee
                            require ext_code.size(sub_dddd1c12Address)
                            call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, mintFee
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            return -1, mem[(10 * ceil32(return_data.size)) + 224 len 17 * ceil32(return_data.size)]
                        storDB00++
                        if sha3(ext_call.return_data[0], storDB00 + 1) % 11 > -86:
                            revert with 0, 17
                        if mintFee and (sha3(ext_call.return_data[0], storDB00 + 1) % 11) + 85 > -1 / mintFee:
                            revert with 0, 17
                        if sub_2ff9ec3b:
                            require ext_code.size(sub_e1fff237Address)
                            if not sub_35b300c5:
                                call sub_e1fff237Address.0xebfdcf99 with:
                                     gas gas_remaining wei
                                    args msg.sender, (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                            else:
                                call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            return -1
                        mem[(8 * ceil32(return_data.size)) + 292] = msg.sender
                        mem[(8 * ceil32(return_data.size)) + 324] = (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                        require ext_code.size(sub_dddd1c12Address)
                        call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        return -1, mem[(10 * ceil32(return_data.size)) + 320 len 17 * ceil32(return_data.size)]
                    storDB00++
                    if sub_07632c39 < 0:
                        revert with 0, 17
                    if 1 > !sub_07632c39:
                        revert with 0, 17
                    if not sub_07632c39 + 1:
                        revert with 0, 18
                    if sha3(ext_call.return_data[0], storDB00 + 1) % sub_07632c39 + 1 > -1:
                        revert with 0, 17
                    storDB00++
                    if sub_9d5a3f7c < 0:
                        revert with 0, 17
                    if 1 > !sub_9d5a3f7c:
                        revert with 0, 17
                    if not sub_9d5a3f7c + 1:
                        revert with 0, 18
                    if sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1 > -1:
                        revert with 0, 17
                    if maxRate > 5:
                        revert with 0, 33
                    if sub_8eff008f[uint256(stor209.field_0)][uint256(stor215.field_0)] < 1:
                        revert with 0, 17
                    sub_8eff008f[uint256(stor209.field_0)][uint256(stor215.field_0)]--
                    if maxRate > 5:
                        revert with 0, 33
                    if sub_526ed434[uint256(stor215.field_0)] > -2:
                        revert with 0, 17
                    sub_526ed434[uint256(stor215.field_0)]++
                    require ext_code.size(sub_f9817570Address)
                    if 2 == sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1:
                        call sub_f9817570Address.0x4bf5a97c with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0], maxRate, sha3(ext_call.return_data[0], storDB00 + 1) % sub_07632c39 + 1, sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1, ext_call.return_data[0], 0
                    else:
                        call sub_f9817570Address.0x4bf5a97c with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0], maxRate, 0, sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1, ext_call.return_data[0], 0
                else:
                    if idx - 1 > 5:
                        revert with 0, 33
                    mem[0] = idx - 1
                    mem[32] = sha3(sub_862a4d47, 211)
                    if sub_526ed434[idx - 1] >= sub_39db7b76[idx - 1]:
                        if idx - 1 <= 0:
                            revert with 0, 'AMOR'
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        s = s + rate[idx - 1]
                        continue 
                    if 0 == sub_8eff008f[uint256(stor209.field_0)][idx - 1]:
                        if idx - 1 <= 0:
                            revert with 0, 'AMOM'
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        s = s + rate[idx - 1]
                        continue 
                    if idx - 1 == maxRate:
                        if not isRefund:
                            return -1
                        if sub_044be762:
                            if sub_2ff9ec3b:
                                require ext_code.size(sub_e1fff237Address)
                                if not sub_35b300c5:
                                    call sub_e1fff237Address.0xebfdcf99 with:
                                         gas gas_remaining wei
                                        args msg.sender, mintFee
                                else:
                                    call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, mintFee
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return -1
                            mem[(8 * ceil32(return_data.size)) + 196] = msg.sender
                            mem[(8 * ceil32(return_data.size)) + 228] = mintFee
                            require ext_code.size(sub_dddd1c12Address)
                            call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, mintFee
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            return -1, mem[(10 * ceil32(return_data.size)) + 224 len 17 * ceil32(return_data.size)]
                        storDB00++
                        if sha3(ext_call.return_data[0], storDB00 + 1) % 11 > -86:
                            revert with 0, 17
                        if mintFee and (sha3(ext_call.return_data[0], storDB00 + 1) % 11) + 85 > -1 / mintFee:
                            revert with 0, 17
                        if sub_2ff9ec3b:
                            require ext_code.size(sub_e1fff237Address)
                            if not sub_35b300c5:
                                call sub_e1fff237Address.0xebfdcf99 with:
                                     gas gas_remaining wei
                                    args msg.sender, (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                            else:
                                call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            return -1
                        mem[(8 * ceil32(return_data.size)) + 292] = msg.sender
                        mem[(8 * ceil32(return_data.size)) + 324] = (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                        require ext_code.size(sub_dddd1c12Address)
                        call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        return -1, mem[(10 * ceil32(return_data.size)) + 320 len 17 * ceil32(return_data.size)]
                    storDB00++
                    if sub_07632c39 < 0:
                        revert with 0, 17
                    if 1 > !sub_07632c39:
                        revert with 0, 17
                    if not sub_07632c39 + 1:
                        revert with 0, 18
                    if sha3(ext_call.return_data[0], storDB00 + 1) % sub_07632c39 + 1 > -1:
                        revert with 0, 17
                    storDB00++
                    if sub_9d5a3f7c < 0:
                        revert with 0, 17
                    if 1 > !sub_9d5a3f7c:
                        revert with 0, 17
                    if not sub_9d5a3f7c + 1:
                        revert with 0, 18
                    if sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1 > -1:
                        revert with 0, 17
                    if idx - 1 > 5:
                        revert with 0, 33
                    if sub_8eff008f[uint256(stor209.field_0)][idx - 1] < 1:
                        revert with 0, 17
                    sub_8eff008f[uint256(stor209.field_0)][idx - 1]--
                    if idx - 1 > 5:
                        revert with 0, 33
                    if sub_526ed434[idx - 1] > -2:
                        revert with 0, 17
                    sub_526ed434[idx - 1]++
                    require ext_code.size(sub_f9817570Address)
                    if 2 == sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1:
                        call sub_f9817570Address.0x4bf5a97c with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0], idx - 1, sha3(ext_call.return_data[0], storDB00 + 1) % sub_07632c39 + 1, sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1, ext_call.return_data[0], 0
                    else:
                        call sub_f9817570Address.0x4bf5a97c with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0], idx - 1, 0, sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1, ext_call.return_data[0], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                return ext_call.return_data[0]
            if maxRate == maxRate:
                if not isRefund:
                    return -1
                if sub_044be762:
                    if sub_2ff9ec3b:
                        require ext_code.size(sub_e1fff237Address)
                        if not sub_35b300c5:
                            call sub_e1fff237Address.0xebfdcf99 with:
                                 gas gas_remaining wei
                                args msg.sender, mintFee
                        else:
                            call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, mintFee
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        return -1
                    mem[(8 * ceil32(return_data.size)) + 196] = msg.sender
                    mem[(8 * ceil32(return_data.size)) + 228] = mintFee
                    require ext_code.size(sub_dddd1c12Address)
                    call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, mintFee
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    return -1, mem[(10 * ceil32(return_data.size)) + 224 len 17 * ceil32(return_data.size)]
                storDB00++
                if sha3(ext_call.return_data[0], storDB00 + 1) % 11 > -86:
                    revert with 0, 17
                if mintFee and (sha3(ext_call.return_data[0], storDB00 + 1) % 11) + 85 > -1 / mintFee:
                    revert with 0, 17
                if sub_2ff9ec3b:
                    require ext_code.size(sub_e1fff237Address)
                    if not sub_35b300c5:
                        call sub_e1fff237Address.0xebfdcf99 with:
                             gas gas_remaining wei
                            args msg.sender, (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                    else:
                        call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    return -1
                mem[(8 * ceil32(return_data.size)) + 292] = msg.sender
                mem[(8 * ceil32(return_data.size)) + 324] = (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                require ext_code.size(sub_dddd1c12Address)
                call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, (85 * mintFee) + (sha3(ext_call.return_data[0], storDB00 + 1) % 11 * mintFee) / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                return -1, mem[(10 * ceil32(return_data.size)) + 320 len 17 * ceil32(return_data.size)]
    ('iszero', ('eq', ('stor', ('name', 'maxRate', 215)), ('stor', ('name', 'maxRate', 215))))
    storDB00++
    if sub_07632c39 < 0:
        revert with 0, 17
    if 1 > !sub_07632c39:
        revert with 0, 17
    if not sub_07632c39 + 1:
        revert with 0, 18
    if sha3(ext_call.return_data[0], storDB00 + 1) % sub_07632c39 + 1 > -1:
        revert with 0, 17
    storDB00++
    if sub_9d5a3f7c < 0:
        revert with 0, 17
    if 1 > !sub_9d5a3f7c:
        revert with 0, 17
    if not sub_9d5a3f7c + 1:
        revert with 0, 18
    if sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1 > -1:
        revert with 0, 17
    if maxRate > 5:
        revert with 0, 33
    if sub_8eff008f[uint256(stor209.field_0)][uint256(stor215.field_0)] < 1:
        revert with 0, 17
    sub_8eff008f[uint256(stor209.field_0)][uint256(stor215.field_0)]--
    if maxRate > 5:
        revert with 0, 33
    if sub_526ed434[uint256(stor215.field_0)] > -2:
        revert with 0, 17
    sub_526ed434[uint256(stor215.field_0)]++
    require ext_code.size(sub_f9817570Address)
    if 2 == sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1:
        call sub_f9817570Address.0x4bf5a97c with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0], maxRate, sha3(ext_call.return_data[0], storDB00 + 1) % sub_07632c39 + 1, sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1, ext_call.return_data[0], 0
    else:
        call sub_f9817570Address.0x4bf5a97c with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0], maxRate, 0, sha3(ext_call.return_data[0], storDB00 + 1) % sub_9d5a3f7c + 1, ext_call.return_data[0], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0]
}



}
