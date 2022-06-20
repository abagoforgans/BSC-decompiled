contract main {




// =====================  Runtime code  =====================


const sub_16ad25a5(?) = 0xe16b3d8fc79140c62874442c8b523e98592b429e73c0db67686a5b378b29f336

const sub_66941984(?) = 0x779b9d7b1cefd23059ce3e2b194efb3183a6685dd830e8cbb723b0cbeb982b28

const sub_94e3adc6(?) = 0xb39c82ac105f94094d3989b231c3e0aec7d0a38bc4bba279477184e96a1d45c1

const GAME_ADMIN = 0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab

const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of struct roleAdmin;
uint8 paused;
address rewardAddress;
uint256 sub_dfeab4e4;
uint256 sub_72cb3e82;
mapping of struct userInfo;
address sub_4fb3ccc5Address;
mapping of uint8 stor206;
address sub_dddd1c12Address;
uint256 topUpBalance;
uint256 sub_8312f149;
uint256 sub_e976d431;
mapping of uint256 sub_ce303adc;
uint256 withdrawalFee;

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256, userInfo[arg1].field_512, userInfo[arg1].field_768
}

function reward() payable {
    return rewardAddress
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_25401d8e(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor206[arg1])
}

function sub_4fb3ccc5(?) payable {
    return sub_4fb3ccc5Address
}

function paused() payable {
    return bool(paused)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[address(arg1)].field_0
}

function sub_72cb3e82(?) payable {
    return sub_72cb3e82
}

function topUpBalance() payable {
    return topUpBalance
}

function sub_8312f149(?) payable {
    return sub_8312f149
}

function withdrawalFee() payable {
    return withdrawalFee
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_ce303adc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_ce303adc[arg1]
}

function sub_dddd1c12(?) payable {
    return sub_dddd1c12Address
}

function sub_dfeab4e4(?) payable {
    return sub_dfeab4e4
}

function sub_e976d431(?) payable {
    return sub_e976d431
}

function _fallback() payable {
    revert
}

function sub_88dde3a3(?) payable {
    require calldata.size - 4 >= 32
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    return (10^18 * arg1)
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

function topup(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'amount is zero'
    require ext_code.size(sub_dddd1c12Address)
    call sub_dddd1c12Address.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if topUpBalance > !arg1:
        revert with 0, 17
    topUpBalance += arg1
    emit 0x9e632382: arg1, msg.sender
}

function sub_a8f5942d(?) payable {
    if userInfo[address(msg.sender)].field_256:
        if block.timestamp < userInfo[address(msg.sender)].field_256:
            revert with 0, 17
        if sub_dfeab4e4 < block.timestamp - userInfo[address(msg.sender)].field_256:
            if 0 >= withdrawalFee:
                return 0
        else:
            if sub_dfeab4e4 - block.timestamp + userInfo[address(msg.sender)].field_256 and sub_72cb3e82 > -1 / sub_dfeab4e4 - block.timestamp + userInfo[address(msg.sender)].field_256:
                revert with 0, 17
            if (sub_dfeab4e4 * sub_72cb3e82) - (block.timestamp * sub_72cb3e82) + (userInfo[address(msg.sender)].field_256 * sub_72cb3e82) / 24 * 3600 >= withdrawalFee:
                return ((sub_dfeab4e4 * sub_72cb3e82) - (block.timestamp * sub_72cb3e82) + (userInfo[address(msg.sender)].field_256 * sub_72cb3e82) / 24 * 3600)
    return withdrawalFee
}

function sub_48ea7127(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if roleAdmin[0][address(msg.sender)].field_0:
        sub_4fb3ccc5Address = address(arg1)
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

function sub_25303a73(?) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0:
        sub_e976d431 = arg1
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

function sub_6ae5c9b0(?) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0:
        sub_72cb3e82 = arg1
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

function sub_85b5b14d(?) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0:
        sub_8312f149 = arg1
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

function setWithdrawalFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0:
        withdrawalFee = arg1
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

function setReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0:
        rewardAddress = arg1
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

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0:
        sub_dddd1c12Address = arg1
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

function pause() payable {
    if roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0:
        if paused:
            revert with 0, 'Pausable: paused'
        paused = 1
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
    if roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0:
        if not paused:
            revert with 0, 'Pausable: not paused'
        paused = 0
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

function setPenaltyTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0:
        if arg1 > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
            revert with 0, 17
        sub_dfeab4e4 = 24 * 3600 * arg1
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

function deduct(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if roleAdmin[0xb39c82ac105f94094d3989b231c3e0aec7d0a38bc4bba279477184e96a1d45c1][address(msg.sender)].field_0:
        if userInfo[address(arg1)].field_0 < arg2:
            revert with 0, 17
        userInfo[address(arg1)].field_0 -= arg2
        emit 0x27f58dda: arg2, arg1
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
    s = 0xb39c82ac105f94094d3989b231c3e0aec7d0a38bc4bba279477184e96a1d45c1
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function sub_0b92cf90(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
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
    rewardAddress = address(arg1)
    sub_dddd1c12Address = address(arg2)
    sub_dfeab4e4 = 120 * 24 * 3600
    sub_72cb3e82 = 1000
    withdrawalFee = 500
    sub_8312f149 = 200 * 10^18
    sub_e976d431 = 1000 * 10^18
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

function sub_ebfdcf99(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if roleAdmin[0xe16b3d8fc79140c62874442c8b523e98592b429e73c0db67686a5b378b29f336][address(msg.sender)].field_0:
        if arg2 <= 0:
            revert with 0, 'amount is zero'
        if not address(arg1):
            revert with 0, 'address is invalid'
        if userInfo[address(arg1)].field_0 > !arg2:
            revert with 0, 17
        userInfo[address(arg1)].field_0 += arg2
        emit 0x78519098: arg2, address(arg1)
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
    s = 0xe16b3d8fc79140c62874442c8b523e98592b429e73c0db67686a5b378b29f336
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function sub_ab53dbb1(?) payable {
    require calldata.size - 4 >= 160
    require arg3 == bool(arg3)
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg5.length
    require arg5 + arg5.length + 36 <= calldata.size
    mem[128 len arg5.length] = arg5[all]
    if paused:
        revert with 0, 'Pausable: paused'
    if stor206[arg1]:
        revert with 0, 'claimed'
    stor206[arg1] = 1
    if arg4 <= block.timestamp:
        revert with 0, 'expired'
    mem[ceil32(ceil32(arg5.length)) + 129] = address(msg.sender)
    mem[ceil32(ceil32(arg5.length)) + 149] = address(this.address)
    mem[ceil32(ceil32(arg5.length)) + 169] = arg1
    mem[ceil32(ceil32(arg5.length)) + 97] = 137
    require 65 == arg5.length
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(msg.sender, this.address, arg1, arg2, arg4, Mask(8, 248, bool(arg3)) >> 248)), 0, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != sub_4fb3ccc5Address:
        revert with 0, 'signature do not match'
    if arg2 <= 0:
        revert with 0, 'amount is zero'
    if not msg.sender:
        revert with 0, 'address is invalid'
    if userInfo[address(msg.sender)].field_0 > !arg2:
        revert with 0, 17
    userInfo[address(msg.sender)].field_0 += arg2
    emit 0x78519098: arg2, msg.sender
    emit 0x43392645: arg2, msg.sender, arg1
}

function claim(uint256 arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    if paused:
        revert with 0, 'Pausable: paused'
    if stor206[arg1]:
        revert with 0, 'claimed'
    stor206[arg1] = 1
    if arg3 <= block.timestamp:
        revert with 0, 'expired'
    mem[ceil32(ceil32(arg4.length)) + 129] = address(msg.sender)
    mem[ceil32(ceil32(arg4.length)) + 149] = address(this.address)
    mem[ceil32(ceil32(arg4.length)) + 169] = arg1
    mem[ceil32(ceil32(arg4.length)) + 97] = 136
    require 65 == arg4.length
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(msg.sender, this.address, arg1, arg2, arg3)), 0, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != sub_4fb3ccc5Address:
        revert with 0, 'signature do not match'
    if arg2 <= 0:
        revert with 0, 'amount is zero'
    if not msg.sender:
        revert with 0, 'address is invalid'
    if userInfo[address(msg.sender)].field_0 > !arg2:
        revert with 0, 17
    userInfo[address(msg.sender)].field_0 += arg2
    userInfo[address(msg.sender)].field_256 = block.timestamp
    emit 0x78519098: arg2, msg.sender
    emit 0x88fd1120: arg2, msg.sender, arg1
}

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not roleAdmin[0xe16b3d8fc79140c62874442c8b523e98592b429e73c0db67686a5b378b29f336][address(msg.sender)].field_0:
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
        s = 0xe16b3d8fc79140c62874442c8b523e98592b429e73c0db67686a5b378b29f336
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
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
    if arg2 <= 0:
        revert with 0, 'amount is zero'
    if not arg1:
        revert with 0, 'address is invalid'
    if userInfo[address(arg1)].field_0 > !arg2:
        revert with 0, 17
    userInfo[address(arg1)].field_0 += arg2
    userInfo[address(arg1)].field_256 = block.timestamp
    emit 0x78519098: arg2, arg1
}

function sub_41870822(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
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
    if arg2 <= 0:
        revert with 0, 'amount is zero'
    require ext_code.size(sub_dddd1c12Address)
    call sub_dddd1c12Address.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if topUpBalance < arg2:
        revert with 0, 17
    topUpBalance -= arg2
    emit 0xdcf02676: arg2, address(arg1)
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
    if not roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0:
        roleAdmin[0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab][address(msg.sender)].field_0 = 1
        emit RoleGranted(0xfe745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab, msg.sender, msg.sender);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function withdraw() payable {
    if block.number <= sub_ce303adc[address(msg.sender)]:
        revert with 0, 'OPB'
    sub_ce303adc[address(msg.sender)] = block.number
    if userInfo[msg.sender].field_0 < sub_8312f149:
        revert with 0, 'GL::W:UMI'
    if userInfo[msg.sender].field_0 <= sub_e976d431:
        if not userInfo[address(msg.sender)].field_256:
            if userInfo[msg.sender].field_0 and withdrawalFee > -1 / userInfo[msg.sender].field_0:
                revert with 0, 17
            if userInfo[msg.sender].field_0 * withdrawalFee / 10000 >= userInfo[msg.sender].field_0:
                revert with 0, 'GL::W:FE'
            if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0 * withdrawalFee / 10000:
                revert with 0, 17
            if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                revert with 0, 17
            userInfo[msg.sender].field_0 = 0
            userInfo[msg.sender].field_512 = block.timestamp
            require ext_code.size(rewardAddress)
            call rewardAddress.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, userInfo[msg.sender].field_0 - (userInfo[msg.sender].field_0 * withdrawalFee / 10000)
        else:
            if block.timestamp < userInfo[address(msg.sender)].field_256:
                revert with 0, 17
            if sub_dfeab4e4 < block.timestamp - userInfo[address(msg.sender)].field_256:
                if 0 >= withdrawalFee:
                    if userInfo[msg.sender].field_0 and 0 > -1 / userInfo[msg.sender].field_0:
                        revert with 0, 17
                    if 0 >= userInfo[msg.sender].field_0:
                        revert with 0, 'GL::W:FE'
                    if userInfo[msg.sender].field_0 < 0:
                        revert with 0, 17
                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                        revert with 0, 17
                    userInfo[msg.sender].field_0 = 0
                    userInfo[msg.sender].field_512 = block.timestamp
                    require ext_code.size(rewardAddress)
                    call rewardAddress.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, userInfo[msg.sender].field_0
                else:
                    if userInfo[msg.sender].field_0 and withdrawalFee > -1 / userInfo[msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[msg.sender].field_0 * withdrawalFee / 10000 >= userInfo[msg.sender].field_0:
                        revert with 0, 'GL::W:FE'
                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0 * withdrawalFee / 10000:
                        revert with 0, 17
                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                        revert with 0, 17
                    userInfo[msg.sender].field_0 = 0
                    userInfo[msg.sender].field_512 = block.timestamp
                    require ext_code.size(rewardAddress)
                    call rewardAddress.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, userInfo[msg.sender].field_0 - (userInfo[msg.sender].field_0 * withdrawalFee / 10000)
            else:
                if sub_dfeab4e4 - block.timestamp + userInfo[address(msg.sender)].field_256 and sub_72cb3e82 > -1 / sub_dfeab4e4 - block.timestamp + userInfo[address(msg.sender)].field_256:
                    revert with 0, 17
                if (sub_dfeab4e4 * sub_72cb3e82) - (block.timestamp * sub_72cb3e82) + (userInfo[address(msg.sender)].field_256 * sub_72cb3e82) / 24 * 3600 >= withdrawalFee:
                    if userInfo[msg.sender].field_0 and (sub_dfeab4e4 * sub_72cb3e82) - (block.timestamp * sub_72cb3e82) + (userInfo[address(msg.sender)].field_256 * sub_72cb3e82) / 24 * 3600 > -1 / userInfo[msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[msg.sender].field_0 * (sub_dfeab4e4 * sub_72cb3e82) - (block.timestamp * sub_72cb3e82) + (userInfo[address(msg.sender)].field_256 * sub_72cb3e82) / 24 * 3600 / 10000 >= userInfo[msg.sender].field_0:
                        revert with 0, 'GL::W:FE'
                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0 * (sub_dfeab4e4 * sub_72cb3e82) - (block.timestamp * sub_72cb3e82) + (userInfo[address(msg.sender)].field_256 * sub_72cb3e82) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                        revert with 0, 17
                    userInfo[msg.sender].field_0 = 0
                    userInfo[msg.sender].field_512 = block.timestamp
                    require ext_code.size(rewardAddress)
                    call rewardAddress.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, userInfo[msg.sender].field_0 - (userInfo[msg.sender].field_0 * (sub_dfeab4e4 * sub_72cb3e82) - (block.timestamp * sub_72cb3e82) + (userInfo[address(msg.sender)].field_256 * sub_72cb3e82) / 24 * 3600 / 10000)
                else:
                    if userInfo[msg.sender].field_0 and withdrawalFee > -1 / userInfo[msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[msg.sender].field_0 * withdrawalFee / 10000 >= userInfo[msg.sender].field_0:
                        revert with 0, 'GL::W:FE'
                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0 * withdrawalFee / 10000:
                        revert with 0, 17
                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                        revert with 0, 17
                    userInfo[msg.sender].field_0 = 0
                    userInfo[msg.sender].field_512 = block.timestamp
                    require ext_code.size(rewardAddress)
                    call rewardAddress.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, userInfo[msg.sender].field_0 - (userInfo[msg.sender].field_0 * withdrawalFee / 10000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x9a39f8dd: userInfo[msg.sender].field_0, msg.sender
    else:
        if not userInfo[address(msg.sender)].field_256:
            if sub_e976d431 and withdrawalFee > -1 / sub_e976d431:
                revert with 0, 17
            if sub_e976d431 * withdrawalFee / 10000 >= sub_e976d431:
                revert with 0, 'GL::W:FE'
            if sub_e976d431 < sub_e976d431 * withdrawalFee / 10000:
                revert with 0, 17
            if userInfo[msg.sender].field_0 < sub_e976d431:
                revert with 0, 17
            userInfo[msg.sender].field_0 -= sub_e976d431
            userInfo[msg.sender].field_512 = block.timestamp
            require ext_code.size(rewardAddress)
            call rewardAddress.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, sub_e976d431 - (sub_e976d431 * withdrawalFee / 10000)
        else:
            if block.timestamp < userInfo[address(msg.sender)].field_256:
                revert with 0, 17
            if sub_dfeab4e4 < block.timestamp - userInfo[address(msg.sender)].field_256:
                if 0 >= withdrawalFee:
                    if sub_e976d431 and 0 > -1 / sub_e976d431:
                        revert with 0, 17
                    if 0 >= sub_e976d431:
                        revert with 0, 'GL::W:FE'
                    if sub_e976d431 < 0:
                        revert with 0, 17
                    if userInfo[msg.sender].field_0 < sub_e976d431:
                        revert with 0, 17
                    userInfo[msg.sender].field_0 -= sub_e976d431
                    userInfo[msg.sender].field_512 = block.timestamp
                    require ext_code.size(rewardAddress)
                    call rewardAddress.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, sub_e976d431
                else:
                    if sub_e976d431 and withdrawalFee > -1 / sub_e976d431:
                        revert with 0, 17
                    if sub_e976d431 * withdrawalFee / 10000 >= sub_e976d431:
                        revert with 0, 'GL::W:FE'
                    if sub_e976d431 < sub_e976d431 * withdrawalFee / 10000:
                        revert with 0, 17
                    if userInfo[msg.sender].field_0 < sub_e976d431:
                        revert with 0, 17
                    userInfo[msg.sender].field_0 -= sub_e976d431
                    userInfo[msg.sender].field_512 = block.timestamp
                    require ext_code.size(rewardAddress)
                    call rewardAddress.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, sub_e976d431 - (sub_e976d431 * withdrawalFee / 10000)
            else:
                if sub_dfeab4e4 - block.timestamp + userInfo[address(msg.sender)].field_256 and sub_72cb3e82 > -1 / sub_dfeab4e4 - block.timestamp + userInfo[address(msg.sender)].field_256:
                    revert with 0, 17
                if (sub_dfeab4e4 * sub_72cb3e82) - (block.timestamp * sub_72cb3e82) + (userInfo[address(msg.sender)].field_256 * sub_72cb3e82) / 24 * 3600 >= withdrawalFee:
                    if sub_e976d431 and (sub_dfeab4e4 * sub_72cb3e82) - (block.timestamp * sub_72cb3e82) + (userInfo[address(msg.sender)].field_256 * sub_72cb3e82) / 24 * 3600 > -1 / sub_e976d431:
                        revert with 0, 17
                    if sub_e976d431 * (sub_dfeab4e4 * sub_72cb3e82) - (block.timestamp * sub_72cb3e82) + (userInfo[address(msg.sender)].field_256 * sub_72cb3e82) / 24 * 3600 / 10000 >= sub_e976d431:
                        revert with 0, 'GL::W:FE'
                    if sub_e976d431 < sub_e976d431 * (sub_dfeab4e4 * sub_72cb3e82) - (block.timestamp * sub_72cb3e82) + (userInfo[address(msg.sender)].field_256 * sub_72cb3e82) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if userInfo[msg.sender].field_0 < sub_e976d431:
                        revert with 0, 17
                    userInfo[msg.sender].field_0 -= sub_e976d431
                    userInfo[msg.sender].field_512 = block.timestamp
                    require ext_code.size(rewardAddress)
                    call rewardAddress.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, sub_e976d431 - (sub_e976d431 * (sub_dfeab4e4 * sub_72cb3e82) - (block.timestamp * sub_72cb3e82) + (userInfo[address(msg.sender)].field_256 * sub_72cb3e82) / 24 * 3600 / 10000)
                else:
                    if sub_e976d431 and withdrawalFee > -1 / sub_e976d431:
                        revert with 0, 17
                    if sub_e976d431 * withdrawalFee / 10000 >= sub_e976d431:
                        revert with 0, 'GL::W:FE'
                    if sub_e976d431 < sub_e976d431 * withdrawalFee / 10000:
                        revert with 0, 17
                    if userInfo[msg.sender].field_0 < sub_e976d431:
                        revert with 0, 17
                    userInfo[msg.sender].field_0 -= sub_e976d431
                    userInfo[msg.sender].field_512 = block.timestamp
                    require ext_code.size(rewardAddress)
                    call rewardAddress.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, sub_e976d431 - (sub_e976d431 * withdrawalFee / 10000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x9a39f8dd: sub_e976d431, msg.sender
}



}
