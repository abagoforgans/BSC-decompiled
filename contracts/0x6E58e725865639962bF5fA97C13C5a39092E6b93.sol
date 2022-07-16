contract main {




// =====================  Runtime code  =====================


#
#  - mint(address arg1, string arg2, address[] arg3, uint256[] arg4)
#
const sub_15807fc1(?) = 0x6f72d0b700000000000000000000000000000000000000000000000000000000

const UNIT = 10^18

const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6


mapping of struct roleAdmin;
array of struct stor1;
array of struct stor2;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor6;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor8;
array of uint256 tokenByIndex;
mapping of uint256 stor10;
uint256 currentTokenId;
mapping of struct stor12;
array of struct fees;
array of struct sub_f1d99efa;

function currentTokenId() payable {
    return currentTokenId
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint256(roleAdmin[arg1].field_256)
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function fees(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < uint256(fees[arg1].field_0)
    return uint256(fees[arg1][arg2].field_0)
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(uint8(roleAdmin[arg1][address(arg2)].field_0))
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor6[address(arg1)][address(arg2)])
}

function sub_f1d99efa(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < uint256(sub_f1d99efa[arg1].field_0)
    return address(sub_f1d99efa[arg1][arg2].field_0)
}

function _fallback() payable {
    revert
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor6[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function setFeeAddress(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg3
    if arg2 >= uint256(sub_f1d99efa[arg1].field_0):
        revert with 'NH{q', 50
    if address(sub_f1d99efa[arg1][arg2].field_0) != msg.sender:
        revert with 0, 'Invalid account'
    if arg2 >= uint256(sub_f1d99efa[arg1].field_0):
        revert with 'NH{q', 50
    address(sub_f1d99efa[arg1][arg2].field_0) = arg3
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x6f72d0b700000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x780e9d6300000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function getFees(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint256(fees[arg1].field_0):
        mem[128] = uint256(fees[arg1].field_0)
        idx = 128
        s = 0
        while (32 * uint256(fees[arg1].field_0)) + 96 > idx:
            mem[idx + 32] = uint256(fees[arg1][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=uint256(fees[arg1].field_0), data=mem[128 len 32 * uint256(fees[arg1].field_0)])
    mem[(32 * uint256(fees[arg1].field_0)) + 128] = 32
    mem[(32 * uint256(fees[arg1].field_0)) + 160] = uint256(fees[arg1].field_0)
    mem[(32 * uint256(fees[arg1].field_0)) + 192 len 32 * uint256(fees[arg1].field_0)] = mem[128 len 32 * uint256(fees[arg1].field_0)]
    return memory
      from (32 * uint256(fees[arg1].field_0)) + 128
       len (96 * uint256(fees[arg1].field_0)) + 64
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor6[stor3[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function getFeeAddresses(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[64] = (32 * uint256(sub_f1d99efa[arg1].field_0)) + 128
    mem[96] = uint256(sub_f1d99efa[arg1].field_0)
    if not uint256(sub_f1d99efa[arg1].field_0):
        mem[(32 * uint256(sub_f1d99efa[arg1].field_0)) + 128] = 32
        mem[(32 * uint256(sub_f1d99efa[arg1].field_0)) + 160] = uint256(sub_f1d99efa[arg1].field_0)
        idx = 0
        s = 128
        t = (32 * uint256(sub_f1d99efa[arg1].field_0)) + 192
        while idx < uint256(sub_f1d99efa[arg1].field_0):
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * uint256(sub_f1d99efa[arg1].field_0)) + 128
           len (96 * uint256(sub_f1d99efa[arg1].field_0)) + 64
    mem[128] = address(sub_f1d99efa[arg1].field_0)
    idx = 128
    s = 0
    while (32 * uint256(sub_f1d99efa[arg1].field_0)) + 96 > idx:
        mem[idx + 32] = address(sub_f1d99efa[arg1][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * uint256(sub_f1d99efa[arg1].field_0)) + 128] = 32
    mem[(32 * uint256(sub_f1d99efa[arg1].field_0)) + 160] = uint256(sub_f1d99efa[arg1].field_0)
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < uint256(sub_f1d99efa[arg1].field_0):
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * uint256(sub_f1d99efa[arg1].field_0)) + -mem[64] + 192
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(roleAdmin[uint256(roleAdmin[arg1].field_256)][address(msg.sender)].field_0):
        if uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = uint256(roleAdmin[arg1].field_256)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if uint256(roleAdmin[arg1].field_256) + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(roleAdmin[uint256(roleAdmin[arg1].field_256)][address(msg.sender)].field_0):
        if not uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 1
            emit RoleGranted(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = uint256(roleAdmin[arg1].field_256)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if uint256(roleAdmin[arg1].field_256) + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg1] != msg.sender:
            if not stor6[stor3[arg1]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Burnable: caller is not owner nor approved'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if balanceOf[stor3[arg1]] < 1:
        revert with 'NH{q', 17
    if stor8[arg1] != balanceOf[stor3[arg1]] - 1:
        tokenOfOwnerByIndex[stor3[arg1]][stor8[arg1]] = tokenOfOwnerByIndex[stor3[arg1]][stor4[stor3[arg1]] - 1]
        stor8[stor7[stor3[arg1]][stor4[stor3[arg1]] - 1]] = stor8[arg1]
    stor8[arg1] = 0
    tokenOfOwnerByIndex[stor3[arg1]][stor4[stor3[arg1]] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 'NH{q', 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if stor10[arg1] >= tokenByIndex.length:
        revert with 'NH{q', 50
    tokenByIndex[stor10[arg1]] = tokenByIndex[tokenByIndex.length]
    stor10[stor9[stor9.length]] = stor10[arg1]
    stor10[arg1] = 0
    if not tokenByIndex.length:
        revert with 'NH{q', 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor3[arg1]] < 1:
        revert with 'NH{q', 17
    balanceOf[stor3[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor6[stor3[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor10[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor8[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1]
                stor8[stor7[address(arg1)][stor4[address(arg1)] - 1]] = stor8[arg3]
            stor8[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor4[address(arg2)]] = arg3
            stor8[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor10[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[arg3]
        stor10[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor6[stor3[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor10[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor8[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1]
                stor8[stor7[address(arg1)][stor4[address(arg1)] - 1]] = stor8[arg3]
            stor8[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor4[address(arg2)]] = arg3
            stor8[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor10[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[arg3]
        stor10[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.0x150b7a02 with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
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
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor6[stor3[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor10[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor8[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1]
                stor8[stor7[address(arg1)][stor4[address(arg1)] - 1]] = stor8[arg3]
            stor8[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor4[address(arg2)]] = arg3
            stor8[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor10[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[arg3]
        stor10[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.0x150b7a02 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            if not return_data.size:
                if not arg4.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg4[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function name() payable {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor1.length.field_1):
                if 31 < uint255(stor1.length.field_1):
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor1.length.field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor1[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor1.length.field_1)), data=mem[128 len ceil32(uint255(stor1.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        else:
            if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1 % 128:
                if 31 < stor1.length.field_1 % 128:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor1[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor1.length.field_1)), data=mem[128 len ceil32(uint255(stor1.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        mem[ceil32(uint255(stor1.length.field_1)) + 192 len ceil32(uint255(stor1.length.field_1))] = mem[128 len ceil32(uint255(stor1.length.field_1))]
        if ceil32(uint255(stor1.length.field_1)) > uint255(stor1.length.field_1):
            mem[ceil32(uint255(stor1.length.field_1)) + uint255(stor1.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor1.length.field_1)), data=mem[128 len ceil32(uint255(stor1.length.field_1))], mem[(2 * ceil32(uint255(stor1.length.field_1))) + 192 len 2 * ceil32(uint255(stor1.length.field_1))]), 
    if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor1.length.field_1):
            if 31 < uint255(stor1.length.field_1):
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while uint255(stor1.length.field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor1[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    else:
        if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1 % 128:
            if 31 < stor1.length.field_1 % 128:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor1[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    mem[ceil32(stor1.length.field_1 % 128) + 192 len ceil32(stor1.length.field_1 % 128)] = mem[128 len ceil32(stor1.length.field_1 % 128)]
    if ceil32(stor1.length.field_1 % 128) > stor1.length.field_1 % 128:
        mem[ceil32(stor1.length.field_1 % 128) + stor1.length.field_1 % 128 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)], mem[(2 * ceil32(stor1.length.field_1 % 128)) + 192 len 2 * ceil32(stor1.length.field_1 % 128)]), 
}

function symbol() payable {
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor2.length.field_1):
                if 31 < uint255(stor2.length.field_1):
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor2.length.field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor2[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor2.length.field_1)), data=mem[128 len ceil32(uint255(stor2.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
        else:
            if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1 % 128:
                if 31 < stor2.length.field_1 % 128:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor2[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor2.length.field_1)), data=mem[128 len ceil32(uint255(stor2.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
        mem[ceil32(uint255(stor2.length.field_1)) + 192 len ceil32(uint255(stor2.length.field_1))] = mem[128 len ceil32(uint255(stor2.length.field_1))]
        if ceil32(uint255(stor2.length.field_1)) > uint255(stor2.length.field_1):
            mem[ceil32(uint255(stor2.length.field_1)) + uint255(stor2.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor2.length.field_1)), data=mem[128 len ceil32(uint255(stor2.length.field_1))], mem[(2 * ceil32(uint255(stor2.length.field_1))) + 192 len 2 * ceil32(uint255(stor2.length.field_1))]), 
    if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor2.length.field_1):
            if 31 < uint255(stor2.length.field_1):
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while uint255(stor2.length.field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor2[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
    else:
        if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1 % 128:
            if 31 < stor2.length.field_1 % 128:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor2[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
    mem[ceil32(stor2.length.field_1 % 128) + 192 len ceil32(stor2.length.field_1 % 128)] = mem[128 len ceil32(stor2.length.field_1 % 128)]
    if ceil32(stor2.length.field_1 % 128) > stor2.length.field_1 % 128:
        mem[ceil32(stor2.length.field_1 % 128) + stor2.length.field_1 % 128 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1 % 128)], mem[(2 * ceil32(stor2.length.field_1 % 128)) + 192 len 2 * ceil32(stor2.length.field_1 % 128)]), 
}

function getFeeInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = uint256(sub_f1d99efa[arg1].field_0)
    if not uint256(sub_f1d99efa[arg1].field_0):
        mem[64] = (32 * uint256(sub_f1d99efa[arg1].field_0)) + (32 * uint256(fees[arg1].field_0)) + 160
        mem[(32 * uint256(sub_f1d99efa[arg1].field_0)) + 128] = uint256(fees[arg1].field_0)
        if not uint256(fees[arg1].field_0):
            mem[(32 * uint256(sub_f1d99efa[arg1].field_0)) + (32 * uint256(fees[arg1].field_0)) + 160] = 64
            mem[(32 * uint256(sub_f1d99efa[arg1].field_0)) + (32 * uint256(fees[arg1].field_0)) + 224] = uint256(sub_f1d99efa[arg1].field_0)
            idx = 0
            s = 128
            t = (32 * uint256(sub_f1d99efa[arg1].field_0)) + (32 * uint256(fees[arg1].field_0)) + 256
            while idx < uint256(sub_f1d99efa[arg1].field_0):
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * uint256(sub_f1d99efa[arg1].field_0)) + (32 * uint256(fees[arg1].field_0)) + 192] = (96 * uint256(sub_f1d99efa[arg1].field_0)) + 96
            mem[(64 * uint256(sub_f1d99efa[arg1].field_0)) + (32 * uint256(fees[arg1].field_0)) + 256] = uint256(fees[arg1].field_0)
            mem[(64 * uint256(sub_f1d99efa[arg1].field_0)) + (32 * uint256(fees[arg1].field_0)) + 288 len 32 * uint256(fees[arg1].field_0)] = mem[(32 * uint256(sub_f1d99efa[arg1].field_0)) + 160 len 32 * uint256(fees[arg1].field_0)]
            return memory
              from (32 * uint256(sub_f1d99efa[arg1].field_0)) + (32 * uint256(fees[arg1].field_0)) + 160
               len (96 * uint256(sub_f1d99efa[arg1].field_0)) + (32 * uint256(fees[arg1].field_0)) + 128
        mem[(32 * uint256(sub_f1d99efa[arg1].field_0)) + 160] = uint256(fees[arg1].field_0)
        idx = (32 * uint256(sub_f1d99efa[arg1].field_0)) + 160
        s = 0
        while (32 * uint256(sub_f1d99efa[arg1].field_0)) + (32 * uint256(fees[arg1].field_0)) + 128 > idx:
            mem[idx + 32] = uint256(fees[arg1][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    else:
        mem[128] = address(sub_f1d99efa[arg1].field_0)
        idx = 128
        s = 0
        while (32 * uint256(sub_f1d99efa[arg1].field_0)) + 96 > idx:
            mem[idx + 32] = address(sub_f1d99efa[arg1][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[64] = (32 * uint256(sub_f1d99efa[arg1].field_0)) + (32 * uint256(fees[arg1].field_0)) + 160
        mem[(32 * uint256(sub_f1d99efa[arg1].field_0)) + 128] = uint256(fees[arg1].field_0)
        if uint256(fees[arg1].field_0):
            mem[(32 * uint256(sub_f1d99efa[arg1].field_0)) + 160] = uint256(fees[arg1].field_0)
            idx = (32 * uint256(sub_f1d99efa[arg1].field_0)) + 160
            s = 0
            while (32 * uint256(sub_f1d99efa[arg1].field_0)) + (32 * uint256(fees[arg1].field_0)) + 128 > idx:
                mem[idx + 32] = uint256(fees[arg1][s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * uint256(sub_f1d99efa[arg1].field_0)) + (32 * uint256(fees[arg1].field_0)) + 160] = 64
    mem[(32 * uint256(sub_f1d99efa[arg1].field_0)) + (32 * uint256(fees[arg1].field_0)) + 224] = uint256(sub_f1d99efa[arg1].field_0)
    idx = 0
    s = 128
    t = mem[64] + 96
    while idx < uint256(sub_f1d99efa[arg1].field_0):
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * uint256(sub_f1d99efa[arg1].field_0)) + (32 * uint256(fees[arg1].field_0)) + 192] = (32 * uint256(sub_f1d99efa[arg1].field_0)) + 96
    mem[(64 * uint256(sub_f1d99efa[arg1].field_0)) + (32 * uint256(fees[arg1].field_0)) + 256] = mem[(32 * uint256(sub_f1d99efa[arg1].field_0)) + 128]
    mem[(64 * uint256(sub_f1d99efa[arg1].field_0)) + (32 * uint256(fees[arg1].field_0)) + 288 len 32 * mem[(32 * uint256(sub_f1d99efa[arg1].field_0)) + 128]] = mem[(32 * uint256(sub_f1d99efa[arg1].field_0)) + 160 len 32 * mem[(32 * uint256(sub_f1d99efa[arg1].field_0)) + 128]]
    return memory
      from mem[64]
       len (64 * uint256(sub_f1d99efa[arg1].field_0)) + (32 * uint256(fees[arg1].field_0)) + (32 * mem[(32 * uint256(sub_f1d99efa[arg1].field_0)) + 128]) + -mem[64] + 288
}

function uri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor12[arg1].field_0):
        if bool(stor12[arg1].field_0) == uint255(stor12[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor12[arg1].field_0):
            if bool(stor12[arg1].field_0) == uint255(stor12[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor12[arg1].field_1):
                if 31 < uint255(stor12[arg1].field_1):
                    mem[128] = uint256(stor12[arg1].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor12[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor12[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor12[arg1].field_1)), data=mem[128 len ceil32(uint255(stor12[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor12[arg1].field_8)
        else:
            if bool(stor12[arg1].field_0) == stor12[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor12[arg1].field_1 % 128:
                if 31 < stor12[arg1].field_1 % 128:
                    mem[128] = uint256(stor12[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor12[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor12[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor12[arg1].field_1)), data=mem[128 len ceil32(uint255(stor12[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor12[arg1].field_8)
        mem[ceil32(uint255(stor12[arg1].field_1)) + 192 len ceil32(uint255(stor12[arg1].field_1))] = mem[128 len ceil32(uint255(stor12[arg1].field_1))]
        if ceil32(uint255(stor12[arg1].field_1)) > uint255(stor12[arg1].field_1):
            mem[ceil32(uint255(stor12[arg1].field_1)) + uint255(stor12[arg1].field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor12[arg1].field_1)), data=mem[128 len ceil32(uint255(stor12[arg1].field_1))], mem[(2 * ceil32(uint255(stor12[arg1].field_1))) + 192 len 2 * ceil32(uint255(stor12[arg1].field_1))]), 
    if bool(stor12[arg1].field_0) == stor12[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor12[arg1].field_0):
        if bool(stor12[arg1].field_0) == uint255(stor12[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor12[arg1].field_1):
            if 31 < uint255(stor12[arg1].field_1):
                mem[128] = uint256(stor12[arg1].field_0)
                idx = 128
                s = 0
                while uint255(stor12[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor12[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12[arg1].field_0 % 128, data=mem[128 len ceil32(stor12[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor12[arg1].field_8)
    else:
        if bool(stor12[arg1].field_0) == stor12[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor12[arg1].field_1 % 128:
            if 31 < stor12[arg1].field_1 % 128:
                mem[128] = uint256(stor12[arg1].field_0)
                idx = 128
                s = 0
                while stor12[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor12[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12[arg1].field_0 % 128, data=mem[128 len ceil32(stor12[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor12[arg1].field_8)
    mem[ceil32(stor12[arg1].field_1 % 128) + 192 len ceil32(stor12[arg1].field_1 % 128)] = mem[128 len ceil32(stor12[arg1].field_1 % 128)]
    if ceil32(stor12[arg1].field_1 % 128) > stor12[arg1].field_1 % 128:
        mem[ceil32(stor12[arg1].field_1 % 128) + stor12[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor12[arg1].field_0 % 128, data=mem[128 len ceil32(stor12[arg1].field_1 % 128)], mem[(2 * ceil32(stor12[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor12[arg1].field_1 % 128)]), 
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor12[arg1].field_0):
        if bool(stor12[arg1].field_0) == uint255(stor12[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor12[arg1].field_0):
            if bool(stor12[arg1].field_0) == uint255(stor12[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor12[arg1].field_1):
                if 31 < uint255(stor12[arg1].field_1):
                    mem[128] = uint256(stor12[arg1].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor12[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor12[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor12[arg1].field_1)), data=mem[128 len ceil32(uint255(stor12[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor12[arg1].field_8)
        else:
            if bool(stor12[arg1].field_0) == stor12[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor12[arg1].field_1 % 128:
                if 31 < stor12[arg1].field_1 % 128:
                    mem[128] = uint256(stor12[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor12[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor12[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor12[arg1].field_1)), data=mem[128 len ceil32(uint255(stor12[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor12[arg1].field_8)
        mem[ceil32(uint255(stor12[arg1].field_1)) + 192 len ceil32(uint255(stor12[arg1].field_1))] = mem[128 len ceil32(uint255(stor12[arg1].field_1))]
        if ceil32(uint255(stor12[arg1].field_1)) > uint255(stor12[arg1].field_1):
            mem[ceil32(uint255(stor12[arg1].field_1)) + uint255(stor12[arg1].field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor12[arg1].field_1)), data=mem[128 len ceil32(uint255(stor12[arg1].field_1))], mem[(2 * ceil32(uint255(stor12[arg1].field_1))) + 192 len 2 * ceil32(uint255(stor12[arg1].field_1))]), 
    if bool(stor12[arg1].field_0) == stor12[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor12[arg1].field_0):
        if bool(stor12[arg1].field_0) == uint255(stor12[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor12[arg1].field_1):
            if 31 < uint255(stor12[arg1].field_1):
                mem[128] = uint256(stor12[arg1].field_0)
                idx = 128
                s = 0
                while uint255(stor12[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor12[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12[arg1].field_0 % 128, data=mem[128 len ceil32(stor12[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor12[arg1].field_8)
    else:
        if bool(stor12[arg1].field_0) == stor12[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor12[arg1].field_1 % 128:
            if 31 < stor12[arg1].field_1 % 128:
                mem[128] = uint256(stor12[arg1].field_0)
                idx = 128
                s = 0
                while stor12[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor12[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12[arg1].field_0 % 128, data=mem[128 len ceil32(stor12[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor12[arg1].field_8)
    mem[ceil32(stor12[arg1].field_1 % 128) + 192 len ceil32(stor12[arg1].field_1 % 128)] = mem[128 len ceil32(stor12[arg1].field_1 % 128)]
    if ceil32(stor12[arg1].field_1 % 128) > stor12[arg1].field_1 % 128:
        mem[ceil32(stor12[arg1].field_1 % 128) + stor12[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor12[arg1].field_0 % 128, data=mem[128 len ceil32(stor12[arg1].field_1 % 128)], mem[(2 * ceil32(stor12[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor12[arg1].field_1 % 128)]), 
}

function sub_766bd8d4(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] <= test266151307()
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _780 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1
        mem[_780] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_780 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_780 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _780
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    _779 = mem[64]
    if mem[64] + floor32(('cd', 68).length) + 1 > test266151307() or mem[64] + floor32(('cd', 68).length) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(('cd', 68).length) + 1
    mem[_779] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = _779 + 32
    while idx < ('cd', 68).length:
        require cd[s] <= test266151307()
        require cd[68] + cd[s] + 67 < calldata.size
        if cd[(cd[68] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _1538 = mem[64]
        if mem[64] + floor32(cd[(cd[68] + cd[s] + 36)]) + 1 > test266151307() or mem[64] + floor32(cd[(cd[68] + cd[s] + 36)]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(cd[(cd[68] + cd[s] + 36)]) + 1
        mem[_1538] = cd[(cd[68] + cd[s] + 36)]
        require cd[68] + cd[s] + (32 * cd[(cd[68] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[68] + cd[s] + 68
        w = _1538 + 32
        while u < cd[(cd[68] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _1538
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    _1539 = mem[64]
    if mem[64] + floor32(('cd', 100).length) + 1 > test266151307() or mem[64] + floor32(('cd', 100).length) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(('cd', 100).length) + 1
    mem[_1539] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = _1539 + 32
    while idx < ('cd', 100).length:
        require cd[s] <= test266151307()
        require cd[100] + cd[s] + 67 < calldata.size
        if cd[(cd[100] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _2300 = mem[64]
        if mem[64] + floor32(cd[(cd[100] + cd[s] + 36)]) + 1 > test266151307() or mem[64] + floor32(cd[(cd[100] + cd[s] + 36)]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(cd[(cd[100] + cd[s] + 36)]) + 1
        mem[_2300] = cd[(cd[100] + cd[s] + 36)]
        require cd[100] + cd[s] + (32 * cd[(cd[100] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[100] + cd[s] + 68
        w = _2300 + 32
        while u < cd[(cd[100] + cd[s] + 36)]:
            require cd[v] == cd[v]
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _2300
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = sha3(0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6, 0)
    if not uint8(roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0):
        revert with 0, 'Only minter'
    if mem[96] != mem[floor32(('cd', 4).length) + 97]:
        revert with 0, 'Invalid params'
    if mem[96] != mem[_779]:
        revert with 0, 'Invalid params'
    if mem[96] != mem[_1539]:
        revert with 0, 'Invalid params'
    _3050 = mem[96]
    idx = 0
    while idx < _3050:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _3052 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        _3054 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        if idx >= mem[_779]:
            revert with 'NH{q', 50
        _3056 = mem[(32 * idx) + _779 + 32]
        if idx >= mem[_1539]:
            revert with 'NH{q', 50
        _3058 = mem[(32 * idx) + _1539 + 32]
        if mem[mem[(32 * idx) + _779 + 32]] != mem[mem[(32 * idx) + _1539 + 32]]:
            revert with 0, 'Invalid fee lengths'
        if mem[mem[(32 * idx) + _779 + 32]] > 10:
            revert with 0, 'Too many fees'
        if mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129]] <= 0:
            revert with 0, 'Invalid URI'
        s = 0
        t = 0
        while s < mem[mem[(32 * idx) + _1539 + 32]]:
            if s >= mem[mem[(32 * idx) + _779 + 32]]:
                revert with 'NH{q', 50
            if not mem[(32 * s) + mem[(32 * idx) + _779 + 32] + 44 len 20]:
                revert with 0, 'Invalid fee address'
            if s >= mem[mem[(32 * idx) + _1539 + 32]]:
                revert with 'NH{q', 50
            if t > -mem[(32 * s) + mem[(32 * idx) + _1539 + 32] + 32] - 1:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            _3050 = mem[96]
            s = s + 1
            t = t + mem[(32 * s) + mem[(32 * idx) + _1539 + 32] + 32]
            continue 
        if t > 10^18:
            revert with 0, 'Invalid fee'
        _3792 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3792] = 0
        if not address(_3052):
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor11]:
            revert with 0, 'ERC721: token already minted'
        stor10[stor11] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = currentTokenId
        if address(_3052):
            tokenOfOwnerByIndex[address(_3052)][stor4[address(_3052)]] = currentTokenId
            stor8[stor11] = balanceOf[address(_3052)]
            if balanceOf[address(_3052)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(_3052)]++
            mem[0] = currentTokenId
            mem[32] = 3
            ownerOf[stor11] = address(_3052)
            emit Transfer(0, address(_3052), currentTokenId);
            if ext_code.size(address(_3052)) <= 0:
                mem[0] = currentTokenId
                mem[32] = 12
                _3825 = mem[_3054]
                if bool(stor12[stor11].field_0):
                    if bool(stor12[stor11].field_0) == uint255(stor12[stor11].field_1) < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(currentTokenId, 12)
                    if not _3825:
                        uint256(stor12[stor11].field_0) = 0
                        s = sha3(sha3(currentTokenId, 12))
                        while sha3(sha3(currentTokenId, 12)) + (uint255(stor12[stor11].field_1) + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            _3050 = mem[96]
                            s = s + 1
                            continue 
                        mem[0] = currentTokenId
                        mem[32] = 14
                        uint256(sub_f1d99efa[stor11].field_0) = mem[_3056]
                        if not mem[_3056]:
                            s = sha3(sha3(currentTokenId, 14))
                            while sha3(sha3(currentTokenId, 14)) + uint256(sub_f1d99efa[stor11].field_0) > s:
                                uint256(stor[s]) = 0
                                _3050 = mem[96]
                                s = s + 1
                                continue 
                            mem[0] = currentTokenId
                            mem[32] = 13
                            _5206 = mem[_3058]
                            uint256(fees[stor11].field_0) = mem[_3058]
                            mem[0] = sha3(currentTokenId, 13)
                            if not _5206:
                                s = sha3(sha3(currentTokenId, 13))
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                t = sha3(sha3(currentTokenId, 13))
                                s = _3058 + 32
                                while _3058 + (32 * _5206) + 32 > s:
                                    uint256(stor[t]) = mem[s]
                                    _3050 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(currentTokenId, 13)) + (Mask(251, 0, (32 * _5206) + 31) >> 5)
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                        else:
                            t = sha3(sha3(currentTokenId, 14))
                            s = _3056 + 32
                            while _3056 + (32 * mem[_3056]) + 32 > s:
                                address(stor[t]) = mem[s + 12 len 20]
                                _3050 = mem[96]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(currentTokenId, 14)) + (Mask(251, 0, (32 * mem[_3056]) + 31) >> 5)
                            while sha3(sha3(currentTokenId, 14)) + uint256(sub_f1d99efa[stor11].field_0) > s:
                                uint256(stor[s]) = 0
                                _3050 = mem[96]
                                s = s + 1
                                continue 
                            mem[0] = currentTokenId
                            mem[32] = 13
                            _5774 = mem[_3058]
                            uint256(fees[stor11].field_0) = mem[_3058]
                            mem[0] = sha3(currentTokenId, 13)
                            if not _5774:
                                s = sha3(sha3(currentTokenId, 13))
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                t = sha3(sha3(currentTokenId, 13))
                                s = _3058 + 32
                                while _3058 + (32 * _5774) + 32 > s:
                                    uint256(stor[t]) = mem[s]
                                    _3050 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(currentTokenId, 13)) + (Mask(251, 0, (32 * _5774) + 31) >> 5)
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                    else:
                        uint256(stor12[stor11].field_0) = (2 * _3825) + 1
                        t = sha3(sha3(currentTokenId, 12))
                        s = _3054 + 32
                        while _3054 + _3825 + 32 > s:
                            uint256(stor[t]) = mem[s]
                            _3050 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(currentTokenId, 12)) + (Mask(251, 0, _3825 + 31) >> 5)
                        while sha3(sha3(currentTokenId, 12)) + (uint255(stor12[stor11].field_1) + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            _3050 = mem[96]
                            s = s + 1
                            continue 
                        mem[0] = currentTokenId
                        mem[32] = 14
                        uint256(sub_f1d99efa[stor11].field_0) = mem[_3056]
                        if not mem[_3056]:
                            s = sha3(sha3(currentTokenId, 14))
                            while sha3(sha3(currentTokenId, 14)) + uint256(sub_f1d99efa[stor11].field_0) > s:
                                uint256(stor[s]) = 0
                                _3050 = mem[96]
                                s = s + 1
                                continue 
                            mem[0] = currentTokenId
                            mem[32] = 13
                            _5770 = mem[_3058]
                            uint256(fees[stor11].field_0) = mem[_3058]
                            mem[0] = sha3(currentTokenId, 13)
                            if not _5770:
                                s = sha3(sha3(currentTokenId, 13))
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                t = sha3(sha3(currentTokenId, 13))
                                s = _3058 + 32
                                while _3058 + (32 * _5770) + 32 > s:
                                    uint256(stor[t]) = mem[s]
                                    _3050 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(currentTokenId, 13)) + (Mask(251, 0, (32 * _5770) + 31) >> 5)
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                        else:
                            t = sha3(sha3(currentTokenId, 14))
                            s = _3056 + 32
                            while _3056 + (32 * mem[_3056]) + 32 > s:
                                address(stor[t]) = mem[s + 12 len 20]
                                _3050 = mem[96]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(currentTokenId, 14)) + (Mask(251, 0, (32 * mem[_3056]) + 31) >> 5)
                            while sha3(sha3(currentTokenId, 14)) + uint256(sub_f1d99efa[stor11].field_0) > s:
                                uint256(stor[s]) = 0
                                _3050 = mem[96]
                                s = s + 1
                                continue 
                            mem[0] = currentTokenId
                            mem[32] = 13
                            _6184 = mem[_3058]
                            uint256(fees[stor11].field_0) = mem[_3058]
                            mem[0] = sha3(currentTokenId, 13)
                            if not _6184:
                                s = sha3(sha3(currentTokenId, 13))
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                t = sha3(sha3(currentTokenId, 13))
                                s = _3058 + 32
                                while _3058 + (32 * _6184) + 32 > s:
                                    uint256(stor[t]) = mem[s]
                                    _3050 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(currentTokenId, 13)) + (Mask(251, 0, (32 * _6184) + 31) >> 5)
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                else:
                    if bool(stor12[stor11].field_0) == stor12[stor11].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(currentTokenId, 12)
                    if not _3825:
                        uint256(stor12[stor11].field_0) = 0
                        s = sha3(sha3(currentTokenId, 12))
                        while sha3(sha3(currentTokenId, 12)) + (stor12[stor11].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            _3050 = mem[96]
                            s = s + 1
                            continue 
                        mem[0] = currentTokenId
                        mem[32] = 14
                        uint256(sub_f1d99efa[stor11].field_0) = mem[_3056]
                        if not mem[_3056]:
                            s = sha3(sha3(currentTokenId, 14))
                            while sha3(sha3(currentTokenId, 14)) + uint256(sub_f1d99efa[stor11].field_0) > s:
                                uint256(stor[s]) = 0
                                _3050 = mem[96]
                                s = s + 1
                                continue 
                            mem[0] = currentTokenId
                            mem[32] = 13
                            _5214 = mem[_3058]
                            uint256(fees[stor11].field_0) = mem[_3058]
                            mem[0] = sha3(currentTokenId, 13)
                            if not _5214:
                                s = sha3(sha3(currentTokenId, 13))
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                t = sha3(sha3(currentTokenId, 13))
                                s = _3058 + 32
                                while _3058 + (32 * _5214) + 32 > s:
                                    uint256(stor[t]) = mem[s]
                                    _3050 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(currentTokenId, 13)) + (Mask(251, 0, (32 * _5214) + 31) >> 5)
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                        else:
                            t = sha3(sha3(currentTokenId, 14))
                            s = _3056 + 32
                            while _3056 + (32 * mem[_3056]) + 32 > s:
                                address(stor[t]) = mem[s + 12 len 20]
                                _3050 = mem[96]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(currentTokenId, 14)) + (Mask(251, 0, (32 * mem[_3056]) + 31) >> 5)
                            while sha3(sha3(currentTokenId, 14)) + uint256(sub_f1d99efa[stor11].field_0) > s:
                                uint256(stor[s]) = 0
                                _3050 = mem[96]
                                s = s + 1
                                continue 
                            mem[0] = currentTokenId
                            mem[32] = 13
                            _5782 = mem[_3058]
                            uint256(fees[stor11].field_0) = mem[_3058]
                            mem[0] = sha3(currentTokenId, 13)
                            if not _5782:
                                s = sha3(sha3(currentTokenId, 13))
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                t = sha3(sha3(currentTokenId, 13))
                                s = _3058 + 32
                                while _3058 + (32 * _5782) + 32 > s:
                                    uint256(stor[t]) = mem[s]
                                    _3050 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(currentTokenId, 13)) + (Mask(251, 0, (32 * _5782) + 31) >> 5)
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                    else:
                        uint256(stor12[stor11].field_0) = (2 * _3825) + 1
                        t = sha3(sha3(currentTokenId, 12))
                        s = _3054 + 32
                        while _3054 + _3825 + 32 > s:
                            uint256(stor[t]) = mem[s]
                            _3050 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(currentTokenId, 12)) + (Mask(251, 0, _3825 + 31) >> 5)
                        while sha3(sha3(currentTokenId, 12)) + (stor12[stor11].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            _3050 = mem[96]
                            s = s + 1
                            continue 
                        mem[0] = currentTokenId
                        mem[32] = 14
                        uint256(sub_f1d99efa[stor11].field_0) = mem[_3056]
                        if not mem[_3056]:
                            s = sha3(sha3(currentTokenId, 14))
                            while sha3(sha3(currentTokenId, 14)) + uint256(sub_f1d99efa[stor11].field_0) > s:
                                uint256(stor[s]) = 0
                                _3050 = mem[96]
                                s = s + 1
                                continue 
                            mem[0] = currentTokenId
                            mem[32] = 13
                            _5778 = mem[_3058]
                            uint256(fees[stor11].field_0) = mem[_3058]
                            mem[0] = sha3(currentTokenId, 13)
                            if not _5778:
                                s = sha3(sha3(currentTokenId, 13))
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                t = sha3(sha3(currentTokenId, 13))
                                s = _3058 + 32
                                while _3058 + (32 * _5778) + 32 > s:
                                    uint256(stor[t]) = mem[s]
                                    _3050 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(currentTokenId, 13)) + (Mask(251, 0, (32 * _5778) + 31) >> 5)
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                        else:
                            t = sha3(sha3(currentTokenId, 14))
                            s = _3056 + 32
                            while _3056 + (32 * mem[_3056]) + 32 > s:
                                address(stor[t]) = mem[s + 12 len 20]
                                _3050 = mem[96]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(currentTokenId, 14)) + (Mask(251, 0, (32 * mem[_3056]) + 31) >> 5)
                            while sha3(sha3(currentTokenId, 14)) + uint256(sub_f1d99efa[stor11].field_0) > s:
                                uint256(stor[s]) = 0
                                _3050 = mem[96]
                                s = s + 1
                                continue 
                            mem[0] = currentTokenId
                            mem[32] = 13
                            _6186 = mem[_3058]
                            uint256(fees[stor11].field_0) = mem[_3058]
                            mem[0] = sha3(currentTokenId, 13)
                            if not _6186:
                                s = sha3(sha3(currentTokenId, 13))
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                t = sha3(sha3(currentTokenId, 13))
                                s = _3058 + 32
                                while _3058 + (32 * _6186) + 32 > s:
                                    uint256(stor[t]) = mem[s]
                                    _3050 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(currentTokenId, 13)) + (Mask(251, 0, (32 * _6186) + 31) >> 5)
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
            else:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = currentTokenId
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_3792 + s + 32]
                    _3050 = mem[96]
                    s = s + 32
                    continue 
                require ext_code.size(address(_3052))
                call address(_3052).0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, 0, currentTokenId, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    if not return_data.size:
                        if not mem[96]:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with memory
                          from 128
                           len mem[96]
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with ext_call.return_data[0 len return_data.size]
                _4579 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_4579] == Mask(32, 224, mem[_4579])
                if Mask(32, 224, mem[_4579]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                mem[0] = currentTokenId
                mem[32] = 12
                _4760 = mem[_3054]
                if bool(stor12[stor11].field_0):
                    if bool(stor12[stor11].field_0) == uint255(stor12[stor11].field_1) < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(currentTokenId, 12)
                    if not _4760:
                        uint256(stor12[stor11].field_0) = 0
                        s = sha3(sha3(currentTokenId, 12))
                        while sha3(sha3(currentTokenId, 12)) + (uint255(stor12[stor11].field_1) + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            _3050 = mem[96]
                            s = s + 1
                            continue 
                        mem[0] = currentTokenId
                        mem[32] = 14
                        uint256(sub_f1d99efa[stor11].field_0) = mem[_3056]
                        if not mem[_3056]:
                            s = sha3(sha3(currentTokenId, 14))
                            while sha3(sha3(currentTokenId, 14)) + uint256(sub_f1d99efa[stor11].field_0) > s:
                                uint256(stor[s]) = 0
                                _3050 = mem[96]
                                s = s + 1
                                continue 
                            mem[0] = currentTokenId
                            mem[32] = 13
                            _5790 = mem[_3058]
                            uint256(fees[stor11].field_0) = mem[_3058]
                            mem[0] = sha3(currentTokenId, 13)
                            if not _5790:
                                s = sha3(sha3(currentTokenId, 13))
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                t = sha3(sha3(currentTokenId, 13))
                                s = _3058 + 32
                                while _3058 + (32 * _5790) + 32 > s:
                                    uint256(stor[t]) = mem[s]
                                    _3050 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(currentTokenId, 13)) + (Mask(251, 0, (32 * _5790) + 31) >> 5)
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                        else:
                            t = sha3(sha3(currentTokenId, 14))
                            s = _3056 + 32
                            while _3056 + (32 * mem[_3056]) + 32 > s:
                                address(stor[t]) = mem[s + 12 len 20]
                                _3050 = mem[96]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(currentTokenId, 14)) + (Mask(251, 0, (32 * mem[_3056]) + 31) >> 5)
                            while sha3(sha3(currentTokenId, 14)) + uint256(sub_f1d99efa[stor11].field_0) > s:
                                uint256(stor[s]) = 0
                                _3050 = mem[96]
                                s = s + 1
                                continue 
                            mem[0] = currentTokenId
                            mem[32] = 13
                            _6194 = mem[_3058]
                            uint256(fees[stor11].field_0) = mem[_3058]
                            mem[0] = sha3(currentTokenId, 13)
                            if not _6194:
                                s = sha3(sha3(currentTokenId, 13))
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                t = sha3(sha3(currentTokenId, 13))
                                s = _3058 + 32
                                while _3058 + (32 * _6194) + 32 > s:
                                    uint256(stor[t]) = mem[s]
                                    _3050 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(currentTokenId, 13)) + (Mask(251, 0, (32 * _6194) + 31) >> 5)
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                    else:
                        uint256(stor12[stor11].field_0) = (2 * _4760) + 1
                        t = sha3(sha3(currentTokenId, 12))
                        s = _3054 + 32
                        while _3054 + _4760 + 32 > s:
                            uint256(stor[t]) = mem[s]
                            _3050 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(currentTokenId, 12)) + (Mask(251, 0, _4760 + 31) >> 5)
                        while sha3(sha3(currentTokenId, 12)) + (uint255(stor12[stor11].field_1) + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            _3050 = mem[96]
                            s = s + 1
                            continue 
                        mem[0] = currentTokenId
                        mem[32] = 14
                        uint256(sub_f1d99efa[stor11].field_0) = mem[_3056]
                        if not mem[_3056]:
                            s = sha3(sha3(currentTokenId, 14))
                            while sha3(sha3(currentTokenId, 14)) + uint256(sub_f1d99efa[stor11].field_0) > s:
                                uint256(stor[s]) = 0
                                _3050 = mem[96]
                                s = s + 1
                                continue 
                            mem[0] = currentTokenId
                            mem[32] = 13
                            _6190 = mem[_3058]
                            uint256(fees[stor11].field_0) = mem[_3058]
                            mem[0] = sha3(currentTokenId, 13)
                            if not _6190:
                                s = sha3(sha3(currentTokenId, 13))
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                t = sha3(sha3(currentTokenId, 13))
                                s = _3058 + 32
                                while _3058 + (32 * _6190) + 32 > s:
                                    uint256(stor[t]) = mem[s]
                                    _3050 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(currentTokenId, 13)) + (Mask(251, 0, (32 * _6190) + 31) >> 5)
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                        else:
                            t = sha3(sha3(currentTokenId, 14))
                            s = _3056 + 32
                            while _3056 + (32 * mem[_3056]) + 32 > s:
                                address(stor[t]) = mem[s + 12 len 20]
                                _3050 = mem[96]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(currentTokenId, 14)) + (Mask(251, 0, (32 * mem[_3056]) + 31) >> 5)
                            while sha3(sha3(currentTokenId, 14)) + uint256(sub_f1d99efa[stor11].field_0) > s:
                                uint256(stor[s]) = 0
                                _3050 = mem[96]
                                s = s + 1
                                continue 
                            mem[0] = currentTokenId
                            mem[32] = 13
                            _6396 = mem[_3058]
                            uint256(fees[stor11].field_0) = mem[_3058]
                            mem[0] = sha3(currentTokenId, 13)
                            if not _6396:
                                s = sha3(sha3(currentTokenId, 13))
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                t = sha3(sha3(currentTokenId, 13))
                                s = _3058 + 32
                                while _3058 + (32 * _6396) + 32 > s:
                                    uint256(stor[t]) = mem[s]
                                    _3050 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(currentTokenId, 13)) + (Mask(251, 0, (32 * _6396) + 31) >> 5)
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                else:
                    if bool(stor12[stor11].field_0) == stor12[stor11].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(currentTokenId, 12)
                    if not _4760:
                        uint256(stor12[stor11].field_0) = 0
                        s = sha3(sha3(currentTokenId, 12))
                        while sha3(sha3(currentTokenId, 12)) + (stor12[stor11].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            _3050 = mem[96]
                            s = s + 1
                            continue 
                        mem[0] = currentTokenId
                        mem[32] = 14
                        uint256(sub_f1d99efa[stor11].field_0) = mem[_3056]
                        if not mem[_3056]:
                            s = sha3(sha3(currentTokenId, 14))
                            while sha3(sha3(currentTokenId, 14)) + uint256(sub_f1d99efa[stor11].field_0) > s:
                                uint256(stor[s]) = 0
                                _3050 = mem[96]
                                s = s + 1
                                continue 
                            mem[0] = currentTokenId
                            mem[32] = 13
                            _5798 = mem[_3058]
                            uint256(fees[stor11].field_0) = mem[_3058]
                            mem[0] = sha3(currentTokenId, 13)
                            if not _5798:
                                s = sha3(sha3(currentTokenId, 13))
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                t = sha3(sha3(currentTokenId, 13))
                                s = _3058 + 32
                                while _3058 + (32 * _5798) + 32 > s:
                                    uint256(stor[t]) = mem[s]
                                    _3050 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(currentTokenId, 13)) + (Mask(251, 0, (32 * _5798) + 31) >> 5)
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                        else:
                            t = sha3(sha3(currentTokenId, 14))
                            s = _3056 + 32
                            while _3056 + (32 * mem[_3056]) + 32 > s:
                                address(stor[t]) = mem[s + 12 len 20]
                                _3050 = mem[96]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(currentTokenId, 14)) + (Mask(251, 0, (32 * mem[_3056]) + 31) >> 5)
                            while sha3(sha3(currentTokenId, 14)) + uint256(sub_f1d99efa[stor11].field_0) > s:
                                uint256(stor[s]) = 0
                                _3050 = mem[96]
                                s = s + 1
                                continue 
                            mem[0] = currentTokenId
                            mem[32] = 13
                            _6202 = mem[_3058]
                            uint256(fees[stor11].field_0) = mem[_3058]
                            mem[0] = sha3(currentTokenId, 13)
                            if not _6202:
                                s = sha3(sha3(currentTokenId, 13))
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                t = sha3(sha3(currentTokenId, 13))
                                s = _3058 + 32
                                while _3058 + (32 * _6202) + 32 > s:
                                    uint256(stor[t]) = mem[s]
                                    _3050 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(currentTokenId, 13)) + (Mask(251, 0, (32 * _6202) + 31) >> 5)
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                    else:
                        uint256(stor12[stor11].field_0) = (2 * _4760) + 1
                        t = sha3(sha3(currentTokenId, 12))
                        s = _3054 + 32
                        while _3054 + _4760 + 32 > s:
                            uint256(stor[t]) = mem[s]
                            _3050 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(currentTokenId, 12)) + (Mask(251, 0, _4760 + 31) >> 5)
                        while sha3(sha3(currentTokenId, 12)) + (stor12[stor11].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            _3050 = mem[96]
                            s = s + 1
                            continue 
                        mem[0] = currentTokenId
                        mem[32] = 14
                        uint256(sub_f1d99efa[stor11].field_0) = mem[_3056]
                        if not mem[_3056]:
                            s = sha3(sha3(currentTokenId, 14))
                            while sha3(sha3(currentTokenId, 14)) + uint256(sub_f1d99efa[stor11].field_0) > s:
                                uint256(stor[s]) = 0
                                _3050 = mem[96]
                                s = s + 1
                                continue 
                            mem[0] = currentTokenId
                            mem[32] = 13
                            _6198 = mem[_3058]
                            uint256(fees[stor11].field_0) = mem[_3058]
                            mem[0] = sha3(currentTokenId, 13)
                            if not _6198:
                                s = sha3(sha3(currentTokenId, 13))
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                t = sha3(sha3(currentTokenId, 13))
                                s = _3058 + 32
                                while _3058 + (32 * _6198) + 32 > s:
                                    uint256(stor[t]) = mem[s]
                                    _3050 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(currentTokenId, 13)) + (Mask(251, 0, (32 * _6198) + 31) >> 5)
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                        else:
                            t = sha3(sha3(currentTokenId, 14))
                            s = _3056 + 32
                            while _3056 + (32 * mem[_3056]) + 32 > s:
                                address(stor[t]) = mem[s + 12 len 20]
                                _3050 = mem[96]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(currentTokenId, 14)) + (Mask(251, 0, (32 * mem[_3056]) + 31) >> 5)
                            while sha3(sha3(currentTokenId, 14)) + uint256(sub_f1d99efa[stor11].field_0) > s:
                                uint256(stor[s]) = 0
                                _3050 = mem[96]
                                s = s + 1
                                continue 
                            mem[0] = currentTokenId
                            mem[32] = 13
                            _6398 = mem[_3058]
                            uint256(fees[stor11].field_0) = mem[_3058]
                            mem[0] = sha3(currentTokenId, 13)
                            if not _6398:
                                s = sha3(sha3(currentTokenId, 13))
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                t = sha3(sha3(currentTokenId, 13))
                                s = _3058 + 32
                                while _3058 + (32 * _6398) + 32 > s:
                                    uint256(stor[t]) = mem[s]
                                    _3050 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(currentTokenId, 13)) + (Mask(251, 0, (32 * _6398) + 31) >> 5)
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
        else:
            if tokenByIndex.length < 1:
                revert with 'NH{q', 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if stor10[stor11] >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor10[stor11]] = tokenByIndex[tokenByIndex.length]
            stor10[stor9[stor9.length]] = stor10[stor11]
            stor10[stor11] = 0
            if not tokenByIndex.length:
                revert with 'NH{q', 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(_3052)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(_3052)]++
            mem[0] = currentTokenId
            mem[32] = 3
            ownerOf[stor11] = address(_3052)
            emit Transfer(0, address(_3052), currentTokenId);
            if ext_code.size(address(_3052)) <= 0:
                mem[0] = currentTokenId
                mem[32] = 12
                _3829 = mem[_3054]
                if bool(stor12[stor11].field_0):
                    if bool(stor12[stor11].field_0) == uint255(stor12[stor11].field_1) < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(currentTokenId, 12)
                    if not _3829:
                        uint256(stor12[stor11].field_0) = 0
                        s = sha3(sha3(currentTokenId, 12))
                        while sha3(sha3(currentTokenId, 12)) + (uint255(stor12[stor11].field_1) + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            _3050 = mem[96]
                            s = s + 1
                            continue 
                        mem[0] = currentTokenId
                        mem[32] = 14
                        uint256(sub_f1d99efa[stor11].field_0) = mem[_3056]
                        if not mem[_3056]:
                            s = sha3(sha3(currentTokenId, 14))
                            while sha3(sha3(currentTokenId, 14)) + uint256(sub_f1d99efa[stor11].field_0) > s:
                                uint256(stor[s]) = 0
                                _3050 = mem[96]
                                s = s + 1
                                continue 
                            mem[0] = currentTokenId
                            mem[32] = 13
                            _5246 = mem[_3058]
                            uint256(fees[stor11].field_0) = mem[_3058]
                            mem[0] = sha3(currentTokenId, 13)
                            if not _5246:
                                s = sha3(sha3(currentTokenId, 13))
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                t = sha3(sha3(currentTokenId, 13))
                                s = _3058 + 32
                                while _3058 + (32 * _5246) + 32 > s:
                                    uint256(stor[t]) = mem[s]
                                    _3050 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(currentTokenId, 13)) + (Mask(251, 0, (32 * _5246) + 31) >> 5)
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                        else:
                            t = sha3(sha3(currentTokenId, 14))
                            s = _3056 + 32
                            while _3056 + (32 * mem[_3056]) + 32 > s:
                                address(stor[t]) = mem[s + 12 len 20]
                                _3050 = mem[96]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(currentTokenId, 14)) + (Mask(251, 0, (32 * mem[_3056]) + 31) >> 5)
                            while sha3(sha3(currentTokenId, 14)) + uint256(sub_f1d99efa[stor11].field_0) > s:
                                uint256(stor[s]) = 0
                                _3050 = mem[96]
                                s = s + 1
                                continue 
                            mem[0] = currentTokenId
                            mem[32] = 13
                            _5822 = mem[_3058]
                            uint256(fees[stor11].field_0) = mem[_3058]
                            mem[0] = sha3(currentTokenId, 13)
                            if not _5822:
                                s = sha3(sha3(currentTokenId, 13))
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                t = sha3(sha3(currentTokenId, 13))
                                s = _3058 + 32
                                while _3058 + (32 * _5822) + 32 > s:
                                    uint256(stor[t]) = mem[s]
                                    _3050 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(currentTokenId, 13)) + (Mask(251, 0, (32 * _5822) + 31) >> 5)
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                    else:
                        uint256(stor12[stor11].field_0) = (2 * _3829) + 1
                        t = sha3(sha3(currentTokenId, 12))
                        s = _3054 + 32
                        while _3054 + _3829 + 32 > s:
                            uint256(stor[t]) = mem[s]
                            _3050 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(currentTokenId, 12)) + (Mask(251, 0, _3829 + 31) >> 5)
                        while sha3(sha3(currentTokenId, 12)) + (uint255(stor12[stor11].field_1) + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            _3050 = mem[96]
                            s = s + 1
                            continue 
                        mem[0] = currentTokenId
                        mem[32] = 14
                        uint256(sub_f1d99efa[stor11].field_0) = mem[_3056]
                        if not mem[_3056]:
                            s = sha3(sha3(currentTokenId, 14))
                            while sha3(sha3(currentTokenId, 14)) + uint256(sub_f1d99efa[stor11].field_0) > s:
                                uint256(stor[s]) = 0
                                _3050 = mem[96]
                                s = s + 1
                                continue 
                            mem[0] = currentTokenId
                            mem[32] = 13
                            _5818 = mem[_3058]
                            uint256(fees[stor11].field_0) = mem[_3058]
                            mem[0] = sha3(currentTokenId, 13)
                            if not _5818:
                                s = sha3(sha3(currentTokenId, 13))
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                t = sha3(sha3(currentTokenId, 13))
                                s = _3058 + 32
                                while _3058 + (32 * _5818) + 32 > s:
                                    uint256(stor[t]) = mem[s]
                                    _3050 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(currentTokenId, 13)) + (Mask(251, 0, (32 * _5818) + 31) >> 5)
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                        else:
                            t = sha3(sha3(currentTokenId, 14))
                            s = _3056 + 32
                            while _3056 + (32 * mem[_3056]) + 32 > s:
                                address(stor[t]) = mem[s + 12 len 20]
                                _3050 = mem[96]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(currentTokenId, 14)) + (Mask(251, 0, (32 * mem[_3056]) + 31) >> 5)
                            while sha3(sha3(currentTokenId, 14)) + uint256(sub_f1d99efa[stor11].field_0) > s:
                                uint256(stor[s]) = 0
                                _3050 = mem[96]
                                s = s + 1
                                continue 
                            mem[0] = currentTokenId
                            mem[32] = 13
                            _6220 = mem[_3058]
                            uint256(fees[stor11].field_0) = mem[_3058]
                            mem[0] = sha3(currentTokenId, 13)
                            if not _6220:
                                s = sha3(sha3(currentTokenId, 13))
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                t = sha3(sha3(currentTokenId, 13))
                                s = _3058 + 32
                                while _3058 + (32 * _6220) + 32 > s:
                                    uint256(stor[t]) = mem[s]
                                    _3050 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(currentTokenId, 13)) + (Mask(251, 0, (32 * _6220) + 31) >> 5)
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                else:
                    if bool(stor12[stor11].field_0) == stor12[stor11].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(currentTokenId, 12)
                    if not _3829:
                        uint256(stor12[stor11].field_0) = 0
                        s = sha3(sha3(currentTokenId, 12))
                        while sha3(sha3(currentTokenId, 12)) + (stor12[stor11].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            _3050 = mem[96]
                            s = s + 1
                            continue 
                        mem[0] = currentTokenId
                        mem[32] = 14
                        uint256(sub_f1d99efa[stor11].field_0) = mem[_3056]
                        if not mem[_3056]:
                            s = sha3(sha3(currentTokenId, 14))
                            while sha3(sha3(currentTokenId, 14)) + uint256(sub_f1d99efa[stor11].field_0) > s:
                                uint256(stor[s]) = 0
                                _3050 = mem[96]
                                s = s + 1
                                continue 
                            mem[0] = currentTokenId
                            mem[32] = 13
                            _5254 = mem[_3058]
                            uint256(fees[stor11].field_0) = mem[_3058]
                            mem[0] = sha3(currentTokenId, 13)
                            if not _5254:
                                s = sha3(sha3(currentTokenId, 13))
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                t = sha3(sha3(currentTokenId, 13))
                                s = _3058 + 32
                                while _3058 + (32 * _5254) + 32 > s:
                                    uint256(stor[t]) = mem[s]
                                    _3050 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(currentTokenId, 13)) + (Mask(251, 0, (32 * _5254) + 31) >> 5)
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                        else:
                            t = sha3(sha3(currentTokenId, 14))
                            s = _3056 + 32
                            while _3056 + (32 * mem[_3056]) + 32 > s:
                                address(stor[t]) = mem[s + 12 len 20]
                                _3050 = mem[96]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(currentTokenId, 14)) + (Mask(251, 0, (32 * mem[_3056]) + 31) >> 5)
                            while sha3(sha3(currentTokenId, 14)) + uint256(sub_f1d99efa[stor11].field_0) > s:
                                uint256(stor[s]) = 0
                                _3050 = mem[96]
                                s = s + 1
                                continue 
                            mem[0] = currentTokenId
                            mem[32] = 13
                            _5830 = mem[_3058]
                            uint256(fees[stor11].field_0) = mem[_3058]
                            mem[0] = sha3(currentTokenId, 13)
                            if not _5830:
                                s = sha3(sha3(currentTokenId, 13))
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                t = sha3(sha3(currentTokenId, 13))
                                s = _3058 + 32
                                while _3058 + (32 * _5830) + 32 > s:
                                    uint256(stor[t]) = mem[s]
                                    _3050 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(currentTokenId, 13)) + (Mask(251, 0, (32 * _5830) + 31) >> 5)
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                    else:
                        uint256(stor12[stor11].field_0) = (2 * _3829) + 1
                        t = sha3(sha3(currentTokenId, 12))
                        s = _3054 + 32
                        while _3054 + _3829 + 32 > s:
                            uint256(stor[t]) = mem[s]
                            _3050 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(currentTokenId, 12)) + (Mask(251, 0, _3829 + 31) >> 5)
                        while sha3(sha3(currentTokenId, 12)) + (stor12[stor11].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            _3050 = mem[96]
                            s = s + 1
                            continue 
                        mem[0] = currentTokenId
                        mem[32] = 14
                        uint256(sub_f1d99efa[stor11].field_0) = mem[_3056]
                        if not mem[_3056]:
                            s = sha3(sha3(currentTokenId, 14))
                            while sha3(sha3(currentTokenId, 14)) + uint256(sub_f1d99efa[stor11].field_0) > s:
                                uint256(stor[s]) = 0
                                _3050 = mem[96]
                                s = s + 1
                                continue 
                            mem[0] = currentTokenId
                            mem[32] = 13
                            _5826 = mem[_3058]
                            uint256(fees[stor11].field_0) = mem[_3058]
                            mem[0] = sha3(currentTokenId, 13)
                            if not _5826:
                                s = sha3(sha3(currentTokenId, 13))
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                t = sha3(sha3(currentTokenId, 13))
                                s = _3058 + 32
                                while _3058 + (32 * _5826) + 32 > s:
                                    uint256(stor[t]) = mem[s]
                                    _3050 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(currentTokenId, 13)) + (Mask(251, 0, (32 * _5826) + 31) >> 5)
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                        else:
                            t = sha3(sha3(currentTokenId, 14))
                            s = _3056 + 32
                            while _3056 + (32 * mem[_3056]) + 32 > s:
                                address(stor[t]) = mem[s + 12 len 20]
                                _3050 = mem[96]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(currentTokenId, 14)) + (Mask(251, 0, (32 * mem[_3056]) + 31) >> 5)
                            while sha3(sha3(currentTokenId, 14)) + uint256(sub_f1d99efa[stor11].field_0) > s:
                                uint256(stor[s]) = 0
                                _3050 = mem[96]
                                s = s + 1
                                continue 
                            mem[0] = currentTokenId
                            mem[32] = 13
                            _6222 = mem[_3058]
                            uint256(fees[stor11].field_0) = mem[_3058]
                            mem[0] = sha3(currentTokenId, 13)
                            if not _6222:
                                s = sha3(sha3(currentTokenId, 13))
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                t = sha3(sha3(currentTokenId, 13))
                                s = _3058 + 32
                                while _3058 + (32 * _6222) + 32 > s:
                                    uint256(stor[t]) = mem[s]
                                    _3050 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(currentTokenId, 13)) + (Mask(251, 0, (32 * _6222) + 31) >> 5)
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
            else:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = currentTokenId
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_3792 + s + 32]
                    _3050 = mem[96]
                    s = s + 32
                    continue 
                require ext_code.size(address(_3052))
                call address(_3052).0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, 0, currentTokenId, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    if not return_data.size:
                        if not mem[96]:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with memory
                          from 128
                           len mem[96]
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with ext_call.return_data[0 len return_data.size]
                _4580 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_4580] == Mask(32, 224, mem[_4580])
                if Mask(32, 224, mem[_4580]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                mem[0] = currentTokenId
                mem[32] = 12
                _4762 = mem[_3054]
                if bool(stor12[stor11].field_0):
                    if bool(stor12[stor11].field_0) == uint255(stor12[stor11].field_1) < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(currentTokenId, 12)
                    if not _4762:
                        uint256(stor12[stor11].field_0) = 0
                        s = sha3(sha3(currentTokenId, 12))
                        while sha3(sha3(currentTokenId, 12)) + (uint255(stor12[stor11].field_1) + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            _3050 = mem[96]
                            s = s + 1
                            continue 
                        mem[0] = currentTokenId
                        mem[32] = 14
                        uint256(sub_f1d99efa[stor11].field_0) = mem[_3056]
                        if not mem[_3056]:
                            s = sha3(sha3(currentTokenId, 14))
                            while sha3(sha3(currentTokenId, 14)) + uint256(sub_f1d99efa[stor11].field_0) > s:
                                uint256(stor[s]) = 0
                                _3050 = mem[96]
                                s = s + 1
                                continue 
                            mem[0] = currentTokenId
                            mem[32] = 13
                            _5838 = mem[_3058]
                            uint256(fees[stor11].field_0) = mem[_3058]
                            mem[0] = sha3(currentTokenId, 13)
                            if not _5838:
                                s = sha3(sha3(currentTokenId, 13))
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                t = sha3(sha3(currentTokenId, 13))
                                s = _3058 + 32
                                while _3058 + (32 * _5838) + 32 > s:
                                    uint256(stor[t]) = mem[s]
                                    _3050 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(currentTokenId, 13)) + (Mask(251, 0, (32 * _5838) + 31) >> 5)
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                        else:
                            t = sha3(sha3(currentTokenId, 14))
                            s = _3056 + 32
                            while _3056 + (32 * mem[_3056]) + 32 > s:
                                address(stor[t]) = mem[s + 12 len 20]
                                _3050 = mem[96]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(currentTokenId, 14)) + (Mask(251, 0, (32 * mem[_3056]) + 31) >> 5)
                            while sha3(sha3(currentTokenId, 14)) + uint256(sub_f1d99efa[stor11].field_0) > s:
                                uint256(stor[s]) = 0
                                _3050 = mem[96]
                                s = s + 1
                                continue 
                            mem[0] = currentTokenId
                            mem[32] = 13
                            _6230 = mem[_3058]
                            uint256(fees[stor11].field_0) = mem[_3058]
                            mem[0] = sha3(currentTokenId, 13)
                            if not _6230:
                                s = sha3(sha3(currentTokenId, 13))
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                t = sha3(sha3(currentTokenId, 13))
                                s = _3058 + 32
                                while _3058 + (32 * _6230) + 32 > s:
                                    uint256(stor[t]) = mem[s]
                                    _3050 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(currentTokenId, 13)) + (Mask(251, 0, (32 * _6230) + 31) >> 5)
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                    else:
                        uint256(stor12[stor11].field_0) = (2 * _4762) + 1
                        t = sha3(sha3(currentTokenId, 12))
                        s = _3054 + 32
                        while _3054 + _4762 + 32 > s:
                            uint256(stor[t]) = mem[s]
                            _3050 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(currentTokenId, 12)) + (Mask(251, 0, _4762 + 31) >> 5)
                        while sha3(sha3(currentTokenId, 12)) + (uint255(stor12[stor11].field_1) + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            _3050 = mem[96]
                            s = s + 1
                            continue 
                        mem[0] = currentTokenId
                        mem[32] = 14
                        uint256(sub_f1d99efa[stor11].field_0) = mem[_3056]
                        if not mem[_3056]:
                            s = sha3(sha3(currentTokenId, 14))
                            while sha3(sha3(currentTokenId, 14)) + uint256(sub_f1d99efa[stor11].field_0) > s:
                                uint256(stor[s]) = 0
                                _3050 = mem[96]
                                s = s + 1
                                continue 
                            mem[0] = currentTokenId
                            mem[32] = 13
                            _6226 = mem[_3058]
                            uint256(fees[stor11].field_0) = mem[_3058]
                            mem[0] = sha3(currentTokenId, 13)
                            if not _6226:
                                s = sha3(sha3(currentTokenId, 13))
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                t = sha3(sha3(currentTokenId, 13))
                                s = _3058 + 32
                                while _3058 + (32 * _6226) + 32 > s:
                                    uint256(stor[t]) = mem[s]
                                    _3050 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(currentTokenId, 13)) + (Mask(251, 0, (32 * _6226) + 31) >> 5)
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                        else:
                            t = sha3(sha3(currentTokenId, 14))
                            s = _3056 + 32
                            while _3056 + (32 * mem[_3056]) + 32 > s:
                                address(stor[t]) = mem[s + 12 len 20]
                                _3050 = mem[96]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(currentTokenId, 14)) + (Mask(251, 0, (32 * mem[_3056]) + 31) >> 5)
                            while sha3(sha3(currentTokenId, 14)) + uint256(sub_f1d99efa[stor11].field_0) > s:
                                uint256(stor[s]) = 0
                                _3050 = mem[96]
                                s = s + 1
                                continue 
                            mem[0] = currentTokenId
                            mem[32] = 13
                            _6404 = mem[_3058]
                            uint256(fees[stor11].field_0) = mem[_3058]
                            mem[0] = sha3(currentTokenId, 13)
                            if not _6404:
                                s = sha3(sha3(currentTokenId, 13))
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                t = sha3(sha3(currentTokenId, 13))
                                s = _3058 + 32
                                while _3058 + (32 * _6404) + 32 > s:
                                    uint256(stor[t]) = mem[s]
                                    _3050 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(currentTokenId, 13)) + (Mask(251, 0, (32 * _6404) + 31) >> 5)
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                else:
                    if bool(stor12[stor11].field_0) == stor12[stor11].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(currentTokenId, 12)
                    if not _4762:
                        uint256(stor12[stor11].field_0) = 0
                        s = sha3(sha3(currentTokenId, 12))
                        while sha3(sha3(currentTokenId, 12)) + (stor12[stor11].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            _3050 = mem[96]
                            s = s + 1
                            continue 
                        mem[0] = currentTokenId
                        mem[32] = 14
                        uint256(sub_f1d99efa[stor11].field_0) = mem[_3056]
                        if not mem[_3056]:
                            s = sha3(sha3(currentTokenId, 14))
                            while sha3(sha3(currentTokenId, 14)) + uint256(sub_f1d99efa[stor11].field_0) > s:
                                uint256(stor[s]) = 0
                                _3050 = mem[96]
                                s = s + 1
                                continue 
                            mem[0] = currentTokenId
                            mem[32] = 13
                            _5846 = mem[_3058]
                            uint256(fees[stor11].field_0) = mem[_3058]
                            mem[0] = sha3(currentTokenId, 13)
                            if not _5846:
                                s = sha3(sha3(currentTokenId, 13))
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                t = sha3(sha3(currentTokenId, 13))
                                s = _3058 + 32
                                while _3058 + (32 * _5846) + 32 > s:
                                    uint256(stor[t]) = mem[s]
                                    _3050 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(currentTokenId, 13)) + (Mask(251, 0, (32 * _5846) + 31) >> 5)
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                        else:
                            t = sha3(sha3(currentTokenId, 14))
                            s = _3056 + 32
                            while _3056 + (32 * mem[_3056]) + 32 > s:
                                address(stor[t]) = mem[s + 12 len 20]
                                _3050 = mem[96]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(currentTokenId, 14)) + (Mask(251, 0, (32 * mem[_3056]) + 31) >> 5)
                            while sha3(sha3(currentTokenId, 14)) + uint256(sub_f1d99efa[stor11].field_0) > s:
                                uint256(stor[s]) = 0
                                _3050 = mem[96]
                                s = s + 1
                                continue 
                            mem[0] = currentTokenId
                            mem[32] = 13
                            _6238 = mem[_3058]
                            uint256(fees[stor11].field_0) = mem[_3058]
                            mem[0] = sha3(currentTokenId, 13)
                            if not _6238:
                                s = sha3(sha3(currentTokenId, 13))
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                t = sha3(sha3(currentTokenId, 13))
                                s = _3058 + 32
                                while _3058 + (32 * _6238) + 32 > s:
                                    uint256(stor[t]) = mem[s]
                                    _3050 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(currentTokenId, 13)) + (Mask(251, 0, (32 * _6238) + 31) >> 5)
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                    else:
                        uint256(stor12[stor11].field_0) = (2 * _4762) + 1
                        t = sha3(sha3(currentTokenId, 12))
                        s = _3054 + 32
                        while _3054 + _4762 + 32 > s:
                            uint256(stor[t]) = mem[s]
                            _3050 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(currentTokenId, 12)) + (Mask(251, 0, _4762 + 31) >> 5)
                        while sha3(sha3(currentTokenId, 12)) + (stor12[stor11].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            _3050 = mem[96]
                            s = s + 1
                            continue 
                        mem[0] = currentTokenId
                        mem[32] = 14
                        uint256(sub_f1d99efa[stor11].field_0) = mem[_3056]
                        if not mem[_3056]:
                            s = sha3(sha3(currentTokenId, 14))
                            while sha3(sha3(currentTokenId, 14)) + uint256(sub_f1d99efa[stor11].field_0) > s:
                                uint256(stor[s]) = 0
                                _3050 = mem[96]
                                s = s + 1
                                continue 
                            mem[0] = currentTokenId
                            mem[32] = 13
                            _6234 = mem[_3058]
                            uint256(fees[stor11].field_0) = mem[_3058]
                            mem[0] = sha3(currentTokenId, 13)
                            if not _6234:
                                s = sha3(sha3(currentTokenId, 13))
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                t = sha3(sha3(currentTokenId, 13))
                                s = _3058 + 32
                                while _3058 + (32 * _6234) + 32 > s:
                                    uint256(stor[t]) = mem[s]
                                    _3050 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(currentTokenId, 13)) + (Mask(251, 0, (32 * _6234) + 31) >> 5)
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                        else:
                            t = sha3(sha3(currentTokenId, 14))
                            s = _3056 + 32
                            while _3056 + (32 * mem[_3056]) + 32 > s:
                                address(stor[t]) = mem[s + 12 len 20]
                                _3050 = mem[96]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(currentTokenId, 14)) + (Mask(251, 0, (32 * mem[_3056]) + 31) >> 5)
                            while sha3(sha3(currentTokenId, 14)) + uint256(sub_f1d99efa[stor11].field_0) > s:
                                uint256(stor[s]) = 0
                                _3050 = mem[96]
                                s = s + 1
                                continue 
                            mem[0] = currentTokenId
                            mem[32] = 13
                            _6406 = mem[_3058]
                            uint256(fees[stor11].field_0) = mem[_3058]
                            mem[0] = sha3(currentTokenId, 13)
                            if not _6406:
                                s = sha3(sha3(currentTokenId, 13))
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                t = sha3(sha3(currentTokenId, 13))
                                s = _3058 + 32
                                while _3058 + (32 * _6406) + 32 > s:
                                    uint256(stor[t]) = mem[s]
                                    _3050 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(currentTokenId, 13)) + (Mask(251, 0, (32 * _6406) + 31) >> 5)
                                while sha3(sha3(currentTokenId, 13)) + uint256(fees[stor11].field_0) > s:
                                    uint256(stor[s]) = 0
                                    _3050 = mem[96]
                                    s = s + 1
                                    continue 
        if currentTokenId == -1:
            revert with 'NH{q', 17
        currentTokenId++
        if idx == -1:
            revert with 'NH{q', 17
        _3050 = mem[96]
        idx = idx + 1
        continue 
}



}
