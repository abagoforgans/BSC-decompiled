contract main {




// =====================  Runtime code  =====================


#
#  - recoverWrongTokens(address arg1, uint256 arg2)
#
const sub_63a9c2ec(?) = 0x8e1cf1e1e317ff4e391b4f353cd36ee1a5f9d9b580ea17b1e097c2db919da6f2

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
array of struct roleMember;
uint256 stor2;
array of struct address;
mapping of uint256 stor4;
uint256 bonusEndBlock;
uint256 startBlock;
address sub_c28f4392Address;
address rewardTokenAddress;
uint256 sub_32076715;
uint256 exchangeRate;
mapping of struct userInfo;
uint256 sub_5a108ac3;
uint256 sub_63d682fe;
uint256 sub_239c5e04;

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256
}

function bonusEndBlock() payable {
    return bonusEndBlock
}

function sub_239c5e04(?) payable {
    return sub_239c5e04
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_32076715(?) payable {
    return sub_32076715
}

function getAddressLength() payable {
    return address.length
}

function exchangeRate() payable {
    return exchangeRate
}

function startBlock() payable {
    return startBlock
}

function sub_52beff34(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor4[address(arg1)])
}

function sub_5a108ac3(?) payable {
    return sub_5a108ac3
}

function sub_63d682fe(?) payable {
    return sub_63d682fe
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

function getAddress(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address.length < 1:
        revert with 0, 17
    if arg1 > address.length - 1:
        revert with 0, 'index out of bounds'
    if arg1 >= address.length:
        revert with 0, 50
    return address[arg1].field_0
}

function sub_c28f4392(?) payable {
    return sub_c28f4392Address
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function rewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function rewardExpected(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 and exchangeRate > -1 / arg1:
        revert with 0, 17
    return (arg1 * exchangeRate / 10^18)
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

function stopReward() payable {
    if roleAdmin[address(msg.sender)].field_0:
        bonusEndBlock = block.number
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

function sub_0ac06df2(?) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[address(msg.sender)].field_0:
        if sub_32076715 == arg1:
            revert with 0, 'Cannot be same'
        if arg1 <= 0:
            revert with 0, 'Cannot be zero'
        sub_32076715 = arg1
        emit 0x4ba5aaee: arg1
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

function updateExchangeRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[address(msg.sender)].field_0:
        if exchangeRate == arg1:
            revert with 0, 'Cannot be same'
        if arg1 <= 0:
            revert with 0, 'Cannot be zero'
        exchangeRate = arg1
        emit NewExchangeRate(arg1);
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

function maxRedeemAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not userInfo[address(arg1)].field_0:
        require ext_code.size(sub_c28f4392Address)
        staticcall sub_c28f4392Address.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 < ext_call.return_data[0]:
            return 0
    else:
        if userInfo[address(arg1)].field_0 and sub_32076715 > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if userInfo[address(arg1)].field_0 * sub_32076715 / 10^18 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        require ext_code.size(sub_c28f4392Address)
        staticcall sub_c28f4392Address.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (userInfo[address(arg1)].field_0 * sub_32076715 / 10^18) - userInfo[address(arg1)].field_256 < ext_call.return_data[0]:
            return ((userInfo[address(arg1)].field_0 * sub_32076715 / 10^18) - userInfo[address(arg1)].field_256)
    return ext_call.return_data[0]
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

function addAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0x8e1cf1e1e317ff4e391b4f353cd36ee1a5f9d9b580ea17b1e097c2db919da6f2][address(msg.sender)].field_0:
        if stor4[address(arg1)]:
            return 0
        address.length++
        address[address.length].field_0 = arg1
        address[address.length].field_160 = 0
        stor4[address(arg1)] = address.length
        return 1
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
    s = 0x8e1cf1e1e317ff4e391b4f353cd36ee1a5f9d9b580ea17b1e097c2db919da6f2
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function updateUserBalance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor2 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor2 = 2
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
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if sub_5a108ac3 < userInfo[address(arg1)].field_0:
        revert with 0, 17
    if sub_5a108ac3 - userInfo[address(arg1)].field_0 > !arg2:
        revert with 0, 17
    sub_5a108ac3 = sub_5a108ac3 - userInfo[address(arg1)].field_0 + arg2
    userInfo[address(arg1)].field_0 = arg2
    emit 0xc66f925f: arg2, arg1
    stor2 = 1
}

function updateStartAndEndBlocks(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
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
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if block.number >= startBlock:
        revert with 0, 'Pool has started'
    if arg1 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New startBlock must be lower than new endBlock'
    if block.number >= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New startBlock must be higher than current block'
    startBlock = arg1
    bonusEndBlock = arg2
    emit NewStartAndEndBlocks(arg1, arg2);
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

function sub_870da96f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[0x8e1cf1e1e317ff4e391b4f353cd36ee1a5f9d9b580ea17b1e097c2db919da6f2][address(msg.sender)].field_0:
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
        s = 0x8e1cf1e1e317ff4e391b4f353cd36ee1a5f9d9b580ea17b1e097c2db919da6f2
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
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not stor4[address(arg1)]:
        return 0
    if stor4[address(arg1)] < 1:
        revert with 0, 17
    if address.length < 1:
        revert with 0, 17
    if address.length - 1 != stor4[address(arg1)] - 1:
        if address.length - 1 >= address.length:
            revert with 0, 50
        if stor4[address(arg1)] - 1 >= address.length:
            revert with 0, 50
        address[stor4[address(arg1)]].field_0 = address[address.length].field_0
        stor4[stor3[stor3.length].field_0] = stor4[address(arg1)]
    if not address.length:
        revert with 0, 49
    address[address.length].field_0 = 0
    address.length--
    stor4[address(arg1)] = 0
    return 1
}

function sub_c109919e(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (64 * ('cd', 4).length) + 36 <= calldata.size
    if stor2 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor2 = 2
    if roleAdmin[address(msg.sender)].field_0:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((64 * idx) + cd[4] + 36)] == address(cd[((64 * idx) + cd[4] + 36)])
            mem[0] = address(cd[((64 * idx) + cd[4] + 36)])
            mem[32] = 11
            if idx >= ('cd', 4).length:
                revert with 0, 50
            if sub_5a108ac3 < userInfo[address(cd[((64 * idx) + cd[4] + 36)])].field_0:
                revert with 0, 17
            if sub_5a108ac3 - userInfo[address(cd[((64 * idx) + cd[4] + 36)])].field_0 > !cd[((64 * idx) + cd[4] + 68)]:
                revert with 0, 17
            sub_5a108ac3 = sub_5a108ac3 - userInfo[address(cd[((64 * idx) + cd[4] + 36)])].field_0 + cd[((64 * idx) + cd[4] + 68)]
            if idx >= ('cd', 4).length:
                revert with 0, 50
            userInfo[address(cd[((64 * idx) + cd[4] + 36)])].field_0 = cd[((64 * idx) + cd[4] + 68)]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        stor2 = 1
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

function swap() payable {
    if stor2 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor2 = 2
    if ext_code.size(msg.sender):
        if not stor4[address(msg.sender)]:
            revert with 0, 'Illegal, rejected '
    else:
        if msg.sender != tx.origin:
            if not stor4[address(msg.sender)]:
                revert with 0, 'Illegal, rejected '
    if block.number < startBlock:
        revert with 0, 'Swap has not started'
    if block.number > bonusEndBlock:
        revert with 0, 'Swap has ended'
    if not userInfo[address(msg.sender)].field_0:
        mem[100] = msg.sender
        require ext_code.size(sub_c28f4392Address)
        staticcall sub_c28f4392Address.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 < ext_call.return_data[0]:
            revert with 0, 'Amount cannot be 0'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'Amount cannot be 0'
        if ext_call.return_data[0] and exchangeRate > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * exchangeRate / 10^18 <= 0:
            revert with 0, 'Nothing to claim'
        if ext_call.return_data[0] * exchangeRate / 10^18 < 10^12:
            revert with 0, 17
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(rewardTokenAddress)
        staticcall rewardTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= (ext_call.return_data[0] * exchangeRate / 10^18) - 10^12
        if userInfo[msg.sender].field_256 > !ext_call.return_data[0]:
            revert with 0, 17
        userInfo[msg.sender].field_256 += ext_call.return_data[0]
        if sub_63d682fe > !ext_call.return_data[0]:
            revert with 0, 17
        sub_63d682fe += ext_call.return_data[0]
        if sub_239c5e04 > !(ext_call.return_data[0] * exchangeRate / 10^18):
            revert with 0, 17
        sub_239c5e04 += ext_call.return_data[0] * exchangeRate / 10^18
        mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(sub_c28f4392Address)
        call sub_c28f4392Address.0x79cc6790 with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(rewardTokenAddress)
        staticcall rewardTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
        if ext_call.return_data[0] * exchangeRate / 10^18 < ext_call.return_data[0]:
            mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] * exchangeRate / 10^18
            mem[(4 * ceil32(return_data.size)) + 96] = 68
            mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(4 * ceil32(return_data.size)) + 196] = 32
            mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if not ext_code.size(rewardTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] * exchangeRate / 10^18, 0
            mem[(4 * ceil32(return_data.size)) + 328] = 0
            call rewardTokenAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] * exchangeRate / 10^18, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] * exchangeRate / 10^18, 0) << 288)
        else:
            mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 96] = 68
            mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(4 * ceil32(return_data.size)) + 196] = 32
            mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if not ext_code.size(rewardTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
            mem[(4 * ceil32(return_data.size)) + 328] = 0
            call rewardTokenAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                if not uint32(msg.sender), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                if not mem[(4 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Swap(ext_call.return_data[0], ext_call.return_data[0] * exchangeRate / 10^18, msg.sender);
    else:
        if userInfo[address(msg.sender)].field_0 and sub_32076715 > -1 / userInfo[address(msg.sender)].field_0:
            revert with 0, 17
        if userInfo[address(msg.sender)].field_0 * sub_32076715 / 10^18 < userInfo[address(msg.sender)].field_256:
            revert with 0, 17
        mem[100] = msg.sender
        require ext_code.size(sub_c28f4392Address)
        staticcall sub_c28f4392Address.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (userInfo[address(msg.sender)].field_0 * sub_32076715 / 10^18) - userInfo[address(msg.sender)].field_256 < ext_call.return_data[0]:
            if (userInfo[address(msg.sender)].field_0 * sub_32076715 / 10^18) - userInfo[address(msg.sender)].field_256 <= 0:
                revert with 0, 'Amount cannot be 0'
            if (userInfo[address(msg.sender)].field_0 * sub_32076715 / 10^18) - userInfo[address(msg.sender)].field_256 and exchangeRate > -1 / (userInfo[address(msg.sender)].field_0 * sub_32076715 / 10^18) - userInfo[address(msg.sender)].field_256:
                revert with 0, 17
            if (userInfo[address(msg.sender)].field_0 * sub_32076715 / 10^18 * exchangeRate) - (userInfo[address(msg.sender)].field_256 * exchangeRate) / 10^18 <= 0:
                revert with 0, 'Nothing to claim'
            if (userInfo[address(msg.sender)].field_0 * sub_32076715 / 10^18 * exchangeRate) - (userInfo[address(msg.sender)].field_256 * exchangeRate) / 10^18 < 10^12:
                revert with 0, 17
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(rewardTokenAddress)
            staticcall rewardTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= ((userInfo[address(msg.sender)].field_0 * sub_32076715 / 10^18 * exchangeRate) - (userInfo[address(msg.sender)].field_256 * exchangeRate) / 10^18) - 10^12
            if userInfo[msg.sender].field_256 > !((userInfo[address(msg.sender)].field_0 * sub_32076715 / 10^18) - userInfo[address(msg.sender)].field_256):
                revert with 0, 17
            userInfo[msg.sender].field_256 = userInfo[msg.sender].field_256 + (userInfo[address(msg.sender)].field_0 * sub_32076715 / 10^18) - userInfo[address(msg.sender)].field_256
            if sub_63d682fe > !((userInfo[address(msg.sender)].field_0 * sub_32076715 / 10^18) - userInfo[address(msg.sender)].field_256):
                revert with 0, 17
            sub_63d682fe = sub_63d682fe + (userInfo[address(msg.sender)].field_0 * sub_32076715 / 10^18) - userInfo[address(msg.sender)].field_256
            if sub_239c5e04 > !((userInfo[address(msg.sender)].field_0 * sub_32076715 / 10^18 * exchangeRate) - (userInfo[address(msg.sender)].field_256 * exchangeRate) / 10^18):
                revert with 0, 17
            sub_239c5e04 += (userInfo[address(msg.sender)].field_0 * sub_32076715 / 10^18 * exchangeRate) - (userInfo[address(msg.sender)].field_256 * exchangeRate) / 10^18
            mem[(2 * ceil32(return_data.size)) + 132] = (userInfo[address(msg.sender)].field_0 * sub_32076715 / 10^18) - userInfo[address(msg.sender)].field_256
            require ext_code.size(sub_c28f4392Address)
            call sub_c28f4392Address.0x79cc6790 with:
                 gas gas_remaining wei
                args msg.sender, (userInfo[address(msg.sender)].field_0 * sub_32076715 / 10^18) - userInfo[address(msg.sender)].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(rewardTokenAddress)
            staticcall rewardTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
            if (userInfo[address(msg.sender)].field_0 * sub_32076715 / 10^18 * exchangeRate) - (userInfo[address(msg.sender)].field_256 * exchangeRate) / 10^18 < ext_call.return_data[0]:
                mem[(4 * ceil32(return_data.size)) + 164] = (userInfo[address(msg.sender)].field_0 * sub_32076715 / 10^18 * exchangeRate) - (userInfo[address(msg.sender)].field_256 * exchangeRate) / 10^18
                mem[(4 * ceil32(return_data.size)) + 96] = 68
                mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(4 * ceil32(return_data.size)) + 196] = 32
                mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if not ext_code.size(rewardTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (userInfo[address(msg.sender)].field_0 * sub_32076715 / 10^18 * exchangeRate) - (userInfo[address(msg.sender)].field_256 * exchangeRate) / 10^18, 0
                mem[(4 * ceil32(return_data.size)) + 328] = 0
                call rewardTokenAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (userInfo[address(msg.sender)].field_0 * sub_32076715 / 10^18 * exchangeRate) - (userInfo[address(msg.sender)].field_256 * exchangeRate) / 10^18, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (userInfo[address(msg.sender)].field_0 * sub_32076715 / 10^18 * exchangeRate) - (userInfo[address(msg.sender)].field_256 * exchangeRate) / 10^18, 0) << 288)
            else:
                mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 96] = 68
                mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(4 * ceil32(return_data.size)) + 196] = 32
                mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if not ext_code.size(rewardTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
                mem[(4 * ceil32(return_data.size)) + 328] = 0
                call rewardTokenAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                    if not uint32(msg.sender), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                    if not mem[(4 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Swap((userInfo[address(msg.sender)].field_0 * sub_32076715 / 10^18) - userInfo[address(msg.sender)].field_256, (userInfo[address(msg.sender)].field_0 * sub_32076715 / 10^18 * exchangeRate) - (userInfo[address(msg.sender)].field_256 * exchangeRate) / 10^18, msg.sender);
        else:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'Amount cannot be 0'
            if ext_call.return_data[0] and exchangeRate > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * exchangeRate / 10^18 <= 0:
                revert with 0, 'Nothing to claim'
            if ext_call.return_data[0] * exchangeRate / 10^18 < 10^12:
                revert with 0, 17
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(rewardTokenAddress)
            staticcall rewardTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= (ext_call.return_data[0] * exchangeRate / 10^18) - 10^12
            if userInfo[msg.sender].field_256 > !ext_call.return_data[0]:
                revert with 0, 17
            userInfo[msg.sender].field_256 += ext_call.return_data[0]
            if sub_63d682fe > !ext_call.return_data[0]:
                revert with 0, 17
            sub_63d682fe += ext_call.return_data[0]
            if sub_239c5e04 > !(ext_call.return_data[0] * exchangeRate / 10^18):
                revert with 0, 17
            sub_239c5e04 += ext_call.return_data[0] * exchangeRate / 10^18
            mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
            require ext_code.size(sub_c28f4392Address)
            call sub_c28f4392Address.0x79cc6790 with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(rewardTokenAddress)
            staticcall rewardTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
            if ext_call.return_data[0] * exchangeRate / 10^18 < ext_call.return_data[0]:
                mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] * exchangeRate / 10^18
                mem[(4 * ceil32(return_data.size)) + 96] = 68
                mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(4 * ceil32(return_data.size)) + 196] = 32
                mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if not ext_code.size(rewardTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] * exchangeRate / 10^18, 0
                mem[(4 * ceil32(return_data.size)) + 328] = 0
                call rewardTokenAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] * exchangeRate / 10^18, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] * exchangeRate / 10^18, 0) << 288)
            else:
                mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 96] = 68
                mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(4 * ceil32(return_data.size)) + 196] = 32
                mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if not ext_code.size(rewardTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
                mem[(4 * ceil32(return_data.size)) + 328] = 0
                call rewardTokenAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                    if not uint32(msg.sender), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                    if not mem[(4 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Swap(ext_call.return_data[0], ext_call.return_data[0] * exchangeRate / 10^18, msg.sender);
    stor2 = 1
}



}
