contract main {




// =====================  Runtime code  =====================


#
#  - sub_83931523(?)
#
const sub_416406ce(?) = 15000 * 10^18

const sub_44d22ac6(?) = (477480 * 24 * 3600)

const sub_d514487a(?) = 500 * 10^18

const sub_dd950167(?) = (12500 * 10^18 * 3600)

const sub_e1e04dd9(?) = 5000000 * 10^18

const LOCK_PERIOD = (4320 * 24 * 3600)

const START_DATE = (456616 * 3600)

const END_DATE = (456760 * 3600)

const DEFAULT_ADMIN_ROLE = 0

const TOKEN_PRICE = 25 * 10^15

const PAUSER_ROLE = 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a


uint8 stor0;
mapping of struct roleAdmin;
array of struct roleMember;
uint256 stor3;
address stor4;
address sub_f2d81b86Address;
uint64 startDate; offset 160
address BUSDAddress;
uint64 endDate;
uint64 vestedDate; offset 64
uint64 sub_7cd1585d; offset 128
uint64 lockPeriod; offset 192
uint256 tokenPrice;
uint256 sub_2804e917;
uint256 sub_baf46a10;
uint256 sub_736f4782;
uint256 sub_61bb1359;
uint256 sub_4f19f6bd;
mapping of struct account;

function startDate() payable {
    return startDate
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_2804e917(?) payable {
    return sub_2804e917
}

function lockPeriod() payable {
    return lockPeriod
}

function BUSD() payable {
    return BUSDAddress
}

function sub_4f19f6bd(?) payable {
    return sub_4f19f6bd
}

function paused() payable {
    return bool(stor0)
}

function accounts(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return account[arg1].field_0, 
           account[arg1].field_256,
           account[arg1].field_512,
           account[arg1].field_768,
           bool(account[arg1].field_1024),
           bool(account[arg1].field_1032)
}

function sub_61bb1359(?) payable {
    return sub_61bb1359
}

function vestedDate() payable {
    return vestedDate
}

function sub_736f4782(?) payable {
    return sub_736f4782
}

function account(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return account[address(arg1)].field_0, 
           account[address(arg1)].field_256,
           account[address(arg1)].field_512,
           account[address(arg1)].field_768,
           bool(account[address(arg1)].field_1024),
           bool(account[address(arg1)].field_1032)
}

function sub_7cd1585d(?) payable {
    return sub_7cd1585d
}

function tokenPrice() payable {
    return tokenPrice
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleMember[arg1].field_0:
        revert with 0, 50
    return roleMember[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_baf46a10(?) payable {
    return sub_baf46a10
}

function endDate() payable {
    return endDate
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function sub_f2d81b86(?) payable {
    return sub_f2d81b86Address
}

function _fallback() payable {
    revert
}

function sub_3120ca37(?) payable {
    if startDate > uint64(block.timestamp):
        return startDate <= uint64(block.timestamp)
    return uint64(block.timestamp) <= endDate
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x5a05180f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_71f411ae(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint64(arg2)
    if not sub_7cd1585d:
        return 0
    if uint64(arg2) > vestedDate:
        return account[address(arg1)].field_512
    if sub_7cd1585d > -lockPeriod + test266151307():
        revert with 0, 17
    if uint64(arg2) < uint64(lockPeriod + sub_7cd1585d):
        return 0
    if vestedDate < uint64(lockPeriod + sub_7cd1585d):
        revert with 0, 17
    if uint64(arg2) < uint64(lockPeriod + sub_7cd1585d):
        revert with 0, 17
    if account[address(arg1)].field_512 and uint64(uint64(arg2) - uint64(lockPeriod + sub_7cd1585d)) > -1 / account[address(arg1)].field_512:
        revert with 0, 17
    if not uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d)):
        revert with 0, 18
    return (account[address(arg1)].field_512 * uint64(uint64(arg2) - uint64(lockPeriod + sub_7cd1585d)) / uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d)))
}

function pause() payable {
    if roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(msg.sender)].field_0:
        if stor0:
            revert with 0, 'Pausable: paused'
        stor0 = 1
        emit Paused(msg.sender);
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
        s = 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a
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
    if roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(msg.sender)].field_0:
        if not stor0:
            revert with 0, 'Pausable: not paused'
        stor0 = 0
        emit Unpaused(msg.sender);
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
        s = 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a
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

function sub_cfd1adae(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint64(arg1)
    if roleAdmin[0][address(msg.sender)].field_0:
        if sub_7cd1585d:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token generation event already triggered'
        if startDate > uint64(arg1):
            revert with 0, 'Timestamp out of bounds'
        if uint64(arg1) > vestedDate:
            revert with 0, 'Timestamp out of bounds'
        sub_7cd1585d = uint64(arg1)
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

function renounceRole(bytes32 arg1, address arg2) payable {
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

function emergencyTransfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if roleAdmin[0][address(msg.sender)].field_0:
        if eth.balance(this.address) < arg2:
            revert with 0, 'Address: insufficient balance'
        call arg1 with:
           value arg2 wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Address: unable to send value, recipient may have reverted'
        else:
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
        ('bool', 'ext_call.success')
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

function grantRole(bytes32 arg1, address arg2) payable {
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

function vest(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
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
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if startDate > uint64(block.timestamp):
        revert with 0, 'Not for sale'
    if uint64(block.timestamp) > endDate:
        revert with 0, 'Not for sale'
    if account[address(arg1)].field_1032:
        revert with 0, 'Beneficiary already vested'
    if arg2 <= 0:
        revert with 0, 'AOD amount missing'
    if sub_736f4782 > !sub_61bb1359:
        revert with 0, 17
    if sub_4f19f6bd > !arg2:
        revert with 0, 17
    if sub_4f19f6bd + arg2 > sub_736f4782 + sub_61bb1359:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount exceeds the available allocation'
    if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if arg2 > 0x20cb5175040686736271995fa40f071199855280f9e8191ae:
        revert with 0, 17
    account[address(arg1)].field_0 = 0
    account[address(arg1)].field_256 = 10^18 * arg2 / 10 * 10^18
    account[address(arg1)].field_512 = 25 * 10^14 * 3600 * arg2 / 10 * 10^18
    account[address(arg1)].field_768 = 0
    account[address(arg1)].field_1024 = 0
    account[address(arg1)].field_1032 = 1
    if sub_4f19f6bd > !arg2:
        revert with 0, 17
    sub_4f19f6bd += arg2
}

function revokeRole(bytes32 arg1, address arg2) payable {
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

function sub_939c2fde(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint64(arg2)
    if not sub_7cd1585d:
        if 0 < account[address(arg1)].field_768:
            revert with 0, 17
        return -account[address(arg1)].field_768
    if uint64(arg2) > vestedDate:
        if not sub_7cd1585d:
            if account[address(arg1)].field_512 < account[address(arg1)].field_768:
                revert with 0, 17
            return (account[address(arg1)].field_512 - account[address(arg1)].field_768)
        if sub_7cd1585d > -lockPeriod + test266151307():
            revert with 0, 17
        if uint64(arg2) < uint64(lockPeriod + sub_7cd1585d):
            if account[address(arg1)].field_512 < account[address(arg1)].field_768:
                revert with 0, 17
            return (account[address(arg1)].field_512 - account[address(arg1)].field_768)
        if account[address(arg1)].field_512 > !account[address(arg1)].field_256:
            revert with 0, 17
        if account[address(arg1)].field_512 + account[address(arg1)].field_256 < account[address(arg1)].field_768:
            revert with 0, 17
        return (account[address(arg1)].field_512 + account[address(arg1)].field_256 - account[address(arg1)].field_768)
    if sub_7cd1585d > -lockPeriod + test266151307():
        revert with 0, 17
    if uint64(arg2) < uint64(lockPeriod + sub_7cd1585d):
        if not sub_7cd1585d:
            if 0 < account[address(arg1)].field_768:
                revert with 0, 17
            return -account[address(arg1)].field_768
        if sub_7cd1585d > -lockPeriod + test266151307():
            revert with 0, 17
        if uint64(arg2) < uint64(lockPeriod + sub_7cd1585d):
            if 0 < account[address(arg1)].field_768:
                revert with 0, 17
            return -account[address(arg1)].field_768
        if 0 > !account[address(arg1)].field_256:
            revert with 0, 17
        if account[address(arg1)].field_256 < account[address(arg1)].field_768:
            revert with 0, 17
        return (account[address(arg1)].field_256 - account[address(arg1)].field_768)
    if vestedDate < uint64(lockPeriod + sub_7cd1585d):
        revert with 0, 17
    if uint64(arg2) < uint64(lockPeriod + sub_7cd1585d):
        revert with 0, 17
    if account[address(arg1)].field_512 and uint64(uint64(arg2) - uint64(lockPeriod + sub_7cd1585d)) > -1 / account[address(arg1)].field_512:
        revert with 0, 17
    if not uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d)):
        revert with 0, 18
    if not sub_7cd1585d:
        if account[address(arg1)].field_512 * uint64(uint64(arg2) - uint64(lockPeriod + sub_7cd1585d)) / uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d)) < account[address(arg1)].field_768:
            revert with 0, 17
        return ((account[address(arg1)].field_512 * uint64(uint64(arg2) - uint64(lockPeriod + sub_7cd1585d)) / uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d))) - account[address(arg1)].field_768)
    if sub_7cd1585d > -lockPeriod + test266151307():
        revert with 0, 17
    if uint64(arg2) < uint64(lockPeriod + sub_7cd1585d):
        if account[address(arg1)].field_512 * uint64(uint64(arg2) - uint64(lockPeriod + sub_7cd1585d)) / uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d)) < account[address(arg1)].field_768:
            revert with 0, 17
        return ((account[address(arg1)].field_512 * uint64(uint64(arg2) - uint64(lockPeriod + sub_7cd1585d)) / uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d))) - account[address(arg1)].field_768)
    if account[address(arg1)].field_512 * uint64(uint64(arg2) - uint64(lockPeriod + sub_7cd1585d)) / uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d)) > !account[address(arg1)].field_256:
        revert with 0, 17
    if (account[address(arg1)].field_512 * uint64(uint64(arg2) - uint64(lockPeriod + sub_7cd1585d)) / uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d))) + account[address(arg1)].field_256 < account[address(arg1)].field_768:
        revert with 0, 17
    return ((account[address(arg1)].field_512 * uint64(uint64(arg2) - uint64(lockPeriod + sub_7cd1585d)) / uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d))) + account[address(arg1)].field_256 - account[address(arg1)].field_768)
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor3 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor3 = 2
    if not arg1:
        revert with 0, 'AOD amount missing'
    if startDate > uint64(block.timestamp):
        revert with 0, 'Not for sale'
    if uint64(block.timestamp) > endDate:
        revert with 0, 'Not for sale'
    if arg1 and tokenPrice > -1 / arg1:
        revert with 0, 17
    if arg1 * tokenPrice / 10^18 < sub_2804e917:
        revert with 0, 'Amount is too small'
    if arg1 * tokenPrice / 10^18 > sub_baf46a10:
        revert with 0, 'Amount is too large'
    mem[100] = msg.sender
    mem[132] = this.address
    require ext_code.size(BUSDAddress)
    staticcall BUSDAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1 * tokenPrice / 10^18:
        revert with 0, 'Contract not approved to transfer BUSD'
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = stor4
    mem[ceil32(return_data.size) + 196] = arg1 * tokenPrice / 10^18
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(BUSDAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, stor4, arg1 * tokenPrice / 10^18, 0
    mem[ceil32(return_data.size) + 392] = 0
    call BUSDAddress with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, stor4, arg1 * tokenPrice / 10^18, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, stor4, arg1 * tokenPrice / 10^18, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), Mask(224, 32, this.address) >> 32 == bool(uint32(msg.sender), Mask(224, 32, this.address) >> 32)
            if not uint32(msg.sender), Mask(224, 32, this.address) >> 32:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
            if not mem[ceil32(return_data.size) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if account[address(msg.sender)].field_1032:
        revert with 0, 'Beneficiary already vested'
    if arg1 <= 0:
        revert with 0, 'AOD amount missing'
    if sub_736f4782 > !sub_61bb1359:
        revert with 0, 17
    if sub_4f19f6bd > !arg1:
        revert with 0, 17
    if sub_4f19f6bd + arg1 > sub_736f4782 + sub_61bb1359:
        revert with 0, 'Amount exceeds the available allocation'
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if arg1 > 0x20cb5175040686736271995fa40f071199855280f9e8191ae:
        revert with 0, 17
    account[address(msg.sender)].field_0 = arg1 * tokenPrice / 10^18
    account[address(msg.sender)].field_256 = 10^18 * arg1 / 10 * 10^18
    account[address(msg.sender)].field_512 = 25 * 10^14 * 3600 * arg1 / 10 * 10^18
    account[address(msg.sender)].field_768 = 0
    account[address(msg.sender)].field_1024 = 0
    account[address(msg.sender)].field_1032 = 1
    if sub_4f19f6bd > !arg1:
        revert with 0, 17
    sub_4f19f6bd += arg1
    stor3 = 1
}

function release() payable {
    if stor3 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor3 = 2
    if stor0:
        revert with 0, 'Releasing while paused'
    if not sub_7cd1585d:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token generation event not triggered yet'
    mem[128] = account[address(msg.sender)].field_256
    mem[160] = account[address(msg.sender)].field_512
    mem[192] = account[address(msg.sender)].field_768
    mem[224] = bool(account[address(msg.sender)].field_1024)
    mem[256] = bool(account[address(msg.sender)].field_1032)
    if uint64(block.timestamp) > vestedDate:
        if not sub_7cd1585d:
            if account[address(msg.sender)].field_512 < account[address(msg.sender)].field_768:
                revert with 0, 17
            if account[address(msg.sender)].field_512 - account[address(msg.sender)].field_768 <= 0:
                revert with 0, 'No tokens releasable'
            if account[address(msg.sender)].field_768 > !(account[address(msg.sender)].field_512 - account[address(msg.sender)].field_768):
                revert with 0, 17
            account[address(msg.sender)].field_768 = account[address(msg.sender)].field_512
            mem[324] = msg.sender
            mem[356] = account[address(msg.sender)].field_512 - account[address(msg.sender)].field_768
            mem[288] = 68
            mem[324 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[320 len 4] = unknown_0x40c10f19(?????)
            mem[388] = 21
            mem[420] = 0x4c6f772d6c6576656c206d696e74206661696c65640000000000000000000000
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(sub_f2d81b86Address):
                revert with 0, 'Address: call to non-contract'
            mem[452 len 96] = unknown_0x40c10f19(?????), msg.sender, account[address(msg.sender)].field_512 - account[address(msg.sender)].field_768, 0
            mem[520] = 0
            call sub_f2d81b86Address with:
               funct Mask(32, 224, unknown_0x40c10f19(?????), msg.sender, account[address(msg.sender)].field_512 - account[address(msg.sender)].field_768, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0x40c10f19(?????), msg.sender, account[address(msg.sender)].field_512 - account[address(msg.sender)].field_768, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if account[address(msg.sender)].field_0:
                        revert with memory
                          from 128
                           len account[address(msg.sender)].field_0
                    revert with 0, 'Low-level ', 0
            else:
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'Low-level ', 0
            ('bool', 'ext_call.success')
            account[address(msg.sender)].field_1024 = 1
            emit ERC20Released((account[address(msg.sender)].field_512 - account[address(msg.sender)].field_768), sub_f2d81b86Address);
        else:
            if sub_7cd1585d > -lockPeriod + test266151307():
                revert with 0, 17
            if uint64(block.timestamp) < uint64(lockPeriod + sub_7cd1585d):
                if account[address(msg.sender)].field_512 < account[address(msg.sender)].field_768:
                    revert with 0, 17
                if account[address(msg.sender)].field_512 - account[address(msg.sender)].field_768 <= 0:
                    revert with 0, 'No tokens releasable'
                if account[address(msg.sender)].field_768 > !(account[address(msg.sender)].field_512 - account[address(msg.sender)].field_768):
                    revert with 0, 17
                account[address(msg.sender)].field_768 = account[address(msg.sender)].field_512
                mem[324] = msg.sender
                mem[356] = account[address(msg.sender)].field_512 - account[address(msg.sender)].field_768
                mem[288] = 68
                mem[324 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[320 len 4] = unknown_0x40c10f19(?????)
                mem[388] = 21
                mem[420] = 0x4c6f772d6c6576656c206d696e74206661696c65640000000000000000000000
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(sub_f2d81b86Address):
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 96] = unknown_0x40c10f19(?????), msg.sender, account[address(msg.sender)].field_512 - account[address(msg.sender)].field_768, 0
                mem[520] = 0
                call sub_f2d81b86Address with:
                   funct Mask(32, 224, unknown_0x40c10f19(?????), msg.sender, account[address(msg.sender)].field_512 - account[address(msg.sender)].field_768, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0x40c10f19(?????), msg.sender, account[address(msg.sender)].field_512 - account[address(msg.sender)].field_768, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if account[address(msg.sender)].field_0:
                            revert with memory
                              from 128
                               len account[address(msg.sender)].field_0
                        revert with 0, 'Low-level ', 0
                else:
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'Low-level ', 0
                ('bool', 'ext_call.success')
                account[address(msg.sender)].field_1024 = 1
                emit ERC20Released((account[address(msg.sender)].field_512 - account[address(msg.sender)].field_768), sub_f2d81b86Address);
            else:
                if account[address(msg.sender)].field_512 > !account[address(msg.sender)].field_256:
                    revert with 0, 17
                if account[address(msg.sender)].field_512 + account[address(msg.sender)].field_256 < account[address(msg.sender)].field_768:
                    revert with 0, 17
                if account[address(msg.sender)].field_512 + account[address(msg.sender)].field_256 - account[address(msg.sender)].field_768 <= 0:
                    revert with 0, 'No tokens releasable'
                if account[address(msg.sender)].field_768 > !(account[address(msg.sender)].field_512 + account[address(msg.sender)].field_256 - account[address(msg.sender)].field_768):
                    revert with 0, 17
                account[address(msg.sender)].field_768 = account[address(msg.sender)].field_512 + account[address(msg.sender)].field_256
                mem[324] = msg.sender
                mem[356] = account[address(msg.sender)].field_512 + account[address(msg.sender)].field_256 - account[address(msg.sender)].field_768
                mem[288] = 68
                mem[324 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[320 len 4] = unknown_0x40c10f19(?????)
                mem[388] = 21
                mem[420] = 0x4c6f772d6c6576656c206d696e74206661696c65640000000000000000000000
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(sub_f2d81b86Address):
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 96] = unknown_0x40c10f19(?????), msg.sender, account[address(msg.sender)].field_512 + account[address(msg.sender)].field_256 - account[address(msg.sender)].field_768, 0
                mem[520] = 0
                call sub_f2d81b86Address with:
                   funct Mask(32, 224, unknown_0x40c10f19(?????), msg.sender, account[address(msg.sender)].field_512 + account[address(msg.sender)].field_256 - account[address(msg.sender)].field_768, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0x40c10f19(?????), msg.sender, account[address(msg.sender)].field_512 + account[address(msg.sender)].field_256 - account[address(msg.sender)].field_768, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if account[address(msg.sender)].field_0:
                            revert with memory
                              from 128
                               len account[address(msg.sender)].field_0
                        revert with 0, 'Low-level ', 0
                else:
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'Low-level ', 0
                ('bool', 'ext_call.success')
                account[address(msg.sender)].field_1024 = 1
                emit ERC20Released((account[address(msg.sender)].field_512 + account[address(msg.sender)].field_256 - account[address(msg.sender)].field_768), sub_f2d81b86Address);
    else:
        if sub_7cd1585d > -lockPeriod + test266151307():
            revert with 0, 17
        if uint64(block.timestamp) < uint64(lockPeriod + sub_7cd1585d):
            if not sub_7cd1585d:
                if 0 < account[address(msg.sender)].field_768:
                    revert with 0, 17
                if -account[address(msg.sender)].field_768 <= 0:
                    revert with 0, 'No tokens releasable'
                if account[address(msg.sender)].field_768 > !-account[address(msg.sender)].field_768:
                    revert with 0, 17
                account[address(msg.sender)].field_768 = 0
                mem[324] = msg.sender
                mem[356] = -account[address(msg.sender)].field_768
                mem[288] = 68
                mem[324 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[320 len 4] = unknown_0x40c10f19(?????)
                mem[388] = 21
                mem[420] = 0x4c6f772d6c6576656c206d696e74206661696c65640000000000000000000000
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(sub_f2d81b86Address):
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 96] = unknown_0x40c10f19(?????), msg.sender, -account[address(msg.sender)].field_768, 0
                mem[520] = 0
                call sub_f2d81b86Address with:
                   funct Mask(32, 224, unknown_0x40c10f19(?????), msg.sender, -account[address(msg.sender)].field_768, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0x40c10f19(?????), msg.sender, -account[address(msg.sender)].field_768, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if account[address(msg.sender)].field_0:
                            revert with memory
                              from 128
                               len account[address(msg.sender)].field_0
                        revert with 0, 'Low-level ', 0
                else:
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'Low-level ', 0
                ('bool', 'ext_call.success')
                account[address(msg.sender)].field_1024 = 1
                emit ERC20Released(-account[address(msg.sender)].field_768, sub_f2d81b86Address);
            else:
                if sub_7cd1585d > -lockPeriod + test266151307():
                    revert with 0, 17
                if uint64(block.timestamp) < uint64(lockPeriod + sub_7cd1585d):
                    if 0 < account[address(msg.sender)].field_768:
                        revert with 0, 17
                    if -account[address(msg.sender)].field_768 <= 0:
                        revert with 0, 'No tokens releasable'
                    if account[address(msg.sender)].field_768 > !-account[address(msg.sender)].field_768:
                        revert with 0, 17
                    account[address(msg.sender)].field_768 = 0
                    mem[324] = msg.sender
                    mem[356] = -account[address(msg.sender)].field_768
                    mem[288] = 68
                    mem[324 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[320 len 4] = unknown_0x40c10f19(?????)
                    mem[388] = 21
                    mem[420] = 0x4c6f772d6c6576656c206d696e74206661696c65640000000000000000000000
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(sub_f2d81b86Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 96] = unknown_0x40c10f19(?????), msg.sender, -account[address(msg.sender)].field_768, 0
                    mem[520] = 0
                    call sub_f2d81b86Address with:
                       funct Mask(32, 224, unknown_0x40c10f19(?????), msg.sender, -account[address(msg.sender)].field_768, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0x40c10f19(?????), msg.sender, -account[address(msg.sender)].field_768, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if account[address(msg.sender)].field_0:
                                revert with memory
                                  from 128
                                   len account[address(msg.sender)].field_0
                            revert with 0, 'Low-level ', 0
                    else:
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'Low-level ', 0
                    ('bool', 'ext_call.success')
                    account[address(msg.sender)].field_1024 = 1
                    emit ERC20Released(-account[address(msg.sender)].field_768, sub_f2d81b86Address);
                else:
                    if 0 > !account[address(msg.sender)].field_256:
                        revert with 0, 17
                    if account[address(msg.sender)].field_256 < account[address(msg.sender)].field_768:
                        revert with 0, 17
                    if account[address(msg.sender)].field_256 - account[address(msg.sender)].field_768 <= 0:
                        revert with 0, 'No tokens releasable'
                    if account[address(msg.sender)].field_768 > !(account[address(msg.sender)].field_256 - account[address(msg.sender)].field_768):
                        revert with 0, 17
                    account[address(msg.sender)].field_768 = account[address(msg.sender)].field_256
                    mem[324] = msg.sender
                    mem[356] = account[address(msg.sender)].field_256 - account[address(msg.sender)].field_768
                    mem[288] = 68
                    mem[324 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[320 len 4] = unknown_0x40c10f19(?????)
                    mem[388] = 21
                    mem[420] = 0x4c6f772d6c6576656c206d696e74206661696c65640000000000000000000000
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(sub_f2d81b86Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 96] = unknown_0x40c10f19(?????), msg.sender, account[address(msg.sender)].field_256 - account[address(msg.sender)].field_768, 0
                    mem[520] = 0
                    call sub_f2d81b86Address with:
                       funct Mask(32, 224, unknown_0x40c10f19(?????), msg.sender, account[address(msg.sender)].field_256 - account[address(msg.sender)].field_768, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0x40c10f19(?????), msg.sender, account[address(msg.sender)].field_256 - account[address(msg.sender)].field_768, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if account[address(msg.sender)].field_0:
                                revert with memory
                                  from 128
                                   len account[address(msg.sender)].field_0
                            revert with 0, 'Low-level ', 0
                    else:
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'Low-level ', 0
                    ('bool', 'ext_call.success')
                    account[address(msg.sender)].field_1024 = 1
                    emit ERC20Released((account[address(msg.sender)].field_256 - account[address(msg.sender)].field_768), sub_f2d81b86Address);
        else:
            if vestedDate < uint64(lockPeriod + sub_7cd1585d):
                revert with 0, 17
            if uint64(block.timestamp) < uint64(lockPeriod + sub_7cd1585d):
                revert with 0, 17
            if account[address(msg.sender)].field_512 and uint64(uint64(block.timestamp) - uint64(lockPeriod + sub_7cd1585d)) > -1 / account[address(msg.sender)].field_512:
                revert with 0, 17
            if not uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d)):
                revert with 0, 18
            if not sub_7cd1585d:
                if account[address(msg.sender)].field_512 * uint64(uint64(block.timestamp) - uint64(lockPeriod + sub_7cd1585d)) / uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d)) < account[address(msg.sender)].field_768:
                    revert with 0, 17
                if (account[address(msg.sender)].field_512 * uint64(uint64(block.timestamp) - uint64(lockPeriod + sub_7cd1585d)) / uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d))) - account[address(msg.sender)].field_768 <= 0:
                    revert with 0, 'No tokens releasable'
                if account[address(msg.sender)].field_768 > !((account[address(msg.sender)].field_512 * uint64(uint64(block.timestamp) - uint64(lockPeriod + sub_7cd1585d)) / uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d))) - account[address(msg.sender)].field_768):
                    revert with 0, 17
                account[address(msg.sender)].field_768 = account[address(msg.sender)].field_512 * uint64(uint64(block.timestamp) - uint64(lockPeriod + sub_7cd1585d)) / uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d))
                mem[324] = msg.sender
                mem[356] = (account[address(msg.sender)].field_512 * uint64(uint64(block.timestamp) - uint64(lockPeriod + sub_7cd1585d)) / uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d))) - account[address(msg.sender)].field_768
                mem[288] = 68
                mem[324 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[320 len 4] = unknown_0x40c10f19(?????)
                mem[388] = 21
                mem[420] = 0x4c6f772d6c6576656c206d696e74206661696c65640000000000000000000000
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(sub_f2d81b86Address):
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 96] = unknown_0x40c10f19(?????), msg.sender, (account[address(msg.sender)].field_512 * uint64(uint64(block.timestamp) - uint64(lockPeriod + sub_7cd1585d)) / uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d))) - account[address(msg.sender)].field_768, 0
                mem[520] = 0
                call sub_f2d81b86Address with:
                   funct Mask(32, 224, unknown_0x40c10f19(?????), msg.sender, (account[address(msg.sender)].field_512 * uint64(uint64(block.timestamp) - uint64(lockPeriod + sub_7cd1585d)) / uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d))) - account[address(msg.sender)].field_768, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0x40c10f19(?????), msg.sender, (account[address(msg.sender)].field_512 * uint64(uint64(block.timestamp) - uint64(lockPeriod + sub_7cd1585d)) / uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d))) - account[address(msg.sender)].field_768, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if account[address(msg.sender)].field_0:
                            revert with memory
                              from 128
                               len account[address(msg.sender)].field_0
                        revert with 0, 'Low-level ', 0
                else:
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'Low-level ', 0
                ('bool', 'ext_call.success')
                account[address(msg.sender)].field_1024 = 1
                emit ERC20Released(((account[address(msg.sender)].field_512 * uint64(uint64(block.timestamp) - uint64(lockPeriod + sub_7cd1585d)) / uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d))) - account[address(msg.sender)].field_768), sub_f2d81b86Address);
            else:
                if sub_7cd1585d > -lockPeriod + test266151307():
                    revert with 0, 17
                if uint64(block.timestamp) < uint64(lockPeriod + sub_7cd1585d):
                    if account[address(msg.sender)].field_512 * uint64(uint64(block.timestamp) - uint64(lockPeriod + sub_7cd1585d)) / uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d)) < account[address(msg.sender)].field_768:
                        revert with 0, 17
                    if (account[address(msg.sender)].field_512 * uint64(uint64(block.timestamp) - uint64(lockPeriod + sub_7cd1585d)) / uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d))) - account[address(msg.sender)].field_768 <= 0:
                        revert with 0, 'No tokens releasable'
                    if account[address(msg.sender)].field_768 > !((account[address(msg.sender)].field_512 * uint64(uint64(block.timestamp) - uint64(lockPeriod + sub_7cd1585d)) / uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d))) - account[address(msg.sender)].field_768):
                        revert with 0, 17
                    account[address(msg.sender)].field_768 = account[address(msg.sender)].field_512 * uint64(uint64(block.timestamp) - uint64(lockPeriod + sub_7cd1585d)) / uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d))
                    mem[324] = msg.sender
                    mem[356] = (account[address(msg.sender)].field_512 * uint64(uint64(block.timestamp) - uint64(lockPeriod + sub_7cd1585d)) / uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d))) - account[address(msg.sender)].field_768
                    mem[288] = 68
                    mem[324 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[320 len 4] = unknown_0x40c10f19(?????)
                    mem[388] = 21
                    mem[420] = 0x4c6f772d6c6576656c206d696e74206661696c65640000000000000000000000
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(sub_f2d81b86Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 96] = unknown_0x40c10f19(?????), msg.sender, (account[address(msg.sender)].field_512 * uint64(uint64(block.timestamp) - uint64(lockPeriod + sub_7cd1585d)) / uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d))) - account[address(msg.sender)].field_768, 0
                    mem[520] = 0
                    call sub_f2d81b86Address with:
                       funct Mask(32, 224, unknown_0x40c10f19(?????), msg.sender, (account[address(msg.sender)].field_512 * uint64(uint64(block.timestamp) - uint64(lockPeriod + sub_7cd1585d)) / uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d))) - account[address(msg.sender)].field_768, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0x40c10f19(?????), msg.sender, (account[address(msg.sender)].field_512 * uint64(uint64(block.timestamp) - uint64(lockPeriod + sub_7cd1585d)) / uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d))) - account[address(msg.sender)].field_768, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if account[address(msg.sender)].field_0:
                                revert with memory
                                  from 128
                                   len account[address(msg.sender)].field_0
                            revert with 0, 'Low-level ', 0
                    else:
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'Low-level ', 0
                    ('bool', 'ext_call.success')
                    account[address(msg.sender)].field_1024 = 1
                    emit ERC20Released(((account[address(msg.sender)].field_512 * uint64(uint64(block.timestamp) - uint64(lockPeriod + sub_7cd1585d)) / uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d))) - account[address(msg.sender)].field_768), sub_f2d81b86Address);
                else:
                    if account[address(msg.sender)].field_512 * uint64(uint64(block.timestamp) - uint64(lockPeriod + sub_7cd1585d)) / uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d)) > !account[address(msg.sender)].field_256:
                        revert with 0, 17
                    if (account[address(msg.sender)].field_512 * uint64(uint64(block.timestamp) - uint64(lockPeriod + sub_7cd1585d)) / uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d))) + account[address(msg.sender)].field_256 < account[address(msg.sender)].field_768:
                        revert with 0, 17
                    if (account[address(msg.sender)].field_512 * uint64(uint64(block.timestamp) - uint64(lockPeriod + sub_7cd1585d)) / uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d))) + account[address(msg.sender)].field_256 - account[address(msg.sender)].field_768 <= 0:
                        revert with 0, 'No tokens releasable'
                    if account[address(msg.sender)].field_768 > !((account[address(msg.sender)].field_512 * uint64(uint64(block.timestamp) - uint64(lockPeriod + sub_7cd1585d)) / uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d))) + account[address(msg.sender)].field_256 - account[address(msg.sender)].field_768):
                        revert with 0, 17
                    account[address(msg.sender)].field_768 = (account[address(msg.sender)].field_512 * uint64(uint64(block.timestamp) - uint64(lockPeriod + sub_7cd1585d)) / uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d))) + account[address(msg.sender)].field_256
                    mem[324] = msg.sender
                    mem[356] = (account[address(msg.sender)].field_512 * uint64(uint64(block.timestamp) - uint64(lockPeriod + sub_7cd1585d)) / uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d))) + account[address(msg.sender)].field_256 - account[address(msg.sender)].field_768
                    mem[288] = 68
                    mem[324 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[320 len 4] = unknown_0x40c10f19(?????)
                    mem[388] = 21
                    mem[420] = 0x4c6f772d6c6576656c206d696e74206661696c65640000000000000000000000
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(sub_f2d81b86Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 96] = unknown_0x40c10f19(?????), msg.sender, (account[address(msg.sender)].field_512 * uint64(uint64(block.timestamp) - uint64(lockPeriod + sub_7cd1585d)) / uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d))) + account[address(msg.sender)].field_256 - account[address(msg.sender)].field_768, 0
                    mem[520] = 0
                    call sub_f2d81b86Address with:
                       funct Mask(32, 224, unknown_0x40c10f19(?????), msg.sender, (account[address(msg.sender)].field_512 * uint64(uint64(block.timestamp) - uint64(lockPeriod + sub_7cd1585d)) / uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d))) + account[address(msg.sender)].field_256 - account[address(msg.sender)].field_768, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0x40c10f19(?????), msg.sender, (account[address(msg.sender)].field_512 * uint64(uint64(block.timestamp) - uint64(lockPeriod + sub_7cd1585d)) / uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d))) + account[address(msg.sender)].field_256 - account[address(msg.sender)].field_768, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if account[address(msg.sender)].field_0:
                                revert with memory
                                  from 128
                                   len account[address(msg.sender)].field_0
                            revert with 0, 'Low-level ', 0
                    else:
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'Low-level ', 0
                    ('bool', 'ext_call.success')
                    account[address(msg.sender)].field_1024 = 1
                    emit ERC20Released(((account[address(msg.sender)].field_512 * uint64(uint64(block.timestamp) - uint64(lockPeriod + sub_7cd1585d)) / uint64(vestedDate - uint64(lockPeriod + sub_7cd1585d))) + account[address(msg.sender)].field_256 - account[address(msg.sender)].field_768), sub_f2d81b86Address);
    stor3 = 1
}



}
