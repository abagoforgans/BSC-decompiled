contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#  - tokenURI(uint256 arg1)
#  - sub_d0ae0e5f(?)
#
const sub_2b7f93c5(?) = 0xfe30cb477925d5b1a11f227b4896ae79e979fba044c1c800b58dfdb80d7a3c56

const sub_8c1242b8(?) = 8

const TRANSFER_ROLE = 0x8502233096d909befbda0999bb8ea2f3a6be3c138b9fbf003752a4c8bce86f6c

const MAX_SUPPLY = 6999

const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6

const PAUSER_ROLE = 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a


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
uint8 stor12;
uint256 stor12; offset 8
mapping of struct stor13;
mapping of uint8 stor14;
mapping of uint8 stor15;
mapping of uint256 stor16;
array of uint256 stor17;
mapping of uint256 stor18;
array of struct stor19;
mapping of uint256 stor20;
uint256 stor21;
mapping of uint256 sub_c06ec550;
uint256 stor23;
array of uint256 stor24;

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

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function paused() payable {
    return bool(uint8(stor12.field_0))
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

function sub_c06ec550(?) payable {
    require calldata.size - 4 >= 32
    return sub_c06ec550[arg1]
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor7[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function bytes32ToString(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return ''
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor7[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_bf547d06(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Must have transfer role to disable or enable transfer lock'
    Mask(248, 0, stor12.field_8) = Mask(248, 0, bool(arg1))
}

function pause() payable {
    if not roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DeadCats: must have pauser role to pause'
    if uint8(stor12.field_0):
        revert with 0, 'Pausable: paused'
    uint8(stor12.field_0) = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if not roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DeadCats: must have pauser role to unpause'
    if not uint8(stor12.field_0):
        revert with 0, 'Pausable: not paused'
    uint8(stor12.field_0) = 0
    emit Unpaused(msg.sender);
}

function sub_4eb0c861(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[128 len 256] = call.data[calldata.size len 256]
    idx = 0
    while idx < 8:
        mem[0] = idx
        mem[32] = sha3(address(arg1), 16)
        if idx >= 8:
            revert with 0, 50
        mem[(32 * idx) + 128] = stor16[address(arg1)][idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=8, data=mem[128 len 256])
}

function sub_116a35ab(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0, 'ERC721: balance query for the zero address'
    mem[320 len 256] = call.data[calldata.size len 256]
    idx = 0
    while idx < 8:
        mem[0] = idx
        mem[32] = sha3(address(arg1), 16)
        if idx >= 8:
            revert with 0, 50
        mem[(32 * idx) + 320] = stor16[address(arg1)][idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 32, arg1 << 192, balanceOf[address(arg1)], 96, 8, mem[320 len 256]
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

function sub_7894505e(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == uint8(arg2)
    if not roleAdmin[0xfe30cb477925d5b1a11f227b4896ae79e979fba044c1c800b58dfdb80d7a3c56][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must have update authority to set rarity'
    if stor15[arg1]:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        if stor16[stor4[arg1]][stor14[arg1]] < 1:
            revert with 0, 17
        stor16[stor4[arg1]][stor14[arg1]]--
    stor15[arg1] = 1
    stor14[arg1] = uint8(arg2)
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if stor16[stor4[arg1]][arg2 << 248] > -2:
        revert with 0, 17
    stor16[stor4[arg1]][arg2 << 248]++
}

function sub_6bfb2898(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only admin can perform this action'
    if stor23 >= 6999:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This process can only be done once'
    if stor23 > !arg1:
        revert with 0, 17
    idx = var33005
    s = var33006
    while idx < stor23 + arg1:
        if idx >= 6999:
            if stor23 > !s:
                revert with 0, 17
            stor23 += s
        mem[0] = idx
        mem[32] = 18
        if not stor18[idx]:
            stor17.length++
            stor17[stor17.length] = idx
            mem[0] = idx
            mem[32] = 18
            stor18[idx] = stor17.length
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        if stor23 > !arg1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if stor23 > !s:
        revert with 0, 17
    stor23 += s
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
    if not roleAdmin[0xfe30cb477925d5b1a11f227b4896ae79e979fba044c1c800b58dfdb80d7a3c56][address(msg.sender)].field_0:
        revert with 0, 'Must have update authority to set base URI'
    if bool(stor24.length):
        if bool(stor24.length) == uint255(stor24.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor24[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor24.length = 0
            idx = 0
            while (uint255(stor24.length) * 0.5) + 31 / 32 > idx:
                stor24[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor24.length) == stor24.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor24[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor24.length = 0
            idx = 0
            while stor24.length.field_1 + 31 / 32 > idx:
                stor24[idx].field_0 = 0
                idx = idx + 1
                continue 
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

function setTokenURI(uint256 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if not roleAdmin[0xfe30cb477925d5b1a11f227b4896ae79e979fba044c1c800b58dfdb80d7a3c56][address(msg.sender)].field_0:
        revert with 0, 'Must have update authority to set metadata URI'
    if stor13[stor22[arg1]].field_0:
        if stor13[stor22[arg1]].field_0 == uint255(stor13[stor22[arg1]].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor13[stor22[arg1]][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor13[stor22[arg1]].field_0 = 0
            idx = 0
            while (uint255(stor13[stor22[arg1]].field_0) * 0.5) + 31 / 32 > idx:
                stor13[stor22[arg1]][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor13[stor22[arg1]].field_0 == stor13[stor22[arg1]].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor13[stor22[arg1]][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor13[stor22[arg1]].field_0 = 0
            idx = 0
            while stor13[stor22[arg1]].field_1 + 31 / 32 > idx:
                stor13[stor22[arg1]][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_8e461490(?) payable {
    require calldata.size - 4 >= 64
    if arg2 >= stor19.length:
        revert with 0, 'Index is out of bounds'
    if arg2 <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'End index must be greater than start index'
    if arg2 < arg1:
        revert with 0, 17
    mem[96] = stor19.length
    if stor19.length:
        mem[0] = 19
        mem[128] = uint256(stor19.field_0)
        idx = 128
        s = 0
        while (32 * stor19.length) + 96 > idx:
            mem[idx + 32] = stor19[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if arg2 - arg1 > test266151307():
        revert with 0, 65
    mem[(32 * stor19.length) + 128] = arg2 - arg1
    mem[64] = (32 * stor19.length) + (32 * arg2 - arg1) + 160
    if arg2 - arg1:
        mem[(32 * stor19.length) + 160 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
    idx = arg1
    while idx < arg2:
        if idx >= stor19.length:
            revert with 0, 50
        if idx >= arg2 - arg1:
            revert with 0, 50
        mem[(32 * idx) + (32 * stor19.length) + 160] = mem[(32 * idx) + 140 len 20]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(32 * stor19.length) + (32 * arg2 - arg1) + 160] = 32
    mem[(32 * stor19.length) + (32 * arg2 - arg1) + 192] = arg2 - arg1
    s = 0
    s = mem[64] + 64
    t = (32 * stor19.length) + 160
    while arg2 < arg2 - arg1:
        mem[s] = mem[t + 12 len 20]
        s = arg2 + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len s - mem[64]
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
    if not roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DeadCats: must have minter role to mint'
    if 1 > !tokenByIndex.length:
        revert with 0, 17
    if tokenByIndex.length + 1 > 6999:
        revert with 0, 'Minting would exceed max supply'
    if uint8(stor12.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token mint while paused'
    if not stor17.length:
        revert with 0, 18
    if sha3(None) % stor17.length >= stor17.length:
        revert with 0, 50
    if stor18[stor17[sha3(None) % stor17.length]]:
        if stor18[stor17[sha3(None) % stor17.length]] < 1:
            revert with 0, 17
        if stor17.length < 1:
            revert with 0, 17
        if stor17.length - 1 != stor18[stor17[sha3(None) % stor17.length]] - 1:
            if stor17.length - 1 >= stor17.length:
                revert with 0, 50
            if stor18[stor17[sha3(None) % stor17.length]] - 1 >= stor17.length:
                revert with 0, 50
            stor17[stor18[stor17[sha3(None) % stor17.length]]] = stor17[stor17.length]
            stor18[stor17[stor17.length]] = stor18[stor17[sha3(None) % stor17.length]]
        if not stor17.length:
            revert with 0, 49
        stor17[stor17.length] = 0
        stor17.length--
        stor18[stor17[sha3(None) % stor17.length]] = 0
    sub_c06ec550[stor21] = stor17[sha3(None) % stor17.length]
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor21]:
        revert with 0, 'ERC721: token already minted'
    stor11[stor21] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor21
    if arg1:
        if arg1:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)]] = stor21
            stor9[stor21] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor11[stor21] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor11[stor21]] = tokenByIndex[tokenByIndex.length]
        stor11[stor10[stor10.length]] = stor11[stor21]
        stor11[stor21] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if uint8(stor12.field_0):
        revert with 0, 'ERC721Pausable: token transfer while paused'
    if not arg1:
        revert with 0, 'ERC721: balance query for the zero address'
    if not balanceOf[address(arg1)]:
        if not stor20[address(arg1)]:
            stor19.length++
            stor19[stor19.length].field_0 = arg1
            stor19[stor19.length].field_160 = 0
            stor20[address(arg1)] = stor19.length
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    ownerOf[stor21] = arg1
    emit Transfer(0, arg1, stor21);
    stor21++
    if stor21 < 1:
        revert with 0, 17
    emit Minted((stor21 - 1));
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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
    if uint8(stor12.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if 1 == balanceOf[stor4[arg1]]:
        if stor20[stor4[arg1]]:
            if stor20[stor4[arg1]] < 1:
                revert with 0, 17
            if stor19.length < 1:
                revert with 0, 17
            if stor19.length - 1 != stor20[stor4[arg1]] - 1:
                if stor19.length - 1 >= stor19.length:
                    revert with 0, 50
                if stor20[stor4[arg1]] - 1 >= stor19.length:
                    revert with 0, 50
                stor19[stor20[stor4[arg1]]].field_0 = stor19[stor19.length].field_0
                stor20[stor19[stor19.length].field_0] = stor20[stor4[arg1]]
            if not stor19.length:
                revert with 0, 49
            stor19[stor19.length].field_0 = 0
            stor19.length--
            stor20[stor4[arg1]] = 0
    if stor15[arg1]:
        if stor16[stor4[arg1]][stor14[arg1]] < 1:
            revert with 0, 17
        stor16[stor4[arg1]][stor14[arg1]]--
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

function sub_867e7c27(?) payable {
    mem[96] = stor19.length
    if not stor19.length:
        if stor19.length > test266151307():
            revert with 0, 65
        mem[(32 * stor19.length) + 128] = stor19.length
        mem[64] = (64 * stor19.length) + 160
        if not stor19.length:
            idx = 0
            while idx < stor19.length:
                if idx >= mem[96]:
                    revert with 0, 50
                _84 = mem[(32 * idx) + 128]
                _91 = mem[64]
                mem[64] = mem[64] + 96
                mem[_91] = 0
                mem[_91 + 32] = 0
                mem[_91 + 64] = 96
                _92 = mem[64]
                mem[64] = mem[64] + 96
                mem[_92] = address(_84)
                if not address(_84):
                    revert with 0, 'ERC721: balance query for the zero address'
                mem[0] = address(_84)
                mem[32] = 5
                mem[_92 + 32] = balanceOf[address(_84)]
                _108 = mem[64]
                mem[mem[64]] = 8
                mem[64] = mem[64] + 288
                mem[_108 + 32 len 256] = call.data[calldata.size len 256]
                s = 0
                while s < 8:
                    mem[0] = s
                    mem[32] = sha3(address(_84), 16)
                    if s >= mem[_108]:
                        revert with 0, 50
                    mem[(32 * s) + _108 + 32] = stor16[address(_84)][s]
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                mem[_92 + 64] = _108
                if idx >= mem[(32 * stor19.length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor19.length) + 160] = _92
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _83 = mem[64]
            mem[mem[64]] = 32
            _90 = mem[(32 * stor19.length) + 128]
            mem[mem[64] + 32] = mem[(32 * stor19.length) + 128]
            idx = 0
            s = (32 * stor19.length) + 160
            t = mem[64] + 64
            u = mem[64] + (32 * _90) + 64
            while idx < _90:
                mem[t] = u + -_83 - 64
                _153 = mem[s]
                mem[u] = mem[mem[s] + 12 len 20]
                mem[u + 32] = mem[_153 + 32]
                _165 = mem[_153 + 64]
                mem[u + 64] = 96
                _172 = mem[_165]
                mem[u + 96] = mem[_165]
                v = 0
                w = _165 + 32
                x = u + 128
                while v < _172:
                    mem[x] = mem[w]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = u + (32 * _172) + 128
                continue 
        else:
            mem[64] = (64 * stor19.length) + 256
            mem[(64 * stor19.length) + 160] = 0
            mem[(64 * stor19.length) + 192] = 0
            mem[(64 * stor19.length) + 224] = 96
            mem[(32 * stor19.length) + 160] = (64 * stor19.length) + 160
            s = (32 * stor19.length) + 160
            idx = stor19.length
            while idx - 1:
                mem[64] = mem[64] + 96
                mem[(64 * stor19.length) + 160] = 0
                mem[(64 * stor19.length) + 192] = 0
                mem[(64 * stor19.length) + 224] = 96
                mem[s + 32] = (64 * stor19.length) + 160
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < stor19.length:
                if idx >= mem[96]:
                    revert with 0, 50
                _167 = mem[(32 * idx) + 128]
                _175 = mem[64]
                mem[64] = mem[64] + 96
                mem[_175] = 0
                mem[_175 + 32] = 0
                mem[_175 + 64] = 96
                _176 = mem[64]
                mem[64] = mem[64] + 96
                mem[_176] = address(_167)
                if not address(_167):
                    revert with 0, 'ERC721: balance query for the zero address'
                mem[0] = address(_167)
                mem[32] = 5
                mem[_176 + 32] = balanceOf[address(_167)]
                _196 = mem[64]
                mem[mem[64]] = 8
                mem[64] = mem[64] + 288
                mem[_196 + 32 len 256] = call.data[calldata.size len 256]
                s = 0
                while s < 8:
                    mem[0] = s
                    mem[32] = sha3(address(_167), 16)
                    if s >= mem[_196]:
                        revert with 0, 50
                    mem[(32 * s) + _196 + 32] = stor16[address(_167)][s]
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                mem[_176 + 64] = _196
                if idx >= mem[(32 * stor19.length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor19.length) + 160] = _176
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _166 = mem[64]
            mem[mem[64]] = 32
            _174 = mem[(32 * stor19.length) + 128]
            mem[mem[64] + 32] = mem[(32 * stor19.length) + 128]
            idx = 0
            s = (32 * stor19.length) + 160
            t = mem[64] + 64
            u = mem[64] + (32 * _174) + 64
            while idx < _174:
                mem[t] = u + -_166 - 64
                _216 = mem[s]
                mem[u] = mem[mem[s] + 12 len 20]
                mem[u + 32] = mem[_216 + 32]
                _228 = mem[_216 + 64]
                mem[u + 64] = 96
                _235 = mem[_228]
                mem[u + 96] = mem[_228]
                v = 0
                w = _228 + 32
                x = u + 128
                while v < _235:
                    mem[x] = mem[w]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = u + (32 * _235) + 128
                continue 
    else:
        mem[0] = 19
        mem[128] = uint256(stor19.field_0)
        idx = 128
        s = 0
        while (32 * stor19.length) + 96 > idx:
            mem[idx + 32] = stor19[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor19.length > test266151307():
            revert with 0, 65
        mem[(32 * stor19.length) + 128] = stor19.length
        mem[64] = (64 * stor19.length) + 160
        if not stor19.length:
            idx = 0
            while idx < stor19.length:
                if idx >= mem[96]:
                    revert with 0, 50
                _230 = mem[(32 * idx) + 128]
                _238 = mem[64]
                mem[64] = mem[64] + 96
                mem[_238] = 0
                mem[_238 + 32] = 0
                mem[_238 + 64] = 96
                _239 = mem[64]
                mem[64] = mem[64] + 96
                mem[_239] = address(_230)
                if not address(_230):
                    revert with 0, 'ERC721: balance query for the zero address'
                mem[0] = address(_230)
                mem[32] = 5
                mem[_239 + 32] = balanceOf[address(_230)]
                _253 = mem[64]
                mem[mem[64]] = 8
                mem[64] = mem[64] + 288
                mem[_253 + 32 len 256] = call.data[calldata.size len 256]
                s = 0
                while s < 8:
                    mem[0] = s
                    mem[32] = sha3(address(_230), 16)
                    if s >= mem[_253]:
                        revert with 0, 50
                    mem[(32 * s) + _253 + 32] = stor16[address(_230)][s]
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                mem[_239 + 64] = _253
                if idx >= mem[(32 * stor19.length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor19.length) + 160] = _239
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _229 = mem[64]
            mem[mem[64]] = 32
            _237 = mem[(32 * stor19.length) + 128]
            mem[mem[64] + 32] = mem[(32 * stor19.length) + 128]
            idx = 0
            s = (32 * stor19.length) + 160
            t = mem[64] + 64
            u = mem[64] + (32 * _237) + 64
            while idx < _237:
                mem[t] = u + -_229 - 64
                _259 = mem[s]
                mem[u] = mem[mem[s] + 12 len 20]
                mem[u + 32] = mem[_259 + 32]
                _267 = mem[_259 + 64]
                mem[u + 64] = 96
                _270 = mem[_267]
                mem[u + 96] = mem[_267]
                v = 0
                w = _267 + 32
                x = u + 128
                while v < _270:
                    mem[x] = mem[w]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = u + (32 * _270) + 128
                continue 
        else:
            mem[64] = (64 * stor19.length) + 256
            mem[(64 * stor19.length) + 160] = 0
            mem[(64 * stor19.length) + 192] = 0
            mem[(64 * stor19.length) + 224] = 96
            mem[(32 * stor19.length) + 160] = (64 * stor19.length) + 160
            s = (32 * stor19.length) + 160
            idx = stor19.length
            while idx - 1:
                mem[64] = mem[64] + 96
                mem[(64 * stor19.length) + 160] = 0
                mem[(64 * stor19.length) + 192] = 0
                mem[(64 * stor19.length) + 224] = 96
                mem[s + 32] = (64 * stor19.length) + 160
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < stor19.length:
                if idx >= mem[96]:
                    revert with 0, 50
                _269 = mem[(32 * idx) + 128]
                _273 = mem[64]
                mem[64] = mem[64] + 96
                mem[_273] = 0
                mem[_273 + 32] = 0
                mem[_273 + 64] = 96
                _274 = mem[64]
                mem[64] = mem[64] + 96
                mem[_274] = address(_269)
                if not address(_269):
                    revert with 0, 'ERC721: balance query for the zero address'
                mem[0] = address(_269)
                mem[32] = 5
                mem[_274 + 32] = balanceOf[address(_269)]
                _285 = mem[64]
                mem[mem[64]] = 8
                mem[64] = mem[64] + 288
                mem[_285 + 32 len 256] = call.data[calldata.size len 256]
                s = 0
                while s < 8:
                    mem[0] = s
                    mem[32] = sha3(address(_269), 16)
                    if s >= mem[_285]:
                        revert with 0, 50
                    mem[(32 * s) + _285 + 32] = stor16[address(_269)][s]
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                mem[_274 + 64] = _285
                if idx >= mem[(32 * stor19.length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor19.length) + 160] = _274
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _268 = mem[64]
            mem[mem[64]] = 32
            _272 = mem[(32 * stor19.length) + 128]
            mem[mem[64] + 32] = mem[(32 * stor19.length) + 128]
            idx = 0
            s = (32 * stor19.length) + 160
            t = mem[64] + 64
            u = mem[64] + (32 * _272) + 64
            while idx < _272:
                mem[t] = u + -_268 - 64
                _291 = mem[s]
                mem[u] = mem[mem[s] + 12 len 20]
                mem[u + 32] = mem[_291 + 32]
                _298 = mem[_291 + 64]
                mem[u + 64] = 96
                _299 = mem[_298]
                mem[u + 96] = mem[_298]
                v = 0
                w = _298 + 32
                x = u + 128
                while v < _299:
                    mem[x] = mem[w]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = u + (32 * _299) + 128
                continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
