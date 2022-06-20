contract main {




// =====================  Runtime code  =====================


const GAME_ADMIN = 0x745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab7f

const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of struct roleAdmin;
uint256 BONUS_MULTIPLIER;
uint256 sub_4eb15244;
uint256 totalAmount;
uint256 stor154;
uint256 stor155;
uint8 stor156;
mapping of struct ships;
address sub_4fb3ccc5Address;
address sub_f9817570Address;
address sub_e1fff237Address;
address sub_ad6210b8Address;

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256, userInfo[arg1].field_512
}

function totalAmount() payable {
    return totalAmount
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function ships(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return ships[arg1].field_0, ships[arg1].field_256, address(ships[arg1].field_512)
}

function sub_4eb15244(?) payable {
    return sub_4eb15244
}

function sub_4fb3ccc5(?) payable {
    return sub_4fb3ccc5Address
}

function BONUS_MULTIPLIER() payable {
    return BONUS_MULTIPLIER
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(uint8(roleAdmin[arg1][address(arg2)].field_0))
}

function sub_ad6210b8(?) payable {
    return sub_ad6210b8Address
}

function sub_e1fff237(?) payable {
    return sub_e1fff237Address
}

function sub_f9817570(?) payable {
    return sub_f9817570Address
}

function _fallback() payable {
    revert
}

function poolInfo() payable {
    return stor154, stor155, bool(stor156)
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 < arg1:
        revert with 0, 17
    if arg2 - arg1 and BONUS_MULTIPLIER > -1 / arg2 - arg1:
        revert with 0, 17
    return ((arg2 * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER))
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
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function updatePool() payable {
    if block.number > stor154:
        if totalAmount:
            if block.number < stor154:
                revert with 0, 17
            if block.number - stor154 and BONUS_MULTIPLIER > -1 / block.number - stor154:
                revert with 0, 17
            if (block.number * BONUS_MULTIPLIER) - (stor154 * BONUS_MULTIPLIER) and sub_4eb15244 > -1 / (block.number * BONUS_MULTIPLIER) - (stor154 * BONUS_MULTIPLIER):
                revert with 0, 17
            if (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                revert with 0, 17
            if not totalAmount:
                revert with 0, 18
            if stor155 > !(10^12 * (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 / totalAmount):
                revert with 0, 17
            stor155 += 10^12 * (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 / totalAmount
        stor154 = block.number
}

function updateMultiplier(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(roleAdmin[0x745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab7f][address(msg.sender)].field_0):
        BONUS_MULTIPLIER = arg1
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
        s = 0x745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab7f
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

function setGameWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(roleAdmin[0x745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab7f][address(msg.sender)].field_0):
        sub_e1fff237Address = arg1
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
        s = 0x745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab7f
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

function sub_0fe2a304(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if uint8(roleAdmin[0x745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab7f][address(msg.sender)].field_0):
        sub_f9817570Address = address(arg1)
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
        s = 0x745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab7f
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

function sub_48ea7127(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if uint8(roleAdmin[0x745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab7f][address(msg.sender)].field_0):
        sub_4fb3ccc5Address = address(arg1)
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
        s = 0x745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab7f
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

function sub_f800cfa3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if uint8(roleAdmin[0x745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab7f][address(msg.sender)].field_0):
        sub_ad6210b8Address = address(arg1)
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
        s = 0x745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab7f
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

function run(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(roleAdmin[0x745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab7f][address(msg.sender)].field_0):
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
            s = 0x745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab7f
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
    if block.number > arg1:
        stor154 = block.number
        if stor155:
        else:
            stor155 = 0
            stor156 = 1
    else:
        stor154 = arg1
        if stor155:
        else:
            stor155 = 0
            stor156 = 1
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if uint8(roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0):
        if uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
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
    if uint8(roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0):
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

function initialize(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if not uint8(stor0.field_8):
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                uint8(stor0.field_8) = 0
    if not uint8(roleAdmin[0][address(msg.sender)].field_0):
        uint8(roleAdmin[0][address(msg.sender)].field_0) = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    if not uint8(roleAdmin[0x745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab7f][address(msg.sender)].field_0):
        uint8(roleAdmin[0x745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab7f][address(msg.sender)].field_0) = 1
        emit RoleGranted(0x745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab7f, msg.sender, msg.sender);
    sub_f9817570Address = arg1
    sub_ad6210b8Address = arg2
    sub_e1fff237Address = arg3
    sub_4eb15244 = arg4
    BONUS_MULTIPLIER = 1
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_7a9fc57e(?) payable {
    require calldata.size - 4 >= 32
    if not uint8(roleAdmin[0x745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab7f][address(msg.sender)].field_0):
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
            s = 0x745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab7f
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
    if block.number > stor154:
        if totalAmount:
            if block.number < stor154:
                revert with 0, 17
            if block.number - stor154 and BONUS_MULTIPLIER > -1 / block.number - stor154:
                revert with 0, 17
            if (block.number * BONUS_MULTIPLIER) - (stor154 * BONUS_MULTIPLIER) and sub_4eb15244 > -1 / (block.number * BONUS_MULTIPLIER) - (stor154 * BONUS_MULTIPLIER):
                revert with 0, 17
            if (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                revert with 0, 17
            if not totalAmount:
                revert with 0, 18
            if stor155 > !(10^12 * (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 / totalAmount):
                revert with 0, 17
            stor155 += 10^12 * (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 / totalAmount
        stor154 = block.number
    sub_4eb15244 = arg1
}

function harvest() payable {
    if not stor156:
        revert with 0, 'GM::NTY'
    if not userInfo[msg.sender].field_0:
        revert with 0, 'GM::H:UAI0'
    if block.number > stor154:
        if totalAmount:
            if block.number < stor154:
                revert with 0, 17
            if block.number - stor154 and BONUS_MULTIPLIER > -1 / block.number - stor154:
                revert with 0, 17
            if (block.number * BONUS_MULTIPLIER) - (stor154 * BONUS_MULTIPLIER) and sub_4eb15244 > -1 / (block.number * BONUS_MULTIPLIER) - (stor154 * BONUS_MULTIPLIER):
                revert with 0, 17
            if (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                revert with 0, 17
            if not totalAmount:
                revert with 0, 18
            if stor155 > !(10^12 * (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 / totalAmount):
                revert with 0, 17
            stor155 += 10^12 * (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 / totalAmount
        stor154 = block.number
    if userInfo[msg.sender].field_0 and stor155 > -1 / userInfo[msg.sender].field_0:
        revert with 0, 17
    if userInfo[msg.sender].field_0 * stor155 / 10^12 < userInfo[msg.sender].field_256:
        revert with 0, 17
    if (userInfo[msg.sender].field_0 * stor155 / 10^12) - userInfo[msg.sender].field_256 > !userInfo[msg.sender].field_512:
        revert with 0, 17
    if (userInfo[msg.sender].field_0 * stor155 / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512:
        userInfo[msg.sender].field_512 = 0
        require ext_code.size(sub_e1fff237Address)
        call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, (userInfo[msg.sender].field_0 * stor155 / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if userInfo[msg.sender].field_0 and stor155 > -1 / userInfo[msg.sender].field_0:
        revert with 0, 17
    userInfo[msg.sender].field_256 = userInfo[msg.sender].field_0 * stor155 / 10^12
    emit 0x48c1add5: ((userInfo[msg.sender].field_0 * stor155 / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512), msg.sender
}

function withdrawAll() payable {
    if not stor156:
        revert with 0, 'GM::NTY'
    if not userInfo[msg.sender].field_0:
        revert with 0, 'GM::WA:UAI0'
    if userInfo[msg.sender].field_768 <= 0:
        revert with 0, 'GM::WA:CSLI0'
    if block.number > stor154:
        if totalAmount:
            if block.number < stor154:
                revert with 0, 17
            if block.number - stor154 and BONUS_MULTIPLIER > -1 / block.number - stor154:
                revert with 0, 17
            if (block.number * BONUS_MULTIPLIER) - (stor154 * BONUS_MULTIPLIER) and sub_4eb15244 > -1 / (block.number * BONUS_MULTIPLIER) - (stor154 * BONUS_MULTIPLIER):
                revert with 0, 17
            if (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                revert with 0, 17
            if not totalAmount:
                revert with 0, 18
            if stor155 > !(10^12 * (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 / totalAmount):
                revert with 0, 17
            stor155 += 10^12 * (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 / totalAmount
        stor154 = block.number
    if userInfo[msg.sender].field_0 and stor155 > -1 / userInfo[msg.sender].field_0:
        revert with 0, 17
    if userInfo[msg.sender].field_0 * stor155 / 10^12 < userInfo[msg.sender].field_256:
        revert with 0, 17
    if (userInfo[msg.sender].field_0 * stor155 / 10^12) - userInfo[msg.sender].field_256 > !userInfo[msg.sender].field_512:
        revert with 0, 17
    if (userInfo[msg.sender].field_0 * stor155 / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512:
        userInfo[msg.sender].field_512 = 0
        require ext_code.size(sub_e1fff237Address)
        call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, (userInfo[msg.sender].field_0 * stor155 / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if totalAmount < userInfo[msg.sender].field_0:
        revert with 0, 17
    totalAmount -= userInfo[msg.sender].field_0
    userInfo[msg.sender].field_0 = 0
    idx = 0
    while idx < userInfo[msg.sender].field_768:
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = msg.sender
        mem[164] = userInfo[msg.sender][idx + 3].field_0
        require ext_code.size(sub_f9817570Address)
        call sub_f9817570Address.0x42842e0e with:
             gas gas_remaining wei
            args this.address, msg.sender, userInfo[msg.sender][idx + 3].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = userInfo[msg.sender][idx + 3].field_0
        mem[32] = 158
        ships[stor157[msg.sender][idx + 3].field_0].field_0 = 0
        ships[stor157[msg.sender][idx + 3].field_0].field_256 = 0
        address(ships[stor157[msg.sender][idx + 3].field_0].field_512) = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    userInfo[msg.sender].field_768 = 0
    idx = 0
    while userInfo[msg.sender].field_768 > idx:
        userInfo[msg.sender][idx + 3].field_0 = 0
        idx = idx + 1
        continue 
    userInfo[msg.sender].field_256 = 0
    emit 0xda0a07cf: ((userInfo[msg.sender].field_0 * stor155 / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512), msg.sender
}

function sub_d13066c1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.number <= stor154:
        if userInfo[address(arg1)].field_0 and stor155 > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if userInfo[address(arg1)].field_256 > userInfo[address(arg1)].field_0 * stor155 / 10^12:
            if 0 > !userInfo[address(arg1)].field_512:
                revert with 0, 17
            return userInfo[address(arg1)].field_512
        if userInfo[address(arg1)].field_0 * stor155 / 10^12 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        if (userInfo[address(arg1)].field_0 * stor155 / 10^12) - userInfo[address(arg1)].field_256 > !userInfo[address(arg1)].field_512:
            revert with 0, 17
        return ((userInfo[address(arg1)].field_0 * stor155 / 10^12) - userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512)
    if not totalAmount:
        if userInfo[address(arg1)].field_0 and stor155 > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if userInfo[address(arg1)].field_256 > userInfo[address(arg1)].field_0 * stor155 / 10^12:
            if 0 > !userInfo[address(arg1)].field_512:
                revert with 0, 17
            return userInfo[address(arg1)].field_512
        if userInfo[address(arg1)].field_0 * stor155 / 10^12 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        if (userInfo[address(arg1)].field_0 * stor155 / 10^12) - userInfo[address(arg1)].field_256 > !userInfo[address(arg1)].field_512:
            revert with 0, 17
        return ((userInfo[address(arg1)].field_0 * stor155 / 10^12) - userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512)
    if block.number < stor154:
        revert with 0, 17
    if block.number - stor154 and BONUS_MULTIPLIER > -1 / block.number - stor154:
        revert with 0, 17
    if (block.number * BONUS_MULTIPLIER) - (stor154 * BONUS_MULTIPLIER) and sub_4eb15244 > -1 / (block.number * BONUS_MULTIPLIER) - (stor154 * BONUS_MULTIPLIER):
        revert with 0, 17
    if (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
        revert with 0, 17
    if not totalAmount:
        revert with 0, 18
    if stor155 > !(10^12 * (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 / totalAmount):
        revert with 0, 17
    if userInfo[address(arg1)].field_0 and stor155 + (10^12 * (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 / totalAmount) > -1 / userInfo[address(arg1)].field_0:
        revert with 0, 17
    if userInfo[address(arg1)].field_256 > (stor155 * userInfo[address(arg1)].field_0) + (10^12 * (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 / totalAmount * userInfo[address(arg1)].field_0) / 10^12:
        if 0 > !userInfo[address(arg1)].field_512:
            revert with 0, 17
        return userInfo[address(arg1)].field_512
    if (stor155 * userInfo[address(arg1)].field_0) + (10^12 * (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 / totalAmount * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
        revert with 0, 17
    if ((stor155 * userInfo[address(arg1)].field_0) + (10^12 * (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 / totalAmount * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256 > !userInfo[address(arg1)].field_512:
        revert with 0, 17
    return (((stor155 * userInfo[address(arg1)].field_0) + (10^12 * (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 / totalAmount * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512)
}

function sub_b99ac641(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.number <= stor154:
        if userInfo[address(arg1)].field_0 and stor155 > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if userInfo[address(arg1)].field_256 > userInfo[address(arg1)].field_0 * stor155 / 10^12:
            if 0 > !userInfo[address(arg1)].field_512:
                revert with 0, 17
            return userInfo[address(arg1)].field_0, userInfo[address(arg1)].field_512
        if userInfo[address(arg1)].field_0 * stor155 / 10^12 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        if (userInfo[address(arg1)].field_0 * stor155 / 10^12) - userInfo[address(arg1)].field_256 > !userInfo[address(arg1)].field_512:
            revert with 0, 17
        return userInfo[address(arg1)].field_0, 
               (userInfo[address(arg1)].field_0 * stor155 / 10^12) - userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512
    if not totalAmount:
        if userInfo[address(arg1)].field_0 and stor155 > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if userInfo[address(arg1)].field_256 > userInfo[address(arg1)].field_0 * stor155 / 10^12:
            if 0 > !userInfo[address(arg1)].field_512:
                revert with 0, 17
            return userInfo[address(arg1)].field_0, userInfo[address(arg1)].field_512
        if userInfo[address(arg1)].field_0 * stor155 / 10^12 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        if (userInfo[address(arg1)].field_0 * stor155 / 10^12) - userInfo[address(arg1)].field_256 > !userInfo[address(arg1)].field_512:
            revert with 0, 17
        return userInfo[address(arg1)].field_0, 
               (userInfo[address(arg1)].field_0 * stor155 / 10^12) - userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512
    if block.number < stor154:
        revert with 0, 17
    if block.number - stor154 and BONUS_MULTIPLIER > -1 / block.number - stor154:
        revert with 0, 17
    if (block.number * BONUS_MULTIPLIER) - (stor154 * BONUS_MULTIPLIER) and sub_4eb15244 > -1 / (block.number * BONUS_MULTIPLIER) - (stor154 * BONUS_MULTIPLIER):
        revert with 0, 17
    if (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
        revert with 0, 17
    if not totalAmount:
        revert with 0, 18
    if stor155 > !(10^12 * (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 / totalAmount):
        revert with 0, 17
    if userInfo[address(arg1)].field_0 and stor155 + (10^12 * (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 / totalAmount) > -1 / userInfo[address(arg1)].field_0:
        revert with 0, 17
    if userInfo[address(arg1)].field_256 > (stor155 * userInfo[address(arg1)].field_0) + (10^12 * (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 / totalAmount * userInfo[address(arg1)].field_0) / 10^12:
        if 0 > !userInfo[address(arg1)].field_512:
            revert with 0, 17
        return userInfo[address(arg1)].field_0, userInfo[address(arg1)].field_512
    if (stor155 * userInfo[address(arg1)].field_0) + (10^12 * (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 / totalAmount * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
        revert with 0, 17
    if ((stor155 * userInfo[address(arg1)].field_0) + (10^12 * (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 / totalAmount * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256 > !userInfo[address(arg1)].field_512:
        revert with 0, 17
    return userInfo[address(arg1)].field_0, 
           ((stor155 * userInfo[address(arg1)].field_0) + (10^12 * (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 / totalAmount * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512
}

function sub_4be59bc3(?) payable {
    if block.number <= stor154:
        if userInfo[address(msg.sender)].field_0 and stor155 > -1 / userInfo[address(msg.sender)].field_0:
            revert with 0, 17
        if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * stor155 / 10^12:
            if 0 > !userInfo[address(msg.sender)].field_512:
                revert with 0, 17
            return userInfo[address(msg.sender)].field_0, userInfo[address(msg.sender)].field_512
        if userInfo[address(msg.sender)].field_0 * stor155 / 10^12 < userInfo[address(msg.sender)].field_256:
            revert with 0, 17
        if (userInfo[address(msg.sender)].field_0 * stor155 / 10^12) - userInfo[address(msg.sender)].field_256 > !userInfo[address(msg.sender)].field_512:
            revert with 0, 17
        return userInfo[address(msg.sender)].field_0, 
               (userInfo[address(msg.sender)].field_0 * stor155 / 10^12) - userInfo[address(msg.sender)].field_256 + userInfo[address(msg.sender)].field_512
    if not totalAmount:
        if userInfo[address(msg.sender)].field_0 and stor155 > -1 / userInfo[address(msg.sender)].field_0:
            revert with 0, 17
        if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * stor155 / 10^12:
            if 0 > !userInfo[address(msg.sender)].field_512:
                revert with 0, 17
            return userInfo[address(msg.sender)].field_0, userInfo[address(msg.sender)].field_512
        if userInfo[address(msg.sender)].field_0 * stor155 / 10^12 < userInfo[address(msg.sender)].field_256:
            revert with 0, 17
        if (userInfo[address(msg.sender)].field_0 * stor155 / 10^12) - userInfo[address(msg.sender)].field_256 > !userInfo[address(msg.sender)].field_512:
            revert with 0, 17
        return userInfo[address(msg.sender)].field_0, 
               (userInfo[address(msg.sender)].field_0 * stor155 / 10^12) - userInfo[address(msg.sender)].field_256 + userInfo[address(msg.sender)].field_512
    if block.number < stor154:
        revert with 0, 17
    if block.number - stor154 and BONUS_MULTIPLIER > -1 / block.number - stor154:
        revert with 0, 17
    if (block.number * BONUS_MULTIPLIER) - (stor154 * BONUS_MULTIPLIER) and sub_4eb15244 > -1 / (block.number * BONUS_MULTIPLIER) - (stor154 * BONUS_MULTIPLIER):
        revert with 0, 17
    if (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
        revert with 0, 17
    if not totalAmount:
        revert with 0, 18
    if stor155 > !(10^12 * (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 / totalAmount):
        revert with 0, 17
    if userInfo[address(msg.sender)].field_0 and stor155 + (10^12 * (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 / totalAmount) > -1 / userInfo[address(msg.sender)].field_0:
        revert with 0, 17
    if userInfo[address(msg.sender)].field_256 > (stor155 * userInfo[address(msg.sender)].field_0) + (10^12 * (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 / totalAmount * userInfo[address(msg.sender)].field_0) / 10^12:
        if 0 > !userInfo[address(msg.sender)].field_512:
            revert with 0, 17
        return userInfo[address(msg.sender)].field_0, userInfo[address(msg.sender)].field_512
    if (stor155 * userInfo[address(msg.sender)].field_0) + (10^12 * (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 / totalAmount * userInfo[address(msg.sender)].field_0) / 10^12 < userInfo[address(msg.sender)].field_256:
        revert with 0, 17
    if ((stor155 * userInfo[address(msg.sender)].field_0) + (10^12 * (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 / totalAmount * userInfo[address(msg.sender)].field_0) / 10^12) - userInfo[address(msg.sender)].field_256 > !userInfo[address(msg.sender)].field_512:
        revert with 0, 17
    return userInfo[address(msg.sender)].field_0, 
           ((stor155 * userInfo[address(msg.sender)].field_0) + (10^12 * (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 / totalAmount * userInfo[address(msg.sender)].field_0) / 10^12) - userInfo[address(msg.sender)].field_256 + userInfo[address(msg.sender)].field_512
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor156:
        revert with 0, 'GM::NTY'
    if not userInfo[address(msg.sender)].field_0:
        revert with 0, 'GM::W:UAI0'
    if not ships[arg1].field_0:
        revert with 0, 'GM::W:SMI0'
    if userInfo[address(msg.sender)].field_768 <= 0:
        revert with 0, 'GM::WA:CSLI0'
    if block.number > stor154:
        if totalAmount:
            if block.number < stor154:
                revert with 0, 17
            if block.number - stor154 and BONUS_MULTIPLIER > -1 / block.number - stor154:
                revert with 0, 17
            if (block.number * BONUS_MULTIPLIER) - (stor154 * BONUS_MULTIPLIER) and sub_4eb15244 > -1 / (block.number * BONUS_MULTIPLIER) - (stor154 * BONUS_MULTIPLIER):
                revert with 0, 17
            if (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                revert with 0, 17
            if not totalAmount:
                revert with 0, 18
            if stor155 > !(10^12 * (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 / totalAmount):
                revert with 0, 17
            stor155 += 10^12 * (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 / totalAmount
        stor154 = block.number
    if userInfo[address(msg.sender)].field_0 and stor155 > -1 / userInfo[address(msg.sender)].field_0:
        revert with 0, 17
    if userInfo[address(msg.sender)].field_0 * stor155 / 10^12 < userInfo[address(msg.sender)].field_256:
        revert with 0, 17
    if (userInfo[address(msg.sender)].field_0 * stor155 / 10^12) - userInfo[address(msg.sender)].field_256 > !userInfo[address(msg.sender)].field_512:
        revert with 0, 17
    if (userInfo[address(msg.sender)].field_0 * stor155 / 10^12) - userInfo[address(msg.sender)].field_256 + userInfo[address(msg.sender)].field_512:
        userInfo[address(msg.sender)].field_512 = 0
        require ext_code.size(sub_e1fff237Address)
        call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, (userInfo[address(msg.sender)].field_0 * stor155 / 10^12) - userInfo[address(msg.sender)].field_256 + userInfo[address(msg.sender)].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if userInfo[address(msg.sender)].field_0 < ships[arg1].field_0:
        revert with 0, 17
    userInfo[address(msg.sender)].field_0 -= ships[arg1].field_0
    if totalAmount < ships[arg1].field_0:
        revert with 0, 17
    totalAmount -= ships[arg1].field_0
    if userInfo[address(msg.sender)].field_768 == 1:
        userInfo[address(msg.sender)].field_768 = 0
        idx = 0
        while userInfo[address(msg.sender)].field_768 > idx:
            userInfo[address(msg.sender)][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if userInfo[address(msg.sender)].field_768 < 1:
            revert with 0, 17
        if userInfo[address(msg.sender)].field_768 - 1 >= userInfo[address(msg.sender)].field_768:
            revert with 0, 50
        if ships[arg1].field_256 >= userInfo[address(msg.sender)].field_768:
            revert with 0, 50
        stor[stor158[arg1].field_256 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 157)))].field_0 = stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 157))) + userInfo[address(msg.sender)].field_768].field_0
        ships[stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor157', 157))) + stor157[address(msg.sender)].field_768].field_0].field_256 = ships[arg1].field_256
        if not userInfo[address(msg.sender)].field_768:
            revert with 0, 49
        stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 157))) + userInfo[address(msg.sender)].field_768].field_0 = 0
        userInfo[address(msg.sender)].field_768--
    require ext_code.size(sub_f9817570Address)
    call sub_f9817570Address.0x42842e0e with:
         gas gas_remaining wei
        args this.address, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    ships[arg1].field_0 = 0
    ships[arg1].field_256 = 0
    address(ships[arg1].field_512) = 0
    if userInfo[address(msg.sender)].field_0 and stor155 > -1 / userInfo[address(msg.sender)].field_0:
        revert with 0, 17
    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor155 / 10^12
    emit __withdraw(arg1, (userInfo[address(msg.sender)].field_0 * stor155 / 10^12) - userInfo[address(msg.sender)].field_256 + userInfo[address(msg.sender)].field_512, msg.sender);
}

function sub_01b995ac(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 4).length) + 97 < 96 or floor32(('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if not stor156:
        revert with 0, 'GM::NTY'
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _180 = mem[(32 * idx) + 128]
        if not userInfo[address(msg.sender)].field_0:
            revert with 0, 'GM::W:UAI0'
        if not ships[mem[(32 * idx) + 128]].field_0:
            revert with 0, 'GM::W:SMI0'
        if userInfo[address(msg.sender)].field_768 <= 0:
            revert with 0, 'GM::WA:CSLI0'
        if block.number > stor154:
            if totalAmount:
                if block.number < stor154:
                    revert with 0, 17
                if block.number - stor154 and BONUS_MULTIPLIER > -1 / block.number - stor154:
                    revert with 0, 17
                if (block.number * BONUS_MULTIPLIER) - (stor154 * BONUS_MULTIPLIER) and sub_4eb15244 > -1 / (block.number * BONUS_MULTIPLIER) - (stor154 * BONUS_MULTIPLIER):
                    revert with 0, 17
                if (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                    revert with 0, 17
                if not totalAmount:
                    revert with 0, 18
                if stor155 > !(10^12 * (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 / totalAmount):
                    revert with 0, 17
                stor155 += 10^12 * (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 / totalAmount
            stor154 = block.number
        if userInfo[address(msg.sender)].field_0 and stor155 > -1 / userInfo[address(msg.sender)].field_0:
            revert with 0, 17
        if userInfo[address(msg.sender)].field_0 * stor155 / 10^12 < userInfo[address(msg.sender)].field_256:
            revert with 0, 17
        if (userInfo[address(msg.sender)].field_0 * stor155 / 10^12) - userInfo[address(msg.sender)].field_256 > !userInfo[address(msg.sender)].field_512:
            revert with 0, 17
        if (userInfo[address(msg.sender)].field_0 * stor155 / 10^12) - userInfo[address(msg.sender)].field_256 + userInfo[address(msg.sender)].field_512:
            userInfo[address(msg.sender)].field_512 = 0
            require ext_code.size(sub_e1fff237Address)
            call sub_e1fff237Address.deposit(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, (userInfo[address(msg.sender)].field_0 * stor155 / 10^12) - userInfo[address(msg.sender)].field_256 + userInfo[address(msg.sender)].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if userInfo[address(msg.sender)].field_0 < ships[mem[(32 * idx) + 128]].field_0:
            revert with 0, 17
        userInfo[address(msg.sender)].field_0 -= ships[mem[(32 * idx) + 128]].field_0
        if totalAmount < ships[mem[(32 * idx) + 128]].field_0:
            revert with 0, 17
        totalAmount -= ships[mem[(32 * idx) + 128]].field_0
        if userInfo[address(msg.sender)].field_768 == 1:
            userInfo[address(msg.sender)].field_768 = 0
            t = sha3(sha3(address(msg.sender), 157) + 3)
            while sha3(sha3(address(msg.sender), 157) + 3) + userInfo[address(msg.sender)].field_768 > t:
                stor[t] = 0
                t = t + 1
                continue 
        else:
            if userInfo[address(msg.sender)].field_768 < 1:
                revert with 0, 17
            if userInfo[address(msg.sender)].field_768 - 1 >= userInfo[address(msg.sender)].field_768:
                revert with 0, 50
            if ships[mem[(32 * idx) + 128]].field_256 >= userInfo[address(msg.sender)].field_768:
                revert with 0, 50
            stor[stor158[mem[(32 * idx) + 128]].field_256 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 157)))].field_0 = stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 157))) + userInfo[address(msg.sender)].field_768].field_0
            ships[stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor157', 157))) + stor157[address(msg.sender)].field_768].field_0].field_256 = ships[mem[(32 * idx) + 128]].field_256
            if not userInfo[address(msg.sender)].field_768:
                revert with 0, 49
            stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 157))) + userInfo[address(msg.sender)].field_768].field_0 = 0
            userInfo[address(msg.sender)].field_768--
        mem[floor32(('cd', 4).length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 4).length) + 101] = this.address
        mem[floor32(('cd', 4).length) + 133] = msg.sender
        mem[floor32(('cd', 4).length) + 165] = _180
        require ext_code.size(sub_f9817570Address)
        call sub_f9817570Address.0x42842e0e with:
             gas gas_remaining wei
            args this.address, msg.sender, _180
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = _180
        mem[32] = 158
        ships[_180].field_0 = 0
        ships[_180].field_256 = 0
        address(ships[_180].field_512) = 0
        if userInfo[address(msg.sender)].field_0 and stor155 > -1 / userInfo[address(msg.sender)].field_0:
            revert with 0, 17
        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor155 / 10^12
        if s > !((userInfo[address(msg.sender)].field_0 * stor155 / 10^12) - userInfo[address(msg.sender)].field_256 + userInfo[address(msg.sender)].field_512):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (userInfo[address(msg.sender)].field_0 * stor155 / 10^12) - userInfo[address(msg.sender)].field_256 + userInfo[address(msg.sender)].field_512
        continue 
    emit 0x937c9b12: s, msg.sender
}

function sub_e6d7cf8d(?) payable {
    mem[0] = msg.sender
    mem[32] = 157
    mem[96] = userInfo[msg.sender].field_768
    if not userInfo[msg.sender].field_768:
        if userInfo[msg.sender].field_768 > test266151307():
            revert with 0, 65
        mem[(32 * userInfo[msg.sender].field_768) + 128] = userInfo[msg.sender].field_768
        mem[64] = (64 * userInfo[msg.sender].field_768) + 160
        if not userInfo[msg.sender].field_768:
            idx = 0
            while idx < userInfo[msg.sender].field_768:
                if idx >= userInfo[msg.sender].field_768:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 158
                if idx >= userInfo[msg.sender].field_768:
                    revert with 0, 50
                mem[(32 * idx) + (32 * userInfo[msg.sender].field_768) + 160] = address(ships[mem[(32 * idx) + 128]].field_512)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[(64 * userInfo[msg.sender].field_768) + 160] = 64
            mem[(64 * userInfo[msg.sender].field_768) + 224] = userInfo[msg.sender].field_768
            s = 0
            s = 128
            t = mem[64] + 96
            while userInfo[msg.sender].field_768 < userInfo[msg.sender].field_768:
                mem[t] = mem[s]
                s = userInfo[msg.sender].field_768 + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(64 * userInfo[msg.sender].field_768) + 192] = t + -(64 * userInfo[msg.sender].field_768) - 160
            _51 = mem[(32 * userInfo[msg.sender].field_768) + 128]
            mem[t] = mem[(32 * userInfo[msg.sender].field_768) + 128]
            idx = 0
            s = t + 32
            u = (32 * userInfo[msg.sender].field_768) + 160
            while idx < _51:
                mem[s] = mem[u + 12 len 20]
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t + (32 * _51) + -mem[64] + 32
        mem[(32 * userInfo[msg.sender].field_768) + 160 len 32 * userInfo[msg.sender].field_768] = call.data[calldata.size len 32 * userInfo[msg.sender].field_768]
        idx = 0
        while idx < userInfo[msg.sender].field_768:
            if idx >= userInfo[msg.sender].field_768:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 158
            if idx >= userInfo[msg.sender].field_768:
                revert with 0, 50
            mem[(32 * idx) + (32 * userInfo[msg.sender].field_768) + 160] = address(ships[mem[(32 * idx) + 128]].field_512)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[(64 * userInfo[msg.sender].field_768) + 160] = 64
        mem[(64 * userInfo[msg.sender].field_768) + 224] = userInfo[msg.sender].field_768
        s = 0
        s = 128
        t = mem[64] + 96
        while userInfo[msg.sender].field_768 < userInfo[msg.sender].field_768:
            mem[t] = mem[s]
            s = userInfo[msg.sender].field_768 + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(64 * userInfo[msg.sender].field_768) + 192] = t + -(64 * userInfo[msg.sender].field_768) - 160
        _53 = mem[(32 * userInfo[msg.sender].field_768) + 128]
        mem[t] = mem[(32 * userInfo[msg.sender].field_768) + 128]
        idx = 0
        s = t + 32
        u = (32 * userInfo[msg.sender].field_768) + 160
        while idx < _53:
            mem[s] = mem[u + 12 len 20]
            idx = idx + 1
            s = s + 32
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t + (32 * _53) + -mem[64] + 32
    mem[0] = sha3(msg.sender, 157) + 3
    mem[128] = userInfo[msg.sender][3].field_0
    idx = 128
    s = 0
    while (32 * userInfo[msg.sender].field_768) + 96 > idx:
        mem[idx + 32] = userInfo[msg.sender][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if userInfo[msg.sender].field_768 > test266151307():
        revert with 0, 65
    mem[(32 * userInfo[msg.sender].field_768) + 128] = userInfo[msg.sender].field_768
    mem[64] = (64 * userInfo[msg.sender].field_768) + 160
    if not userInfo[msg.sender].field_768:
        idx = 0
        while idx < userInfo[msg.sender].field_768:
            if idx >= userInfo[msg.sender].field_768:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 158
            if idx >= userInfo[msg.sender].field_768:
                revert with 0, 50
            mem[(32 * idx) + (32 * userInfo[msg.sender].field_768) + 160] = address(ships[mem[(32 * idx) + 128]].field_512)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[(64 * userInfo[msg.sender].field_768) + 160] = 64
        mem[(64 * userInfo[msg.sender].field_768) + 224] = userInfo[msg.sender].field_768
        s = 0
        s = 128
        t = mem[64] + 96
        while userInfo[msg.sender].field_768 < userInfo[msg.sender].field_768:
            mem[t] = mem[s]
            s = userInfo[msg.sender].field_768 + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(64 * userInfo[msg.sender].field_768) + 192] = t + -(64 * userInfo[msg.sender].field_768) - 160
        _108 = mem[(32 * userInfo[msg.sender].field_768) + 128]
        mem[t] = mem[(32 * userInfo[msg.sender].field_768) + 128]
        idx = 0
        s = t + 32
        u = (32 * userInfo[msg.sender].field_768) + 160
        while idx < _108:
            mem[s] = mem[u + 12 len 20]
            idx = idx + 1
            s = s + 32
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t + (32 * _108) + -mem[64] + 32
    mem[(32 * userInfo[msg.sender].field_768) + 160 len 32 * userInfo[msg.sender].field_768] = call.data[calldata.size len 32 * userInfo[msg.sender].field_768]
    idx = 0
    while idx < userInfo[msg.sender].field_768:
        if idx >= userInfo[msg.sender].field_768:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 158
        if idx >= userInfo[msg.sender].field_768:
            revert with 0, 50
        mem[(32 * idx) + (32 * userInfo[msg.sender].field_768) + 160] = address(ships[mem[(32 * idx) + 128]].field_512)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(64 * userInfo[msg.sender].field_768) + 160] = 64
    mem[(64 * userInfo[msg.sender].field_768) + 224] = userInfo[msg.sender].field_768
    s = 0
    s = 128
    t = mem[64] + 96
    while userInfo[msg.sender].field_768 < userInfo[msg.sender].field_768:
        mem[t] = mem[s]
        s = userInfo[msg.sender].field_768 + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(64 * userInfo[msg.sender].field_768) + 192] = t + -(64 * userInfo[msg.sender].field_768) - 160
    _110 = mem[(32 * userInfo[msg.sender].field_768) + 128]
    mem[t] = mem[(32 * userInfo[msg.sender].field_768) + 128]
    idx = 0
    s = t + 32
    u = (32 * userInfo[msg.sender].field_768) + 160
    while idx < _110:
        mem[s] = mem[u + 12 len 20]
        idx = idx + 1
        s = s + 32
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t + (32 * _110) + -mem[64] + 32
}

function sub_6f3b5a71(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 36).length) + 97 < 96 or floor32(('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 68).length) + 98 < 97 or floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 > test266151307():
        revert with 0, 65
    mem[floor32(('cd', 36).length) + 97] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    s = cd[68] + 36
    t = floor32(('cd', 36).length) + 129
    idx = 0
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 132).length)) + 99 < 98 or floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + 99 > test266151307():
        revert with 0, 65
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98] = ('cd', 132).length
    require cd[132] + ('cd', 132).length + 36 <= calldata.size
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130 len ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ('cd', 132).length + 130] = 0
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + 103] = address(cd[4])
    require ext_code.size(sub_ad6210b8Address)
    staticcall sub_ad6210b8Address.0x5f1fd848 with:
            gas gas_remaining wei
           args address(cd[4])
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + 99] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if ext_call.return_data[31 len 1] != 1:
        revert with 0, 'GM::NIM'
    if cd[100] <= block.timestamp:
        revert with 0, 'expired'
    if ('cd', 36).length > 5:
        revert with 0, 'GM::EMV'
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 131] = address(msg.sender)
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 151] = address(this.address)
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 171] = address(cd[4])
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 191 len 32 * ('cd', 36).length] = mem[128 len 32 * ('cd', 36).length]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 191 len 32 * ('cd', 68).length] = mem[floor32(('cd', 36).length) + 129 len 32 * ('cd', 68).length]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 191] = cd[100]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 99] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 92
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 255] = '\x19Ethereum Signed Message:\n32'
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 283] = sha3(msg.sender, this.address, address(cd[4]), mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 191 len (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 32])
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 223] = 60
    require 65 == ('cd', 132).length
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 347
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 347] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(msg.sender, this.address, address(cd[4]), mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 191 len (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 32]))
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 379] = 0
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 411] = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 443] = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 162]
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(msg.sender, this.address, address(cd[4]), mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 191 len (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 32])), 0, mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130], mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 162]) 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 315] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != sub_4fb3ccc5Address:
        revert with 0, 'signature does not match'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 0, 50
        _906 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(('cd', 36).length) + 97]:
            revert with 0, 50
        _908 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _906
        require ext_code.size(sub_f9817570Address)
        call sub_f9817570Address.0x42842e0e with:
             gas gas_remaining wei
            args msg.sender, this.address, _906
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[32] = 157
        if block.number <= stor154:
            if not userInfo[address(msg.sender)].field_0:
                if not _908:
                    userInfo[address(msg.sender)].field_768++
                    mem[0] = sha3(address(msg.sender), 157) + 3
                    stor[userInfo[address(msg.sender)].field_768 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 157)))].field_0 = _906
                    _913 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_913] = _908
                    if userInfo[address(msg.sender)].field_768 < 1:
                        revert with 0, 17
                    mem[_913 + 32] = userInfo[address(msg.sender)].field_768 - 1
                    mem[_913 + 64] = address(cd[4])
                else:
                    if totalAmount > !_908:
                        revert with 0, 17
                    totalAmount += _908
                    if userInfo[address(msg.sender)].field_0 > !_908:
                        revert with 0, 17
                    userInfo[address(msg.sender)].field_0 += _908
                    userInfo[address(msg.sender)].field_768++
                    mem[0] = sha3(address(msg.sender), 157) + 3
                    stor[userInfo[address(msg.sender)].field_768 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 157)))].field_0 = _906
                    _925 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_925] = _908
                    if userInfo[address(msg.sender)].field_768 < 1:
                        revert with 0, 17
                    mem[_925 + 32] = userInfo[address(msg.sender)].field_768 - 1
                    mem[_925 + 64] = address(cd[4])
            else:
                if userInfo[address(msg.sender)].field_0 and stor155 > -1 / userInfo[address(msg.sender)].field_0:
                    revert with 0, 17
                if userInfo[address(msg.sender)].field_0 * stor155 / 10^12 < userInfo[address(msg.sender)].field_256:
                    revert with 0, 17
                if not (userInfo[address(msg.sender)].field_0 * stor155 / 10^12) - userInfo[address(msg.sender)].field_256:
                    if not _908:
                        userInfo[address(msg.sender)].field_768++
                        mem[0] = sha3(address(msg.sender), 157) + 3
                        stor[userInfo[address(msg.sender)].field_768 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 157)))].field_0 = _906
                        _941 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_941] = _908
                        if userInfo[address(msg.sender)].field_768 < 1:
                            revert with 0, 17
                        mem[_941 + 32] = userInfo[address(msg.sender)].field_768 - 1
                        mem[_941 + 64] = address(cd[4])
                    else:
                        if totalAmount > !_908:
                            revert with 0, 17
                        totalAmount += _908
                        if userInfo[address(msg.sender)].field_0 > !_908:
                            revert with 0, 17
                        userInfo[address(msg.sender)].field_0 += _908
                        userInfo[address(msg.sender)].field_768++
                        mem[0] = sha3(address(msg.sender), 157) + 3
                        stor[userInfo[address(msg.sender)].field_768 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 157)))].field_0 = _906
                        _961 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_961] = _908
                        if userInfo[address(msg.sender)].field_768 < 1:
                            revert with 0, 17
                        mem[_961 + 32] = userInfo[address(msg.sender)].field_768 - 1
                        mem[_961 + 64] = address(cd[4])
                else:
                    if userInfo[address(msg.sender)].field_512 > !((userInfo[address(msg.sender)].field_0 * stor155 / 10^12) - userInfo[address(msg.sender)].field_256):
                        revert with 0, 17
                    userInfo[address(msg.sender)].field_512 = userInfo[address(msg.sender)].field_512 + (userInfo[address(msg.sender)].field_0 * stor155 / 10^12) - userInfo[address(msg.sender)].field_256
                    if not _908:
                        userInfo[address(msg.sender)].field_768++
                        mem[0] = sha3(address(msg.sender), 157) + 3
                        stor[userInfo[address(msg.sender)].field_768 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 157)))].field_0 = _906
                        _953 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_953] = _908
                        if userInfo[address(msg.sender)].field_768 < 1:
                            revert with 0, 17
                        mem[_953 + 32] = userInfo[address(msg.sender)].field_768 - 1
                        mem[_953 + 64] = address(cd[4])
                    else:
                        if totalAmount > !_908:
                            revert with 0, 17
                        totalAmount += _908
                        if userInfo[address(msg.sender)].field_0 > !_908:
                            revert with 0, 17
                        userInfo[address(msg.sender)].field_0 += _908
                        userInfo[address(msg.sender)].field_768++
                        mem[0] = sha3(address(msg.sender), 157) + 3
                        stor[userInfo[address(msg.sender)].field_768 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 157)))].field_0 = _906
                        _985 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_985] = _908
                        if userInfo[address(msg.sender)].field_768 < 1:
                            revert with 0, 17
                        mem[_985 + 32] = userInfo[address(msg.sender)].field_768 - 1
                        mem[_985 + 64] = address(cd[4])
        else:
            if not totalAmount:
                stor154 = block.number
                if not userInfo[address(msg.sender)].field_0:
                    if not _908:
                        userInfo[address(msg.sender)].field_768++
                        mem[0] = sha3(address(msg.sender), 157) + 3
                        stor[userInfo[address(msg.sender)].field_768 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 157)))].field_0 = _906
                        _915 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_915] = _908
                        if userInfo[address(msg.sender)].field_768 < 1:
                            revert with 0, 17
                        mem[_915 + 32] = userInfo[address(msg.sender)].field_768 - 1
                        mem[_915 + 64] = address(cd[4])
                    else:
                        if totalAmount > !_908:
                            revert with 0, 17
                        totalAmount += _908
                        if userInfo[address(msg.sender)].field_0 > !_908:
                            revert with 0, 17
                        userInfo[address(msg.sender)].field_0 += _908
                        userInfo[address(msg.sender)].field_768++
                        mem[0] = sha3(address(msg.sender), 157) + 3
                        stor[userInfo[address(msg.sender)].field_768 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 157)))].field_0 = _906
                        _927 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_927] = _908
                        if userInfo[address(msg.sender)].field_768 < 1:
                            revert with 0, 17
                        mem[_927 + 32] = userInfo[address(msg.sender)].field_768 - 1
                        mem[_927 + 64] = address(cd[4])
                else:
                    if userInfo[address(msg.sender)].field_0 and stor155 > -1 / userInfo[address(msg.sender)].field_0:
                        revert with 0, 17
                    if userInfo[address(msg.sender)].field_0 * stor155 / 10^12 < userInfo[address(msg.sender)].field_256:
                        revert with 0, 17
                    if not (userInfo[address(msg.sender)].field_0 * stor155 / 10^12) - userInfo[address(msg.sender)].field_256:
                        if not _908:
                            userInfo[address(msg.sender)].field_768++
                            mem[0] = sha3(address(msg.sender), 157) + 3
                            stor[userInfo[address(msg.sender)].field_768 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 157)))].field_0 = _906
                            _943 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_943] = _908
                            if userInfo[address(msg.sender)].field_768 < 1:
                                revert with 0, 17
                            mem[_943 + 32] = userInfo[address(msg.sender)].field_768 - 1
                            mem[_943 + 64] = address(cd[4])
                        else:
                            if totalAmount > !_908:
                                revert with 0, 17
                            totalAmount += _908
                            if userInfo[address(msg.sender)].field_0 > !_908:
                                revert with 0, 17
                            userInfo[address(msg.sender)].field_0 += _908
                            userInfo[address(msg.sender)].field_768++
                            mem[0] = sha3(address(msg.sender), 157) + 3
                            stor[userInfo[address(msg.sender)].field_768 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 157)))].field_0 = _906
                            _967 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_967] = _908
                            if userInfo[address(msg.sender)].field_768 < 1:
                                revert with 0, 17
                            mem[_967 + 32] = userInfo[address(msg.sender)].field_768 - 1
                            mem[_967 + 64] = address(cd[4])
                    else:
                        if userInfo[address(msg.sender)].field_512 > !((userInfo[address(msg.sender)].field_0 * stor155 / 10^12) - userInfo[address(msg.sender)].field_256):
                            revert with 0, 17
                        userInfo[address(msg.sender)].field_512 = userInfo[address(msg.sender)].field_512 + (userInfo[address(msg.sender)].field_0 * stor155 / 10^12) - userInfo[address(msg.sender)].field_256
                        if not _908:
                            userInfo[address(msg.sender)].field_768++
                            mem[0] = sha3(address(msg.sender), 157) + 3
                            stor[userInfo[address(msg.sender)].field_768 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 157)))].field_0 = _906
                            _955 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_955] = _908
                            if userInfo[address(msg.sender)].field_768 < 1:
                                revert with 0, 17
                            mem[_955 + 32] = userInfo[address(msg.sender)].field_768 - 1
                            mem[_955 + 64] = address(cd[4])
                        else:
                            if totalAmount > !_908:
                                revert with 0, 17
                            totalAmount += _908
                            if userInfo[address(msg.sender)].field_0 > !_908:
                                revert with 0, 17
                            userInfo[address(msg.sender)].field_0 += _908
                            userInfo[address(msg.sender)].field_768++
                            mem[0] = sha3(address(msg.sender), 157) + 3
                            stor[userInfo[address(msg.sender)].field_768 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 157)))].field_0 = _906
                            _987 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_987] = _908
                            if userInfo[address(msg.sender)].field_768 < 1:
                                revert with 0, 17
                            mem[_987 + 32] = userInfo[address(msg.sender)].field_768 - 1
                            mem[_987 + 64] = address(cd[4])
            else:
                if block.number < stor154:
                    revert with 0, 17
                if block.number - stor154 and BONUS_MULTIPLIER > -1 / block.number - stor154:
                    revert with 0, 17
                if (block.number * BONUS_MULTIPLIER) - (stor154 * BONUS_MULTIPLIER) and sub_4eb15244 > -1 / (block.number * BONUS_MULTIPLIER) - (stor154 * BONUS_MULTIPLIER):
                    revert with 0, 17
                if (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                    revert with 0, 17
                if not totalAmount:
                    revert with 0, 18
                if stor155 > !(10^12 * (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 / totalAmount):
                    revert with 0, 17
                stor155 += 10^12 * (block.number * BONUS_MULTIPLIER * sub_4eb15244) - (stor154 * BONUS_MULTIPLIER * sub_4eb15244) / 1000 / totalAmount
                stor154 = block.number
                if not userInfo[address(msg.sender)].field_0:
                    if not _908:
                        userInfo[address(msg.sender)].field_768++
                        mem[0] = sha3(address(msg.sender), 157) + 3
                        stor[userInfo[address(msg.sender)].field_768 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 157)))].field_0 = _906
                        _989 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_989] = _908
                        if userInfo[address(msg.sender)].field_768 < 1:
                            revert with 0, 17
                        mem[_989 + 32] = userInfo[address(msg.sender)].field_768 - 1
                        mem[_989 + 64] = address(cd[4])
                    else:
                        if totalAmount > !_908:
                            revert with 0, 17
                        totalAmount += _908
                        if userInfo[address(msg.sender)].field_0 > !_908:
                            revert with 0, 17
                        userInfo[address(msg.sender)].field_0 += _908
                        userInfo[address(msg.sender)].field_768++
                        mem[0] = sha3(address(msg.sender), 157) + 3
                        stor[userInfo[address(msg.sender)].field_768 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 157)))].field_0 = _906
                        _1011 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1011] = _908
                        if userInfo[address(msg.sender)].field_768 < 1:
                            revert with 0, 17
                        mem[_1011 + 32] = userInfo[address(msg.sender)].field_768 - 1
                        mem[_1011 + 64] = address(cd[4])
                else:
                    if userInfo[address(msg.sender)].field_0 and stor155 > -1 / userInfo[address(msg.sender)].field_0:
                        revert with 0, 17
                    if userInfo[address(msg.sender)].field_0 * stor155 / 10^12 < userInfo[address(msg.sender)].field_256:
                        revert with 0, 17
                    if not (userInfo[address(msg.sender)].field_0 * stor155 / 10^12) - userInfo[address(msg.sender)].field_256:
                        if not _908:
                            userInfo[address(msg.sender)].field_768++
                            mem[0] = sha3(address(msg.sender), 157) + 3
                            stor[userInfo[address(msg.sender)].field_768 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 157)))].field_0 = _906
                            _1023 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1023] = _908
                            if userInfo[address(msg.sender)].field_768 < 1:
                                revert with 0, 17
                            mem[_1023 + 32] = userInfo[address(msg.sender)].field_768 - 1
                            mem[_1023 + 64] = address(cd[4])
                        else:
                            if totalAmount > !_908:
                                revert with 0, 17
                            totalAmount += _908
                            if userInfo[address(msg.sender)].field_0 > !_908:
                                revert with 0, 17
                            userInfo[address(msg.sender)].field_0 += _908
                            userInfo[address(msg.sender)].field_768++
                            mem[0] = sha3(address(msg.sender), 157) + 3
                            stor[userInfo[address(msg.sender)].field_768 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 157)))].field_0 = _906
                            _1033 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1033] = _908
                            if userInfo[address(msg.sender)].field_768 < 1:
                                revert with 0, 17
                            mem[_1033 + 32] = userInfo[address(msg.sender)].field_768 - 1
                            mem[_1033 + 64] = address(cd[4])
                    else:
                        if userInfo[address(msg.sender)].field_512 > !((userInfo[address(msg.sender)].field_0 * stor155 / 10^12) - userInfo[address(msg.sender)].field_256):
                            revert with 0, 17
                        userInfo[address(msg.sender)].field_512 = userInfo[address(msg.sender)].field_512 + (userInfo[address(msg.sender)].field_0 * stor155 / 10^12) - userInfo[address(msg.sender)].field_256
                        if not _908:
                            userInfo[address(msg.sender)].field_768++
                            mem[0] = sha3(address(msg.sender), 157) + 3
                            stor[userInfo[address(msg.sender)].field_768 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 157)))].field_0 = _906
                            _1029 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1029] = _908
                            if userInfo[address(msg.sender)].field_768 < 1:
                                revert with 0, 17
                            mem[_1029 + 32] = userInfo[address(msg.sender)].field_768 - 1
                            mem[_1029 + 64] = address(cd[4])
                        else:
                            if totalAmount > !_908:
                                revert with 0, 17
                            totalAmount += _908
                            if userInfo[address(msg.sender)].field_0 > !_908:
                                revert with 0, 17
                            userInfo[address(msg.sender)].field_0 += _908
                            userInfo[address(msg.sender)].field_768++
                            mem[0] = sha3(address(msg.sender), 157) + 3
                            stor[userInfo[address(msg.sender)].field_768 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 157)))].field_0 = _906
                            _1045 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1045] = _908
                            if userInfo[address(msg.sender)].field_768 < 1:
                                revert with 0, 17
                            mem[_1045 + 32] = userInfo[address(msg.sender)].field_768 - 1
                            mem[_1045 + 64] = address(cd[4])
        mem[0] = _906
        mem[32] = 158
        ships[_906].field_0 = _908
        ships[_906].field_256 = userInfo[address(msg.sender)].field_768 - 1
        address(ships[_906].field_512) = address(cd[4])
        if userInfo[address(msg.sender)].field_0 and stor155 > -1 / userInfo[address(msg.sender)].field_0:
            revert with 0, 17
        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor155 / 10^12
        mem[mem[64]] = _906
        mem[mem[64] + 32] = _908
        emit 0x7dacef04: _906, _908, msg.sender
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
