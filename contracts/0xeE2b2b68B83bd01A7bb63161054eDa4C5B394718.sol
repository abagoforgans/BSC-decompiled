contract main {




// =====================  Runtime code  =====================


#
#  - sub_26c39d71(?)
#  - sub_5262d63f(?)
#  - sub_7434b330(?)
#  - sub_965714e1(?)
#  - sub_d4894f12(?)
#
const sub_13db091a(?) = 10 * 10^18

const sub_a7fa088b(?) = 10^18

const CREATOR_ROLE = 0xfe828634d95e775031b9ff576b159a8509d3053581a8c9c4d7d86899e0afcd88

const DEFAULT_ADMIN_ROLE = 0

const MAINTAINER_ROLE = 0x2f339759585899103d2ace64958e37e18ccb0504652c81d4a1b8aa80fe2126ab


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
mapping of struct roleAdmin;
mapping of uint256 balanceOf;
mapping of uint8 stor152;
array of struct stor153;
mapping of uint256 totalSupply;
mapping of uint256 sub_92ea41c0;
mapping of address creators;
array of struct stor253;
mapping of struct sub_2131dcb0;
uint256 stor255;
uint256 stor256;
mapping of struct stor257;
array of uint256 stor258;
mapping of uint256 collections;
array of struct stor260;
mapping of struct sub_c030bbb6;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
}

function sub_0c626bde(?) payable {
    require calldata.size - 4 >= 32
    return sub_92ea41c0[arg1]
}

function sub_2131dcb0(?) payable {
    require calldata.size - 4 >= 32
    return sub_2131dcb0[arg1].field_0, sub_2131dcb0[arg1].field_256, sub_2131dcb0[arg1].field_512, sub_2131dcb0[arg1].field_768
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function exists(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(totalSupply[arg1])
}

function creatorOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return creators[arg1]
}

function sub_8dd86e55(?) payable {
    require calldata.size - 4 >= 32
    return uint32(sub_c030bbb6[arg1].field_0), 
           uint32(sub_c030bbb6[arg1].field_0),
           uint32(sub_c030bbb6[arg1].field_0),
           uint32(sub_c030bbb6[arg1].field_0),
           uint32(sub_c030bbb6[arg1].field_0),
           uint32(sub_c030bbb6[arg1].field_0),
           uint32(sub_c030bbb6[arg1].field_0),
           uint32(sub_c030bbb6[arg1].field_0),
           uint32(sub_c030bbb6[arg1].field_256),
           uint32(sub_c030bbb6[arg1].field_288)
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(uint8(roleAdmin[arg1][address(arg2)].field_0))
}

function sub_92ea41c0(?) payable {
    require calldata.size - 4 >= 32
    return sub_92ea41c0[arg1]
}

function totalSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return totalSupply[arg1]
}

function sub_c030bbb6(?) payable {
    require calldata.size - 4 >= 32
    return uint32(sub_c030bbb6[arg1].field_0), 
           uint32(sub_c030bbb6[arg1].field_0),
           uint32(sub_c030bbb6[arg1].field_0),
           uint32(sub_c030bbb6[arg1].field_0),
           uint32(sub_c030bbb6[arg1].field_128),
           uint32(sub_c030bbb6[arg1].field_0),
           uint32(sub_c030bbb6[arg1].field_0),
           uint32(sub_c030bbb6[arg1].field_0),
           uint32(sub_c030bbb6[arg1].field_256),
           uint32(sub_c030bbb6[arg1].field_288)
}

function creators(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return creators[arg1]
}

function isMaintainer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(roleAdmin[0x2f339759585899103d2ace64958e37e18ccb0504652c81d4a1b8aa80fe2126ab][address(arg1)].field_0))
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor152[address(arg1)][address(arg2)])
}

function isCreator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(roleAdmin[0xfe828634d95e775031b9ff576b159a8509d3053581a8c9c4d7d86899e0afcd88][address(arg1)].field_0))
}

function collections(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return collections[arg1]
}

function _fallback() payable {
    revert
}

function currentTokenId() payable {
    if stor255 < 1:
        revert with 0, 17
    return (stor255 - 1)
}

function sub_d4d89c0f(?) payable {
    require calldata.size - 4 >= 32
    if not totalSupply[arg1]:
        return 0
    if not uint32(sub_c030bbb6[arg1].field_96):
        return 1
    return uint32(sub_c030bbb6[arg1].field_96)
}

function calculateRoyaltyFee(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 and sub_92ea41c0[arg1] > -1 / arg2:
        revert with 0, 17
    return (arg2 * sub_92ea41c0[arg1] / 10^18 / 100)
}

function sub_4047502b(?) payable {
    require calldata.size - 4 >= 32
    if not totalSupply[arg1]:
        return 0
    if not uint32(sub_c030bbb6[arg1].field_160):
        return 1
    return uint32(sub_c030bbb6[arg1].field_160)
}

function sub_4c502aa2(?) payable {
    require calldata.size - 4 >= 32
    if not totalSupply[arg1]:
        return 0
    if not uint32(sub_c030bbb6[arg1].field_256):
        return 1
    return uint32(sub_c030bbb6[arg1].field_256)
}

function sub_a2812151(?) payable {
    require calldata.size - 4 >= 32
    if not totalSupply[arg1]:
        return 0
    if not uint32(sub_c030bbb6[arg1].field_192):
        return 1
    return uint32(sub_c030bbb6[arg1].field_192)
}

function sub_c48fae12(?) payable {
    require calldata.size - 4 >= 32
    if not totalSupply[arg1]:
        return 0
    if not uint32(sub_c030bbb6[arg1].field_128):
        return 1
    return uint32(sub_c030bbb6[arg1].field_128)
}

function sub_f73fe6cd(?) payable {
    require calldata.size - 4 >= 32
    if not totalSupply[arg1]:
        return 0
    if not uint32(sub_c030bbb6[arg1].field_288):
        return 1
    return uint32(sub_c030bbb6[arg1].field_288)
}

function sub_fb452692(?) payable {
    require calldata.size - 4 >= 32
    if not totalSupply[arg1]:
        return 0
    if not uint32(sub_c030bbb6[arg1].field_224):
        return 1
    return uint32(sub_c030bbb6[arg1].field_224)
}

function getValue1(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not totalSupply[arg1]:
        return 0
    if not uint32(sub_c030bbb6[arg1].field_0):
        return 1
    return uint32(sub_c030bbb6[arg1].field_0)
}

function getValue2(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not totalSupply[arg1]:
        return 0
    if not uint32(sub_c030bbb6[arg1].field_32):
        return 1
    return uint32(sub_c030bbb6[arg1].field_32)
}

function getValue3(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not totalSupply[arg1]:
        return 0
    if not uint32(sub_c030bbb6[arg1].field_64):
        return 1
    return uint32(sub_c030bbb6[arg1].field_64)
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: setting approval status for self'
    stor152[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
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

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0xd9b67a2600000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0xe89341c00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function grantCreator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(roleAdmin[0x2f339759585899103d2ace64958e37e18ccb0504652c81d4a1b8aa80fe2126ab][address(msg.sender)].field_0):
        revert with 0, 'Caller is not a maintainer'
    if not uint8(roleAdmin[0xfe828634d95e775031b9ff576b159a8509d3053581a8c9c4d7d86899e0afcd88][address(arg1)].field_0):
        uint8(roleAdmin[0xfe828634d95e775031b9ff576b159a8509d3053581a8c9c4d7d86899e0afcd88][address(arg1)].field_0) = 1
        emit RoleGranted(0xfe828634d95e775031b9ff576b159a8509d3053581a8c9c4d7d86899e0afcd88, arg1, msg.sender);
    emit 0x3a3d8a7e: msg.sender, arg1
}

function sub_b0d16ff8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor253[address(arg1)].field_0:
        mem[128] = stor253[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * stor253[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = stor253[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor253[address(arg1)].field_0, data=mem[128 len 32 * stor253[address(arg1)].field_0])
    mem[(32 * stor253[address(arg1)].field_0) + 128] = 32
    mem[(32 * stor253[address(arg1)].field_0) + 160] = stor253[address(arg1)].field_0
    mem[(32 * stor253[address(arg1)].field_0) + 192 len 32 * stor253[address(arg1)].field_0] = mem[128 len 32 * stor253[address(arg1)].field_0]
    return memory
      from (32 * stor253[address(arg1)].field_0) + 128
       len (96 * stor253[address(arg1)].field_0) + 64
}

function setURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if not uint8(roleAdmin[0][address(msg.sender)].field_0):
        revert with 0, 'Caller is not an admin'
    if bool(stor153.length):
        if bool(stor153.length) == uint255(stor153.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor153[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor153.length = 0
            idx = 0
            while (uint255(stor153.length) * 0.5) + 31 / 32 > idx:
                stor153[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor153.length) == stor153.length.field_1 % 128 < 32:
            revert with 0, 34
        if arg1.length:
            stor153[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor153.length = 0
            idx = 0
            while stor153.length.field_1 % 128 + 31 / 32 > idx:
                stor153[idx].field_0 = 0
                idx = idx + 1
                continue 
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function sub_b3298e93(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if stor253[address(arg1)].field_0:
        mem[128] = stor253[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * stor253[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = stor253[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if arg3 > test266151307():
        revert with 0, 65
    mem[(32 * stor253[address(arg1)].field_0) + 128] = arg3
    if arg3:
        mem[(32 * stor253[address(arg1)].field_0) + 160 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
    idx = 0
    while idx < arg3:
        if arg2 and arg3 > -1 / arg2:
            revert with 0, 17
        if arg2 * arg3 > !idx:
            revert with 0, 17
        if (arg2 * arg3) + idx >= stor253[address(arg1)].field_0:
            if idx >= arg3:
                revert with 0, 50
            mem[(32 * idx) + (32 * stor253[address(arg1)].field_0) + 160] = 0
        else:
            if arg2 and arg3 > -1 / arg2:
                revert with 0, 17
            if arg2 * arg3 > !idx:
                revert with 0, 17
            if (arg2 * arg3) + idx >= stor253[address(arg1)].field_0:
                revert with 0, 50
            if idx >= arg3:
                revert with 0, 50
            mem[(32 * idx) + (32 * stor253[address(arg1)].field_0) + 160] = mem[(32 * (arg2 * arg3) + idx) + 128]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=arg3, data=mem[(32 * stor253[address(arg1)].field_0) + 160 len 32 * arg3])
}

function sub_06681ad8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint8(roleAdmin[0][address(msg.sender)].field_0):
        revert with 0, 'Caller is not an admin'
    if uint8(roleAdmin[roleAdmin[0x2f339759585899103d2ace64958e37e18ccb0504652c81d4a1b8aa80fe2126ab].field_256][address(msg.sender)].field_0):
        if uint8(roleAdmin[0x2f339759585899103d2ace64958e37e18ccb0504652c81d4a1b8aa80fe2126ab][address(arg1)].field_0):
            uint8(roleAdmin[0x2f339759585899103d2ace64958e37e18ccb0504652c81d4a1b8aa80fe2126ab][address(arg1)].field_0) = 0
            emit RoleRevoked(0x2f339759585899103d2ace64958e37e18ccb0504652c81d4a1b8aa80fe2126ab, address(arg1), msg.sender);
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
    s = roleAdmin[0x2f339759585899103d2ace64958e37e18ccb0504652c81d4a1b8aa80fe2126ab].field_256
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
    if roleAdmin[0x2f339759585899103d2ace64958e37e18ccb0504652c81d4a1b8aa80fe2126ab].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function sub_67e4dc72(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint8(roleAdmin[0][address(msg.sender)].field_0):
        revert with 0, 'Caller is not an admin'
    if uint8(roleAdmin[roleAdmin[0x2f339759585899103d2ace64958e37e18ccb0504652c81d4a1b8aa80fe2126ab].field_256][address(msg.sender)].field_0):
        if not uint8(roleAdmin[0x2f339759585899103d2ace64958e37e18ccb0504652c81d4a1b8aa80fe2126ab][address(arg1)].field_0):
            uint8(roleAdmin[0x2f339759585899103d2ace64958e37e18ccb0504652c81d4a1b8aa80fe2126ab][address(arg1)].field_0) = 1
            emit RoleGranted(0x2f339759585899103d2ace64958e37e18ccb0504652c81d4a1b8aa80fe2126ab, address(arg1), msg.sender);
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
    s = roleAdmin[0x2f339759585899103d2ace64958e37e18ccb0504652c81d4a1b8aa80fe2126ab].field_256
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
    if roleAdmin[0x2f339759585899103d2ace64958e37e18ccb0504652c81d4a1b8aa80fe2126ab].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function revokeCreator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(roleAdmin[0][address(msg.sender)].field_0):
        revert with 0, 'Caller is not an admin'
    if uint8(roleAdmin[roleAdmin[0xfe828634d95e775031b9ff576b159a8509d3053581a8c9c4d7d86899e0afcd88].field_256][address(msg.sender)].field_0):
        if uint8(roleAdmin[0xfe828634d95e775031b9ff576b159a8509d3053581a8c9c4d7d86899e0afcd88][address(arg1)].field_0):
            uint8(roleAdmin[0xfe828634d95e775031b9ff576b159a8509d3053581a8c9c4d7d86899e0afcd88][address(arg1)].field_0) = 0
            emit RoleRevoked(0xfe828634d95e775031b9ff576b159a8509d3053581a8c9c4d7d86899e0afcd88, arg1, msg.sender);
        emit 0xb740d509: msg.sender, arg1
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
    s = roleAdmin[0xfe828634d95e775031b9ff576b159a8509d3053581a8c9c4d7d86899e0afcd88].field_256
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
    if roleAdmin[0xfe828634d95e775031b9ff576b159a8509d3053581a8c9c4d7d86899e0afcd88].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function sub_3e726ff6(?) payable {
    require calldata.size - 4 >= 64
    if not uint8(roleAdmin[0xfe828634d95e775031b9ff576b159a8509d3053581a8c9c4d7d86899e0afcd88][address(msg.sender)].field_0):
        revert with 0, 'Caller is not a creator'
    if collections[arg1] == arg2:
        revert with 0, 'same collection'
    if collections[arg1]:
        if not stor258[msg.sender][1][stor259[arg1]]:
            revert with 0, 'invalid collection'
    if not arg2:
        collections[arg1] = arg2
    else:
        if not stor258[msg.sender][1][arg2]:
            revert with 0, 'invalid collection'
        collections[arg1] = arg2
        if arg2:
            if not stor260[arg2][1][arg1].field_0:
                stor260[arg2].field_0++
                stor260[arg2][stor260[arg2].field_0].field_0 = arg1
                stor260[arg2][1][arg1].field_0 = stor260[arg2].field_0
    if collections[arg1]:
        if stor260[stor259[arg1]][1][arg1].field_0:
            if stor260[stor259[arg1]][1][arg1].field_0 < 1:
                revert with 0, 17
            if stor260[stor259[arg1]].field_0 < 1:
                revert with 0, 17
            if stor260[stor259[arg1]].field_0 - 1 != stor260[stor259[arg1]][1][arg1].field_0 - 1:
                if stor260[stor259[arg1]].field_0 - 1 >= stor260[stor259[arg1]].field_0:
                    revert with 0, 50
                if stor260[stor259[arg1]][1][arg1].field_0 - 1 >= stor260[stor259[arg1]].field_0:
                    revert with 0, 50
                stor260[stor259[arg1]][stor260[stor259[arg1]][1][arg1].field_0].field_0 = stor260[stor259[arg1]][stor260[stor259[arg1]].field_0].field_0
                stor260[stor259[arg1]][1][stor260[stor259[arg1]][stor260[stor259[arg1]].field_0].field_0].field_0 = stor260[stor259[arg1]][1][arg1].field_0
            if not stor260[stor259[arg1]].field_0:
                revert with 0, 49
            stor260[stor259[arg1]][stor260[stor259[arg1]].field_0].field_0 = 0
            stor260[stor259[arg1]].field_0--
            stor260[stor259[arg1]][1][arg1].field_0 = 0
    emit 0x1219d79e: collections[arg1], arg2, msg.sender, arg1
}

function balanceOfBatch(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 98 < 97 or ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + 97] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    idx = 0
    s = arg2 + 36
    t = ceil32(32 * arg1.length) + 129
    while idx < arg2.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg1.length != arg2.length:
        revert with 0, 'ERC1155: accounts and ids length mismatch'
    if arg1.length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98] = arg1.length
    if arg1.length:
        mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        if idx >= arg2.length:
            revert with 0, 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC1155: balance query for the zero address'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(mem[(32 * idx) + ceil32(32 * arg1.length) + 129], 151)
        if idx >= arg1.length:
            revert with 0, 50
        mem[(32 * idx) + ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130] = balanceOf[mem[(32 * idx) + ceil32(32 * arg1.length) + 129]][address(mem[(32 * idx) + 128])]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=arg1.length, data=mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130 len 32 * arg1.length])
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    if arg1 != msg.sender:
        if not stor152[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    mem[ceil32(ceil32(arg5.length)) + 129] = arg3
    mem[ceil32(ceil32(arg5.length)) + 161] = 1
    mem[ceil32(ceil32(arg5.length)) + 193] = arg4
    if not arg1:
        idx = 0
        while idx < 1:
            if idx >= 1:
                revert with 0, 50
            if idx >= 1:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
            mem[32] = 201
            if totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] > !mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                revert with 0, 17
            totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] += mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if not arg2:
        idx = 0
        while idx < 1:
            if idx >= 1:
                revert with 0, 50
            if idx >= 1:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
            mem[32] = 201
            if totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] < mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                revert with 0, 17
            totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] -= mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if balanceOf[arg3][address(arg1)] < arg4:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[arg3][address(arg1)] -= arg4
    if balanceOf[arg3][arg2] > !arg4:
        revert with 0, 17
    balanceOf[arg3][arg2] += arg4
    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
}

function sub_04717358(?) payable {
    require calldata.size - 4 >= 32
    if stor260[arg1].field_0 > test266151307():
        revert with 0, 65
    mem[96] = stor260[arg1].field_0
    mem[64] = (32 * stor260[arg1].field_0) + 128
    if not stor260[arg1].field_0:
        if var31002 >= var31001:
            mem[(32 * stor260[arg1].field_0) + 128] = 32
            mem[(32 * stor260[arg1].field_0) + 160] = stor260[arg1].field_0
            mem[(32 * stor260[arg1].field_0) + 192 len 32 * stor260[arg1].field_0] = mem[128 len 32 * stor260[arg1].field_0]
            return memory
              from (32 * stor260[arg1].field_0) + 128
               len (96 * stor260[arg1].field_0) + 64
        mem[32] = 260
        if var37001 >= stor[var37002]:
            revert with 0, 50
        mem[0] = var39002
        if var43002 >= stor260[arg1].field_0:
            revert with 0, 50
        mem[(32 * var43002) + 128] = var43001
        s = var43002
        t = var43001
        idx = var43002
        while idx != -1:
            if idx + 1 >= stor260[arg1].field_0:
                mem[(32 * stor260[arg1].field_0) + 128] = 32
                mem[(32 * stor260[arg1].field_0) + 160] = stor260[arg1].field_0
                idx = 0
                u = 128
                v = (32 * stor260[arg1].field_0) + 192
                while idx < stor260[arg1].field_0:
                    mem[v] = mem[u]
                    mem[(32 * s) + 128] = t
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                return memory
                  from (32 * stor260[arg1].field_0) + 128
                   len (96 * stor260[arg1].field_0) + 64
            mem[32] = 260
            if idx + 1 >= stor260[arg1].field_0:
                revert with 0, 50
            mem[0] = sha3(arg1, 260)
            if idx + 1 >= stor260[arg1].field_0:
                revert with 0, 50
            mem[(32 * idx + 2) + 128] = stor260[arg1][idx].field_512
            s = idx + 1
            t = stor260[arg1][idx].field_256
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * stor260[arg1].field_0] = call.data[calldata.size len 32 * stor260[arg1].field_0]
        if var32002 >= var32001:
            mem[(32 * stor260[arg1].field_0) + 128] = 32
            mem[(32 * stor260[arg1].field_0) + 160] = stor260[arg1].field_0
            mem[(32 * stor260[arg1].field_0) + 192 len 32 * stor260[arg1].field_0] = call.data[calldata.size len 32 * stor260[arg1].field_0]
            return memory
              from (32 * stor260[arg1].field_0) + 128
               len (96 * stor260[arg1].field_0) + 64
        mem[32] = 260
        if var38001 >= stor[var38002]:
            revert with 0, 50
        mem[0] = var40002
        if var44002 >= stor260[arg1].field_0:
            revert with 0, 50
        mem[(32 * var44002) + 128] = var44001
        s = var44002
        t = var44001
        idx = var44002
        while idx != -1:
            if idx + 1 >= stor260[arg1].field_0:
                mem[(32 * stor260[arg1].field_0) + 128] = 32
                mem[(32 * stor260[arg1].field_0) + 160] = stor260[arg1].field_0
                idx = 0
                u = 128
                v = (32 * stor260[arg1].field_0) + 192
                while idx < stor260[arg1].field_0:
                    mem[v] = mem[u]
                    mem[(32 * s) + 128] = t
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                return memory
                  from (32 * stor260[arg1].field_0) + 128
                   len (96 * stor260[arg1].field_0) + 64
            mem[32] = 260
            if idx + 1 >= stor260[arg1].field_0:
                revert with 0, 50
            mem[0] = sha3(arg1, 260)
            if idx + 1 >= stor260[arg1].field_0:
                revert with 0, 50
            mem[(32 * idx + 2) + 128] = stor260[arg1][idx].field_512
            s = idx + 1
            t = stor260[arg1][idx].field_256
            idx = idx + 1
            continue 
    revert with 0, 17
}

function sub_8c0b8987(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    if not uint8(roleAdmin[0xfe828634d95e775031b9ff576b159a8509d3053581a8c9c4d7d86899e0afcd88][address(msg.sender)].field_0):
        revert with 0, 'Caller is not a creator'
    if not uint8(roleAdmin[0xfe828634d95e775031b9ff576b159a8509d3053581a8c9c4d7d86899e0afcd88][address(arg1)].field_0):
        revert with 0, 'user is not a creator'
    if arg2 > 10 * 10^18:
        revert with 0, 'loyalty fee is too high'
    if arg4:
        if not stor258[address(arg1)][1][arg4]:
            revert with 0, 'invalid collection'
    if not arg3:
        revert with 0, 'invalid amount'
    creators[stor255] = address(arg1)
    collections[stor255] = arg4
    stor253[address(arg1)].field_0++
    stor253[address(arg1)][stor253[address(arg1)].field_0].field_0 = stor255
    if arg4:
        if not stor260[arg4][1][stor255].field_0:
            stor260[arg4].field_0++
            stor260[arg4][stor260[arg4].field_0].field_0 = stor255
            stor260[arg4][1][stor255].field_0 = stor260[arg4].field_0
    sub_92ea41c0[stor255] = arg2
    uint8(sub_c030bbb6[stor255].field_0) = 1
    sub_c030bbb6[stor255].field_8 % 16777216 = 0
    uint8(sub_c030bbb6[stor255].field_32) = 1
    sub_c030bbb6[stor255].field_40 % 16777216 = 0
    uint8(sub_c030bbb6[stor255].field_64) = 1
    sub_c030bbb6[stor255].field_72 % 16777216 = 0
    uint8(sub_c030bbb6[stor255].field_96) = 1
    sub_c030bbb6[stor255].field_104 % 16777216 = 0
    uint8(sub_c030bbb6[stor255].field_128) = 1
    sub_c030bbb6[stor255].field_136 % 16777216 = 0
    uint8(sub_c030bbb6[stor255].field_160) = 1
    sub_c030bbb6[stor255].field_168 % 16777216 = 0
    uint8(sub_c030bbb6[stor255].field_192) = 1
    sub_c030bbb6[stor255].field_200 % 16777216 = 0
    uint8(sub_c030bbb6[stor255].field_224) = 1
    sub_c030bbb6[stor255].field_232 % 16777216 = 0
    uint8(sub_c030bbb6[stor255].field_256) = 1
    sub_c030bbb6[stor255].field_264 % 16777216 = 0
    uint8(sub_c030bbb6[stor255].field_288) = 1
    sub_c030bbb6[stor255].field_296 % 16777216 = 0
    stor255++
    if not address(arg1):
        revert with 0, 'ERC1155: mint to the zero address'
    mem[480] = stor255
    mem[512] = 1
    mem[544] = arg3
    idx = 0
    while idx < 1:
        if idx >= 1:
            revert with 0, 50
        if idx >= 1:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 480]
        mem[32] = 201
        if totalSupply[mem[(32 * idx) + 480]] > !mem[(32 * idx) + 544]:
            revert with 0, 17
        totalSupply[mem[(32 * idx) + 480]] += mem[(32 * idx) + 544]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not address(arg1):
        idx = 0
        while idx < 1:
            if idx >= 1:
                revert with 0, 50
            if idx >= 1:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 480]
            mem[32] = 201
            if totalSupply[mem[(32 * idx) + 480]] < mem[(32 * idx) + 544]:
                revert with 0, 17
            totalSupply[mem[(32 * idx) + 480]] -= mem[(32 * idx) + 544]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if balanceOf[stor255][address(arg1)] > !arg3:
        revert with 0, 17
    balanceOf[stor255][address(arg1)] += arg3
    emit TransferSingle(stor255, arg3, msg.sender, 0, address(arg1));
    if ext_code.size(address(arg1)):
        require ext_code.size(address(arg1))
        call address(arg1).onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, stor255, arg3, 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    emit Mint(arg3, arg2, address(arg1), stor255, arg4);
    return stor255
}

function mint(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not uint8(roleAdmin[0xfe828634d95e775031b9ff576b159a8509d3053581a8c9c4d7d86899e0afcd88][address(msg.sender)].field_0):
        revert with 0, 'Caller is not a creator'
    if not uint8(roleAdmin[0xfe828634d95e775031b9ff576b159a8509d3053581a8c9c4d7d86899e0afcd88][address(msg.sender)].field_0):
        revert with 0, 'user is not a creator'
    if arg1 > 10 * 10^18:
        revert with 0, 'loyalty fee is too high'
    if arg3:
        if not stor258[address(msg.sender)][1][arg3]:
            revert with 0, 'invalid collection'
    if not arg2:
        revert with 0, 'invalid amount'
    creators[stor255] = msg.sender
    collections[stor255] = arg3
    stor253[address(msg.sender)].field_0++
    stor253[address(msg.sender)][stor253[address(msg.sender)].field_0].field_0 = stor255
    if arg3:
        if not stor260[arg3][1][stor255].field_0:
            stor260[arg3].field_0++
            stor260[arg3][stor260[arg3].field_0].field_0 = stor255
            stor260[arg3][1][stor255].field_0 = stor260[arg3].field_0
    sub_92ea41c0[stor255] = arg1
    uint8(sub_c030bbb6[stor255].field_0) = 1
    sub_c030bbb6[stor255].field_8 % 16777216 = 0
    uint8(sub_c030bbb6[stor255].field_32) = 1
    sub_c030bbb6[stor255].field_40 % 16777216 = 0
    uint8(sub_c030bbb6[stor255].field_64) = 1
    sub_c030bbb6[stor255].field_72 % 16777216 = 0
    uint8(sub_c030bbb6[stor255].field_96) = 1
    sub_c030bbb6[stor255].field_104 % 16777216 = 0
    uint8(sub_c030bbb6[stor255].field_128) = 1
    sub_c030bbb6[stor255].field_136 % 16777216 = 0
    uint8(sub_c030bbb6[stor255].field_160) = 1
    sub_c030bbb6[stor255].field_168 % 16777216 = 0
    uint8(sub_c030bbb6[stor255].field_192) = 1
    sub_c030bbb6[stor255].field_200 % 16777216 = 0
    uint8(sub_c030bbb6[stor255].field_224) = 1
    sub_c030bbb6[stor255].field_232 % 16777216 = 0
    uint8(sub_c030bbb6[stor255].field_256) = 1
    sub_c030bbb6[stor255].field_264 % 16777216 = 0
    uint8(sub_c030bbb6[stor255].field_288) = 1
    sub_c030bbb6[stor255].field_296 % 16777216 = 0
    stor255++
    if not msg.sender:
        revert with 0, 'ERC1155: mint to the zero address'
    mem[480] = stor255
    mem[512] = 1
    mem[544] = arg2
    idx = 0
    while idx < 1:
        if idx >= 1:
            revert with 0, 50
        if idx >= 1:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 480]
        mem[32] = 201
        if totalSupply[mem[(32 * idx) + 480]] > !mem[(32 * idx) + 544]:
            revert with 0, 17
        totalSupply[mem[(32 * idx) + 480]] += mem[(32 * idx) + 544]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not msg.sender:
        idx = 0
        while idx < 1:
            if idx >= 1:
                revert with 0, 50
            if idx >= 1:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 480]
            mem[32] = 201
            if totalSupply[mem[(32 * idx) + 480]] < mem[(32 * idx) + 544]:
                revert with 0, 17
            totalSupply[mem[(32 * idx) + 480]] -= mem[(32 * idx) + 544]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if balanceOf[stor255][address(msg.sender)] > !arg2:
        revert with 0, 17
    balanceOf[stor255][address(msg.sender)] += arg2
    emit TransferSingle(stor255, arg2, msg.sender, 0, msg.sender);
    if ext_code.size(msg.sender):
        require ext_code.size(msg.sender)
        call msg.sender.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, stor255, arg2, 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    emit Mint(arg2, arg1, msg.sender, stor255, arg3);
    return stor255
}

function uri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor153.length):
        if bool(stor153.length) == uint255(stor153.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor153.length):
            if bool(stor153.length) == uint255(stor153.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor153.length):
                if 31 < uint255(stor153.length) * 0.5:
                    mem[128] = uint256(stor153.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor153.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor153[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor153.length), data=mem[128 len ceil32(uint255(stor153.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor153.length.field_8)
        else:
            if bool(stor153.length) == stor153.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor153.length.field_1 % 128:
                if 31 < stor153.length.field_1 % 128:
                    mem[128] = uint256(stor153.field_0)
                    idx = 128
                    s = 0
                    while stor153.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor153[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor153.length), data=mem[128 len ceil32(uint255(stor153.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor153.length.field_8)
        mem[ceil32(uint255(stor153.length) * 0.5) + 192 len ceil32(uint255(stor153.length) * 0.5)] = mem[128 len ceil32(uint255(stor153.length) * 0.5)]
        if ceil32(uint255(stor153.length) * 0.5) > uint255(stor153.length) * 0.5:
            mem[ceil32(uint255(stor153.length) * 0.5) + (uint255(stor153.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor153.length), data=mem[128 len ceil32(uint255(stor153.length) * 0.5)], mem[(2 * ceil32(uint255(stor153.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor153.length) * 0.5)]), 
    if bool(stor153.length) == stor153.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor153.length):
        if bool(stor153.length) == uint255(stor153.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor153.length):
            if 31 < uint255(stor153.length) * 0.5:
                mem[128] = uint256(stor153.field_0)
                idx = 128
                s = 0
                while (uint255(stor153.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor153[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor153.length % 128, data=mem[128 len ceil32(stor153.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor153.length.field_8)
    else:
        if bool(stor153.length) == stor153.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor153.length.field_1 % 128:
            if 31 < stor153.length.field_1 % 128:
                mem[128] = uint256(stor153.field_0)
                idx = 128
                s = 0
                while stor153.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor153[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor153.length % 128, data=mem[128 len ceil32(stor153.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor153.length.field_8)
    mem[ceil32(stor153.length.field_1 % 128) + 192 len ceil32(stor153.length.field_1 % 128)] = mem[128 len ceil32(stor153.length.field_1 % 128)]
    if ceil32(stor153.length.field_1 % 128) > stor153.length.field_1 % 128:
        mem[ceil32(stor153.length.field_1 % 128) + stor153.length.field_1 % 128 + 192] = 0
    return Array(len=stor153.length % 128, data=mem[128 len ceil32(stor153.length.field_1 % 128)], mem[(2 * ceil32(stor153.length.field_1 % 128)) + 192 len 2 * ceil32(stor153.length.field_1 % 128)]), 
}

function initialize(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0, 'Initializable: contract is already initialized'
            if not uint8(stor0.field_8):
                uint16(stor0.field_0) = 257
                uint8(stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0, 'Initializable: contract is already initialized'
                if not uint8(stor0.field_8):
                    uint16(stor0.field_0) = 257
                    if uint8(stor0.field_0):
                        revert with 0, 'Initializable: contract is already initialized'
                    if not uint8(stor0.field_8):
                        uint16(stor0.field_0) = 257
                        uint8(stor0.field_8) = 0
                        if uint8(stor0.field_0):
                            revert with 0, 'Initializable: contract is already initialized'
                        if not uint8(stor0.field_8):
                            uint16(stor0.field_0) = 257
                            uint8(stor0.field_8) = 0
                            if uint8(stor0.field_0):
                                revert with 0, 'Initializable: contract is already initialized'
                            if not uint8(stor0.field_8):
                                uint16(stor0.field_0) = 257
    if bool(stor153.length):
        if bool(stor153.length) == uint255(stor153.length) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor153[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor153.length = 0
            idx = 0
            while (uint255(stor153.length) * 0.5) + 31 / 32 > idx:
                stor153[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor153.length) == stor153.length.field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            stor153[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor153.length = 0
            idx = 0
            while stor153.length.field_1 % 128 + 31 / 32 > idx:
                stor153[idx].field_0 = 0
                idx = idx + 1
                continue 
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
        uint8(stor0.field_8) = 0
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
            uint8(stor0.field_8) = 0
            if uint8(stor0.field_0):
                revert with 0, 'Initializable: contract is already initialized'
            if not uint8(stor0.field_8):
                uint16(stor0.field_0) = 257
    if not uint8(roleAdmin[0][address(arg1)].field_0):
        uint8(roleAdmin[0][address(arg1)].field_0) = 1
        emit RoleGranted(0, arg1, msg.sender);
    if not uint8(roleAdmin[0xfe828634d95e775031b9ff576b159a8509d3053581a8c9c4d7d86899e0afcd88][address(arg1)].field_0):
        uint8(roleAdmin[0xfe828634d95e775031b9ff576b159a8509d3053581a8c9c4d7d86899e0afcd88][address(arg1)].field_0) = 1
        emit RoleGranted(0xfe828634d95e775031b9ff576b159a8509d3053581a8c9c4d7d86899e0afcd88, arg1, msg.sender);
    if not uint8(roleAdmin[0x2f339759585899103d2ace64958e37e18ccb0504652c81d4a1b8aa80fe2126ab][address(arg1)].field_0):
        uint8(roleAdmin[0x2f339759585899103d2ace64958e37e18ccb0504652c81d4a1b8aa80fe2126ab][address(arg1)].field_0) = 1
        emit RoleGranted(0x2f339759585899103d2ace64958e37e18ccb0504652c81d4a1b8aa80fe2126ab, arg1, msg.sender);
    stor255++
    stor256++
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
        uint8(stor0.field_8) = 0
}

function sub_407917eb(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if not uint8(roleAdmin[0xfe828634d95e775031b9ff576b159a8509d3053581a8c9c4d7d86899e0afcd88][address(msg.sender)].field_0):
        revert with 0, 'Caller is not a creator'
    mem[ceil32(arg1.length) + 256] = arg2.length
    mem[ceil32(arg1.length) + 288 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 288] = 0
    stor257[stor256].field_0 = stor256
    address(stor257[stor256].field_256) = msg.sender
    if bool(stor257[stor256].field_512):
        if bool(stor257[stor256].field_512) == uint255(stor257[stor256].field_512) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor257[stor256][2][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor257[stor256].field_512 = 0
            idx = 0
            while (uint255(stor257[stor256].field_512) * 0.5) + 31 / 32 > idx:
                stor257[stor256][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor257[stor256].field_512) == stor257[stor256].field_513 % 128 < 32:
            revert with 0, 34
        if arg1.length:
            stor257[stor256][2][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor257[stor256].field_512 = 0
            idx = 0
            while stor257[stor256].field_513 % 128 + 31 / 32 > idx:
                stor257[stor256][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    if bool(stor257[stor256].field_768):
        if bool(stor257[stor256].field_768) == uint255(stor257[stor256].field_768) * 0.5 < 32:
            revert with 0, 34
        if Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 288 len -arg1.length + ceil32(arg1.length)]:
            stor257[stor256][3][].field_0 = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 288 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 288 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 288 len -arg1.length + ceil32(arg1.length)]])
        else:
            stor257[stor256].field_768 = 0
            idx = 0
            while (uint255(stor257[stor256].field_768) * 0.5) + 31 / 32 > idx:
                stor257[stor256][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor257[stor256].field_768) == stor257[stor256].field_769 % 128 < 32:
            revert with 0, 34
        if Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 288 len -arg1.length + ceil32(arg1.length)]:
            stor257[stor256][3][].field_0 = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 288 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 288 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 288 len -arg1.length + ceil32(arg1.length)]])
        else:
            stor257[stor256].field_768 = 0
            idx = 0
            while stor257[stor256].field_769 % 128 + 31 / 32 > idx:
                stor257[stor256][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
    if not stor258[msg.sender][1][stor256]:
        stor258[msg.sender]++
        stor258[msg.sender][stor258[msg.sender]] = stor256
        stor258[msg.sender][1][stor256] = stor258[msg.sender]
    stor256++
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = 64
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 352] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 384 len arg1.length] = arg1[all]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 320] = ceil32(arg1.length) + 96
    mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 384] = arg2.length
    mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 416 len arg2.length] = arg2[all]
    mem[arg2.length + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 416] = 0
    emit 0xef6cbf86: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 320 len ceil32(arg1.length) + (2 * ceil32(arg2.length)) + -arg2.length + 96], msg.sender, stor256
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = stor256
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), 
           mem[ceil32(arg1.length) + arg2.length + 320 len -arg2.length + ceil32(arg2.length)]
}

function sub_cee50635(?) payable {
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + ('cd', 68).length + 36 <= calldata.size
    if not uint8(roleAdmin[0xfe828634d95e775031b9ff576b159a8509d3053581a8c9c4d7d86899e0afcd88][address(msg.sender)].field_0):
        revert with 0, 'Caller is not a creator'
    if not stor258[msg.sender][1][cd[4]]:
        revert with 0, 'no permission'
    if bool(stor257[cd[4]].field_512):
        if bool(stor257[cd[4]].field_512) == uint255(stor257[cd[4]].field_512) * 0.5 < 32:
            revert with 0, 34
        if not ('cd', 36).length:
            stor257[cd[4]].field_512 = 0
            idx = 0
            while (uint255(stor257[cd[4]].field_512) * 0.5) + 31 / 32 > idx:
                stor257[cd[4]][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor257[cd[4]].field_512 = (2 * ('cd', 36).length) + 1
            s = 0
            idx = cd[36] + 36
            while cd[36] + ('cd', 36).length + 36 > idx:
                stor257[cd[4]][s + 2].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
            while (uint255(stor257[cd[4]].field_512) * 0.5) + 31 / 32 > idx:
                stor257[cd[4]][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor257[cd[4]].field_512) == stor257[cd[4]].field_513 % 128 < 32:
            revert with 0, 34
        if not ('cd', 36).length:
            stor257[cd[4]].field_512 = 0
            idx = 0
            while stor257[cd[4]].field_513 % 128 + 31 / 32 > idx:
                stor257[cd[4]][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor257[cd[4]].field_512 = (2 * ('cd', 36).length) + 1
            s = 0
            idx = cd[36] + 36
            while cd[36] + ('cd', 36).length + 36 > idx:
                stor257[cd[4]][s + 2].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
            while stor257[cd[4]].field_513 % 128 + 31 / 32 > idx:
                stor257[cd[4]][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    if bool(stor257[cd[4]].field_768):
        if bool(stor257[cd[4]].field_768) == uint255(stor257[cd[4]].field_768) * 0.5 < 32:
            revert with 0, 34
        if not ('cd', 68).length:
            stor257[cd[4]].field_768 = 0
            idx = 0
            while (uint255(stor257[cd[4]].field_768) * 0.5) + 31 / 32 > idx:
                stor257[cd[4]][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor257[cd[4]].field_768 = (2 * ('cd', 68).length) + 1
            s = 0
            idx = cd[68] + 36
            while cd[68] + ('cd', 68).length + 36 > idx:
                stor257[cd[4]][s + 3].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 68).length + 31) >> 5
            while (uint255(stor257[cd[4]].field_768) * 0.5) + 31 / 32 > idx:
                stor257[cd[4]][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor257[cd[4]].field_768) == stor257[cd[4]].field_769 % 128 < 32:
            revert with 0, 34
        if not ('cd', 68).length:
            stor257[cd[4]].field_768 = 0
            idx = 0
            while stor257[cd[4]].field_769 % 128 + 31 / 32 > idx:
                stor257[cd[4]][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor257[cd[4]].field_768 = (2 * ('cd', 68).length) + 1
            s = 0
            idx = cd[68] + 36
            while cd[68] + ('cd', 68).length + 36 > idx:
                stor257[cd[4]][s + 3].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 68).length + 31) >> 5
            while stor257[cd[4]].field_769 % 128 + 31 / 32 > idx:
                stor257[cd[4]][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
    mem[ceil32(('cd', 36).length) + 192] = ('cd', 68).length
    mem[ceil32(('cd', 36).length) + 224 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
    mem[('cd', 68).length + ceil32(('cd', 36).length) + 224] = 0
    emit 0x6cce5988: 64, ceil32(('cd', 36).length) + 96, ('cd', 36).length, call.data[cd[36] + 36 len ('cd', 36).length], 0, mem[('cd', 36).length + 224 len ceil32(('cd', 36).length) + ceil32(('cd', 68).length) - ('cd', 36).length], msg.sender, cd[4]
}

function sub_17a449d1(?) payable {
    require calldata.size - 4 >= 480
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require calldata.size - 164 >= 320
    require arg6 == uint32(arg6)
    require arg7 == uint32(arg7)
    require arg8 == uint32(arg8)
    require arg9 == uint32(arg9)
    require arg10 == uint32(arg10)
    require arg11 == uint32(arg11)
    require arg12 == uint32(arg12)
    require arg13 == uint32(arg13)
    require arg14 == uint32(arg14)
    require arg15 == uint32(arg15)
    if not uint8(roleAdmin[0x2f339759585899103d2ace64958e37e18ccb0504652c81d4a1b8aa80fe2126ab][address(msg.sender)].field_0):
        revert with 0, 'Caller is not a maintainer'
    if not uint8(roleAdmin[0xfe828634d95e775031b9ff576b159a8509d3053581a8c9c4d7d86899e0afcd88][address(arg1)].field_0):
        revert with 0, 'user is not a creator'
    if arg3 > 10 * 10^18:
        revert with 0, 'loyalty fee is too high'
    if arg5:
        if not stor258[address(arg1)][1][arg5]:
            revert with 0, 'invalid collection'
    if not arg4:
        revert with 0, 'invalid amount'
    creators[stor255] = address(arg1)
    collections[stor255] = arg5
    stor253[address(arg1)].field_0++
    stor253[address(arg1)][stor253[address(arg1)].field_0].field_0 = stor255
    if arg5:
        if not stor260[arg5][1][stor255].field_0:
            stor260[arg5].field_0++
            stor260[arg5][stor260[arg5].field_0].field_0 = stor255
            stor260[arg5][1][stor255].field_0 = stor260[arg5].field_0
    sub_92ea41c0[stor255] = arg3
    uint8(sub_c030bbb6[stor255].field_0) = 1
    sub_c030bbb6[stor255].field_8 % 16777216 = 0
    uint8(sub_c030bbb6[stor255].field_32) = 1
    sub_c030bbb6[stor255].field_40 % 16777216 = 0
    uint8(sub_c030bbb6[stor255].field_64) = 1
    sub_c030bbb6[stor255].field_72 % 16777216 = 0
    uint8(sub_c030bbb6[stor255].field_96) = 1
    sub_c030bbb6[stor255].field_104 % 16777216 = 0
    uint8(sub_c030bbb6[stor255].field_128) = 1
    sub_c030bbb6[stor255].field_136 % 16777216 = 0
    uint8(sub_c030bbb6[stor255].field_160) = 1
    sub_c030bbb6[stor255].field_168 % 16777216 = 0
    uint8(sub_c030bbb6[stor255].field_192) = 1
    sub_c030bbb6[stor255].field_200 % 16777216 = 0
    uint8(sub_c030bbb6[stor255].field_224) = 1
    sub_c030bbb6[stor255].field_232 % 16777216 = 0
    uint8(sub_c030bbb6[stor255].field_256) = 1
    sub_c030bbb6[stor255].field_264 % 16777216 = 0
    uint8(sub_c030bbb6[stor255].field_288) = 1
    sub_c030bbb6[stor255].field_296 % 16777216 = 0
    stor255++
    if not address(arg2):
        revert with 0, 'ERC1155: mint to the zero address'
    mem[800] = stor255
    mem[832] = 1
    mem[864] = arg4
    idx = 0
    while idx < 1:
        if idx >= 1:
            revert with 0, 50
        if idx >= 1:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 800]
        mem[32] = 201
        if totalSupply[mem[(32 * idx) + 800]] > !mem[(32 * idx) + 864]:
            revert with 0, 17
        totalSupply[mem[(32 * idx) + 800]] += mem[(32 * idx) + 864]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not address(arg2):
        idx = 0
        while idx < 1:
            if idx >= 1:
                revert with 0, 50
            if idx >= 1:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 800]
            mem[32] = 201
            if totalSupply[mem[(32 * idx) + 800]] < mem[(32 * idx) + 864]:
                revert with 0, 17
            totalSupply[mem[(32 * idx) + 800]] -= mem[(32 * idx) + 864]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if balanceOf[stor255][address(arg2)] > !arg4:
        revert with 0, 17
    balanceOf[stor255][address(arg2)] += arg4
    emit TransferSingle(stor255, arg4, msg.sender, 0, address(arg2));
    if ext_code.size(address(arg2)):
        require ext_code.size(address(arg2))
        call address(arg2).onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, stor255, arg4, 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    uint32(sub_c030bbb6[stor255].field_0) = uint32(arg6)
    uint32(sub_c030bbb6[stor255].field_32) = uint32(arg7)
    uint32(sub_c030bbb6[stor255].field_64) = uint32(arg8)
    uint32(sub_c030bbb6[stor255].field_96) = uint32(arg9)
    uint32(sub_c030bbb6[stor255].field_128) = uint32(arg10)
    uint32(sub_c030bbb6[stor255].field_160) = uint32(arg11)
    uint32(sub_c030bbb6[stor255].field_192) = uint32(arg12)
    uint32(sub_c030bbb6[stor255].field_224) = uint32(arg13)
    uint32(sub_c030bbb6[stor255].field_256) = uint32(arg14)
    uint32(sub_c030bbb6[stor255].field_288) = uint32(arg15)
    emit 0x96b8902a: stor255, arg5, arg4, arg3, address(arg1), address(arg2)
    return stor255
}

function sub_af2f8edf(?) payable {
    require calldata.size - 4 >= 96
    if stor260[arg1].field_0 > test266151307():
        revert with 0, 65
    mem[96] = stor260[arg1].field_0
    mem[64] = (32 * stor260[arg1].field_0) + 128
    if not stor260[arg1].field_0:
        if var32002 >= var32001:
            if arg3 > test266151307():
                revert with 0, 65
            mem[(32 * stor260[arg1].field_0) + 128] = arg3
            if arg3:
                mem[(32 * stor260[arg1].field_0) + 160 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
            idx = 0
            while idx < arg3:
                if arg2 and arg3 > -1 / arg2:
                    revert with 0, 17
                if arg2 * arg3 > !idx:
                    revert with 0, 17
                if (arg2 * arg3) + idx >= stor260[arg1].field_0:
                    if idx >= arg3:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor260[arg1].field_0) + 160] = 0
                else:
                    if arg2 and arg3 > -1 / arg2:
                        revert with 0, 17
                    if arg2 * arg3 > !idx:
                        revert with 0, 17
                    if (arg2 * arg3) + idx >= stor260[arg1].field_0:
                        revert with 0, 50
                    if idx >= arg3:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor260[arg1].field_0) + 160] = mem[(32 * (arg2 * arg3) + idx) + 128]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            return Array(len=arg3, data=mem[(32 * stor260[arg1].field_0) + 160 len 32 * arg3])
        mem[32] = 260
        if var38001 >= stor[var38002]:
            revert with 0, 50
        mem[0] = var40002
        if var44002 >= stor260[arg1].field_0:
            revert with 0, 50
        mem[(32 * var44002) + 128] = var44001
        s = var44002
        t = var44001
        idx = var44002
        while idx != -1:
            if idx + 1 < stor260[arg1].field_0:
                mem[32] = 260
                if idx + 1 >= stor260[arg1].field_0:
                    revert with 0, 50
                mem[0] = sha3(arg1, 260)
                if idx + 1 >= stor260[arg1].field_0:
                    revert with 0, 50
                mem[(32 * idx + 2) + 128] = stor260[arg1][idx].field_512
                s = idx + 1
                t = stor260[arg1][idx].field_256
                idx = idx + 1
                continue 
            if arg3 > test266151307():
                revert with 0, 65
            mem[(32 * stor260[arg1].field_0) + 128] = arg3
            mem[64] = (32 * stor260[arg1].field_0) + (32 * arg3) + 160
            if not arg3:
                idx = 0
                while idx < arg3:
                    if arg2 and arg3 > -1 / arg2:
                        revert with 0, 17
                    if arg2 * arg3 > !idx:
                        revert with 0, 17
                    if (arg2 * arg3) + idx >= stor260[arg1].field_0:
                        if idx >= mem[(32 * stor260[arg1].field_0) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * stor260[arg1].field_0) + 160] = 0
                    else:
                        if arg2 and arg3 > -1 / arg2:
                            revert with 0, 17
                        if arg2 * arg3 > !idx:
                            revert with 0, 17
                        if (arg2 * arg3) + idx >= stor260[arg1].field_0:
                            revert with 0, 50
                        if idx >= mem[(32 * stor260[arg1].field_0) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * stor260[arg1].field_0) + 160] = mem[(32 * (arg2 * arg3) + idx) + 128]
                    if idx == -1:
                        revert with 0, 17
                    mem[(32 * s) + 128] = t
                    idx = idx + 1
                    continue 
                mem[(32 * stor260[arg1].field_0) + (32 * arg3) + 160] = 32
                _653 = mem[(32 * stor260[arg1].field_0) + 128]
                mem[(32 * stor260[arg1].field_0) + (32 * arg3) + 192] = mem[(32 * stor260[arg1].field_0) + 128]
                idx = 0
                u = (32 * stor260[arg1].field_0) + 160
                v = mem[64] + 64
                while idx < _653:
                    mem[v] = mem[u]
                    mem[(32 * s) + 128] = t
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                return memory
                  from mem[64]
                   len (32 * stor260[arg1].field_0) + (32 * arg3) + (32 * _653) + -mem[64] + 224
            mem[(32 * stor260[arg1].field_0) + 160 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
            idx = 0
            while idx < arg3:
                if arg2 and arg3 > -1 / arg2:
                    revert with 0, 17
                if arg2 * arg3 > !idx:
                    revert with 0, 17
                if (arg2 * arg3) + idx >= stor260[arg1].field_0:
                    if idx >= mem[(32 * stor260[arg1].field_0) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor260[arg1].field_0) + 160] = 0
                else:
                    if arg2 and arg3 > -1 / arg2:
                        revert with 0, 17
                    if arg2 * arg3 > !idx:
                        revert with 0, 17
                    if (arg2 * arg3) + idx >= stor260[arg1].field_0:
                        revert with 0, 50
                    if idx >= mem[(32 * stor260[arg1].field_0) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor260[arg1].field_0) + 160] = mem[(32 * (arg2 * arg3) + idx) + 128]
                if idx == -1:
                    revert with 0, 17
                mem[(32 * s) + 128] = t
                idx = idx + 1
                continue 
            mem[(32 * stor260[arg1].field_0) + (32 * arg3) + 160] = 32
            _654 = mem[(32 * stor260[arg1].field_0) + 128]
            mem[(32 * stor260[arg1].field_0) + (32 * arg3) + 192] = mem[(32 * stor260[arg1].field_0) + 128]
            idx = 0
            u = (32 * stor260[arg1].field_0) + 160
            v = mem[64] + 64
            while idx < _654:
                mem[v] = mem[u]
                mem[(32 * s) + 128] = t
                idx = idx + 1
                u = u + 32
                v = v + 32
                continue 
            return memory
              from mem[64]
               len (32 * stor260[arg1].field_0) + (32 * arg3) + (32 * _654) + -mem[64] + 224
    else:
        mem[128 len 32 * stor260[arg1].field_0] = call.data[calldata.size len 32 * stor260[arg1].field_0]
        if var33002 >= var33001:
            if arg3 > test266151307():
                revert with 0, 65
            mem[(32 * stor260[arg1].field_0) + 128] = arg3
            if arg3:
                mem[(32 * stor260[arg1].field_0) + 160 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
            idx = 0
            while idx < arg3:
                if arg2 and arg3 > -1 / arg2:
                    revert with 0, 17
                if arg2 * arg3 > !idx:
                    revert with 0, 17
                if (arg2 * arg3) + idx >= stor260[arg1].field_0:
                    if idx >= arg3:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor260[arg1].field_0) + 160] = 0
                else:
                    if arg2 and arg3 > -1 / arg2:
                        revert with 0, 17
                    if arg2 * arg3 > !idx:
                        revert with 0, 17
                    if (arg2 * arg3) + idx >= stor260[arg1].field_0:
                        revert with 0, 50
                    if idx >= arg3:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor260[arg1].field_0) + 160] = mem[(32 * (arg2 * arg3) + idx) + 128]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            return Array(len=arg3, data=mem[(32 * stor260[arg1].field_0) + 160 len 32 * arg3])
        mem[32] = 260
        if var39001 >= stor[var39002]:
            revert with 0, 50
        mem[0] = var41002
        if var45002 >= stor260[arg1].field_0:
            revert with 0, 50
        mem[(32 * var45002) + 128] = var45001
        s = var45002
        t = var45001
        idx = var45002
        while idx != -1:
            if idx + 1 < stor260[arg1].field_0:
                mem[32] = 260
                if idx + 1 >= stor260[arg1].field_0:
                    revert with 0, 50
                mem[0] = sha3(arg1, 260)
                if idx + 1 >= stor260[arg1].field_0:
                    revert with 0, 50
                mem[(32 * idx + 2) + 128] = stor260[arg1][idx].field_512
                s = idx + 1
                t = stor260[arg1][idx].field_256
                idx = idx + 1
                continue 
            if arg3 > test266151307():
                revert with 0, 65
            mem[(32 * stor260[arg1].field_0) + 128] = arg3
            mem[64] = (32 * stor260[arg1].field_0) + (32 * arg3) + 160
            if not arg3:
                idx = 0
                while idx < arg3:
                    if arg2 and arg3 > -1 / arg2:
                        revert with 0, 17
                    if arg2 * arg3 > !idx:
                        revert with 0, 17
                    if (arg2 * arg3) + idx >= stor260[arg1].field_0:
                        if idx >= mem[(32 * stor260[arg1].field_0) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * stor260[arg1].field_0) + 160] = 0
                    else:
                        if arg2 and arg3 > -1 / arg2:
                            revert with 0, 17
                        if arg2 * arg3 > !idx:
                            revert with 0, 17
                        if (arg2 * arg3) + idx >= stor260[arg1].field_0:
                            revert with 0, 50
                        if idx >= mem[(32 * stor260[arg1].field_0) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * stor260[arg1].field_0) + 160] = mem[(32 * (arg2 * arg3) + idx) + 128]
                    if idx == -1:
                        revert with 0, 17
                    mem[(32 * s) + 128] = t
                    idx = idx + 1
                    continue 
                mem[(32 * stor260[arg1].field_0) + (32 * arg3) + 160] = 32
                _655 = mem[(32 * stor260[arg1].field_0) + 128]
                mem[(32 * stor260[arg1].field_0) + (32 * arg3) + 192] = mem[(32 * stor260[arg1].field_0) + 128]
                idx = 0
                u = (32 * stor260[arg1].field_0) + 160
                v = mem[64] + 64
                while idx < _655:
                    mem[v] = mem[u]
                    mem[(32 * s) + 128] = t
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                return memory
                  from mem[64]
                   len (32 * stor260[arg1].field_0) + (32 * arg3) + (32 * _655) + -mem[64] + 224
            mem[(32 * stor260[arg1].field_0) + 160 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
            idx = 0
            while idx < arg3:
                if arg2 and arg3 > -1 / arg2:
                    revert with 0, 17
                if arg2 * arg3 > !idx:
                    revert with 0, 17
                if (arg2 * arg3) + idx >= stor260[arg1].field_0:
                    if idx >= mem[(32 * stor260[arg1].field_0) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor260[arg1].field_0) + 160] = 0
                else:
                    if arg2 and arg3 > -1 / arg2:
                        revert with 0, 17
                    if arg2 * arg3 > !idx:
                        revert with 0, 17
                    if (arg2 * arg3) + idx >= stor260[arg1].field_0:
                        revert with 0, 50
                    if idx >= mem[(32 * stor260[arg1].field_0) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor260[arg1].field_0) + 160] = mem[(32 * (arg2 * arg3) + idx) + 128]
                if idx == -1:
                    revert with 0, 17
                mem[(32 * s) + 128] = t
                idx = idx + 1
                continue 
            mem[(32 * stor260[arg1].field_0) + (32 * arg3) + 160] = 32
            _656 = mem[(32 * stor260[arg1].field_0) + 128]
            mem[(32 * stor260[arg1].field_0) + (32 * arg3) + 192] = mem[(32 * stor260[arg1].field_0) + 128]
            idx = 0
            u = (32 * stor260[arg1].field_0) + 160
            v = mem[64] + 64
            while idx < _656:
                mem[v] = mem[u]
                mem[(32 * s) + 128] = t
                idx = idx + 1
                u = u + 32
                v = v + 32
                continue 
            return memory
              from mem[64]
               len (32 * stor260[arg1].field_0) + (32 * arg3) + (32 * _656) + -mem[64] + 224
    revert with 0, 17
}

function safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg3.length) + 97 < 96 or ceil32(32 * arg3.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg3.length
    require calldata.size >= arg3 + (32 * arg3.length) + 36
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg4.length) + 98 < 97 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg3.length) + 97] = arg4.length
    require calldata.size >= arg4 + (32 * arg4.length) + 36
    idx = 0
    s = arg4 + 36
    t = ceil32(32 * arg3.length) + 129
    while idx < arg4.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 99 < 98 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98] = arg5.length
    require arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 130 len arg5.length] = arg5[all]
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + arg5.length + 130] = 0
    if msg.sender == arg1:
        if arg3.length != arg4.length:
            revert with 0, 'ERC1155: ids and amounts length mismatch'
        if not arg2:
            revert with 0, 'ERC1155: transfer to the zero address'
        if arg1:
            if arg2:
                idx = 0
                while idx < arg3.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if idx >= arg4.length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    mem[32] = sha3(mem[(32 * idx) + 128], 151)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    mem[0] = arg2
                    if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 17
                    balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
                if not ext_code.size(arg2):
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
                if ceil32(arg5.length) <= arg5.length:
                    require ext_code.size(arg2)
                    call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                    if ext_call.success:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    if return_data.size <= 3:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if return_data.size < 68:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                    _5211 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _5259 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 68 len ceil32(_5259)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_5259)]
                    if ceil32(_5259) <= _5259:
                        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_5259) + 32]
                    mem[mem[64] + _5259 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_5259) + _5211 + -mem[64] + 68
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
                require ext_code.size(arg2)
                call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                _5230 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _5291 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 68 len ceil32(_5291)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_5291)]
                if ceil32(_5291) <= _5291:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_5291) + 32]
                mem[mem[64] + _5291 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_5291) + _5230 + -mem[64] + 68
            idx = 0
            while idx < arg3.length:
                if idx >= arg4.length:
                    revert with 0, 50
                if idx >= arg3.length:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 201
                if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 17
                totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < arg3.length:
                if idx >= arg3.length:
                    revert with 0, 50
                if idx >= arg4.length:
                    revert with 0, 50
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                mem[32] = sha3(mem[(32 * idx) + 128], 151)
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                mem[0] = arg2
                if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 17
                balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            var68001 = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            var73001 = arg4.length
            emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
            if not ext_code.size(arg2):
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
            if ceil32(arg5.length) <= arg5.length:
                require ext_code.size(arg2)
                call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                _5697 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _5725 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 68 len ceil32(_5725)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_5725)]
                if ceil32(_5725) <= _5725:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_5725) + 32]
                mem[mem[64] + _5725 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_5725) + _5697 + -mem[64] + 68
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
            require ext_code.size(arg2)
            call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _5710 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _5745 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 68 len ceil32(_5745)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_5745)]
            if ceil32(_5745) <= _5745:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_5745) + 32]
            mem[mem[64] + _5745 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_5745) + _5710 + -mem[64] + 68
        idx = 0
        while idx < arg3.length:
            if idx >= arg4.length:
                revert with 0, 50
            if idx >= arg3.length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 201
            if totalSupply[mem[(32 * idx) + 128]] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 17
            totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if arg2:
            idx = 0
            while idx < arg3.length:
                if idx >= arg3.length:
                    revert with 0, 50
                if idx >= arg4.length:
                    revert with 0, 50
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                mem[32] = sha3(mem[(32 * idx) + 128], 151)
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                mem[0] = arg2
                if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 17
                balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            var69001 = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            var74001 = arg4.length
            emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
            if not ext_code.size(arg2):
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
            if ceil32(arg5.length) <= arg5.length:
                require ext_code.size(arg2)
                call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                _5699 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _5728 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 68 len ceil32(_5728)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_5728)]
                if ceil32(_5728) <= _5728:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_5728) + 32]
                mem[mem[64] + _5728 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_5728) + _5699 + -mem[64] + 68
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
            require ext_code.size(arg2)
            call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _5712 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _5747 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 68 len ceil32(_5747)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_5747)]
            if ceil32(_5747) <= _5747:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_5747) + 32]
            mem[mem[64] + _5747 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_5747) + _5712 + -mem[64] + 68
        idx = 0
        while idx < arg3.length:
            if idx >= arg4.length:
                revert with 0, 50
            if idx >= arg3.length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 201
            if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 17
            totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg3.length:
            if idx >= arg3.length:
                revert with 0, 50
            if idx >= arg4.length:
                revert with 0, 50
            if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            mem[32] = sha3(mem[(32 * idx) + 128], 151)
            balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            mem[0] = arg2
            if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 17
            balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
        var72001 = arg3.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
        emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
        if not ext_code.size(arg2):
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
        if ceil32(arg5.length) <= arg5.length:
            require ext_code.size(arg2)
            call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _5929 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _5937 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 68 len ceil32(_5937)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_5937)]
            if ceil32(_5937) <= _5937:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_5937) + 32]
            mem[mem[64] + _5937 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_5937) + _5929 + -mem[64] + 68
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
        require ext_code.size(arg2)
        call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _5934 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _5943 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 68 len ceil32(_5943)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_5943)]
        if ceil32(_5943) <= _5943:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_5943) + 32]
        mem[mem[64] + _5943 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_5943) + _5934 + -mem[64] + 68
    mem[0] = msg.sender
    if not stor152[address(arg1)][address(msg.sender)]:
        revert with 0, 'ERC1155: transfer caller is not owner nor approved'
    if arg3.length != arg4.length:
        revert with 0, 'ERC1155: ids and amounts length mismatch'
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    if arg1:
        if arg2:
            idx = 0
            while idx < arg3.length:
                if idx >= arg3.length:
                    revert with 0, 50
                if idx >= arg4.length:
                    revert with 0, 50
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                mem[32] = sha3(mem[(32 * idx) + 128], 151)
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                mem[0] = arg2
                if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 17
                balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            var67001 = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            var72001 = arg4.length
            emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
            if not ext_code.size(arg2):
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
            if ceil32(arg5.length) <= arg5.length:
                require ext_code.size(arg2)
                call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                _5220 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _5275 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 68 len ceil32(_5275)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_5275)]
                if ceil32(_5275) <= _5275:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_5275) + 32]
                mem[mem[64] + _5275 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_5275) + _5220 + -mem[64] + 68
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
            require ext_code.size(arg2)
            call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _5245 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _5303 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 68 len ceil32(_5303)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_5303)]
            if ceil32(_5303) <= _5303:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_5303) + 32]
            mem[mem[64] + _5303 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_5303) + _5245 + -mem[64] + 68
        idx = 0
        while idx < arg3.length:
            if idx >= arg4.length:
                revert with 0, 50
            if idx >= arg3.length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 201
            if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 17
            totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg3.length:
            if idx >= arg3.length:
                revert with 0, 50
            if idx >= arg4.length:
                revert with 0, 50
            if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            mem[32] = sha3(mem[(32 * idx) + 128], 151)
            balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            mem[0] = arg2
            if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 17
            balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
        var75001 = arg4.length
        emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
        if not ext_code.size(arg2):
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
        if ceil32(arg5.length) <= arg5.length:
            require ext_code.size(arg2)
            call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _5703 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _5735 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 68 len ceil32(_5735)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_5735)]
            if ceil32(_5735) <= _5735:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_5735) + 32]
            mem[mem[64] + _5735 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_5735) + _5703 + -mem[64] + 68
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
        require ext_code.size(arg2)
        call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _5718 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _5753 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 68 len ceil32(_5753)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_5753)]
        if ceil32(_5753) <= _5753:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_5753) + 32]
        mem[mem[64] + _5753 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_5753) + _5718 + -mem[64] + 68
    idx = 0
    while idx < arg3.length:
        if idx >= arg4.length:
            revert with 0, 50
        if idx >= arg3.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 201
        if totalSupply[mem[(32 * idx) + 128]] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
            revert with 0, 17
        totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if arg2:
        idx = 0
        while idx < arg3.length:
            if idx >= arg3.length:
                revert with 0, 50
            if idx >= arg4.length:
                revert with 0, 50
            if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            mem[32] = sha3(mem[(32 * idx) + 128], 151)
            balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            mem[0] = arg2
            if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 17
            balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
        var71001 = arg3.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
        var76001 = arg4.length
        emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
        if not ext_code.size(arg2):
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
        if ceil32(arg5.length) <= arg5.length:
            require ext_code.size(arg2)
            call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _5705 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _5738 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 68 len ceil32(_5738)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_5738)]
            if ceil32(_5738) <= _5738:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_5738) + 32]
            mem[mem[64] + _5738 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_5738) + _5705 + -mem[64] + 68
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
        require ext_code.size(arg2)
        call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _5720 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _5755 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 68 len ceil32(_5755)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_5755)]
        if ceil32(_5755) <= _5755:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_5755) + 32]
        mem[mem[64] + _5755 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_5755) + _5720 + -mem[64] + 68
    idx = 0
    while idx < arg3.length:
        if idx >= arg4.length:
            revert with 0, 50
        if idx >= arg3.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 201
        if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
            revert with 0, 17
        totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg3.length:
        if idx >= arg3.length:
            revert with 0, 50
        if idx >= arg4.length:
            revert with 0, 50
        if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        mem[32] = sha3(mem[(32 * idx) + 128], 151)
        balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
        mem[0] = arg2
        if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
            revert with 0, 17
        balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
    var74001 = arg3.length
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
    emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
    if not ext_code.size(arg2):
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
    if ceil32(arg5.length) <= arg5.length:
        require ext_code.size(arg2)
        call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _5931 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _5940 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 68 len ceil32(_5940)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_5940)]
        if ceil32(_5940) <= _5940:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_5940) + 32]
        mem[mem[64] + _5940 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_5940) + _5931 + -mem[64] + 68
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
    require ext_code.size(arg2)
    call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    if return_data.size <= 3:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if return_data.size < 68:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
    if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
    _5936 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _5945 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
    mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
    mem[mem[64] + 68 len ceil32(_5945)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_5945)]
    if ceil32(_5945) <= _5945:
        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_5945) + 32]
    mem[mem[64] + _5945 + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(_5945) + _5936 + -mem[64] + 68
}



}
