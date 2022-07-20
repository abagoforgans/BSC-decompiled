contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - sub_7573b643(?)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#  - tokenURI(uint256 arg1)
#
const sub_6cc8bb49(?) = 0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d

const sub_b047eb02(?) = 0x372d55e37651a7c6e1940a3fb8628e4b6122a3c1a8b2b70aee13e07228604567

const MAX_SUPPLY = 2500

const ROLE_UPDATER = 0x79045d768ae06769f774e3fcd5ccbe9767617628e47daa12800398064e3a16fd

const ROLE_BURNER = 0xb5b5a86cc252b1b75a439c6ff372933ceb0690188924e6461150adeb00ab80d8

const ROLE_TRANSFER = 0xdcf25ef27f39026192d2865d627bc17a2ebae8f9e2bdf9a1bc5457a03a878b48

const ROLE_MINTER = 0xaeaef46186eb59f884e36929b6d682a6ae35e1e43d8f05f058dcefb92b601461

const DEFAULT_ADMIN_ROLE = 0

const ROLE_ADMIN = 0x2172861495e7b85edac73e3cd5fbb42dd675baadf627720e687bcfdaca025096


mapping of struct roleAdmin;
array of struct roleMember;
array of struct stor2;
array of struct stor3;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor7;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor9;
array of uint256 tokenByIndex;
mapping of uint256 stor11;
uint8 paused;
address stor12;
address superAdminAddress; offset 8
uint256 minted;
mapping of struct stor14;
array of struct stor15;
mapping of uint256 stor16;
uint8 sub_fdac54b8;
uint8 sub_8c1b6e35; offset 8
uint256 stor17; offset 8
array of uint256 stor18;
array of uint256 stor19;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function superAdmin() payable {
    return superAdminAddress
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function minted() payable {
    return minted
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function paused() payable {
    return bool(paused)
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function sub_8c1b6e35(?) payable {
    return bool(sub_8c1b6e35)
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

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function getHoldersLength() payable {
    return stor15.length
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor7[address(arg1)][address(arg2)])
}

function sub_fdac54b8(?) payable {
    return bool(sub_fdac54b8)
}

function _fallback() payable {
    revert
}

function getHolderInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, 'ERC721: balance query for the zero address'
    return arg1 << 192, balanceOf[address(arg1)]
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor7[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_c90a0045(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if not roleAdmin[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d][address(msg.sender)].field_0:
        if not roleAdmin[0x2172861495e7b85edac73e3cd5fbb42dd675baadf627720e687bcfdaca025096][address(msg.sender)].field_0:
            revert with 0, 'User is not Admin'
    sub_fdac54b8 = uint8(bool(arg1))
}

function sub_2104c43b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if not roleAdmin[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d][address(msg.sender)].field_0:
        if not roleAdmin[0x2172861495e7b85edac73e3cd5fbb42dd675baadf627720e687bcfdaca025096][address(msg.sender)].field_0:
            revert with 0, 'User is not Admin'
    stor17 = Mask(248, 0, bool(arg1))
}

function pause() payable {
    if not roleAdmin[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d][address(msg.sender)].field_0:
        if not roleAdmin[0x2172861495e7b85edac73e3cd5fbb42dd675baadf627720e687bcfdaca025096][address(msg.sender)].field_0:
            if not roleAdmin[0x372d55e37651a7c6e1940a3fb8628e4b6122a3c1a8b2b70aee13e07228604567][address(msg.sender)].field_0:
                revert with 0, 'User is not Admin/Pauser'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if not roleAdmin[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d][address(msg.sender)].field_0:
        if not roleAdmin[0x2172861495e7b85edac73e3cd5fbb42dd675baadf627720e687bcfdaca025096][address(msg.sender)].field_0:
            if not roleAdmin[0x372d55e37651a7c6e1940a3fb8628e4b6122a3c1a8b2b70aee13e07228604567][address(msg.sender)].field_0:
                revert with 0, 'User is not Admin/Pauser'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5a05180f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor7[stor4[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
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

function sub_3fa4900d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if not roleAdmin[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d][address(msg.sender)].field_0:
        if not roleAdmin[0x2172861495e7b85edac73e3cd5fbb42dd675baadf627720e687bcfdaca025096][address(msg.sender)].field_0:
            if not roleAdmin[0x79045d768ae06769f774e3fcd5ccbe9767617628e47daa12800398064e3a16fd][address(msg.sender)].field_0:
                revert with 0, 'User is not Admin/Updater'
    if bool(stor19.length):
        if bool(stor19.length) == uint255(stor19.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor19[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor19.length = 0
            idx = 0
            while (uint255(stor19.length) * 0.5) + 31 / 32 > idx:
                stor19[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor19.length) == stor19.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor19[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor19.length = 0
            idx = 0
            while stor19.length.field_1 + 31 / 32 > idx:
                stor19[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function setBaseURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if not roleAdmin[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d][address(msg.sender)].field_0:
        if not roleAdmin[0x2172861495e7b85edac73e3cd5fbb42dd675baadf627720e687bcfdaca025096][address(msg.sender)].field_0:
            if not roleAdmin[0x79045d768ae06769f774e3fcd5ccbe9767617628e47daa12800398064e3a16fd][address(msg.sender)].field_0:
                revert with 0, 'User is not Admin/Updater'
    if bool(stor18.length):
        if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor18[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor18.length = 0
            idx = 0
            while (uint255(stor18.length) * 0.5) + 31 / 32 > idx:
                stor18[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor18.length) == stor18.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor18[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor18.length = 0
            idx = 0
            while stor18.length.field_1 + 31 / 32 > idx:
                stor18[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function setTokenURI(uint256 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if not roleAdmin[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d][address(msg.sender)].field_0:
        if not roleAdmin[0x2172861495e7b85edac73e3cd5fbb42dd675baadf627720e687bcfdaca025096][address(msg.sender)].field_0:
            if not roleAdmin[0x79045d768ae06769f774e3fcd5ccbe9767617628e47daa12800398064e3a16fd][address(msg.sender)].field_0:
                revert with 0, 'User is not Admin/Updater'
    if stor14[arg1].field_0:
        if stor14[arg1].field_0 == uint255(stor14[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor14[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor14[arg1].field_0 = 0
            idx = 0
            while (uint255(stor14[arg1].field_0) * 0.5) + 31 / 32 > idx:
                stor14[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor14[arg1].field_0 == stor14[arg1].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor14[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor14[arg1].field_0 = 0
            idx = 0
            while stor14[arg1].field_1 + 31 / 32 > idx:
                stor14[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
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

function sub_8e461490(?) payable {
    require calldata.size - 4 >= 64
    if arg2 >= stor15.length:
        revert with 0, 'Index is out of bounds'
    if arg2 <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'End index must be greater than start index'
    if arg2 < arg1:
        revert with 0, 17
    if arg2 - arg1 > test266151307():
        revert with 0, 65
    mem[96] = arg2 - arg1
    mem[64] = (32 * arg2 - arg1) + 128
    if not arg2 - arg1:
        idx = arg1
        while idx < arg2:
            if idx >= stor15.length:
                revert with 0, 50
            mem[0] = 15
            if idx < arg1:
                revert with 0, 17
            if idx - arg1 >= mem[96]:
                revert with 0, 50
            mem[(32 * idx - arg1) + 128] = stor15[idx].field_0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[(32 * arg2 - arg1) + 128] = 32
        mem[(32 * arg2 - arg1) + 160] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < mem[96]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (32 * arg2 - arg1) + (32 * mem[96]) + -mem[64] + 192
    mem[128 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
    idx = arg1
    while idx < arg2:
        if idx >= stor15.length:
            revert with 0, 50
        mem[0] = 15
        if idx < arg1:
            revert with 0, 17
        if idx - arg1 >= mem[96]:
            revert with 0, 50
        mem[(32 * idx - arg1) + 128] = stor15[idx].field_0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(32 * arg2 - arg1) + 128] = 32
    _21 = mem[96]
    mem[(32 * arg2 - arg1) + 160] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _21:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (32 * arg2 - arg1) + (32 * _21) + -mem[64] + 192
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

function mint(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d][address(msg.sender)].field_0:
        if not roleAdmin[0x2172861495e7b85edac73e3cd5fbb42dd675baadf627720e687bcfdaca025096][address(msg.sender)].field_0:
            if not roleAdmin[0xaeaef46186eb59f884e36929b6d682a6ae35e1e43d8f05f058dcefb92b601461][address(msg.sender)].field_0:
                revert with 0, 'User is not Admin/Minter'
    if 1 > !minted:
        revert with 0, 17
    if minted + 1 > 2500:
        revert with 0, 'Minting would exceed max supply'
    if minted == -1:
        revert with 0, 17
    minted++
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor13]:
        revert with 0, 'ERC721: token already minted'
    stor11[stor13] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = minted
    if arg1:
        if arg1:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)]] = minted
            stor9[stor13] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor11[stor13] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor11[stor13]] = tokenByIndex[tokenByIndex.length]
        stor11[stor10[stor10.length]] = stor11[stor13]
        stor11[stor13] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if paused:
        revert with 0, 'ERC721Pausable: token transfer while paused'
    if not arg1:
        revert with 0, 'ERC721: balance query for the zero address'
    if not balanceOf[address(arg1)]:
        if not stor16[address(arg1)]:
            stor15.length++
            stor15[stor15.length].field_0 = arg1
            stor15[stor15.length].field_160 = 0
            stor16[address(arg1)] = stor15.length
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    ownerOf[stor13] = arg1
    emit Transfer(0, arg1, minted);
    if ext_code.size(arg1):
        call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), 0, minted, 128, 0
        if not ext_call.success:
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    emit Minted(minted);
}

function sub_a6f7d245(?) payable {
    require calldata.size - 4 >= 64
    if arg2 >= stor15.length:
        revert with 0, 'Index is out of bounds'
    if arg2 <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'End index must be greater than start index'
    if arg2 < arg1:
        revert with 0, 17
    if arg2 - arg1 > test266151307():
        revert with 0, 65
    mem[96] = arg2 - arg1
    mem[64] = (32 * arg2 - arg1) + 128
    if not arg2 - arg1:
        idx = arg1
        while idx < arg2:
            if idx >= stor15.length:
                revert with 0, 50
            mem[0] = 15
            _43 = mem[64]
            mem[64] = mem[64] + 64
            mem[_43] = 0
            mem[_43 + 32] = 0
            _44 = mem[64]
            mem[64] = mem[64] + 64
            mem[_44] = stor15[idx].field_0
            if not stor15[idx].field_0:
                revert with 0, 'ERC721: balance query for the zero address'
            mem[0] = stor15[idx].field_0
            mem[32] = 5
            mem[_44 + 32] = balanceOf[stor15[idx].field_0]
            if idx < arg1:
                revert with 0, 17
            if idx - arg1 >= mem[96]:
                revert with 0, 50
            mem[(32 * idx - arg1) + 128] = _44
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _34 = mem[64]
        mem[mem[64]] = 32
        _35 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _35:
            _60 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_60 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _34 + (64 * _35) + -mem[64] + 64
    mem[64] = (32 * arg2 - arg1) + 192
    mem[(32 * arg2 - arg1) + 128] = 0
    mem[(32 * arg2 - arg1) + 160] = 0
    mem[128] = (32 * arg2 - arg1) + 128
    s = 128
    idx = arg2 - arg1
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * arg2 - arg1) + 128] = 0
        mem[(32 * arg2 - arg1) + 160] = 0
        mem[s + 32] = (32 * arg2 - arg1) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = arg1
    while idx < arg2:
        if idx >= stor15.length:
            revert with 0, 50
        mem[0] = 15
        _71 = mem[64]
        mem[64] = mem[64] + 64
        mem[_71] = 0
        mem[_71 + 32] = 0
        _72 = mem[64]
        mem[64] = mem[64] + 64
        mem[_72] = stor15[idx].field_0
        if not stor15[idx].field_0:
            revert with 0, 'ERC721: balance query for the zero address'
        mem[0] = stor15[idx].field_0
        mem[32] = 5
        mem[_72 + 32] = balanceOf[stor15[idx].field_0]
        if idx < arg1:
            revert with 0, 17
        if idx - arg1 >= mem[96]:
            revert with 0, 50
        mem[(32 * idx - arg1) + 128] = _72
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _64 = mem[64]
    mem[mem[64]] = 32
    _65 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _65:
        _77 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_77 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _64 + (64 * _65) + -mem[64] + 64
}

function name() payable {
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor2.length):
                if 31 < uint255(stor2.length) * 0.5:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor2.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 0, 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(uint255(stor2.length) * 0.5) + 192 len ceil32(uint255(stor2.length) * 0.5)] = mem[128 len ceil32(uint255(stor2.length) * 0.5)]
        if ceil32(uint255(stor2.length) * 0.5) > uint255(stor2.length) * 0.5:
            mem[(uint255(stor2.length) * 0.5) + ceil32(uint255(stor2.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)], mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor2.length) * 0.5)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 0, 34
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor2.length):
            if 31 < uint255(stor2.length) * 0.5:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while (uint255(stor2.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 0, 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[stor2.length.field_1 + ceil32(stor2.length.field_1) + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function symbol() payable {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[(uint255(stor3.length) * 0.5) + ceil32(uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[stor3.length.field_1 + ceil32(stor3.length.field_1) + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not sub_8c1b6e35:
        if not roleAdmin[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d][address(msg.sender)].field_0:
            if not roleAdmin[0x2172861495e7b85edac73e3cd5fbb42dd675baadf627720e687bcfdaca025096][address(msg.sender)].field_0:
                if not roleAdmin[0xb5b5a86cc252b1b75a439c6ff372933ceb0690188924e6461150adeb00ab80d8][address(msg.sender)].field_0:
                    revert with 0, 'User is not Admin/Burner'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg1] != msg.sender:
            if not stor7[stor4[arg1]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Burnable: caller is not owner nor approved'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1]:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if balanceOf[stor4[arg1]] < 1:
            revert with 0, 17
        if balanceOf[stor4[arg1]] - 1 != stor9[arg1]:
            tokenOfOwnerByIndex[stor4[arg1]][stor9[arg1]] = tokenOfOwnerByIndex[stor4[arg1]][stor5[stor4[arg1]] - 1]
            stor9[stor8[stor4[arg1]][stor5[stor4[arg1]] - 1]] = stor9[arg1]
        stor9[arg1] = 0
        tokenOfOwnerByIndex[stor4[arg1]][stor5[stor4[arg1]] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 0, 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 0, 50
    if stor11[arg1] >= tokenByIndex.length:
        revert with 0, 50
    tokenByIndex[stor11[arg1]] = tokenByIndex[tokenByIndex.length]
    stor11[stor10[stor10.length]] = stor11[arg1]
    stor11[arg1] = 0
    if not tokenByIndex.length:
        revert with 0, 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    if paused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if 1 == balanceOf[stor4[arg1]]:
        if stor16[stor4[arg1]]:
            if stor16[stor4[arg1]] < 1:
                revert with 0, 17
            if stor15.length < 1:
                revert with 0, 17
            if stor15.length - 1 != stor16[stor4[arg1]] - 1:
                if stor15.length - 1 >= stor15.length:
                    revert with 0, 50
                if stor16[stor4[arg1]] - 1 >= stor15.length:
                    revert with 0, 50
                stor15[stor16[stor4[arg1]]].field_0 = stor15[stor15.length].field_0
                stor16[stor15[stor15.length].field_0] = stor16[stor4[arg1]]
            if not stor15.length:
                revert with 0, 49
            stor15[stor15.length].field_0 = 0
            stor15.length--
            stor16[stor4[arg1]] = 0
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor4[arg1]] < 1:
        revert with 0, 17
    balanceOf[stor4[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
}

function transferSuperAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d][address(msg.sender)].field_0:
        revert with 0, 'User is not SuperAdmin'
    if superAdminAddress == arg1:
        revert with 0, 'User already is SuperAdmin'
    if not roleAdmin[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d][address(arg1)].field_0:
        roleAdmin[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d][address(arg1)].field_0 = 1
        emit RoleGranted(0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d, arg1, msg.sender);
    if not roleMember[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d][1][address(arg1)].field_0:
        roleMember[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d].field_0++
        roleMember[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d][roleMember[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d].field_0].field_0 = arg1
        roleMember[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d][roleMember[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d].field_0].field_160 = 0
        roleMember[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d][1][address(arg1)].field_0 = roleMember[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d].field_0
    if superAdminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d][stor12].field_0:
        roleAdmin[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d][stor12].field_0 = 0
        emit RoleRevoked(0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d, superAdminAddress, msg.sender);
    if roleMember[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d][1][stor12].field_0:
        if roleMember[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d][1][stor12].field_0 < 1:
            revert with 0, 17
        if roleMember[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d].field_0 < 1:
            revert with 0, 17
        if roleMember[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d].field_0 - 1 != roleMember[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d][1][stor12].field_0 - 1:
            if roleMember[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d].field_0 - 1 >= roleMember[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d].field_0:
                revert with 0, 50
            if roleMember[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d][1][stor12].field_0 - 1 >= roleMember[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d].field_0:
                revert with 0, 50
            roleMember[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d][roleMember[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d][1][stor12].field_0].field_0 = roleMember[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d][roleMember[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d].field_0].field_0
            roleMember[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d][1][roleMember[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d][roleMember[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d].field_0].field_0].field_0 = roleMember[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d][1][stor12].field_0
        if not roleMember[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d].field_0:
            revert with 0, 49
        roleMember[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d][roleMember[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d].field_0].field_0 = 0
        roleMember[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d].field_0--
        roleMember[0xfe0d6cceaa37e5e7618474d8eb3448c6d3f2360829c16d7bd3a0564a84b4ba3d][1][stor12].field_0 = 0
    superAdminAddress = arg1
    emit 0xf62530a0: msg.sender, arg1
}



}
