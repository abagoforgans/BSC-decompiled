contract main {




// =====================  Runtime code  =====================


#
#  - claim(address arg1, address arg2, uint256 arg3)
#  - isERC721(address arg1)
#
const sub_c841c3e2(?) = 0x9ae5be7f3557dc0da58d13fb0b64201fdd7cd6140e1316d9491477b59a898ed3

const GAME_ADMIN = 0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab

const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
uint8 paused;
mapping of struct roleAdmin;
mapping of uint8 stor201;
uint256 stor203;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function paused() payable {
    return bool(paused)
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function isUserBanned(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor201[arg1])
}

function _fallback() payable {
    revert
}

function setCoolDown(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0:
        revert with 0, 'Not game admin'
    stor203 = arg1
}

function pause() payable {
    if not roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0:
        revert with 0, 'Not game admin'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if not roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0:
        revert with 0, 'Not game admin'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function setUserBan(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0:
        revert with 0, 'Not game admin'
    stor201[address(arg1)] = uint8(arg2)
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_29f517e8(?) payable {
    if not roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0:
        revert with 0, 'Not game admin'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function removeAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0:
        revert with 0, 'Not game admin'
    if roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(arg1)].field_0:
        roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(arg1)].field_0 = 0
        emit RoleRevoked(0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab, arg1, msg.sender);
}

function setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0:
        revert with 0, 'Not game admin'
    if not roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(arg1)].field_0:
        roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(arg1)].field_0 = 1
        emit RoleGranted(0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab, arg1, msg.sender);
}

function sub_799e6b61(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    if not roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0:
        revert with 0, 'Not game admin'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 201
        stor201[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_565af558(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0:
        revert with 0, 'Not game admin'
    if this.address == address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot transfer out tokens from contract!'
    if not ext_code.size(address(arg1)):
        revert with 0, 'Need a contract address'
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_393ff938(?) payable {
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    paused = 0
    if not roleAdmin[0][address(msg.sender)].field_0:
        roleAdmin[0][address(msg.sender)].field_0 = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    if not roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0:
        roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0 = 1
        emit RoleGranted(0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab, msg.sender, msg.sender);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
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

function initialize(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        uint16(stor0.field_0) = 257
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    paused = 0
    if not roleAdmin[0][address(msg.sender)].field_0:
        roleAdmin[0][address(msg.sender)].field_0 = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    if not roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0:
        roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0 = 1
        emit RoleGranted(0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab, msg.sender, msg.sender);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
    if not roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(arg1)].field_0:
        roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(arg1)].field_0 = 1
        emit RoleGranted(0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab, arg1, msg.sender);
    stor203 = arg2
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}



}
