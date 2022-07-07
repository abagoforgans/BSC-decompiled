contract main {




// =====================  Runtime code  =====================


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor7;
array of uint256 tokenByIndex;
mapping of uint256 stor9;
address owner;
uint256 stor11;
array of struct stor12;
mapping of uint256 sub_81b7aa63;
mapping of uint256 sub_f3eb5287;
mapping of uint8 stor15;
uint256 sub_38ec0a99;
uint256 sub_5b9f60ff;
uint256 sub_ec04cdd3;
address sub_391e2ee2Address;
address nftContractAddress;
address tokenContractAddress;
address sub_2c6d1909Address;

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

function sub_2c6d1909(?) payable {
    return sub_2c6d1909Address
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

function sub_38ec0a99(?) payable {
    return sub_38ec0a99
}

function sub_391e2ee2(?) payable {
    return sub_391e2ee2Address
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function sub_5b9f60ff(?) payable {
    return sub_5b9f60ff
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

function sub_81b7aa63(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_81b7aa63[arg1]
}

function tokenContractAddress() payable {
    return tokenContractAddress
}

function owner() payable {
    return owner
}

function nftContractAddress() payable {
    return nftContractAddress
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function sub_ec04cdd3(?) payable {
    return sub_ec04cdd3
}

function sub_f3eb5287(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_f3eb5287[arg1]
}

function minters(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor15[arg1])
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

function sub_4ad32030(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_391e2ee2Address = address(arg1)
}

function sub_9d3812de(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2c6d1909Address = address(arg1)
}

function setNftContractAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    nftContractAddress = arg1
}

function setTokenContractAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenContractAddress = arg1
}

function setMinter(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor15[address(arg1)] = uint8(arg2)
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    return ''
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_accb6e7a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Box openable at must be in the future'
    sub_5b9f60ff = arg1
}

function sub_17b8fabd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DNL reward claimable at must be in the future'
    sub_ec04cdd3 = arg1
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

function sub_161344e6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= stor12.length:
        revert with 'NH{q', 50
    if stor12[arg1].field_520 > 1:
        revert with 'NH{q', 33
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if stor12[arg1].field_520 >= 2:
        revert with 'NH{q', 33
    return stor12[arg1].field_0, stor12[arg1].field_256, bool(stor12[arg1].field_512), ownerOf[arg1], stor12[arg1].field_520
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x780e9d6300000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function withdrawToken(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_aacc3db5(?) payable {
    require not uint32(ext_code.size(msg.sender))
    require msg.sender == tx.origin
    if stor11 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor11 = 2
    if block.timestamp <= sub_ec04cdd3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DNL reward not claimable at this time'
    if sub_f3eb5287[address(msg.sender)] <= 0:
        revert with 0, 'You have no DNL reward to claim'
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_f3eb5287[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    sub_f3eb5287[address(msg.sender)] = 0
    stor11 = 1
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
        if not stor5[stor2[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
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
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor7[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
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
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor7[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
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

function name() payable {
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
        if ceil32(stor0.length.field_1) > stor0.length.field_1:
            mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() payable {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function openBox(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require not uint32(ext_code.size(msg.sender))
    require msg.sender == tx.origin
    if stor11 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor11 = 2
    if arg1 >= stor12.length:
        revert with 'NH{q', 50
    if block.timestamp < sub_5b9f60ff:
        revert with 0, 'Box is not openable yet'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not the owner of this box'
    if bool(stor12[arg1].field_512) != 1:
        revert with 0, 'Box is not available'
    stor12[arg1].field_512 = 0
    if stor12[arg1].field_520 >= 2:
        revert with 'NH{q', 33
    require ext_code.size(sub_2c6d1909Address)
    staticcall sub_2c6d1909Address.0x1633520a with:
            gas gas_remaining wei
           args arg1, stor12[arg1].field_0, stor12[arg1].field_520
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    if ext_call.return_data[0] > 0:
        if sub_f3eb5287[address(msg.sender)] > -ext_call.return_data[0] - 1:
            revert with 'NH{q', 17
        sub_f3eb5287[address(msg.sender)] += ext_call.return_data[0]
        if sub_38ec0a99 > -ext_call.return_data[0] - 1:
            revert with 'NH{q', 17
        sub_38ec0a99 += ext_call.return_data[0]
        if sub_81b7aa63[arg1] > -ext_call.return_data[0] - 1:
            revert with 'NH{q', 17
        sub_81b7aa63[arg1] += ext_call.return_data[0]
    if not ext_call.return_data[32]:
        if bool(block.timestamp) > -2:
            revert with 'NH{q', 17
        if not ext_call.return_data[64]:
            emit 0xb6b6d79d: ext_call.return_data[0], 0, 0, arg1, msg.sender
        else:
            require ext_code.size(nftContractAddress)
            call nftContractAddress.createDino(uint256 arg1, address arg2, uint128 arg3, uint128 arg4) with:
                 gas gas_remaining wei
                args ext_call.return_data[64], msg.sender, bool(block.timestamp) + 1 << 128, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            emit 0xb6b6d79d: ext_call.return_data[0], 0, ext_call.return_data[0], arg1, msg.sender
    else:
        if block.timestamp > -21601:
            revert with 'NH{q', 17
        require ext_code.size(sub_391e2ee2Address)
        call sub_391e2ee2Address.0x4c0269ab with:
             gas gas_remaining wei
            args ext_call.return_data[32], block.timestamp + (6 * 3600), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if bool(block.timestamp) > -2:
            revert with 'NH{q', 17
        if not ext_call.return_data[64]:
            emit 0xb6b6d79d: ext_call.return_data[0], ext_call.return_data[0], 0, arg1, msg.sender
        else:
            require ext_code.size(nftContractAddress)
            call nftContractAddress.createDino(uint256 arg1, address arg2, uint128 arg3, uint128 arg4) with:
                 gas gas_remaining wei
                args ext_call.return_data[64], msg.sender, bool(block.timestamp) + 1 << 128, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            emit 0xb6b6d79d: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], arg1, msg.sender
    stor11 = 1
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
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor7[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
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

function sub_c182b3b9(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 < 2
    if bool(stor15[address(msg.sender)]) == 1:
        idx = 0
        while idx < arg2:
            _74 = mem[64]
            mem[64] = mem[64] + 128
            mem[_74] = block.number
            mem[_74 + 32] = block.timestamp
            mem[_74 + 64] = 1
            if arg3 > 1:
                revert with 'NH{q', 33
            mem[_74 + 96] = arg3
            stor12.length++
            stor12[stor12.length].field_0 = block.number
            stor12[stor12.length].field_256 = block.timestamp
            stor12[stor12.length].field_512 = 1
            if arg3 > 1:
                revert with 'NH{q', 33
            stor12[stor12.length].field_520 = Mask(248, 0, arg3)
            if stor12.length < 1:
                revert with 'NH{q', 17
            if not address(arg1):
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor12.length - 1]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor12.length - 1] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = stor12.length - 1
            if address(arg1):
                tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = stor12.length - 1
                stor7[stor12.length - 1] = balanceOf[address(arg1)]
            else:
                if tokenByIndex.length < 1:
                    revert with 'NH{q', 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 'NH{q', 50
                if stor9[stor12.length - 1] >= tokenByIndex.length:
                    revert with 'NH{q', 50
                tokenByIndex[stor9[stor12.length - 1]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[stor12.length - 1]
                stor9[stor12.length - 1] = 0
                if not tokenByIndex.length:
                    revert with 'NH{q', 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            if balanceOf[address(arg1)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(arg1)]++
            mem[0] = stor12.length - 1
            mem[32] = 2
            ownerOf[stor12.length - 1] = address(arg1)
            emit Transfer(0, address(arg1), stor12.length - 1);
            emit 0xa97c845b: stor12.length - 1, address(arg1)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only minter or owner can call this function'
        idx = 0
        while idx < arg2:
            _75 = mem[64]
            mem[64] = mem[64] + 128
            mem[_75] = block.number
            mem[_75 + 32] = block.timestamp
            mem[_75 + 64] = 1
            if arg3 > 1:
                revert with 'NH{q', 33
            mem[_75 + 96] = arg3
            stor12.length++
            stor12[stor12.length].field_0 = block.number
            stor12[stor12.length].field_256 = block.timestamp
            stor12[stor12.length].field_512 = 1
            if arg3 > 1:
                revert with 'NH{q', 33
            stor12[stor12.length].field_520 = Mask(248, 0, arg3)
            if stor12.length < 1:
                revert with 'NH{q', 17
            if not address(arg1):
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor12.length - 1]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor12.length - 1] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = stor12.length - 1
            if address(arg1):
                tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = stor12.length - 1
                stor7[stor12.length - 1] = balanceOf[address(arg1)]
            else:
                if tokenByIndex.length < 1:
                    revert with 'NH{q', 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 'NH{q', 50
                if stor9[stor12.length - 1] >= tokenByIndex.length:
                    revert with 'NH{q', 50
                tokenByIndex[stor9[stor12.length - 1]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[stor12.length - 1]
                stor9[stor12.length - 1] = 0
                if not tokenByIndex.length:
                    revert with 'NH{q', 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            if balanceOf[address(arg1)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(arg1)]++
            mem[0] = stor12.length - 1
            mem[32] = 2
            ownerOf[stor12.length - 1] = address(arg1)
            emit Transfer(0, address(arg1), stor12.length - 1);
            emit 0xa97c845b: stor12.length - 1, address(arg1)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function sub_214ab093(?) payable {
    require calldata.size - 4 >= 96
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
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] < 2
    if bool(stor15[address(msg.sender)]) == 1:
        if ('cd', 4).length != ('cd', 36).length:
            revert with 0, 'Receivers and amounts must be the same length'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _509 = mem[(32 * idx) + 128]
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            _513 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
            mem[0] = msg.sender
            mem[32] = 15
            if bool(stor15[address(msg.sender)]) == 1:
                s = 0
                while s < _513:
                    _661 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_661] = block.number
                    mem[_661 + 32] = block.timestamp
                    mem[_661 + 64] = 1
                    if cd[68] > 1:
                        revert with 'NH{q', 33
                    mem[_661 + 96] = cd[68]
                    stor12.length++
                    stor12[stor12.length].field_0 = block.number
                    stor12[stor12.length].field_256 = block.timestamp
                    stor12[stor12.length].field_512 = 1
                    if cd[68] > 1:
                        revert with 'NH{q', 33
                    stor12[stor12.length].field_520 = Mask(248, 0, cd[68])
                    if stor12.length < 1:
                        revert with 'NH{q', 17
                    if not address(_509):
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[stor12.length - 1]:
                        revert with 0, 'ERC721: token already minted'
                    stor9[stor12.length - 1] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = stor12.length - 1
                    if address(_509):
                        tokenOfOwnerByIndex[address(_509)][stor3[address(_509)]] = stor12.length - 1
                        stor7[stor12.length - 1] = balanceOf[address(_509)]
                    else:
                        if tokenByIndex.length < 1:
                            revert with 'NH{q', 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        if stor9[stor12.length - 1] >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        tokenByIndex[stor9[stor12.length - 1]] = tokenByIndex[tokenByIndex.length]
                        stor9[stor8[stor8.length]] = stor9[stor12.length - 1]
                        stor9[stor12.length - 1] = 0
                        if not tokenByIndex.length:
                            revert with 'NH{q', 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    if balanceOf[address(_509)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(_509)]++
                    mem[0] = stor12.length - 1
                    mem[32] = 2
                    ownerOf[stor12.length - 1] = address(_509)
                    emit Transfer(0, address(_509), stor12.length - 1);
                    emit 0xa97c845b: stor12.length - 1, address(_509)
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    continue 
            else:
                if owner != msg.sender:
                    revert with 0, 'Only minter or owner can call this function'
                s = 0
                while s < _513:
                    _662 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_662] = block.number
                    mem[_662 + 32] = block.timestamp
                    mem[_662 + 64] = 1
                    if cd[68] > 1:
                        revert with 'NH{q', 33
                    mem[_662 + 96] = cd[68]
                    stor12.length++
                    stor12[stor12.length].field_0 = block.number
                    stor12[stor12.length].field_256 = block.timestamp
                    stor12[stor12.length].field_512 = 1
                    if cd[68] > 1:
                        revert with 'NH{q', 33
                    stor12[stor12.length].field_520 = Mask(248, 0, cd[68])
                    if stor12.length < 1:
                        revert with 'NH{q', 17
                    if not address(_509):
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[stor12.length - 1]:
                        revert with 0, 'ERC721: token already minted'
                    stor9[stor12.length - 1] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = stor12.length - 1
                    if address(_509):
                        tokenOfOwnerByIndex[address(_509)][stor3[address(_509)]] = stor12.length - 1
                        stor7[stor12.length - 1] = balanceOf[address(_509)]
                    else:
                        if tokenByIndex.length < 1:
                            revert with 'NH{q', 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        if stor9[stor12.length - 1] >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        tokenByIndex[stor9[stor12.length - 1]] = tokenByIndex[tokenByIndex.length]
                        stor9[stor8[stor8.length]] = stor9[stor12.length - 1]
                        stor9[stor12.length - 1] = 0
                        if not tokenByIndex.length:
                            revert with 'NH{q', 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    if balanceOf[address(_509)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(_509)]++
                    mem[0] = stor12.length - 1
                    mem[32] = 2
                    ownerOf[stor12.length - 1] = address(_509)
                    emit Transfer(0, address(_509), stor12.length - 1);
                    emit 0xa97c845b: stor12.length - 1, address(_509)
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if owner != msg.sender:
            revert with 0, 'Only minter or owner can call this function'
        if ('cd', 4).length != ('cd', 36).length:
            revert with 0, 'Receivers and amounts must be the same length'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _511 = mem[(32 * idx) + 128]
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            _514 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
            mem[0] = msg.sender
            mem[32] = 15
            if bool(stor15[address(msg.sender)]) == 1:
                s = 0
                while s < _514:
                    _663 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_663] = block.number
                    mem[_663 + 32] = block.timestamp
                    mem[_663 + 64] = 1
                    if cd[68] > 1:
                        revert with 'NH{q', 33
                    mem[_663 + 96] = cd[68]
                    stor12.length++
                    stor12[stor12.length].field_0 = block.number
                    stor12[stor12.length].field_256 = block.timestamp
                    stor12[stor12.length].field_512 = 1
                    if cd[68] > 1:
                        revert with 'NH{q', 33
                    stor12[stor12.length].field_520 = Mask(248, 0, cd[68])
                    if stor12.length < 1:
                        revert with 'NH{q', 17
                    if not address(_511):
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[stor12.length - 1]:
                        revert with 0, 'ERC721: token already minted'
                    stor9[stor12.length - 1] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = stor12.length - 1
                    if address(_511):
                        tokenOfOwnerByIndex[address(_511)][stor3[address(_511)]] = stor12.length - 1
                        stor7[stor12.length - 1] = balanceOf[address(_511)]
                    else:
                        if tokenByIndex.length < 1:
                            revert with 'NH{q', 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        if stor9[stor12.length - 1] >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        tokenByIndex[stor9[stor12.length - 1]] = tokenByIndex[tokenByIndex.length]
                        stor9[stor8[stor8.length]] = stor9[stor12.length - 1]
                        stor9[stor12.length - 1] = 0
                        if not tokenByIndex.length:
                            revert with 'NH{q', 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    if balanceOf[address(_511)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(_511)]++
                    mem[0] = stor12.length - 1
                    mem[32] = 2
                    ownerOf[stor12.length - 1] = address(_511)
                    emit Transfer(0, address(_511), stor12.length - 1);
                    emit 0xa97c845b: stor12.length - 1, address(_511)
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    continue 
            else:
                if owner != msg.sender:
                    revert with 0, 'Only minter or owner can call this function'
                s = 0
                while s < _514:
                    _664 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_664] = block.number
                    mem[_664 + 32] = block.timestamp
                    mem[_664 + 64] = 1
                    if cd[68] > 1:
                        revert with 'NH{q', 33
                    mem[_664 + 96] = cd[68]
                    stor12.length++
                    stor12[stor12.length].field_0 = block.number
                    stor12[stor12.length].field_256 = block.timestamp
                    stor12[stor12.length].field_512 = 1
                    if cd[68] > 1:
                        revert with 'NH{q', 33
                    stor12[stor12.length].field_520 = Mask(248, 0, cd[68])
                    if stor12.length < 1:
                        revert with 'NH{q', 17
                    if not address(_511):
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[stor12.length - 1]:
                        revert with 0, 'ERC721: token already minted'
                    stor9[stor12.length - 1] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = stor12.length - 1
                    if address(_511):
                        tokenOfOwnerByIndex[address(_511)][stor3[address(_511)]] = stor12.length - 1
                        stor7[stor12.length - 1] = balanceOf[address(_511)]
                    else:
                        if tokenByIndex.length < 1:
                            revert with 'NH{q', 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        if stor9[stor12.length - 1] >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        tokenByIndex[stor9[stor12.length - 1]] = tokenByIndex[tokenByIndex.length]
                        stor9[stor8[stor8.length]] = stor9[stor12.length - 1]
                        stor9[stor12.length - 1] = 0
                        if not tokenByIndex.length:
                            revert with 'NH{q', 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    if balanceOf[address(_511)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(_511)]++
                    mem[0] = stor12.length - 1
                    mem[32] = 2
                    ownerOf[stor12.length - 1] = address(_511)
                    emit Transfer(0, address(_511), stor12.length - 1);
                    emit 0xa97c845b: stor12.length - 1, address(_511)
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}



}
