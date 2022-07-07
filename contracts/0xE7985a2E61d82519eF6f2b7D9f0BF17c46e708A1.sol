contract main {




// =====================  Runtime code  =====================


#
#  - batchMint(address arg1, uint256 arg2, uint256 arg3)
#
array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
address owner;
uint256 MAX_SUPPLY;
array of struct stor8;
mapping of uint8 tokenType;
uint256 nextTokenId;
mapping of uint8 stor11;
array of struct stor110349606679412691172957834289542550319383271247755660854362242977991410020068;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function MAX_SUPPLY() payable {
    return MAX_SUPPLY
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

function nextTokenId() payable {
    return nextTokenId
}

function owner() payable {
    return owner
}

function tokenType(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return tokenType[arg1]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_66cd27f4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11[address(arg1)] = uint8(bool(arg2))
    emit 0x58ee8d12: address(arg1), bool(arg2)
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
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

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
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
        if not stor5[stor2[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function maxSupply() payable {
    idx = 0
    s = 0
    while idx < stor8.length:
        mem[0] = 8
        if s > !uint16(stor8[idx].field_8):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + uint16(stor8[idx].field_8)
        continue 
    return s * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length, 
           MAX_SUPPLY
}

function totalSupply() payable {
    idx = 0
    s = 0
    while idx < stor8.length:
        mem[0] = 8
        if s > !uint16(stor8[idx].field_24):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + uint16(stor8[idx].field_24)
        continue 
    return s * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length, 
           nextTokenId
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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

function sub_4bc834eb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor8.length
    if bool(stor8[arg1].field_256):
        if bool(stor8[arg1].field_256) == uint255(uint256(stor8[arg1].field_256)) * 0.5 < 32:
            revert with 0, 34
        if bool(stor8[arg1].field_256):
            if bool(stor8[arg1].field_256) == uint255(uint256(stor8[arg1].field_256)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor8[arg1].field_256)):
                if 31 >= uint255(uint256(stor8[arg1].field_256)) * 0.5:
                    mem[128] = 256 * Mask(248, 0, stor8[arg1].field_264)
                else:
                    mem[128] = uint256(stor[sha3((2 * arg1) + ('name', 'stor8', 8) + 1)].field_0)
                    idx = 128
                    s = 0
                    while (uint255(uint256(stor8[arg1].field_256)) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3((2 * arg1) + ('name', 'stor8', 8) + 1)].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor8[arg1].field_256) == stor8[arg1].field_257 % 128 < 32:
                revert with 0, 34
            if stor8[arg1].field_257 % 128:
                if 31 >= stor8[arg1].field_257 % 128:
                    mem[128] = 256 * Mask(248, 0, stor8[arg1].field_264)
                else:
                    mem[128] = uint256(stor[sha3((2 * arg1) + ('name', 'stor8', 8) + 1)].field_0)
                    idx = 128
                    s = 0
                    while stor8[arg1].field_257 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3((2 * arg1) + ('name', 'stor8', 8) + 1)].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        return uint8(stor8[arg1].field_0), 
               uint16(stor8[arg1].field_0),
               uint16(stor8[arg1].field_0),
               Array(len=2 * Mask(256, -1, uint256(stor8[arg1].field_256)), data=mem[128 len ceil32(uint255(uint256(stor8[arg1].field_256)) * 0.5)])
    if bool(stor8[arg1].field_256) == stor8[arg1].field_257 % 128 < 32:
        revert with 0, 34
    if bool(stor8[arg1].field_256):
        if bool(stor8[arg1].field_256) == uint255(uint256(stor8[arg1].field_256)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, uint256(stor8[arg1].field_256)):
            if 31 >= uint255(uint256(stor8[arg1].field_256)) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor8[arg1].field_264)
            else:
                mem[128] = uint256(stor[sha3((2 * arg1) + ('name', 'stor8', 8) + 1)].field_0)
                idx = 128
                s = 0
                while (uint255(uint256(stor8[arg1].field_256)) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3((2 * arg1) + ('name', 'stor8', 8) + 1)].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor8[arg1].field_256) == stor8[arg1].field_257 % 128 < 32:
            revert with 0, 34
        if stor8[arg1].field_257 % 128:
            if 31 >= stor8[arg1].field_257 % 128:
                mem[128] = 256 * Mask(248, 0, stor8[arg1].field_264)
            else:
                mem[128] = uint256(stor[sha3((2 * arg1) + ('name', 'stor8', 8) + 1)].field_0)
                idx = 128
                s = 0
                while stor8[arg1].field_257 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3((2 * arg1) + ('name', 'stor8', 8) + 1)].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    return uint8(stor8[arg1].field_0), 
           uint16(stor8[arg1].field_0),
           uint16(stor8[arg1].field_0),
           Array(len=stor8[arg1].field_256 % 128, data=mem[128 len ceil32(stor8[arg1].field_257 % 128)])
}

function name() payable {
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor0.length):
                if 31 < uint255(stor0.length) * 0.5:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor0.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor0[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        else:
            if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor0.length.field_1 % 128:
                if 31 < stor0.length.field_1 % 128:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor0[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[ceil32(uint255(stor0.length) * 0.5) + (uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor0.length):
            if 31 < uint255(stor0.length) * 0.5:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while (uint255(stor0.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor0[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    else:
        if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor0.length.field_1 % 128:
            if 31 < stor0.length.field_1 % 128:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor0[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    mem[ceil32(stor0.length.field_1 % 128) + 192 len ceil32(stor0.length.field_1 % 128)] = mem[128 len ceil32(stor0.length.field_1 % 128)]
    if ceil32(stor0.length.field_1 % 128) > stor0.length.field_1 % 128:
        mem[ceil32(stor0.length.field_1 % 128) + stor0.length.field_1 % 128 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)], mem[(2 * ceil32(stor0.length.field_1 % 128)) + 192 len 2 * ceil32(stor0.length.field_1 % 128)]), 
}

function symbol() payable {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor1[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        else:
            if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[ceil32(uint255(stor1.length) * 0.5) + (uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor1[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    else:
        if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
            revert with 0, 34
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

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, 'tokenURI: nonexistent token'
    if tokenType[arg1] >= stor8.length:
        revert with 0, 50
    if bool(stor8[stor9[arg1]].field_256):
        if bool(stor8[stor9[arg1]].field_256) == uint255(uint256(stor8[stor9[arg1]].field_256)) * 0.5 < 32:
            revert with 0, 34
        if bool(stor8[stor9[arg1]].field_256):
            if bool(stor8[stor9[arg1]].field_256) == uint255(uint256(stor8[stor9[arg1]].field_256)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor8[stor9[arg1]].field_256)):
                if 31 < uint255(uint256(stor8[stor9[arg1]].field_256)) * 0.5:
                    mem[128] = uint256(stor[sha3((2 * stor9[arg1]) + ('name', 'stor8', 8) + 1)].field_0)
                    idx = 128
                    s = 0
                    while (uint255(uint256(stor8[stor9[arg1]].field_256)) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3((2 * stor9[arg1]) + ('name', 'stor8', 8) + 1)].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor8[stor9[arg1]].field_256)), data=mem[128 len ceil32(uint255(uint256(stor8[stor9[arg1]].field_256)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor8[stor9[arg1]].field_264)
        else:
            if bool(stor8[stor9[arg1]].field_256) == stor8[stor9[arg1]].field_257 % 128 < 32:
                revert with 0, 34
            if stor8[stor9[arg1]].field_257 % 128:
                if 31 < stor8[stor9[arg1]].field_257 % 128:
                    mem[128] = uint256(stor[sha3((2 * stor9[arg1]) + ('name', 'stor8', 8) + 1)].field_0)
                    idx = 128
                    s = 0
                    while stor8[stor9[arg1]].field_257 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3((2 * stor9[arg1]) + ('name', 'stor8', 8) + 1)].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor8[stor9[arg1]].field_256)), data=mem[128 len ceil32(uint255(uint256(stor8[stor9[arg1]].field_256)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor8[stor9[arg1]].field_264)
        mem[ceil32(uint255(uint256(stor8[stor9[arg1]].field_256)) * 0.5) + 192 len ceil32(uint255(uint256(stor8[stor9[arg1]].field_256)) * 0.5)] = mem[128 len ceil32(uint255(uint256(stor8[stor9[arg1]].field_256)) * 0.5)]
        if ceil32(uint255(uint256(stor8[stor9[arg1]].field_256)) * 0.5) > uint255(uint256(stor8[stor9[arg1]].field_256)) * 0.5:
            mem[ceil32(uint255(uint256(stor8[stor9[arg1]].field_256)) * 0.5) + (uint255(uint256(stor8[stor9[arg1]].field_256)) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint256(stor8[stor9[arg1]].field_256)), data=mem[128 len ceil32(uint255(uint256(stor8[stor9[arg1]].field_256)) * 0.5)], mem[(2 * ceil32(uint255(uint256(stor8[stor9[arg1]].field_256)) * 0.5)) + 192 len 2 * ceil32(uint255(uint256(stor8[stor9[arg1]].field_256)) * 0.5)]), 
    if bool(stor8[stor9[arg1]].field_256) == stor8[stor9[arg1]].field_257 % 128 < 32:
        revert with 0, 34
    if bool(stor8[stor9[arg1]].field_256):
        if bool(stor8[stor9[arg1]].field_256) == uint255(uint256(stor8[stor9[arg1]].field_256)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, uint256(stor8[stor9[arg1]].field_256)):
            if 31 < uint255(uint256(stor8[stor9[arg1]].field_256)) * 0.5:
                mem[128] = uint256(stor[sha3((2 * stor9[arg1]) + ('name', 'stor8', 8) + 1)].field_0)
                idx = 128
                s = 0
                while (uint255(uint256(stor8[stor9[arg1]].field_256)) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3((2 * stor9[arg1]) + ('name', 'stor8', 8) + 1)].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8[stor9[arg1]].field_256 % 128, data=mem[128 len ceil32(stor8[stor9[arg1]].field_257 % 128)])
            mem[128] = 256 * Mask(248, 0, stor8[stor9[arg1]].field_264)
    else:
        if bool(stor8[stor9[arg1]].field_256) == stor8[stor9[arg1]].field_257 % 128 < 32:
            revert with 0, 34
        if stor8[stor9[arg1]].field_257 % 128:
            if 31 < stor8[stor9[arg1]].field_257 % 128:
                mem[128] = uint256(stor[sha3((2 * stor9[arg1]) + ('name', 'stor8', 8) + 1)].field_0)
                idx = 128
                s = 0
                while stor8[stor9[arg1]].field_257 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3((2 * stor9[arg1]) + ('name', 'stor8', 8) + 1)].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8[stor9[arg1]].field_256 % 128, data=mem[128 len ceil32(stor8[stor9[arg1]].field_257 % 128)])
            mem[128] = 256 * Mask(248, 0, stor8[stor9[arg1]].field_264)
    mem[ceil32(stor8[stor9[arg1]].field_257 % 128) + 192 len ceil32(stor8[stor9[arg1]].field_257 % 128)] = mem[128 len ceil32(stor8[stor9[arg1]].field_257 % 128)]
    if ceil32(stor8[stor9[arg1]].field_257 % 128) > stor8[stor9[arg1]].field_257 % 128:
        mem[ceil32(stor8[stor9[arg1]].field_257 % 128) + stor8[stor9[arg1]].field_257 % 128 + 192] = 0
    return Array(len=stor8[stor9[arg1]].field_256 % 128, data=mem[128 len ceil32(stor8[stor9[arg1]].field_257 % 128)], mem[(2 * ceil32(stor8[stor9[arg1]].field_257 % 128)) + 192 len 2 * ceil32(stor8[stor9[arg1]].field_257 % 128)]), 
}

function sub_c220079e(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] == uint16(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 99 < 98 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
    while idx < ('cd', 68).length:
        require cd[s] <= test266151307()
        require calldata.size > cd[68] + cd[s] + 67
        if cd[(cd[68] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _129 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[68] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[68] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[68] + cd[s] + 36)])) + 1
        mem[_129] = cd[(cd[68] + cd[s] + 36)]
        require cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + 68 <= calldata.size
        mem[_129 + 32 len cd[(cd[68] + cd[s] + 36)]] = call.data[cd[68] + cd[s] + 68 len cd[(cd[68] + cd[s] + 36)]]
        mem[_129 + cd[(cd[68] + cd[s] + 36)] + 32] = 0
        mem[t] = _129
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if mem[96] != mem[ceil32(32 * ('cd', 4).length) + 97]:
        revert with 0, 'array len not match'
    if mem[ceil32(32 * ('cd', 4).length) + 97] != mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
        revert with 0, 'array len not match'
    idx = 0
    s = 0
    while idx < stor8.length:
        t = 0
        while t < mem[96]:
            if t >= mem[96]:
                revert with 0, 50
            if idx >= stor8.length:
                revert with 0, 50
            mem[0] = 8
            if uint8(stor8[idx].field_0) != mem[(32 * t) + 159 len 1]:
                if t == -1:
                    revert with 0, 17
                t = t + 1
                continue 
            if t >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            if idx >= stor8.length:
                revert with 0, 50
            uint16(stor8[idx].field_8) = mem[(32 * t) + ceil32(32 * ('cd', 4).length) + 159 len 2]
            if t >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                revert with 0, 50
            if idx >= stor8.length:
                revert with 0, 50
            mem[0] = 8
            _202 = mem[mem[(32 * t) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]]
            if bool(stor8[idx].field_256):
                if bool(stor8[idx].field_256) == uint255(uint256(stor8[idx].field_256)) * 0.5 < 32:
                    revert with 0, 34
                mem[0] = (2 * idx) + sha3(8) + 1
                if not _202:
                    uint256(stor8[idx].field_256) = 0
                    t = sha3((2 * idx) + sha3(8) + 1)
                    while sha3((2 * idx) + sha3(8) + 1) + ((uint255(uint256(stor8[idx].field_256)) * 0.5) + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        t = t + 1
                        continue 
                else:
                    uint256(stor8[idx].field_256) = (2 * _202) + 1
                    u = sha3((2 * idx) + sha3(8) + 1)
                    v = mem[(32 * t) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + 32
                    while mem[(32 * t) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + _202 + 32 > v:
                        uint256(stor[u].field_0) = mem[v]
                        u = u + 1
                        v = v + 32
                        continue 
                    t = u
                    while sha3((2 * idx) + sha3(8) + 1) + ((uint255(uint256(stor8[idx].field_256)) * 0.5) + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        t = t + 1
                        continue 
            else:
                if bool(stor8[idx].field_256) == stor8[idx].field_257 % 128 < 32:
                    revert with 0, 34
                mem[0] = (2 * idx) + sha3(8) + 1
                if not _202:
                    uint256(stor8[idx].field_256) = 0
                    t = sha3((2 * idx) + sha3(8) + 1)
                    while sha3((2 * idx) + sha3(8) + 1) + (stor8[idx].field_257 % 128 + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        t = t + 1
                        continue 
                else:
                    uint256(stor8[idx].field_256) = (2 * _202) + 1
                    u = sha3((2 * idx) + sha3(8) + 1)
                    v = mem[(32 * t) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + 32
                    while mem[(32 * t) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + _202 + 32 > v:
                        uint256(stor[u].field_0) = mem[v]
                        u = u + 1
                        v = v + 32
                        continue 
                    t = u
                    while sha3((2 * idx) + sha3(8) + 1) + (stor8[idx].field_257 % 128 + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        t = t + 1
                        continue 
            if idx >= stor8.length:
                revert with 0, 50
            mem[0] = 8
            if s > !uint16(stor8[idx].field_8):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + uint16(stor8[idx].field_8)
            continue 
        if idx >= stor8.length:
            revert with 0, 50
        mem[0] = 8
        if s > !uint16(stor8[idx].field_8):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + uint16(stor8[idx].field_8)
        continue 
    if s > MAX_SUPPLY:
        revert with 0, 'exceed max supply'
}

function sub_7374dfd5(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    idx = 0
    while idx < arg3:
        if arg2 > !idx:
            revert with 0, 17
        _164 = mem[64]
        mem[64] = mem[64] + 32
        mem[_164] = 0
        if not ownerOf[arg2 + idx]:
            revert with 0, 'ERC721: operator query for nonexistent token'
        if not ownerOf[arg2 + idx]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if msg.sender == ownerOf[arg2 + idx]:
            if not ownerOf[arg2 + idx]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[arg2 + idx] != msg.sender:
                revert with 0, 'ERC721: transfer of token that is not own'
            if not address(arg1):
                revert with 0, 'ERC721: transfer to the zero address'
            approved[arg2 + idx] = 0
            if not ownerOf[arg2 + idx]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            emit Approval(ownerOf[arg2 + idx], 0, arg2 + idx);
            if balanceOf[address(msg.sender)] < 1:
                revert with 0, 17
            balanceOf[address(msg.sender)]--
            if balanceOf[address(arg1)] > -2:
                revert with 0, 17
            balanceOf[address(arg1)]++
            mem[0] = arg2 + idx
            mem[32] = 2
            ownerOf[arg2 + idx] = address(arg1)
            emit Transfer(msg.sender, address(arg1), arg2 + idx);
            if ext_code.size(address(arg1)):
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = arg2 + idx
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[_164 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(arg1))
                call address(arg1).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, msg.sender, arg2 + idx, 128, 0
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
                _332 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_332] == Mask(32, 224, mem[_332])
                if Mask(32, 224, mem[_332]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if not ownerOf[arg2 + idx]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[arg2 + idx] == msg.sender:
                if not ownerOf[arg2 + idx]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[arg2 + idx] != msg.sender:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not address(arg1):
                    revert with 0, 'ERC721: transfer to the zero address'
                approved[arg2 + idx] = 0
                if not ownerOf[arg2 + idx]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[arg2 + idx], 0, arg2 + idx);
                if balanceOf[address(msg.sender)] < 1:
                    revert with 0, 17
                balanceOf[address(msg.sender)]--
                if balanceOf[address(arg1)] > -2:
                    revert with 0, 17
                balanceOf[address(arg1)]++
                mem[0] = arg2 + idx
                mem[32] = 2
                ownerOf[arg2 + idx] = address(arg1)
                emit Transfer(msg.sender, address(arg1), arg2 + idx);
                if ext_code.size(address(arg1)):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = arg2 + idx
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[_164 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(arg1))
                    call address(arg1).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, arg2 + idx, 128, 0
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
                    _333 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_333] == Mask(32, 224, mem[_333])
                    if Mask(32, 224, mem[_333]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if not stor5[stor2[arg2 + idx]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
                if not ownerOf[arg2 + idx]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[arg2 + idx] != msg.sender:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not address(arg1):
                    revert with 0, 'ERC721: transfer to the zero address'
                approved[arg2 + idx] = 0
                if not ownerOf[arg2 + idx]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[arg2 + idx], 0, arg2 + idx);
                if balanceOf[address(msg.sender)] < 1:
                    revert with 0, 17
                balanceOf[address(msg.sender)]--
                if balanceOf[address(arg1)] > -2:
                    revert with 0, 17
                balanceOf[address(arg1)]++
                mem[0] = arg2 + idx
                mem[32] = 2
                ownerOf[arg2 + idx] = address(arg1)
                emit Transfer(msg.sender, address(arg1), arg2 + idx);
                if ext_code.size(address(arg1)):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = arg2 + idx
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[_164 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(arg1))
                    call address(arg1).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, arg2 + idx, 128, 0
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
                    _334 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_334] == Mask(32, 224, mem[_334])
                    if Mask(32, 224, mem[_334]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 1
}

function canMint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < stor8.length:
        mem[0] = 8
        if s > !uint16(stor8[idx].field_24):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + uint16(stor8[idx].field_24)
        continue 
    idx = 0
    t = 0
    while idx < stor8.length:
        mem[0] = 8
        if t > !uint16(stor8[idx].field_8):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        t = t + uint16(stor8[idx].field_8)
        continue 
    if t * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length < MAX_SUPPLY:
        if s * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length >= nextTokenId:
            if arg1 > !(s * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length):
                revert with 0, 17
            return arg1 + (s * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length) <= t * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length
        if arg1 > !nextTokenId:
            revert with 0, 17
        return arg1 + nextTokenId <= t * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length
    if s * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length >= nextTokenId:
        if arg1 > !(s * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length):
            revert with 0, 17
        return arg1 + (s * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length) <= MAX_SUPPLY
    if arg1 > !nextTokenId:
        revert with 0, 17
    return arg1 + nextTokenId <= MAX_SUPPLY
}

function sub_7146e516(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] == uint16(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 99 < 98 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
    while idx < ('cd', 68).length:
        require cd[s] <= test266151307()
        require calldata.size > cd[68] + cd[s] + 67
        if cd[(cd[68] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _228 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[68] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[68] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[68] + cd[s] + 36)])) + 1
        mem[_228] = cd[(cd[68] + cd[s] + 36)]
        require cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + 68 <= calldata.size
        mem[_228 + 32 len cd[(cd[68] + cd[s] + 36)]] = call.data[cd[68] + cd[s] + 68 len cd[(cd[68] + cd[s] + 36)]]
        mem[_228 + cd[(cd[68] + cd[s] + 36)] + 32] = 0
        mem[t] = _228
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if mem[96] != mem[ceil32(32 * ('cd', 4).length) + 97]:
        revert with 0, 'array len not match'
    if mem[ceil32(32 * ('cd', 4).length) + 97] != mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
        revert with 0, 'array len not match'
    if not stor8.length:
        _295 = mem[96]
        idx = 0
        s = 0
        while idx < _295:
            _296 = mem[64]
            mem[64] = mem[64] + 128
            mem[_296] = 0
            mem[_296 + 32] = 0
            mem[_296 + 64] = 0
            mem[_296 + 96] = 96
            if idx >= mem[96]:
                revert with 0, 50
            mem[_296] = mem[(32 * idx) + 159 len 1]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[_296 + 32] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 159 len 2]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                revert with 0, 50
            mem[_296 + 96] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
            stor8.length++
            mem[0] = 8
            uint8(stor8[stor8.length].field_0) = mem[_296 + 31 len 1]
            uint16(stor8[stor8.length].field_8) = mem[_296 + 62 len 2]
            uint16(stor8[stor8.length].field_24) = 0
            stor8[stor8.length].field_256 % 1 = 0
            _308 = mem[_296 + 96]
            _309 = mem[mem[_296 + 96]]
            if bool(storF3F7[stor8.length].field_0):
                if bool(storF3F7[stor8.length].field_0) == uint255(uint256(storF3F7[stor8.length].field_0)) * 0.5 < 32:
                    revert with 0, 34
                mem[0] = (2 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                if not _309:
                    uint256(storF3F7[stor8.length].field_0) = 0
                    t = sha3((2 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c)
                    while sha3((2 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c) + ((uint255(uint256(storF3F7[stor8.length].field_0)) * 0.5) + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        _295 = mem[96]
                        t = t + 1
                        continue 
                else:
                    uint256(storF3F7[stor8.length].field_0) = (2 * _309) + 1
                    u = sha3((2 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c)
                    t = _308 + 32
                    while _308 + _309 + 32 > t:
                        uint256(stor[u].field_0) = mem[t]
                        _295 = mem[96]
                        u = u + 1
                        t = t + 32
                        continue 
                    t = sha3((2 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c) + (Mask(251, 0, _309 + 31) >> 5)
                    while sha3((2 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c) + ((uint255(uint256(storF3F7[stor8.length].field_0)) * 0.5) + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        _295 = mem[96]
                        t = t + 1
                        continue 
            else:
                if bool(storF3F7[stor8.length].field_0) == storF3F7[stor8.length].field_1 % 128 < 32:
                    revert with 0, 34
                mem[0] = (2 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                if not _309:
                    uint256(storF3F7[stor8.length].field_0) = 0
                    t = sha3((2 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c)
                    while sha3((2 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c) + (storF3F7[stor8.length].field_1 % 128 + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        _295 = mem[96]
                        t = t + 1
                        continue 
                else:
                    uint256(storF3F7[stor8.length].field_0) = (2 * _309) + 1
                    u = sha3((2 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c)
                    t = _308 + 32
                    while _308 + _309 + 32 > t:
                        uint256(stor[u].field_0) = mem[t]
                        _295 = mem[96]
                        u = u + 1
                        t = t + 32
                        continue 
                    t = sha3((2 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c) + (Mask(251, 0, _309 + 31) >> 5)
                    while sha3((2 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c) + (storF3F7[stor8.length].field_1 % 128 + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        _295 = mem[96]
                        t = t + 1
                        continue 
            if s > !mem[_296 + 62 len 2]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            _295 = mem[96]
            idx = idx + 1
            s = s + mem[_296 + 62 len 2]
            continue 
    else:
        stor8.length = 0
        mem[0] = 8
        idx = 0
        while sha3(8) + (2 * stor8.length) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])].field_0 % 1099511627776 = 0
            if bool(stor[idx + sha3(mem[0]) + 1].field_0):
                if bool(stor[idx + sha3(mem[0]) + 1].field_0) == uint255(uint256(stor[idx + sha3(mem[0]) + 1].field_0)) * 0.5 < 32:
                    revert with 0, 34
                uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
                if 31 < uint255(uint256(stor[idx + sha3(mem[0]) + 1].field_0)) * 0.5:
                    mem[0] = idx + sha3(mem[0]) + 1
                    s = sha3(idx + sha3(mem[0]) + 1)
                    while sha3(idx + sha3(mem[0]) + 1) + ((uint255(uint256(stor[idx + sha3(mem[0]) + 1].field_0)) * 0.5) + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            else:
                if bool(stor[idx + sha3(mem[0]) + 1].field_0) == stor[idx + sha3(mem[0]) + 1].field_1 % 128 < 32:
                    revert with 0, 34
                uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
                if 31 < stor[idx + sha3(mem[0]) + 1].field_1 % 128:
                    mem[0] = idx + sha3(mem[0]) + 1
                    s = sha3(idx + sha3(mem[0]) + 1)
                    while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].field_1 % 128 + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            idx = idx + 2
            continue 
        _355 = mem[96]
        idx = 0
        s = 0
        while idx < _355:
            _358 = mem[64]
            mem[64] = mem[64] + 128
            mem[_358] = 0
            mem[_358 + 32] = 0
            mem[_358 + 64] = 0
            mem[_358 + 96] = 96
            if idx >= mem[96]:
                revert with 0, 50
            mem[_358] = mem[(32 * idx) + 159 len 1]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[_358 + 32] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 159 len 2]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                revert with 0, 50
            mem[_358 + 96] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
            stor8.length++
            mem[0] = 8
            uint8(stor8[stor8.length].field_0) = mem[_358 + 31 len 1]
            uint16(stor8[stor8.length].field_8) = mem[_358 + 62 len 2]
            uint16(stor8[stor8.length].field_24) = 0
            stor8[stor8.length].field_256 % 1 = 0
            _376 = mem[_358 + 96]
            _377 = mem[mem[_358 + 96]]
            if bool(storF3F7[stor8.length].field_0):
                if bool(storF3F7[stor8.length].field_0) == uint255(uint256(storF3F7[stor8.length].field_0)) * 0.5 < 32:
                    revert with 0, 34
                mem[0] = (2 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                if not _377:
                    uint256(storF3F7[stor8.length].field_0) = 0
                    t = sha3((2 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c)
                    while sha3((2 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c) + ((uint255(uint256(storF3F7[stor8.length].field_0)) * 0.5) + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        _355 = mem[96]
                        t = t + 1
                        continue 
                else:
                    uint256(storF3F7[stor8.length].field_0) = (2 * _377) + 1
                    u = sha3((2 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c)
                    t = _376 + 32
                    while _376 + _377 + 32 > t:
                        uint256(stor[u].field_0) = mem[t]
                        _355 = mem[96]
                        u = u + 1
                        t = t + 32
                        continue 
                    t = sha3((2 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c) + (Mask(251, 0, _377 + 31) >> 5)
                    while sha3((2 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c) + ((uint255(uint256(storF3F7[stor8.length].field_0)) * 0.5) + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        _355 = mem[96]
                        t = t + 1
                        continue 
            else:
                if bool(storF3F7[stor8.length].field_0) == storF3F7[stor8.length].field_1 % 128 < 32:
                    revert with 0, 34
                mem[0] = (2 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                if not _377:
                    uint256(storF3F7[stor8.length].field_0) = 0
                    t = sha3((2 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c)
                    while sha3((2 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c) + (storF3F7[stor8.length].field_1 % 128 + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        _355 = mem[96]
                        t = t + 1
                        continue 
                else:
                    uint256(storF3F7[stor8.length].field_0) = (2 * _377) + 1
                    u = sha3((2 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c)
                    t = _376 + 32
                    while _376 + _377 + 32 > t:
                        uint256(stor[u].field_0) = mem[t]
                        _355 = mem[96]
                        u = u + 1
                        t = t + 32
                        continue 
                    t = sha3((2 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c) + (Mask(251, 0, _377 + 31) >> 5)
                    while sha3((2 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c) + (storF3F7[stor8.length].field_1 % 128 + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        _355 = mem[96]
                        t = t + 1
                        continue 
            if s > !mem[_358 + 62 len 2]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            _355 = mem[96]
            idx = idx + 1
            s = s + mem[_358 + 62 len 2]
            continue 
    if s > MAX_SUPPLY:
        revert with 0, 'exceed max supply'
}



}
