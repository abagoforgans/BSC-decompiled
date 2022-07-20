contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - sub_6d2f43c9(?)
#  - deposit(uint256 arg1)
#
const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
mapping of struct roleAdmin;
address sub_2a8d950cAddress;
uint8 halted; offset 160
uint32 stor202;
uint128 stor202; offset 160
address treasuryAddress;
uint256 stor202;
address stor203;
uint256 stor204;
uint256 stor205;
address rewardTokenAddress;
uint256 rewardPerBlock;
uint256 stor208;
mapping of struct userInfo;
address stor210;
uint256 stor211;
uint256 stor212;
uint256 stor213;
uint256 stor214;
uint8 sub_db0c7c8a;
uint256 stakersCount;
uint256 sub_e43db193;
uint256 sub_602b2911;
mapping of uint256 sub_47334aca;
uint8 sub_0271e8b9;
array of address sub_eac6379b;
uint8 sub_df8d8b05;

function sub_0271e8b9(?) payable {
    return bool(sub_0271e8b9)
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, 
           userInfo[arg1].field_256,
           userInfo[arg1].field_512,
           userInfo[arg1].field_768,
           userInfo[arg1].field_1024
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_2a8d950c(?) payable {
    return sub_2a8d950cAddress
}

function lockPeriod() payable {
    return sub_e43db193
}

function sub_47334aca(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_47334aca[arg1]
}

function sub_602b2911(?) payable {
    return sub_602b2911
}

function treasury() payable {
    return treasuryAddress
}

function getUserInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[address(arg1)].field_0, 
           userInfo[address(arg1)].field_256,
           userInfo[address(arg1)].field_512,
           userInfo[address(arg1)].field_768,
           userInfo[address(arg1)].field_1024
}

function rewardPerBlock() payable {
    return rewardPerBlock
}

function owner() payable {
    return owner
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function getLockedAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[address(arg1)].field_0
}

function stakersCount() payable {
    return stakersCount
}

function halted() payable {
    return bool(halted)
}

function sub_db0c7c8a(?) payable {
    return bool(sub_db0c7c8a)
}

function sub_df8d8b05(?) payable {
    return sub_df8d8b05
}

function sub_e43db193(?) payable {
    return sub_e43db193
}

function sub_eac6379b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_eac6379b.length
    return address(sub_eac6379b[arg1])
}

function rewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function liquidityMining() payable {
    return stor203, stor204, stor205
}

function fees() payable {
    return stor210, stor211, stor212, stor213, stor214
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setLockPeriod(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e43db193 = arg1
}

function sub_27449b9c(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_602b2911 = arg1
    rewardPerBlock = 0
}

function setTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = arg1
}

function sub_115713b5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_df8d8b05 = uint8(arg1)
}

function setWithdrawFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor212 = arg1
    emit FeesUpdated(stor211, arg1);
}

function setLevelManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2a8d950cAddress = arg1
}

function sub_11360c01(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_47334aca[address(arg1)] > !sub_e43db193:
        revert with 0, 17
    return (sub_47334aca[address(arg1)] + sub_e43db193)
}

function isLocked(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_47334aca[address(arg1)] > !sub_e43db193:
        revert with 0, 17
    return (block.timestamp < sub_47334aca[address(arg1)] + sub_e43db193)
}

function sub_6d229946(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_db0c7c8a = uint8(bool(arg1))
    emit 0x2d2d991e: bool(arg1)
}

function sub_d7357d34(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if userInfo[address(arg1)].field_0 and sub_602b2911 > -1 / userInfo[address(arg1)].field_0:
        revert with 0, 17
    return (userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600)
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_21df71b7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        if not roleAdmin[0][address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    sub_0271e8b9 = uint8(bool(arg1))
}

function setRewardPerBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not roleAdmin[0][address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    rewardPerBlock = arg1
    sub_602b2911 = 0
    emit 0x5ed0ffa5: arg1
}

function halt(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if not roleAdmin[0][address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    Mask(96, 0, stor202.field_160) = Mask(96, 0, arg1)
    emit Halted(arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
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

function sub_789513ec(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if rewardTokenAddress:
        revert with 0, 'Token is already set'
    if stor203:
        revert with 0, 'Token is already set'
    rewardTokenAddress = address(arg1)
    stor203 = address(arg2)
    stor204 = 0
    stor205 = 0
}

function setFees(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Fees collector address is not specified'
    if arg2 >= 700:
        revert with 0, 'Max deposit fee: 70%'
    if arg3 >= 700:
        revert with 0, 'Max withdraw fee: 70%'
    stor210 = arg1
    stor211 = arg2
    stor212 = arg3
    emit FeesUpdated(arg2, arg3);
}

function getRewardPerBlock(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 == sub_602b2911:
        return 0
    if not userInfo[address(arg1)].field_0:
        return 0
    if sub_47334aca[address(arg1)] > !sub_e43db193:
        revert with 0, 17
    if block.timestamp >= sub_47334aca[address(arg1)] + sub_e43db193:
        return 0
    if userInfo[address(arg1)].field_0 and sub_602b2911 > -1 / userInfo[address(arg1)].field_0:
        revert with 0, 17
    if userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > 0x5555555555555555555555555555555555555555555555555555555555555555:
        revert with 0, 17
    return (3 * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600)
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
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    if not roleAdmin[0][address(msg.sender)].field_0:
        roleAdmin[0][address(msg.sender)].field_0 = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function withdrawToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if not roleAdmin[0][address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_8bd3aa59(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        if not roleAdmin[0][address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    sub_eac6379b.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_eac6379b.length > idx:
            uint256(sub_eac6379b[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            address(sub_eac6379b[s]) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_eac6379b.length > idx:
            uint256(sub_eac6379b[idx]) = 0
            idx = idx + 1
            continue 
}

function sub_f1c8315f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not sub_47334aca[address(arg1)]:
        return 0
    if block.timestamp == sub_47334aca[address(arg1)]:
        return 0
    if sub_47334aca[address(arg1)] > !sub_e43db193:
        revert with 0, 17
    if block.timestamp >= sub_47334aca[address(arg1)] + sub_e43db193:
        if userInfo[address(arg1)].field_0 and sub_602b2911 > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if sub_e43db193 and userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / sub_e43db193:
            revert with 0, 17
        return (sub_e43db193 * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600)
    if block.timestamp < sub_47334aca[address(arg1)]:
        revert with 0, 17
    if userInfo[address(arg1)].field_0 and sub_602b2911 > -1 / userInfo[address(arg1)].field_0:
        revert with 0, 17
    if block.timestamp - sub_47334aca[address(arg1)] and userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / block.timestamp - sub_47334aca[address(arg1)]:
        revert with 0, 17
    return ((block.timestamp * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(arg1)] * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600))
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

function initialize(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
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
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    if not roleAdmin[0][address(msg.sender)].field_0:
        roleAdmin[0][address(msg.sender)].field_0 = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
    sub_2a8d950cAddress = arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = arg2
    if not arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Fees collector address is not specified'
    if arg4 >= 700:
        revert with 0, 'Max deposit fee: 70%'
    if arg5 >= 700:
        revert with 0, 'Max withdraw fee: 70%'
    stor210 = arg3
    stor211 = arg4
    stor212 = arg5
    emit FeesUpdated(arg4, arg5);
    stor208 = 10^12
    sub_db0c7c8a = 0
    sub_e43db193 = arg6
    sub_602b2911 = arg7
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function pendingRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_47334aca[address(arg1)]:
        if 0 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        if -userInfo[address(arg1)].field_256 > !userInfo[address(arg1)].field_512:
            revert with 0, 17
        return (-userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512)
    if block.timestamp == sub_47334aca[address(arg1)]:
        if 0 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        if -userInfo[address(arg1)].field_256 > !userInfo[address(arg1)].field_512:
            revert with 0, 17
        return (-userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512)
    if sub_47334aca[address(arg1)] > !sub_e43db193:
        revert with 0, 17
    if block.timestamp >= sub_47334aca[address(arg1)] + sub_e43db193:
        if userInfo[address(arg1)].field_0 and sub_602b2911 > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if sub_e43db193 and userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / sub_e43db193:
            revert with 0, 17
        if sub_e43db193 * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        if (sub_e43db193 * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(arg1)].field_256 > !userInfo[address(arg1)].field_512:
            revert with 0, 17
        return ((sub_e43db193 * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512)
    if block.timestamp < sub_47334aca[address(arg1)]:
        revert with 0, 17
    if userInfo[address(arg1)].field_0 and sub_602b2911 > -1 / userInfo[address(arg1)].field_0:
        revert with 0, 17
    if block.timestamp - sub_47334aca[address(arg1)] and userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / block.timestamp - sub_47334aca[address(arg1)]:
        revert with 0, 17
    if (block.timestamp * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(arg1)] * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) < userInfo[address(arg1)].field_256:
        revert with 0, 17
    if (block.timestamp * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(arg1)] * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(arg1)].field_256 > !userInfo[address(arg1)].field_512:
        revert with 0, 17
    return ((block.timestamp * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(arg1)] * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512)
}

function sub_f97ba7bc(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        if not roleAdmin[0][address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 209
        if userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 219
            if not sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])]:
                userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256 = 0
            else:
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 219
                if block.timestamp == sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])]:
                    userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256 = 0
                else:
                    if sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] > !sub_e43db193:
                        revert with 0, 17
                    if block.timestamp >= sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] + sub_e43db193:
                        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[32] = 209
                        if userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 and sub_602b2911 > -1 / userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                            revert with 0, 17
                        if sub_e43db193 and userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / sub_e43db193:
                            revert with 0, 17
                        userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256 = sub_e43db193 * userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600
                    else:
                        if block.timestamp < sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])]:
                            revert with 0, 17
                        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[32] = 209
                        if userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 and sub_602b2911 > -1 / userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                            revert with 0, 17
                        if block.timestamp - sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] and userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / block.timestamp - sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])]:
                            revert with 0, 17
                        userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256 = (block.timestamp * userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] * userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function unlock(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if not roleAdmin[0][address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    if userInfo[address(arg1)].field_0:
        if not sub_47334aca[address(arg1)]:
            if 0 < userInfo[address(arg1)].field_256:
                revert with 0, 17
            if userInfo[address(arg1)].field_512 > !-userInfo[address(arg1)].field_256:
                revert with 0, 17
            userInfo[address(arg1)].field_512 -= userInfo[address(arg1)].field_256
        else:
            if block.timestamp == sub_47334aca[address(arg1)]:
                if 0 < userInfo[address(arg1)].field_256:
                    revert with 0, 17
                if userInfo[address(arg1)].field_512 > !-userInfo[address(arg1)].field_256:
                    revert with 0, 17
                userInfo[address(arg1)].field_512 -= userInfo[address(arg1)].field_256
            else:
                if sub_47334aca[address(arg1)] > !sub_e43db193:
                    revert with 0, 17
                if block.timestamp >= sub_47334aca[address(arg1)] + sub_e43db193:
                    if userInfo[address(arg1)].field_0 and sub_602b2911 > -1 / userInfo[address(arg1)].field_0:
                        revert with 0, 17
                    if sub_e43db193 and userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / sub_e43db193:
                        revert with 0, 17
                    if sub_e43db193 * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 < userInfo[address(arg1)].field_256:
                        revert with 0, 17
                    if userInfo[address(arg1)].field_512 > !((sub_e43db193 * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(arg1)].field_256):
                        revert with 0, 17
                    userInfo[address(arg1)].field_512 = userInfo[address(arg1)].field_512 + (sub_e43db193 * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(arg1)].field_256
                else:
                    if block.timestamp < sub_47334aca[address(arg1)]:
                        revert with 0, 17
                    if userInfo[address(arg1)].field_0 and sub_602b2911 > -1 / userInfo[address(arg1)].field_0:
                        revert with 0, 17
                    if block.timestamp - sub_47334aca[address(arg1)] and userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / block.timestamp - sub_47334aca[address(arg1)]:
                        revert with 0, 17
                    if (block.timestamp * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(arg1)] * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) < userInfo[address(arg1)].field_256:
                        revert with 0, 17
                    if userInfo[address(arg1)].field_512 > !((block.timestamp * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(arg1)] * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(arg1)].field_256):
                        revert with 0, 17
                    userInfo[address(arg1)].field_512 = userInfo[address(arg1)].field_512 + (block.timestamp * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(arg1)] * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(arg1)].field_256
    sub_47334aca[address(arg1)] = 0
    if not sub_47334aca[address(arg1)]:
        userInfo[address(arg1)].field_256 = 0
    else:
        if block.timestamp == sub_47334aca[address(arg1)]:
            userInfo[address(arg1)].field_256 = 0
        else:
            if sub_47334aca[address(arg1)] > !sub_e43db193:
                revert with 0, 17
            if block.timestamp >= sub_47334aca[address(arg1)] + sub_e43db193:
                if userInfo[address(arg1)].field_0 and sub_602b2911 > -1 / userInfo[address(arg1)].field_0:
                    revert with 0, 17
                if sub_e43db193 and userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / sub_e43db193:
                    revert with 0, 17
                userInfo[address(arg1)].field_256 = sub_e43db193 * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600
            else:
                if block.timestamp < sub_47334aca[address(arg1)]:
                    revert with 0, 17
                if userInfo[address(arg1)].field_0 and sub_602b2911 > -1 / userInfo[address(arg1)].field_0:
                    revert with 0, 17
                if block.timestamp - sub_47334aca[address(arg1)] and userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / block.timestamp - sub_47334aca[address(arg1)]:
                    revert with 0, 17
                userInfo[address(arg1)].field_256 = (block.timestamp * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(arg1)] * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600)
}

function sub_1612d807(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0, 'Must specify target pool'
    if this.address == address(arg1):
        revert with 0, 'Must specify target pool'
    if not sub_eac6379b.length:
        revert with 0, 'Must have higherPools configured'
    idx = 0
    s = 0
    while idx < sub_eac6379b.length:
        mem[0] = 221
        if idx == -1:
            revert with 0, 17
        if address(sub_eac6379b[idx]) != address(arg1):
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        revert with 0, 'Pool not allowed'
    if not userInfo[msg.sender].field_0:
        revert with 0, 'No tokens locked'
    if userInfo[address(msg.sender)].field_0:
        if not sub_47334aca[address(msg.sender)]:
            if 0 < userInfo[address(msg.sender)].field_256:
                revert with 0, 17
            if userInfo[address(msg.sender)].field_512 > !-userInfo[address(msg.sender)].field_256:
                revert with 0, 17
            userInfo[address(msg.sender)].field_512 -= userInfo[address(msg.sender)].field_256
        else:
            if block.timestamp == sub_47334aca[address(msg.sender)]:
                if 0 < userInfo[address(msg.sender)].field_256:
                    revert with 0, 17
                if userInfo[address(msg.sender)].field_512 > !-userInfo[address(msg.sender)].field_256:
                    revert with 0, 17
                userInfo[address(msg.sender)].field_512 -= userInfo[address(msg.sender)].field_256
            else:
                if sub_47334aca[address(msg.sender)] > !sub_e43db193:
                    revert with 0, 17
                if block.timestamp >= sub_47334aca[address(msg.sender)] + sub_e43db193:
                    if userInfo[address(msg.sender)].field_0 and sub_602b2911 > -1 / userInfo[address(msg.sender)].field_0:
                        revert with 0, 17
                    if sub_e43db193 and userInfo[address(msg.sender)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / sub_e43db193:
                        revert with 0, 17
                    if sub_e43db193 * userInfo[address(msg.sender)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 < userInfo[address(msg.sender)].field_256:
                        revert with 0, 17
                    if userInfo[address(msg.sender)].field_512 > !((sub_e43db193 * userInfo[address(msg.sender)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(msg.sender)].field_256):
                        revert with 0, 17
                    userInfo[address(msg.sender)].field_512 = userInfo[address(msg.sender)].field_512 + (sub_e43db193 * userInfo[address(msg.sender)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(msg.sender)].field_256
                else:
                    if block.timestamp < sub_47334aca[address(msg.sender)]:
                        revert with 0, 17
                    if userInfo[address(msg.sender)].field_0 and sub_602b2911 > -1 / userInfo[address(msg.sender)].field_0:
                        revert with 0, 17
                    if block.timestamp - sub_47334aca[address(msg.sender)] and userInfo[address(msg.sender)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / block.timestamp - sub_47334aca[address(msg.sender)]:
                        revert with 0, 17
                    if (block.timestamp * userInfo[address(msg.sender)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(msg.sender)] * userInfo[address(msg.sender)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) < userInfo[address(msg.sender)].field_256:
                        revert with 0, 17
                    if userInfo[address(msg.sender)].field_512 > !((block.timestamp * userInfo[address(msg.sender)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(msg.sender)] * userInfo[address(msg.sender)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(msg.sender)].field_256):
                        revert with 0, 17
                    userInfo[address(msg.sender)].field_512 = userInfo[address(msg.sender)].field_512 + (block.timestamp * userInfo[address(msg.sender)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(msg.sender)] * userInfo[address(msg.sender)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(msg.sender)].field_256
    require ext_code.size(stor203)
    call stor203.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), userInfo[msg.sender].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg1))
    call address(arg1).0x6d2f43c9 with:
         gas gas_remaining wei
        args msg.sender, userInfo[msg.sender].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x644cbf35: userInfo[msg.sender].field_0, address(arg1), msg.sender
    userInfo[msg.sender].field_0 = 0
    sub_47334aca[address(msg.sender)] = 0
    if not sub_47334aca[address(msg.sender)]:
        userInfo[address(msg.sender)].field_256 = 0
    else:
        if block.timestamp == sub_47334aca[address(msg.sender)]:
            userInfo[address(msg.sender)].field_256 = 0
        else:
            if sub_47334aca[address(msg.sender)] > !sub_e43db193:
                revert with 0, 17
            if block.timestamp >= sub_47334aca[address(msg.sender)] + sub_e43db193:
                if userInfo[address(msg.sender)].field_0 and sub_602b2911 > -1 / userInfo[address(msg.sender)].field_0:
                    revert with 0, 17
                if sub_e43db193 and userInfo[address(msg.sender)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / sub_e43db193:
                    revert with 0, 17
                userInfo[address(msg.sender)].field_256 = sub_e43db193 * userInfo[address(msg.sender)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600
            else:
                if block.timestamp < sub_47334aca[address(msg.sender)]:
                    revert with 0, 17
                if userInfo[address(msg.sender)].field_0 and sub_602b2911 > -1 / userInfo[address(msg.sender)].field_0:
                    revert with 0, 17
                if block.timestamp - sub_47334aca[address(msg.sender)] and userInfo[address(msg.sender)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / block.timestamp - sub_47334aca[address(msg.sender)]:
                    revert with 0, 17
                userInfo[address(msg.sender)].field_256 = (block.timestamp * userInfo[address(msg.sender)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(msg.sender)] * userInfo[address(msg.sender)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600)
}

function sub_791ed9dd(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        if not roleAdmin[0][address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 209
        if userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
            if userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                if not sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])]:
                    if 0 < userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256:
                        revert with 0, 17
                    if userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_512 > !-userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256:
                        revert with 0, 17
                    userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_512 -= userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256
                else:
                    if block.timestamp == sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])]:
                        if 0 < userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256:
                            revert with 0, 17
                        if userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_512 > !-userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256:
                            revert with 0, 17
                        userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_512 -= userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256
                    else:
                        if sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] > !sub_e43db193:
                            revert with 0, 17
                        if block.timestamp >= sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] + sub_e43db193:
                            if userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 and sub_602b2911 > -1 / userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                                revert with 0, 17
                            if sub_e43db193 and userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / sub_e43db193:
                                revert with 0, 17
                            if sub_e43db193 * userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 < userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256:
                                revert with 0, 17
                            if userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_512 > !((sub_e43db193 * userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256):
                                revert with 0, 17
                            userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_512 = userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_512 + (sub_e43db193 * userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256
                        else:
                            if block.timestamp < sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])]:
                                revert with 0, 17
                            if userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 and sub_602b2911 > -1 / userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                                revert with 0, 17
                            if block.timestamp - sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] and userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / block.timestamp - sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])]:
                                revert with 0, 17
                            if (block.timestamp * userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] * userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) < userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256:
                                revert with 0, 17
                            if userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_512 > !((block.timestamp * userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] * userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256):
                                revert with 0, 17
                            userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_512 = userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_512 + (block.timestamp * userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] * userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 219
            if not sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])]:
                userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256 = 0
            else:
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 219
                if block.timestamp == sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])]:
                    userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256 = 0
                else:
                    if sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] > !sub_e43db193:
                        revert with 0, 17
                    if block.timestamp >= sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] + sub_e43db193:
                        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[32] = 209
                        if userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 and sub_602b2911 > -1 / userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                            revert with 0, 17
                        if sub_e43db193 and userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / sub_e43db193:
                            revert with 0, 17
                        userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256 = sub_e43db193 * userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600
                    else:
                        if block.timestamp < sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])]:
                            revert with 0, 17
                        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[32] = 209
                        if userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 and sub_602b2911 > -1 / userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                            revert with 0, 17
                        if block.timestamp - sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] and userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / block.timestamp - sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])]:
                            revert with 0, 17
                        userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256 = (block.timestamp * userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] * userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function claim() payable {
    if userInfo[address(msg.sender)].field_0:
        if not sub_47334aca[address(msg.sender)]:
            if 0 < userInfo[address(msg.sender)].field_256:
                revert with 0, 17
            if userInfo[address(msg.sender)].field_512 > !-userInfo[address(msg.sender)].field_256:
                revert with 0, 17
            userInfo[address(msg.sender)].field_512 -= userInfo[address(msg.sender)].field_256
        else:
            if block.timestamp == sub_47334aca[address(msg.sender)]:
                if 0 < userInfo[address(msg.sender)].field_256:
                    revert with 0, 17
                if userInfo[address(msg.sender)].field_512 > !-userInfo[address(msg.sender)].field_256:
                    revert with 0, 17
                userInfo[address(msg.sender)].field_512 -= userInfo[address(msg.sender)].field_256
            else:
                if sub_47334aca[address(msg.sender)] > !sub_e43db193:
                    revert with 0, 17
                if block.timestamp >= sub_47334aca[address(msg.sender)] + sub_e43db193:
                    if userInfo[address(msg.sender)].field_0 and sub_602b2911 > -1 / userInfo[address(msg.sender)].field_0:
                        revert with 0, 17
                    if sub_e43db193 and userInfo[address(msg.sender)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / sub_e43db193:
                        revert with 0, 17
                    if sub_e43db193 * userInfo[address(msg.sender)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 < userInfo[address(msg.sender)].field_256:
                        revert with 0, 17
                    if userInfo[address(msg.sender)].field_512 > !((sub_e43db193 * userInfo[address(msg.sender)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(msg.sender)].field_256):
                        revert with 0, 17
                    userInfo[address(msg.sender)].field_512 = userInfo[address(msg.sender)].field_512 + (sub_e43db193 * userInfo[address(msg.sender)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(msg.sender)].field_256
                else:
                    if block.timestamp < sub_47334aca[address(msg.sender)]:
                        revert with 0, 17
                    if userInfo[address(msg.sender)].field_0 and sub_602b2911 > -1 / userInfo[address(msg.sender)].field_0:
                        revert with 0, 17
                    if block.timestamp - sub_47334aca[address(msg.sender)] and userInfo[address(msg.sender)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / block.timestamp - sub_47334aca[address(msg.sender)]:
                        revert with 0, 17
                    if (block.timestamp * userInfo[address(msg.sender)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(msg.sender)] * userInfo[address(msg.sender)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) < userInfo[address(msg.sender)].field_256:
                        revert with 0, 17
                    if userInfo[address(msg.sender)].field_512 > !((block.timestamp * userInfo[address(msg.sender)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(msg.sender)] * userInfo[address(msg.sender)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(msg.sender)].field_256):
                        revert with 0, 17
                    userInfo[address(msg.sender)].field_512 = userInfo[address(msg.sender)].field_512 + (block.timestamp * userInfo[address(msg.sender)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(msg.sender)] * userInfo[address(msg.sender)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(msg.sender)].field_256
    if userInfo[msg.sender].field_512:
        mem[100] = treasuryAddress
        require ext_code.size(rewardTokenAddress)
        staticcall rewardTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args treasuryAddress
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if userInfo[msg.sender].field_512 <= 0:
            revert with 0, 'Reward amount must be more than zero'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'Not enough reward tokens for transfer'
        mem[ceil32(return_data.size) + 132] = treasuryAddress
        mem[ceil32(return_data.size) + 164] = msg.sender
        if userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
            mem[ceil32(return_data.size) + 196] = userInfo[msg.sender].field_512
            mem[ceil32(return_data.size) + 96] = 100
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor202.field_0)
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
            mem[ceil32(return_data.size) + 228] = 32
            mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(rewardTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), Mask(224, 0, stor202.field_0), uint32(stor202.field_0), msg.sender, userInfo[msg.sender].field_512, 0
            mem[ceil32(return_data.size) + 392] = 0
            call rewardTokenAddress with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), Mask(224, 0, stor202.field_0), uint32(stor202.field_0), msg.sender, userInfo[msg.sender].field_512, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), Mask(224, 0, stor202.field_0), uint32(stor202.field_0), msg.sender, userInfo[msg.sender].field_512, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(stor202.field_0), mem[132 len 28] == bool(uint32(stor202.field_0), mem[132 len 28])
                    if not uint32(stor202.field_0), mem[132 len 28]:
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
            if userInfo[msg.sender].field_512 < userInfo[msg.sender].field_512:
                revert with 0, 17
            userInfo[msg.sender].field_512 = 0
            emit Claim(userInfo[msg.sender].field_512, msg.sender);
        else:
            mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 96] = 100
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor202.field_0)
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
            mem[ceil32(return_data.size) + 228] = 32
            mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(rewardTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), Mask(224, 0, stor202.field_0), uint32(stor202.field_0), msg.sender, ext_call.return_data[0], 0
            mem[ceil32(return_data.size) + 392] = 0
            call rewardTokenAddress with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), Mask(224, 0, stor202.field_0), uint32(stor202.field_0), msg.sender, ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), Mask(224, 0, stor202.field_0), uint32(stor202.field_0), msg.sender, ext_call.return_data[0], 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(stor202.field_0), mem[132 len 28] == bool(uint32(stor202.field_0), mem[132 len 28])
                    if not uint32(stor202.field_0), mem[132 len 28]:
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
            if userInfo[msg.sender].field_512 < ext_call.return_data[0]:
                revert with 0, 17
            userInfo[msg.sender].field_512 -= ext_call.return_data[0]
            emit Claim(ext_call.return_data[0], msg.sender);
    if not sub_47334aca[address(msg.sender)]:
        userInfo[address(msg.sender)].field_256 = 0
    else:
        if block.timestamp == sub_47334aca[address(msg.sender)]:
            userInfo[address(msg.sender)].field_256 = 0
        else:
            if sub_47334aca[address(msg.sender)] > !sub_e43db193:
                revert with 0, 17
            if block.timestamp >= sub_47334aca[address(msg.sender)] + sub_e43db193:
                if userInfo[address(msg.sender)].field_0 and sub_602b2911 > -1 / userInfo[address(msg.sender)].field_0:
                    revert with 0, 17
                if sub_e43db193 and userInfo[address(msg.sender)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / sub_e43db193:
                    revert with 0, 17
                userInfo[address(msg.sender)].field_256 = sub_e43db193 * userInfo[address(msg.sender)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600
            else:
                if block.timestamp < sub_47334aca[address(msg.sender)]:
                    revert with 0, 17
                if userInfo[address(msg.sender)].field_0 and sub_602b2911 > -1 / userInfo[address(msg.sender)].field_0:
                    revert with 0, 17
                if block.timestamp - sub_47334aca[address(msg.sender)] and userInfo[address(msg.sender)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / block.timestamp - sub_47334aca[address(msg.sender)]:
                    revert with 0, 17
                userInfo[address(msg.sender)].field_256 = (block.timestamp * userInfo[address(msg.sender)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(msg.sender)] * userInfo[address(msg.sender)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600)
}

function lock(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if sub_47334aca[address(arg1)] > !sub_e43db193:
        revert with 0, 17
    if block.timestamp >= sub_47334aca[address(arg1)] + sub_e43db193:
        if userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_0:
                if not sub_47334aca[address(arg1)]:
                    if 0 < userInfo[address(arg1)].field_256:
                        revert with 0, 17
                    if userInfo[address(arg1)].field_512 > !-userInfo[address(arg1)].field_256:
                        revert with 0, 17
                    userInfo[address(arg1)].field_512 -= userInfo[address(arg1)].field_256
                else:
                    if block.timestamp == sub_47334aca[address(arg1)]:
                        if 0 < userInfo[address(arg1)].field_256:
                            revert with 0, 17
                        if userInfo[address(arg1)].field_512 > !-userInfo[address(arg1)].field_256:
                            revert with 0, 17
                        userInfo[address(arg1)].field_512 -= userInfo[address(arg1)].field_256
                    else:
                        if sub_47334aca[address(arg1)] > !sub_e43db193:
                            revert with 0, 17
                        if block.timestamp >= sub_47334aca[address(arg1)] + sub_e43db193:
                            if userInfo[address(arg1)].field_0 and sub_602b2911 > -1 / userInfo[address(arg1)].field_0:
                                revert with 0, 17
                            if sub_e43db193 and userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / sub_e43db193:
                                revert with 0, 17
                            if sub_e43db193 * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 < userInfo[address(arg1)].field_256:
                                revert with 0, 17
                            if userInfo[address(arg1)].field_512 > !((sub_e43db193 * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(arg1)].field_256):
                                revert with 0, 17
                            userInfo[address(arg1)].field_512 = userInfo[address(arg1)].field_512 + (sub_e43db193 * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(arg1)].field_256
                        else:
                            if block.timestamp < sub_47334aca[address(arg1)]:
                                revert with 0, 17
                            if userInfo[address(arg1)].field_0 and sub_602b2911 > -1 / userInfo[address(arg1)].field_0:
                                revert with 0, 17
                            if block.timestamp - sub_47334aca[address(arg1)] and userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / block.timestamp - sub_47334aca[address(arg1)]:
                                revert with 0, 17
                            if (block.timestamp * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(arg1)] * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) < userInfo[address(arg1)].field_256:
                                revert with 0, 17
                            if userInfo[address(arg1)].field_512 > !((block.timestamp * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(arg1)] * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(arg1)].field_256):
                                revert with 0, 17
                            userInfo[address(arg1)].field_512 = userInfo[address(arg1)].field_512 + (block.timestamp * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(arg1)] * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(arg1)].field_256
            if sub_47334aca[address(arg1)] > !sub_e43db193:
                revert with 0, 17
            if block.timestamp >= sub_47334aca[address(arg1)] + sub_e43db193:
                sub_47334aca[address(arg1)] = block.timestamp
            else:
                if not sub_df8d8b05:
                    sub_47334aca[address(arg1)] = block.timestamp
                else:
                    if sub_47334aca[address(arg1)] > !sub_e43db193:
                        revert with 0, 17
                    if sub_df8d8b05 > 10:
                        revert with 0, 17
                    if uint8(24 * sub_df8d8b05) > 18:
                        revert with 0, 17
            if not sub_47334aca[address(arg1)]:
                userInfo[address(arg1)].field_256 = 0
            else:
                if block.timestamp == sub_47334aca[address(arg1)]:
                    userInfo[address(arg1)].field_256 = 0
                else:
                    if sub_47334aca[address(arg1)] > !sub_e43db193:
                        revert with 0, 17
                    if block.timestamp >= sub_47334aca[address(arg1)] + sub_e43db193:
                        if userInfo[address(arg1)].field_0 and sub_602b2911 > -1 / userInfo[address(arg1)].field_0:
                            revert with 0, 17
                        if sub_e43db193 and userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / sub_e43db193:
                            revert with 0, 17
                        userInfo[address(arg1)].field_256 = sub_e43db193 * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600
                    else:
                        if block.timestamp < sub_47334aca[address(arg1)]:
                            revert with 0, 17
                        if userInfo[address(arg1)].field_0 and sub_602b2911 > -1 / userInfo[address(arg1)].field_0:
                            revert with 0, 17
                        if block.timestamp - sub_47334aca[address(arg1)] and userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / block.timestamp - sub_47334aca[address(arg1)]:
                            revert with 0, 17
                        userInfo[address(arg1)].field_256 = (block.timestamp * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(arg1)] * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600)
            emit Locked(userInfo[address(arg1)].field_0, sub_e43db193, 0, arg1);
    else:
        if sub_0271e8b9:
            if userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_0:
                    if not sub_47334aca[address(arg1)]:
                        if 0 < userInfo[address(arg1)].field_256:
                            revert with 0, 17
                        if userInfo[address(arg1)].field_512 > !-userInfo[address(arg1)].field_256:
                            revert with 0, 17
                        userInfo[address(arg1)].field_512 -= userInfo[address(arg1)].field_256
                    else:
                        if block.timestamp == sub_47334aca[address(arg1)]:
                            if 0 < userInfo[address(arg1)].field_256:
                                revert with 0, 17
                            if userInfo[address(arg1)].field_512 > !-userInfo[address(arg1)].field_256:
                                revert with 0, 17
                            userInfo[address(arg1)].field_512 -= userInfo[address(arg1)].field_256
                        else:
                            if sub_47334aca[address(arg1)] > !sub_e43db193:
                                revert with 0, 17
                            if block.timestamp >= sub_47334aca[address(arg1)] + sub_e43db193:
                                if userInfo[address(arg1)].field_0 and sub_602b2911 > -1 / userInfo[address(arg1)].field_0:
                                    revert with 0, 17
                                if sub_e43db193 and userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / sub_e43db193:
                                    revert with 0, 17
                                if sub_e43db193 * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 < userInfo[address(arg1)].field_256:
                                    revert with 0, 17
                                if userInfo[address(arg1)].field_512 > !((sub_e43db193 * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(arg1)].field_256):
                                    revert with 0, 17
                                userInfo[address(arg1)].field_512 = userInfo[address(arg1)].field_512 + (sub_e43db193 * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(arg1)].field_256
                            else:
                                if block.timestamp < sub_47334aca[address(arg1)]:
                                    revert with 0, 17
                                if userInfo[address(arg1)].field_0 and sub_602b2911 > -1 / userInfo[address(arg1)].field_0:
                                    revert with 0, 17
                                if block.timestamp - sub_47334aca[address(arg1)] and userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / block.timestamp - sub_47334aca[address(arg1)]:
                                    revert with 0, 17
                                if (block.timestamp * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(arg1)] * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) < userInfo[address(arg1)].field_256:
                                    revert with 0, 17
                                if userInfo[address(arg1)].field_512 > !((block.timestamp * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(arg1)] * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(arg1)].field_256):
                                    revert with 0, 17
                                userInfo[address(arg1)].field_512 = userInfo[address(arg1)].field_512 + (block.timestamp * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(arg1)] * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(arg1)].field_256
                if sub_47334aca[address(arg1)] > !sub_e43db193:
                    revert with 0, 17
                if block.timestamp >= sub_47334aca[address(arg1)] + sub_e43db193:
                    sub_47334aca[address(arg1)] = block.timestamp
                else:
                    if not sub_df8d8b05:
                        sub_47334aca[address(arg1)] = block.timestamp
                    else:
                        if sub_47334aca[address(arg1)] > !sub_e43db193:
                            revert with 0, 17
                        if sub_df8d8b05 > 10:
                            revert with 0, 17
                        if uint8(24 * sub_df8d8b05) > 18:
                            revert with 0, 17
                if not sub_47334aca[address(arg1)]:
                    userInfo[address(arg1)].field_256 = 0
                else:
                    if block.timestamp == sub_47334aca[address(arg1)]:
                        userInfo[address(arg1)].field_256 = 0
                    else:
                        if sub_47334aca[address(arg1)] > !sub_e43db193:
                            revert with 0, 17
                        if block.timestamp >= sub_47334aca[address(arg1)] + sub_e43db193:
                            if userInfo[address(arg1)].field_0 and sub_602b2911 > -1 / userInfo[address(arg1)].field_0:
                                revert with 0, 17
                            if sub_e43db193 and userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / sub_e43db193:
                                revert with 0, 17
                            userInfo[address(arg1)].field_256 = sub_e43db193 * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600
                        else:
                            if block.timestamp < sub_47334aca[address(arg1)]:
                                revert with 0, 17
                            if userInfo[address(arg1)].field_0 and sub_602b2911 > -1 / userInfo[address(arg1)].field_0:
                                revert with 0, 17
                            if block.timestamp - sub_47334aca[address(arg1)] and userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / block.timestamp - sub_47334aca[address(arg1)]:
                                revert with 0, 17
                            userInfo[address(arg1)].field_256 = (block.timestamp * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(arg1)] * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600)
                emit Locked(userInfo[address(arg1)].field_0, sub_e43db193, 0, arg1);
        else:
            if sub_df8d8b05:
                if userInfo[address(arg1)].field_0:
                    if userInfo[address(arg1)].field_0:
                        if not sub_47334aca[address(arg1)]:
                            if 0 < userInfo[address(arg1)].field_256:
                                revert with 0, 17
                            if userInfo[address(arg1)].field_512 > !-userInfo[address(arg1)].field_256:
                                revert with 0, 17
                            userInfo[address(arg1)].field_512 -= userInfo[address(arg1)].field_256
                        else:
                            if block.timestamp == sub_47334aca[address(arg1)]:
                                if 0 < userInfo[address(arg1)].field_256:
                                    revert with 0, 17
                                if userInfo[address(arg1)].field_512 > !-userInfo[address(arg1)].field_256:
                                    revert with 0, 17
                                userInfo[address(arg1)].field_512 -= userInfo[address(arg1)].field_256
                            else:
                                if sub_47334aca[address(arg1)] > !sub_e43db193:
                                    revert with 0, 17
                                if block.timestamp >= sub_47334aca[address(arg1)] + sub_e43db193:
                                    if userInfo[address(arg1)].field_0 and sub_602b2911 > -1 / userInfo[address(arg1)].field_0:
                                        revert with 0, 17
                                    if sub_e43db193 and userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / sub_e43db193:
                                        revert with 0, 17
                                    if sub_e43db193 * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 < userInfo[address(arg1)].field_256:
                                        revert with 0, 17
                                    if userInfo[address(arg1)].field_512 > !((sub_e43db193 * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(arg1)].field_256):
                                        revert with 0, 17
                                    userInfo[address(arg1)].field_512 = userInfo[address(arg1)].field_512 + (sub_e43db193 * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(arg1)].field_256
                                else:
                                    if block.timestamp < sub_47334aca[address(arg1)]:
                                        revert with 0, 17
                                    if userInfo[address(arg1)].field_0 and sub_602b2911 > -1 / userInfo[address(arg1)].field_0:
                                        revert with 0, 17
                                    if block.timestamp - sub_47334aca[address(arg1)] and userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / block.timestamp - sub_47334aca[address(arg1)]:
                                        revert with 0, 17
                                    if (block.timestamp * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(arg1)] * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) < userInfo[address(arg1)].field_256:
                                        revert with 0, 17
                                    if userInfo[address(arg1)].field_512 > !((block.timestamp * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(arg1)] * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(arg1)].field_256):
                                        revert with 0, 17
                                    userInfo[address(arg1)].field_512 = userInfo[address(arg1)].field_512 + (block.timestamp * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(arg1)] * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(arg1)].field_256
                    if sub_47334aca[address(arg1)] > !sub_e43db193:
                        revert with 0, 17
                    if block.timestamp >= sub_47334aca[address(arg1)] + sub_e43db193:
                        sub_47334aca[address(arg1)] = block.timestamp
                    else:
                        if not sub_df8d8b05:
                            sub_47334aca[address(arg1)] = block.timestamp
                        else:
                            if sub_47334aca[address(arg1)] > !sub_e43db193:
                                revert with 0, 17
                            if sub_df8d8b05 > 10:
                                revert with 0, 17
                            if uint8(24 * sub_df8d8b05) > 18:
                                revert with 0, 17
                    if not sub_47334aca[address(arg1)]:
                        userInfo[address(arg1)].field_256 = 0
                    else:
                        if block.timestamp == sub_47334aca[address(arg1)]:
                            userInfo[address(arg1)].field_256 = 0
                        else:
                            if sub_47334aca[address(arg1)] > !sub_e43db193:
                                revert with 0, 17
                            if block.timestamp >= sub_47334aca[address(arg1)] + sub_e43db193:
                                if userInfo[address(arg1)].field_0 and sub_602b2911 > -1 / userInfo[address(arg1)].field_0:
                                    revert with 0, 17
                                if sub_e43db193 and userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / sub_e43db193:
                                    revert with 0, 17
                                userInfo[address(arg1)].field_256 = sub_e43db193 * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600
                            else:
                                if block.timestamp < sub_47334aca[address(arg1)]:
                                    revert with 0, 17
                                if userInfo[address(arg1)].field_0 and sub_602b2911 > -1 / userInfo[address(arg1)].field_0:
                                    revert with 0, 17
                                if block.timestamp - sub_47334aca[address(arg1)] and userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / block.timestamp - sub_47334aca[address(arg1)]:
                                    revert with 0, 17
                                userInfo[address(arg1)].field_256 = (block.timestamp * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(arg1)] * userInfo[address(arg1)].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600)
                    emit Locked(userInfo[address(arg1)].field_0, sub_e43db193, 0, arg1);
}

function sub_a3393257(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if msg.sender == owner:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 219
            if sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] > !sub_e43db193:
                revert with 0, 17
            if block.timestamp >= sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] + sub_e43db193:
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 209
                if not userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                    require ext_code.size(sub_2a8d950cAddress)
                    staticcall sub_2a8d950cAddress.0x2e370f5d with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _103 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_103] == mem[_103 + 12 len 20]
                    if mem[_103 + 32] > block.timestamp:
                        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                        sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] = block.timestamp
                        mem[32] = 209
                        userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256 = 0
                else:
                    mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 219
                    if not sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])]:
                        if 0 < userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256:
                            revert with 0, 17
                        if userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_512 > !-userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256:
                            revert with 0, 17
                        userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_512 -= userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256
                        require ext_code.size(sub_2a8d950cAddress)
                        staticcall sub_2a8d950cAddress.0x2e370f5d with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _127 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_127] == mem[_127 + 12 len 20]
                        if mem[_127 + 32] > block.timestamp:
                            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                            sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] = block.timestamp
                            mem[32] = 209
                            userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256 = 0
                    else:
                        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[32] = 219
                        if block.timestamp == sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])]:
                            if 0 < userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256:
                                revert with 0, 17
                            if userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_512 > !-userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256:
                                revert with 0, 17
                            userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_512 -= userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256
                            require ext_code.size(sub_2a8d950cAddress)
                            staticcall sub_2a8d950cAddress.0x2e370f5d with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _131 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_131] == mem[_131 + 12 len 20]
                            if mem[_131 + 32] > block.timestamp:
                                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                                sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] = block.timestamp
                                mem[32] = 209
                                userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256 = 0
                        else:
                            if sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] > !sub_e43db193:
                                revert with 0, 17
                            if block.timestamp >= sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] + sub_e43db193:
                                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 209
                                if userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 and sub_602b2911 > -1 / userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                                    revert with 0, 17
                                if sub_e43db193 and userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / sub_e43db193:
                                    revert with 0, 17
                                if sub_e43db193 * userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 < userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256:
                                    revert with 0, 17
                                if userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_512 > !((sub_e43db193 * userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256):
                                    revert with 0, 17
                                userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_512 = userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_512 + (sub_e43db193 * userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256
                                require ext_code.size(sub_2a8d950cAddress)
                                staticcall sub_2a8d950cAddress.0x2e370f5d with:
                                        gas gas_remaining wei
                                       args address(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _153 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_153] == mem[_153 + 12 len 20]
                                if mem[_153 + 32] > block.timestamp:
                                    mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                                    sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] = block.timestamp
                                    mem[32] = 209
                                    userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256 = 0
                            else:
                                if block.timestamp < sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])]:
                                    revert with 0, 17
                                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 209
                                if userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 and sub_602b2911 > -1 / userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                                    revert with 0, 17
                                if block.timestamp - sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] and userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / block.timestamp - sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])]:
                                    revert with 0, 17
                                if (block.timestamp * userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] * userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) < userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256:
                                    revert with 0, 17
                                if userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_512 > !((block.timestamp * userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] * userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256):
                                    revert with 0, 17
                                userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_512 = userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_512 + (block.timestamp * userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] * userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256
                                require ext_code.size(sub_2a8d950cAddress)
                                staticcall sub_2a8d950cAddress.0x2e370f5d with:
                                        gas gas_remaining wei
                                       args address(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _161 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_161] == mem[_161 + 12 len 20]
                                if mem[_161 + 32] > block.timestamp:
                                    mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                                    sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] = block.timestamp
                                    mem[32] = 209
                                    userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256 = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[0] = msg.sender
        mem[32] = sha3(0, 151)
        if not roleAdmin[0][address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 219
            if sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] > !sub_e43db193:
                revert with 0, 17
            if block.timestamp >= sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] + sub_e43db193:
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 209
                if not userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                    require ext_code.size(sub_2a8d950cAddress)
                    staticcall sub_2a8d950cAddress.0x2e370f5d with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _104 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_104] == mem[_104 + 12 len 20]
                    if mem[_104 + 32] > block.timestamp:
                        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                        sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] = block.timestamp
                        mem[32] = 209
                        userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256 = 0
                else:
                    mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 219
                    if not sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])]:
                        if 0 < userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256:
                            revert with 0, 17
                        if userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_512 > !-userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256:
                            revert with 0, 17
                        userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_512 -= userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256
                        require ext_code.size(sub_2a8d950cAddress)
                        staticcall sub_2a8d950cAddress.0x2e370f5d with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _129 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_129] == mem[_129 + 12 len 20]
                        if mem[_129 + 32] > block.timestamp:
                            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                            sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] = block.timestamp
                            mem[32] = 209
                            userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256 = 0
                    else:
                        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[32] = 219
                        if block.timestamp == sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])]:
                            if 0 < userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256:
                                revert with 0, 17
                            if userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_512 > !-userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256:
                                revert with 0, 17
                            userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_512 -= userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256
                            require ext_code.size(sub_2a8d950cAddress)
                            staticcall sub_2a8d950cAddress.0x2e370f5d with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _132 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_132] == mem[_132 + 12 len 20]
                            if mem[_132 + 32] > block.timestamp:
                                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                                sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] = block.timestamp
                                mem[32] = 209
                                userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256 = 0
                        else:
                            if sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] > !sub_e43db193:
                                revert with 0, 17
                            if block.timestamp >= sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] + sub_e43db193:
                                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 209
                                if userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 and sub_602b2911 > -1 / userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                                    revert with 0, 17
                                if sub_e43db193 and userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / sub_e43db193:
                                    revert with 0, 17
                                if sub_e43db193 * userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 < userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256:
                                    revert with 0, 17
                                if userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_512 > !((sub_e43db193 * userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256):
                                    revert with 0, 17
                                userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_512 = userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_512 + (sub_e43db193 * userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256
                                require ext_code.size(sub_2a8d950cAddress)
                                staticcall sub_2a8d950cAddress.0x2e370f5d with:
                                        gas gas_remaining wei
                                       args address(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _154 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_154] == mem[_154 + 12 len 20]
                                if mem[_154 + 32] > block.timestamp:
                                    mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                                    sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] = block.timestamp
                                    mem[32] = 209
                                    userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256 = 0
                            else:
                                if block.timestamp < sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])]:
                                    revert with 0, 17
                                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 209
                                if userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 and sub_602b2911 > -1 / userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                                    revert with 0, 17
                                if block.timestamp - sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] and userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600 > -1 / block.timestamp - sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])]:
                                    revert with 0, 17
                                if (block.timestamp * userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] * userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) < userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256:
                                    revert with 0, 17
                                if userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_512 > !((block.timestamp * userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] * userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256):
                                    revert with 0, 17
                                userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_512 = userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_512 + (block.timestamp * userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - (sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] * userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_0 * sub_602b2911 / 100 / 100 / 8760 * 24 * 3600) - userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256
                                require ext_code.size(sub_2a8d950cAddress)
                                staticcall sub_2a8d950cAddress.0x2e370f5d with:
                                        gas gas_remaining wei
                                       args address(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _162 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_162] == mem[_162 + 12 len 20]
                                if mem[_162 + 32] > block.timestamp:
                                    mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                                    sub_47334aca[address(cd[((32 * idx) + cd[4] + 36)])] = block.timestamp
                                    mem[32] = 209
                                    userInfo[address(cd[((32 * idx) + cd[4] + 36)])].field_256 = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
