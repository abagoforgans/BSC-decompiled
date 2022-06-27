contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0

const MOD_ROLE = 0xfe950b8f2d7415defaee398bb4898e8e094a64c725873b81952b7ab9f08d70ef


mapping of struct roleAdmin;
array of struct roleMember;
uint256 stor2;
uint256 stor3;
address stor4;
mapping of uint256 users;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of uint8 stor9;
mapping of uint8 stor10;
array of uint256 sub_3bc8816a;
array of uint256 contractOf;
array of uint256 sub_710b3e9d;
mapping of struct sub_05c2db36;
address sub_b2ce6fe3Address;
address sub_3f918f33Address;
address BUSDAddress;
uint8 stor18; offset 160
uint128 stor18; offset 160
address uniswapV2RouterAddress;

function sub_05c2db36(?) payable {
    require calldata.size - 4 >= 32
    return sub_05c2db36[arg1].field_0, 
           bool(uint8(sub_05c2db36[arg1].field_256)),
           address(sub_05c2db36[arg1].field_256),
           address(sub_05c2db36[arg1].field_512),
           sub_05c2db36[arg1].field_768,
           sub_05c2db36[arg1].field_1024,
           sub_05c2db36[arg1].field_1280,
           sub_05c2db36[arg1].field_1536,
           bool(uint8(sub_05c2db36[arg1].field_1792)),
           bool(uint8(sub_05c2db36[arg1].field_1800))
}

function uniswapV2Router() payable {
    return uniswapV2RouterAddress
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_3bc8816a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_3bc8816a[arg1]
    return sub_3bc8816a[arg1][arg2]
}

function sub_3f918f33(?) payable {
    return sub_3f918f33Address
}

function BUSD() payable {
    return BUSDAddress
}

function sub_710b3e9d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_710b3e9d[arg1]
    return sub_710b3e9d[arg1][arg2]
}

function sub_896a8be2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor6[arg1])
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleMember[arg1].field_0:
        revert with 0, 50
    return address(roleMember[arg1][arg2].field_0)
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(uint8(roleAdmin[arg1][address(arg2)].field_0))
}

function isBanned(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[arg1])
}

function Users(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return users[arg1]
}

function sub_b2ce6fe3(?) payable {
    return sub_b2ce6fe3Address
}

function isVerified(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[arg1])
}

function isRegistered(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[arg1])
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function sub_ecf681e1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor10[arg1])
}

function contractOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < contractOf[arg1]
    return contractOf[arg1][arg2]
}

function _fallback() payable {
    revert
}

function setFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(roleAdmin[address(msg.sender)].field_0):
        revert with 0, 'Not Admin'
    stor3 = arg1
}

function Register() payable {
    if stor7[msg.sender]:
        revert with 0, 'Already registered'
    stor7[msg.sender] = 1
    users[msg.sender] = block.timestamp
    emit 0xb5e12a76: msg.sender
}

function sub_938ec7fc(?) payable {
    require calldata.size - 4 >= 32
    if address(sub_05c2db36[arg1].field_264) != msg.sender:
        revert with 0, 'Not your Work'
    uint8(sub_05c2db36[arg1].field_1792) = 1
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(roleAdmin[address(msg.sender)].field_0):
        revert with 0, 'Not Admin'
    stor4 = arg1
}

function setBUSD(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(roleAdmin[address(msg.sender)].field_0):
        revert with 0, 'Not Admin'
    BUSDAddress = arg1
}

function setRouter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(roleAdmin[address(msg.sender)].field_0):
        revert with 0, 'Not Admin'
    uniswapV2RouterAddress = arg1
}

function sub_505edf4f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint8(roleAdmin[address(msg.sender)].field_0):
        revert with 0, 'Not Admin'
    sub_3f918f33Address = address(arg1)
}

function sub_69b160f5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint8(roleAdmin[address(msg.sender)].field_0):
        revert with 0, 'Not Admin'
    sub_b2ce6fe3Address = address(arg1)
}

function sub_ec309f4c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if not uint8(roleAdmin[address(msg.sender)].field_0):
        revert with 0, 'Not Admin'
    Mask(96, 0, stor18.field_160) = Mask(96, 0, bool(arg1))
}

function sub_3e2f9916(?) payable {
    if not users[msg.sender]:
        revert with 0, 'Not registered'
    if stor6[msg.sender]:
        revert with 0, 'Already Registered'
    if uint8(stor18.field_160):
        stor9[msg.sender] = 1
    stor6[msg.sender] = 1
}

function ban(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(roleAdmin[0xfe950b8f2d7415defaee398bb4898e8e094a64c725873b81952b7ab9f08d70ef][address(msg.sender)].field_0):
        if not uint8(roleAdmin[address(msg.sender)].field_0):
            revert with 0, 'Not a Mod'
    stor8[address(arg1)] = 1
}

function verify(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(roleAdmin[0xfe950b8f2d7415defaee398bb4898e8e094a64c725873b81952b7ab9f08d70ef][address(msg.sender)].field_0):
        if not uint8(roleAdmin[address(msg.sender)].field_0):
            revert with 0, 'Not a Mod'
    stor9[address(arg1)] = 1
}

function sub_7ce77478(?) payable {
    require calldata.size - 4 >= 32
    if address(sub_05c2db36[arg1].field_512) != msg.sender:
        revert with 0, 'Timerr : Not your contract'
    if not uint8(sub_05c2db36[arg1].field_1792):
        revert with 0, 'Timerr : Not send for Approval'
    uint8(sub_05c2db36[arg1].field_1792) = 0
    emit 0x62d27b83: arg1
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

function sub_86d6282c(?) payable {
    require calldata.size - 4 >= 32
    if address(sub_05c2db36[arg1].field_264) != msg.sender:
        if address(sub_05c2db36[arg1].field_512) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Timerr : You can't start a dispute on a Work Contract that isn't yours'
    uint8(sub_05c2db36[arg1].field_1800) = 1
    emit 0xf0e3c8a8: msg.sender, arg1
}

function sub_6676875e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if var21001 < 1:
        revert with 0, 17
    if var25002 > var25001:
        revert with 0, 'Id not found'
    if var27001 >= contractOf[address(arg1)]:
        revert with 0, 50
    if stor[sha3(var29002) + var29001] == arg2:
        return var29004
    if var33001 == -1:
        revert with 0, 17
    if var41001 < 1:
        revert with 0, 17
    if var45002 > var45001:
        revert with 0, 'Id not found'
    if var47001 >= contractOf[address(arg1)]:
        revert with 0, 50
    if stor[sha3(var49002) + var49001] == arg2:
        return var49004
    if var53001 == -1:
        revert with 0, 17
    # nil
}

function sub_c9dcb8ea(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if var21001 < 1:
        revert with 0, 17
    if var25002 > var25001:
        revert with 0, 'Id not found'
    if var27001 >= sub_3bc8816a[address(arg1)]:
        revert with 0, 50
    if stor[sha3(var29002) + var29001] == arg2:
        return var29004
    if var33001 == -1:
        revert with 0, 17
    if var41001 < 1:
        revert with 0, 17
    if var45002 > var45001:
        revert with 0, 'Id not found'
    if var47001 >= sub_3bc8816a[address(arg1)]:
        revert with 0, 50
    if stor[sha3(var49002) + var49001] == arg2:
        return var49004
    if var53001 == -1:
        revert with 0, 17
    # nil
}

function sub_3d7199d5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint8(roleAdmin[address(msg.sender)].field_0):
        revert with 0, 'Not Admin'
    if not uint8(roleAdmin[0xfe950b8f2d7415defaee398bb4898e8e094a64c725873b81952b7ab9f08d70ef][address(arg1)].field_0):
        uint8(roleAdmin[0xfe950b8f2d7415defaee398bb4898e8e094a64c725873b81952b7ab9f08d70ef][address(arg1)].field_0) = 1
        emit RoleGranted(0xfe950b8f2d7415defaee398bb4898e8e094a64c725873b81952b7ab9f08d70ef, address(arg1), msg.sender);
    if not roleMember[0xfe950b8f2d7415defaee398bb4898e8e094a64c725873b81952b7ab9f08d70ef][1][address(arg1)].field_0:
        roleMember[0xfe950b8f2d7415defaee398bb4898e8e094a64c725873b81952b7ab9f08d70ef].field_0++
        address(roleMember[0xfe950b8f2d7415defaee398bb4898e8e094a64c725873b81952b7ab9f08d70ef][roleMember[0xfe950b8f2d7415defaee398bb4898e8e094a64c725873b81952b7ab9f08d70ef].field_0].field_0) = address(arg1)
        Mask(96, 0, roleMember[0xfe950b8f2d7415defaee398bb4898e8e094a64c725873b81952b7ab9f08d70ef][roleMember[0xfe950b8f2d7415defaee398bb4898e8e094a64c725873b81952b7ab9f08d70ef].field_0].field_160) = 0
        roleMember[0xfe950b8f2d7415defaee398bb4898e8e094a64c725873b81952b7ab9f08d70ef][1][address(arg1)].field_0 = roleMember[0xfe950b8f2d7415defaee398bb4898e8e094a64c725873b81952b7ab9f08d70ef].field_0
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
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

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not uint8(roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0):
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
        revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 1
        emit RoleGranted(arg1, arg2, msg.sender);
    if not roleMember[arg1][1][address(arg2)].field_0:
        roleMember[arg1].field_0++
        address(roleMember[arg1][roleMember[arg1].field_0].field_0) = arg2
        Mask(96, 0, roleMember[arg1][roleMember[arg1].field_0].field_160) = 0
        roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
}

function sub_63b2f3c9(?) payable {
    require calldata.size - 4 >= 32
    if not stor6[msg.sender]:
        revert with 0, 'Worker is not a Freelancer'
    if address(sub_05c2db36[arg1].field_264) != msg.sender:
        revert with 0, 'The work agreement is not yours'
    if var21001 < 1:
        revert with 0, 17
    if var25002 > var25001:
        revert with 0, 'Id not found'
    if var27001 >= sub_3bc8816a[address(msg.sender)]:
        revert with 0, 50
    if stor[sha3(var29002) + var29001] != arg1:
        if var33001 == -1:
            revert with 0, 17
        if var41001 < 1:
            revert with 0, 17
        if var45002 > var45001:
            revert with 0, 'Id not found'
        if var47001 >= sub_3bc8816a[address(msg.sender)]:
            revert with 0, 50
        if stor[sha3(var49002) + var49001] != arg1:
            if var53001 == -1:
                revert with 0, 17
            # nil
        else:
            if var57001 < 1:
                revert with 0, 17
            # nil
    else:
        if var37001 < 1:
            revert with 0, 17
        if var41002 > var41001:
            revert with 0, 'Id not found'
        if var43001 >= sub_3bc8816a[address(stor14[arg1].field_512)]:
            revert with 0, 50
        if stor[sha3(var45002) + var45001] != arg1:
            if var49001 == -1:
                revert with 0, 17
            if var57001 < 1:
                revert with 0, 17
            # nil
        else:
            contractOf[msg.sender]++
            contractOf[msg.sender][contractOf[msg.sender]] = arg1
            contractOf[address(stor14[arg1].field_512)]++
            contractOf[address(stor14[arg1].field_512)][contractOf[address(stor14[arg1].field_512)]] = arg1
            if var29004 >= sub_3bc8816a[msg.sender]:
                revert with 0, 'index out of bound'
            if sub_3bc8816a[msg.sender] < 1:
                revert with 0, 17
            if var61002 < sub_3bc8816a[msg.sender] - 1:
                if 1 > !var65002:
                    revert with 0, 17
                # nil
            else:
                if not sub_3bc8816a[msg.sender]:
                    revert with 0, 49
                sub_3bc8816a[msg.sender][sub_3bc8816a[msg.sender]] = 0
                sub_3bc8816a[msg.sender]--
                if var45004 >= sub_3bc8816a[address(stor14[arg1].field_512)]:
                    revert with 0, 'index out of bound'
                if sub_3bc8816a[address(stor14[arg1].field_512)] < 1:
                    revert with 0, 17
                # nil
}

function sub_1cb8081d(?) payable {
    require calldata.size - 4 >= 32
    if not stor6[msg.sender]:
        revert with 0, 'Worker is not a Freelancer'
    if address(sub_05c2db36[arg1].field_264) != msg.sender:
        revert with 0, 'The work agreement is not yours'
    if var21001 < 1:
        revert with 0, 17
    if var25002 > var25001:
        revert with 0, 'Id not found'
    if var27001 >= sub_3bc8816a[address(msg.sender)]:
        revert with 0, 50
    if stor[sha3(var29002) + var29001] != arg1:
        if var33001 == -1:
            revert with 0, 17
        if var41001 < 1:
            revert with 0, 17
        if var45002 > var45001:
            revert with 0, 'Id not found'
        if var47001 >= sub_3bc8816a[address(msg.sender)]:
            revert with 0, 50
        if stor[sha3(var49002) + var49001] != arg1:
            if var53001 == -1:
                revert with 0, 17
            # nil
        else:
            if var57001 < 1:
                revert with 0, 17
            # nil
    else:
        if var37001 < 1:
            revert with 0, 17
        if var41002 > var41001:
            revert with 0, 'Id not found'
        if var43001 >= sub_3bc8816a[address(stor14[arg1].field_512)]:
            revert with 0, 50
        if stor[sha3(var45002) + var45001] != arg1:
            if var49001 == -1:
                revert with 0, 17
            if var57001 < 1:
                revert with 0, 17
            # nil
        else:
            call address(sub_05c2db36[arg1].field_512) with:
               value sub_05c2db36[arg1].field_768 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if var29004 >= sub_3bc8816a[msg.sender]:
                revert with 0, 'index out of bound'
            if sub_3bc8816a[msg.sender] < 1:
                revert with 0, 17
            if var62002 < sub_3bc8816a[msg.sender] - 1:
                if 1 > !var66002:
                    revert with 0, 17
                # nil
            else:
                if not sub_3bc8816a[msg.sender]:
                    revert with 0, 49
                sub_3bc8816a[msg.sender][sub_3bc8816a[msg.sender]] = 0
                sub_3bc8816a[msg.sender]--
                if var45004 >= sub_3bc8816a[address(stor14[arg1].field_512)]:
                    revert with 0, 'index out of bound'
                if sub_3bc8816a[address(stor14[arg1].field_512)] < 1:
                    revert with 0, 17
                # nil
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not uint8(roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0):
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
        revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
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

function sub_f5e6dc3f(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == Mask(128, 128, arg3)
    if not stor7[msg.sender]:
        revert with 0, 'You're not registered'
    if not stor6[address(arg1)]:
        revert with 0, 'Worker is not a Freelancer'
    if not stor9[address(arg1)]:
        revert with 0, 'Worker has not been verified'
    if arg2 and stor3 > -1 / arg2:
        revert with 0, 17
    if arg2 < arg2 * stor3 / 1000:
        revert with 0, 17
    staticcall BUSDAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if arg2 and 1 > -1 / arg2:
            revert with 0, 17
        call BUSDAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg2
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                revert with 0, 17
            call BUSDAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg2 * 10^uint8(ext_call.return_data[0])
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if arg2 and s * t > -1 / arg2:
                revert with 0, 17
            call BUSDAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg2 * s * t
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    staticcall BUSDAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if arg2 * stor3 / 1000 and 1 > -1 / arg2 * stor3 / 1000:
            revert with 0, 17
        call BUSDAddress.0xa9059cbb with:
             gas gas_remaining wei
            args stor4, arg2 * stor3 / 1000
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if arg2 * stor3 / 1000 and 10^ext_call.return_data[31 len 1] > -1 / arg2 * stor3 / 1000:
                revert with 0, 17
            call BUSDAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args stor4, arg2 * stor3 / 1000 * 10^uint8(ext_call.return_data[0])
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if arg2 * stor3 / 1000 and s * t > -1 / arg2 * stor3 / 1000:
                revert with 0, 17
            call BUSDAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args stor4, arg2 * stor3 / 1000 * s * t
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    sub_3bc8816a[msg.sender]++
    sub_3bc8816a[msg.sender][sub_3bc8816a[msg.sender]] = stor2
    sub_3bc8816a[address(arg1)]++
    sub_3bc8816a[address(arg1)][sub_3bc8816a[address(arg1)]] = stor2
    sub_05c2db36[stor2].field_0 = stor2
    uint8(sub_05c2db36[stor2].field_256) = 0
    address(sub_05c2db36[stor2].field_264) = address(arg1)
    Mask(88, 0, sub_05c2db36[stor2].field_424) = 0
    address(sub_05c2db36[stor2].field_512) = msg.sender
    sub_05c2db36[stor2].field_768 = arg2 - (arg2 * stor3 / 1000)
    sub_05c2db36[stor2].field_1024 = arg2 * stor3 / 1000
    sub_05c2db36[stor2].field_1280 = arg2
    sub_05c2db36[stor2].field_1536 = block.timestamp
    uint8(sub_05c2db36[stor2].field_1792) = 0
    Mask(248, 0, sub_05c2db36[stor2].field_1800) = 0
    Mask(240, 0, sub_05c2db36[stor2].field_1808) = 0
    if stor2 == -1:
        revert with 0, 17
    stor2++
    emit 0xab632674: msg.sender, address(arg1), arg2, stor2, Mask(128, 128, arg3)
}

function cancelJob(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not users[msg.sender]:
        revert with 0, 'Worker is not a Freelancer'
    if address(sub_05c2db36[arg1].field_512) != msg.sender:
        revert with 0, 'Not your Work'
    if uint8(sub_05c2db36[arg1].field_256):
        revert with 0, 'Already Active'
    if var22001 < 1:
        revert with 0, 17
    if var26002 > var26001:
        revert with 0, 'Id not found'
    if var28001 >= sub_3bc8816a[address(msg.sender)]:
        revert with 0, 50
    if stor[sha3(var30002) + var30001] != arg1:
        if var34001 == -1:
            revert with 0, 17
        if var42001 < 1:
            revert with 0, 17
        if var46002 > var46001:
            revert with 0, 'Id not found'
        if var48001 >= sub_3bc8816a[address(msg.sender)]:
            revert with 0, 50
        if stor[sha3(var50002) + var50001] != arg1:
            if var54001 == -1:
                revert with 0, 17
            # nil
        else:
            if var58001 < 1:
                revert with 0, 17
            # nil
    else:
        if var38001 < 1:
            revert with 0, 17
        if var42002 > var42001:
            revert with 0, 'Id not found'
        if var44001 >= sub_3bc8816a[address(stor14[arg1].field_512)]:
            revert with 0, 50
        if stor[sha3(var46002) + var46001] != arg1:
            if var50001 == -1:
                revert with 0, 17
            if var58001 < 1:
                revert with 0, 17
            # nil
        else:
            staticcall BUSDAddress.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if sub_05c2db36[arg1].field_768 and 1 > -1 / sub_05c2db36[arg1].field_768:
                    revert with 0, 17
                call BUSDAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(sub_05c2db36[arg1].field_512), sub_05c2db36[arg1].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if var30004 >= sub_3bc8816a[msg.sender]:
                    revert with 0, 'index out of bound'
                if sub_3bc8816a[msg.sender] < 1:
                    revert with 0, 17
                if var85002 < sub_3bc8816a[msg.sender] - 1:
                    if 1 > !var89002:
                        revert with 0, 17
                    # nil
                else:
                    if not sub_3bc8816a[msg.sender]:
                        revert with 0, 49
                    sub_3bc8816a[msg.sender][sub_3bc8816a[msg.sender]] = 0
                    sub_3bc8816a[msg.sender]--
                    if var46004 >= sub_3bc8816a[address(stor14[arg1].field_512)]:
                        revert with 0, 'index out of bound'
                    if sub_3bc8816a[address(stor14[arg1].field_512)] < 1:
                        revert with 0, 17
                    # nil
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if sub_05c2db36[arg1].field_768 and 10^ext_call.return_data[31 len 1] > -1 / sub_05c2db36[arg1].field_768:
                        revert with 0, 17
                    call BUSDAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(sub_05c2db36[arg1].field_512), sub_05c2db36[arg1].field_768 * 10^uint8(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if var30004 >= sub_3bc8816a[msg.sender]:
                        revert with 0, 'index out of bound'
                    if sub_3bc8816a[msg.sender] < 1:
                        revert with 0, 17
                    if var90002 < sub_3bc8816a[msg.sender] - 1:
                        if 1 > !var94002:
                            revert with 0, 17
                        # nil
                    else:
                        if not sub_3bc8816a[msg.sender]:
                            revert with 0, 49
                        sub_3bc8816a[msg.sender][sub_3bc8816a[msg.sender]] = 0
                        sub_3bc8816a[msg.sender]--
                        if var46004 >= sub_3bc8816a[address(stor14[arg1].field_512)]:
                            revert with 0, 'index out of bound'
                        if sub_3bc8816a[address(stor14[arg1].field_512)] < 1:
                            revert with 0, 17
                        # nil
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if sub_05c2db36[arg1].field_768 and s * t > -1 / sub_05c2db36[arg1].field_768:
                        revert with 0, 17
                    call BUSDAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(sub_05c2db36[arg1].field_512), sub_05c2db36[arg1].field_768 * s * t
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if var30004 >= sub_3bc8816a[msg.sender]:
                        revert with 0, 'index out of bound'
                    if sub_3bc8816a[msg.sender] < 1:
                        revert with 0, 17
                    if var95002 < sub_3bc8816a[msg.sender] - 1:
                        if 1 > !var99002:
                            revert with 0, 17
                        # nil
                    else:
                        if not sub_3bc8816a[msg.sender]:
                            revert with 0, 49
                        sub_3bc8816a[msg.sender][sub_3bc8816a[msg.sender]] = 0
                        sub_3bc8816a[msg.sender]--
                        if var46004 >= sub_3bc8816a[address(stor14[arg1].field_512)]:
                            revert with 0, 'index out of bound'
                        if sub_3bc8816a[address(stor14[arg1].field_512)] < 1:
                            revert with 0, 17
                        # nil
}

function sub_cbf30885(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if not uint8(roleAdmin[0xfe950b8f2d7415defaee398bb4898e8e094a64c725873b81952b7ab9f08d70ef][address(msg.sender)].field_0):
        revert with 0, 'Not a Mod'
    staticcall BUSDAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if sub_05c2db36[arg1].field_768 and 1 > -1 / sub_05c2db36[arg1].field_768:
            revert with 0, 17
        call address(arg2) with:
           value sub_05c2db36[arg1].field_768 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if var40001 < 1:
            revert with 0, 17
        if var44002 > var44001:
            revert with 0, 'Id not found'
        if var46001 >= contractOf[address(stor14[arg1].field_256)]:
            revert with 0, 50
        if stor[sha3(var48002) + var48001] != arg1:
            if var52001 == -1:
                revert with 0, 17
            if var60001 < 1:
                revert with 0, 17
            if var64002 > var64001:
                revert with 0, 'Id not found'
            if var66001 >= contractOf[address(stor14[arg1].field_256)]:
                revert with 0, 50
            if stor[sha3(var68002) + var68001] != arg1:
                if var72001 == -1:
                    revert with 0, 17
                # nil
            else:
                if var76001 < 1:
                    revert with 0, 17
                # nil
        else:
            if var56001 < 1:
                revert with 0, 17
            if var60002 > var60001:
                revert with 0, 'Id not found'
            if var62001 >= contractOf[address(stor14[arg1].field_512)]:
                revert with 0, 50
            if stor[sha3(var64002) + var64001] != arg1:
                if var68001 == -1:
                    revert with 0, 17
                if var76001 < 1:
                    revert with 0, 17
                # nil
            else:
                sub_710b3e9d[address(stor14[arg1].field_256)]++
                sub_710b3e9d[address(stor14[arg1].field_256)][sub_710b3e9d[address(stor14[arg1].field_256)]] = arg1
                sub_710b3e9d[address(stor14[arg1].field_512)]++
                sub_710b3e9d[address(stor14[arg1].field_512)][sub_710b3e9d[address(stor14[arg1].field_512)]] = arg1
                if var48004 >= contractOf[msg.sender]:
                    revert with 0, 'index out of bound'
                if contractOf[msg.sender] < 1:
                    revert with 0, 17
                if var80002 < contractOf[msg.sender] - 1:
                    if 1 > !var84002:
                        revert with 0, 17
                    # nil
                else:
                    if not contractOf[msg.sender]:
                        revert with 0, 49
                    contractOf[msg.sender][contractOf[msg.sender]] = 0
                    contractOf[msg.sender]--
                    if var64004 >= contractOf[address(stor14[arg1].field_512)]:
                        revert with 0, 'index out of bound'
                    if contractOf[address(stor14[arg1].field_512)] < 1:
                        revert with 0, 17
                    # nil
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if sub_05c2db36[arg1].field_768 and 10^ext_call.return_data[31 len 1] > -1 / sub_05c2db36[arg1].field_768:
                revert with 0, 17
            call address(arg2) with:
               value sub_05c2db36[arg1].field_768 * 10^ext_call.return_data[31 len 1] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if var45001 < 1:
                revert with 0, 17
            if var49002 > var49001:
                revert with 0, 'Id not found'
            if var51001 >= contractOf[address(stor14[arg1].field_256)]:
                revert with 0, 50
            if stor[sha3(var53002) + var53001] != arg1:
                if var57001 == -1:
                    revert with 0, 17
                if var65001 < 1:
                    revert with 0, 17
                if var69002 > var69001:
                    revert with 0, 'Id not found'
                if var71001 >= contractOf[address(stor14[arg1].field_256)]:
                    revert with 0, 50
                if stor[sha3(var73002) + var73001] != arg1:
                    if var77001 == -1:
                        revert with 0, 17
                    # nil
                else:
                    if var81001 < 1:
                        revert with 0, 17
                    # nil
            else:
                if var61001 < 1:
                    revert with 0, 17
                if var65002 > var65001:
                    revert with 0, 'Id not found'
                if var67001 >= contractOf[address(stor14[arg1].field_512)]:
                    revert with 0, 50
                if stor[sha3(var69002) + var69001] != arg1:
                    if var73001 == -1:
                        revert with 0, 17
                    if var81001 < 1:
                        revert with 0, 17
                    # nil
                else:
                    sub_710b3e9d[address(stor14[arg1].field_256)]++
                    sub_710b3e9d[address(stor14[arg1].field_256)][sub_710b3e9d[address(stor14[arg1].field_256)]] = arg1
                    sub_710b3e9d[address(stor14[arg1].field_512)]++
                    sub_710b3e9d[address(stor14[arg1].field_512)][sub_710b3e9d[address(stor14[arg1].field_512)]] = arg1
                    if var53004 >= contractOf[msg.sender]:
                        revert with 0, 'index out of bound'
                    if contractOf[msg.sender] < 1:
                        revert with 0, 17
                    if var85002 < contractOf[msg.sender] - 1:
                        if 1 > !var89002:
                            revert with 0, 17
                        # nil
                    else:
                        if not contractOf[msg.sender]:
                            revert with 0, 49
                        contractOf[msg.sender][contractOf[msg.sender]] = 0
                        contractOf[msg.sender]--
                        if var69004 >= contractOf[address(stor14[arg1].field_512)]:
                            revert with 0, 'index out of bound'
                        if contractOf[address(stor14[arg1].field_512)] < 1:
                            revert with 0, 17
                        # nil
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if sub_05c2db36[arg1].field_768 and s * t > -1 / sub_05c2db36[arg1].field_768:
                revert with 0, 17
            call address(arg2) with:
               value sub_05c2db36[arg1].field_768 * s * t wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if var50001 < 1:
                revert with 0, 17
            if var54002 > var54001:
                revert with 0, 'Id not found'
            if var56001 >= contractOf[address(stor14[arg1].field_256)]:
                revert with 0, 50
            if stor[sha3(var58002) + var58001] != arg1:
                if var62001 == -1:
                    revert with 0, 17
                if var70001 < 1:
                    revert with 0, 17
                if var74002 > var74001:
                    revert with 0, 'Id not found'
                if var76001 >= contractOf[address(stor14[arg1].field_256)]:
                    revert with 0, 50
                if stor[sha3(var78002) + var78001] != arg1:
                    if var82001 == -1:
                        revert with 0, 17
                    # nil
                else:
                    if var86001 < 1:
                        revert with 0, 17
                    # nil
            else:
                if var66001 < 1:
                    revert with 0, 17
                if var70002 > var70001:
                    revert with 0, 'Id not found'
                if var72001 >= contractOf[address(stor14[arg1].field_512)]:
                    revert with 0, 50
                if stor[sha3(var74002) + var74001] != arg1:
                    if var78001 == -1:
                        revert with 0, 17
                    if var86001 < 1:
                        revert with 0, 17
                    # nil
                else:
                    sub_710b3e9d[address(stor14[arg1].field_256)]++
                    sub_710b3e9d[address(stor14[arg1].field_256)][sub_710b3e9d[address(stor14[arg1].field_256)]] = arg1
                    sub_710b3e9d[address(stor14[arg1].field_512)]++
                    sub_710b3e9d[address(stor14[arg1].field_512)][sub_710b3e9d[address(stor14[arg1].field_512)]] = arg1
                    if var58004 >= contractOf[msg.sender]:
                        revert with 0, 'index out of bound'
                    if contractOf[msg.sender] < 1:
                        revert with 0, 17
                    if var90002 < contractOf[msg.sender] - 1:
                        if 1 > !var94002:
                            revert with 0, 17
                        # nil
                    else:
                        if not contractOf[msg.sender]:
                            revert with 0, 49
                        contractOf[msg.sender][contractOf[msg.sender]] = 0
                        contractOf[msg.sender]--
                        if var74004 >= contractOf[address(stor14[arg1].field_512)]:
                            revert with 0, 'index out of bound'
                        if contractOf[address(stor14[arg1].field_512)] < 1:
                            revert with 0, 17
                        # nil
}

function sub_b973658e(?) payable {
    require calldata.size - 4 >= 32
    if address(sub_05c2db36[arg1].field_512) != msg.sender:
        revert with 0, 'Timerr : Not your contract'
    if not uint8(sub_05c2db36[arg1].field_1792):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Timerr : Not send for Approval yet'
    staticcall BUSDAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if sub_05c2db36[arg1].field_768 and 1 > -1 / sub_05c2db36[arg1].field_768:
            revert with 0, 17
        call BUSDAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(sub_05c2db36[arg1].field_256), sub_05c2db36[arg1].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if var44001 < 1:
            revert with 0, 17
        if var48002 > var48001:
            revert with 0, 'Id not found'
        if var50001 >= contractOf[address(stor14[arg1].field_256)]:
            revert with 0, 50
        if stor[sha3(var52002) + var52001] != arg1:
            if var56001 == -1:
                revert with 0, 17
            if var64001 < 1:
                revert with 0, 17
            if var68002 > var68001:
                revert with 0, 'Id not found'
            if var70001 >= contractOf[address(stor14[arg1].field_256)]:
                revert with 0, 50
            if stor[sha3(var72002) + var72001] != arg1:
                if var76001 == -1:
                    revert with 0, 17
                # nil
            else:
                if var80001 < 1:
                    revert with 0, 17
                # nil
        else:
            if var60001 < 1:
                revert with 0, 17
            if var64002 > var64001:
                revert with 0, 'Id not found'
            if var66001 >= contractOf[address(stor14[arg1].field_512)]:
                revert with 0, 50
            if stor[sha3(var68002) + var68001] != arg1:
                if var72001 == -1:
                    revert with 0, 17
                if var80001 < 1:
                    revert with 0, 17
                # nil
            else:
                sub_710b3e9d[address(stor14[arg1].field_256)]++
                sub_710b3e9d[address(stor14[arg1].field_256)][sub_710b3e9d[address(stor14[arg1].field_256)]] = arg1
                sub_710b3e9d[address(stor14[arg1].field_512)]++
                sub_710b3e9d[address(stor14[arg1].field_512)][sub_710b3e9d[address(stor14[arg1].field_512)]] = arg1
                if var68004 >= contractOf[msg.sender]:
                    revert with 0, 'index out of bound'
                if contractOf[msg.sender] < 1:
                    revert with 0, 17
                if var84002 < contractOf[msg.sender] - 1:
                    if 1 > !var88002:
                        revert with 0, 17
                    # nil
                else:
                    if not contractOf[msg.sender]:
                        revert with 0, 49
                    contractOf[msg.sender][contractOf[msg.sender]] = 0
                    contractOf[msg.sender]--
                    if var52004 >= contractOf[address(stor14[arg1].field_256)]:
                        revert with 0, 'index out of bound'
                    if contractOf[address(stor14[arg1].field_256)] < 1:
                        revert with 0, 17
                    # nil
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if sub_05c2db36[arg1].field_768 and 10^ext_call.return_data[31 len 1] > -1 / sub_05c2db36[arg1].field_768:
                revert with 0, 17
            call BUSDAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(sub_05c2db36[arg1].field_256), sub_05c2db36[arg1].field_768 * 10^uint8(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if var49001 < 1:
                revert with 0, 17
            if var53002 > var53001:
                revert with 0, 'Id not found'
            if var55001 >= contractOf[address(stor14[arg1].field_256)]:
                revert with 0, 50
            if stor[sha3(var57002) + var57001] != arg1:
                if var61001 == -1:
                    revert with 0, 17
                if var69001 < 1:
                    revert with 0, 17
                if var73002 > var73001:
                    revert with 0, 'Id not found'
                if var75001 >= contractOf[address(stor14[arg1].field_256)]:
                    revert with 0, 50
                if stor[sha3(var77002) + var77001] != arg1:
                    if var81001 == -1:
                        revert with 0, 17
                    # nil
                else:
                    if var85001 < 1:
                        revert with 0, 17
                    # nil
            else:
                if var65001 < 1:
                    revert with 0, 17
                if var69002 > var69001:
                    revert with 0, 'Id not found'
                if var71001 >= contractOf[address(stor14[arg1].field_512)]:
                    revert with 0, 50
                if stor[sha3(var73002) + var73001] != arg1:
                    if var77001 == -1:
                        revert with 0, 17
                    if var85001 < 1:
                        revert with 0, 17
                    # nil
                else:
                    sub_710b3e9d[address(stor14[arg1].field_256)]++
                    sub_710b3e9d[address(stor14[arg1].field_256)][sub_710b3e9d[address(stor14[arg1].field_256)]] = arg1
                    sub_710b3e9d[address(stor14[arg1].field_512)]++
                    sub_710b3e9d[address(stor14[arg1].field_512)][sub_710b3e9d[address(stor14[arg1].field_512)]] = arg1
                    if var73004 >= contractOf[msg.sender]:
                        revert with 0, 'index out of bound'
                    if contractOf[msg.sender] < 1:
                        revert with 0, 17
                    if var89002 < contractOf[msg.sender] - 1:
                        if 1 > !var93002:
                            revert with 0, 17
                        # nil
                    else:
                        if not contractOf[msg.sender]:
                            revert with 0, 49
                        contractOf[msg.sender][contractOf[msg.sender]] = 0
                        contractOf[msg.sender]--
                        if var57004 >= contractOf[address(stor14[arg1].field_256)]:
                            revert with 0, 'index out of bound'
                        if contractOf[address(stor14[arg1].field_256)] < 1:
                            revert with 0, 17
                        # nil
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if sub_05c2db36[arg1].field_768 and s * t > -1 / sub_05c2db36[arg1].field_768:
                revert with 0, 17
            call BUSDAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(sub_05c2db36[arg1].field_256), sub_05c2db36[arg1].field_768 * s * t
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if var54001 < 1:
                revert with 0, 17
            if var58002 > var58001:
                revert with 0, 'Id not found'
            if var60001 >= contractOf[address(stor14[arg1].field_256)]:
                revert with 0, 50
            if stor[sha3(var62002) + var62001] != arg1:
                if var66001 == -1:
                    revert with 0, 17
                if var74001 < 1:
                    revert with 0, 17
                if var78002 > var78001:
                    revert with 0, 'Id not found'
                if var80001 >= contractOf[address(stor14[arg1].field_256)]:
                    revert with 0, 50
                if stor[sha3(var82002) + var82001] != arg1:
                    if var86001 == -1:
                        revert with 0, 17
                    # nil
                else:
                    if var90001 < 1:
                        revert with 0, 17
                    # nil
            else:
                if var70001 < 1:
                    revert with 0, 17
                if var74002 > var74001:
                    revert with 0, 'Id not found'
                if var76001 >= contractOf[address(stor14[arg1].field_512)]:
                    revert with 0, 50
                if stor[sha3(var78002) + var78001] != arg1:
                    if var82001 == -1:
                        revert with 0, 17
                    if var90001 < 1:
                        revert with 0, 17
                    # nil
                else:
                    sub_710b3e9d[address(stor14[arg1].field_256)]++
                    sub_710b3e9d[address(stor14[arg1].field_256)][sub_710b3e9d[address(stor14[arg1].field_256)]] = arg1
                    sub_710b3e9d[address(stor14[arg1].field_512)]++
                    sub_710b3e9d[address(stor14[arg1].field_512)][sub_710b3e9d[address(stor14[arg1].field_512)]] = arg1
                    if var78004 >= contractOf[msg.sender]:
                        revert with 0, 'index out of bound'
                    if contractOf[msg.sender] < 1:
                        revert with 0, 17
                    if var94002 < contractOf[msg.sender] - 1:
                        if 1 > !var98002:
                            revert with 0, 17
                        # nil
                    else:
                        if not contractOf[msg.sender]:
                            revert with 0, 49
                        contractOf[msg.sender][contractOf[msg.sender]] = 0
                        contractOf[msg.sender]--
                        if var62004 >= contractOf[address(stor14[arg1].field_256)]:
                            revert with 0, 'index out of bound'
                        if contractOf[address(stor14[arg1].field_256)] < 1:
                            revert with 0, 17
                        # nil
}



}
