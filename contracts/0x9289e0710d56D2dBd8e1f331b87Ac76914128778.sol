contract main {




// =====================  Runtime code  =====================


#
#  - draw()
#
const GAME_ADMIN = 0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab

const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
mapping of struct roleAdmin;
address sub_341a421fAddress;
address priceOracleAddress;
address randomsAddress;
uint256 firstReward;
mapping of address inviter;
mapping of uint256 balances;
mapping of uint256 sub_512f48ac;
mapping of uint256 tickets;
array of struct prizes;
array of struct probability;
uint8 isOpen;
uint256 stor9F32;
uint256 storC861;

function sub_0546566d(?) payable {
    require calldata.size - 4 >= 32
    return tickets[arg1]
}

function getTickets(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return tickets[arg1]
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function priceOracle() payable {
    return priceOracleAddress
}

function balances(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balances[arg1]
}

function firstReward() payable {
    return firstReward
}

function sub_341a421f(?) payable {
    return sub_341a421fAddress
}

function isOpen() payable {
    return bool(isOpen)
}

function sub_512f48ac(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_512f48ac[address(arg1)]
}

function probability(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < probability.length
    return probability[arg1].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function hasInviter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(inviter[address(arg1)])
}

function randoms() payable {
    return randomsAddress
}

function getBalances(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balances[address(arg1)]
}

function getInviter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return inviter[address(arg1)]
}

function sub_d31890ec(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_512f48ac[arg1]
}

function prizes(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < prizes.length
    return prizes[arg1].field_0
}

function inviters(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return inviter[arg1]
}

function _fallback() payable {
    revert
}

function setOpen(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Not admin'
    isOpen = uint8(arg1)
}

function setRandom(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Not admin'
    randomsAddress = arg1
}

function setPriceOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Not admin'
    priceOracleAddress = arg1
}

function sub_a30fc5d7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Not admin'
    sub_341a421fAddress = address(arg1)
}

function sub_bb6efdfc(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0:
        if not roleAdmin[0][address(msg.sender)].field_0:
            revert with 0, 'does not have role'
    firstReward = arg1
}

function sub_74b439d4(?) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0:
        if not roleAdmin[0][address(msg.sender)].field_0:
            revert with 0, 'does not have role'
    tickets[arg1] = arg2
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

function sub_b3be5529(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Not admin'
    if not roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(arg1)].field_0:
        roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(arg1)].field_0 = 1
        emit RoleGranted(0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab, address(arg1), msg.sender);
}

function bindInviter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == arg1:
        revert with 0, 'can't be yourself'
    if inviter[msg.sender]:
        revert with 0, 'inviter already exists'
    staticcall sub_341a421fAddress.0x65d50b37 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'inviter not consume'
    staticcall sub_341a421fAddress.0x65d50b37 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'you have consumed'
    inviter[msg.sender] = arg1
    emit BindInviter(msg.sender, arg1);
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

function openBox(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0:
        revert with 0, 'does not have role'
    if inviter[address(arg1)]:
        if sub_512f48ac[address(arg1)] > -2:
            revert with 0, 17
        sub_512f48ac[address(arg1)]++
        if 1 == sub_512f48ac[address(arg1)]:
            staticcall priceOracleAddress.getTokenPrice() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if firstReward and ext_call.return_data[0] > -1 / firstReward:
                revert with 0, 17
            require ext_code.size(sub_341a421fAddress)
            call sub_341a421fAddress.0x4bd0f97 with:
                 gas gas_remaining wei
                args address(arg1), firstReward * ext_call.return_data[0] / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if tickets[stor157[address(arg1)]]:
            if balances[stor155[address(arg1)]] > !tickets[stor157[address(arg1)]]:
                revert with 0, 17
            balances[stor155[address(arg1)]] += tickets[stor157[address(arg1)]]
            emit 0x7c8eba01: address(arg1), sub_512f48ac[address(arg1)], inviter[address(arg1)], tickets[stor157[address(arg1)]]
}

function initialize() payable {
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    if not roleAdmin[0][address(msg.sender)].field_0:
        roleAdmin[0][address(msg.sender)].field_0 = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    firstReward = 200
    stor9F32 = 1
    storC861 = 1
    mem[96] = 20
    mem[128] = 80
    mem[160] = 100
    mem[192] = 200
    mem[224] = 500
    mem[256] = 1000
    mem[288] = 5600
    mem[320] = 2500
    probability.length = 8
    s = 0
    idx = 96
    while 352 > idx:
        probability[s].field_0 = mem[idx + 30 len 2]
        probability[s].field_16 = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 8
    while probability.length > idx:
        probability[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[352] = 30000
    mem[384] = 10000
    mem[416] = 5000
    mem[448] = 3000
    mem[480] = 1000
    mem[512] = 500
    mem[544] = 300
    mem[576] = 100
    prizes.length = 8
    s = 0
    idx = 352
    while 608 > idx:
        prizes[s].field_0 = mem[idx + 30 len 2]
        prizes[s].field_16 = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 8
    while prizes.length > idx:
        prizes[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_2bf6346f(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307() or ceil32(32 * ('cd', 36).length) + 98 < 97:
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require (32 * ('cd', 36).length) + cd[36] + 36 <= calldata.size
    idx = cd[36] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
    while idx < (32 * ('cd', 36).length) + cd[36] + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if not roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0:
        if not roleAdmin[0][address(msg.sender)].field_0:
            revert with 0, 'does not have role'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'wrong length'
    prizes.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while prizes.length > idx:
            prizes[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            prizes[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while prizes.length > idx:
            prizes[idx].field_0 = 0
            idx = idx + 1
            continue 
    probability.length = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while probability.length > idx:
            probability[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(32 * ('cd', 4).length) + 129
        while ceil32(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 129 > idx:
            probability[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while probability.length > idx:
            probability[idx].field_0 = 0
            idx = idx + 1
            continue 
}



}
