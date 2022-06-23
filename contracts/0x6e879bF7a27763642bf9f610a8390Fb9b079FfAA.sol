contract main {




// =====================  Runtime code  =====================


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
address owner;
uint256 stor7;
mapping of struct sub_d4d0de70;
mapping of struct sub_bc1d241d;
mapping of struct stor10;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
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

function owner() payable {
    return owner
}

function sub_bc1d241d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721URIStorage: nonexistent token'
    return sub_bc1d241d[arg1].field_0, 
           sub_bc1d241d[arg1].field_256,
           sub_bc1d241d[arg1].field_512,
           sub_bc1d241d[arg1].field_768,
           sub_bc1d241d[arg1].field_1024,
           sub_bc1d241d[arg1].field_1280
}

function sub_d4d0de70(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721URIStorage: nonexistent token'
    return sub_d4d0de70[arg1].field_0, 
           sub_d4d0de70[arg1].field_256,
           sub_d4d0de70[arg1].field_512,
           sub_d4d0de70[arg1].field_768,
           sub_d4d0de70[arg1].field_1024,
           sub_d4d0de70[arg1].field_1280
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
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_29fffc1d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721URIStorage: nonexistent token'
    sub_d4d0de70[arg1].field_0 = sub_bc1d241d[arg1].field_0
    sub_d4d0de70[arg1].field_256 = sub_bc1d241d[arg1].field_256
    sub_d4d0de70[arg1].field_512 = sub_bc1d241d[arg1].field_512
    sub_d4d0de70[arg1].field_768 = sub_bc1d241d[arg1].field_768
    sub_d4d0de70[arg1].field_1024 = sub_bc1d241d[arg1].field_1024
    sub_d4d0de70[arg1].field_1280 = sub_bc1d241d[arg1].field_1280
    sub_bc1d241d[arg1].field_0 = 0
    sub_bc1d241d[arg1].field_256 = 0
    sub_bc1d241d[arg1].field_512 = 0
    sub_bc1d241d[arg1].field_768 = 0
    sub_bc1d241d[arg1].field_1024 = 0
    sub_bc1d241d[arg1].field_1280 = 0
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

function sub_281a5a1f(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == address(arg5)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7++
    if not address(arg1):
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor7]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(arg1)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]++
    ownerOf[stor7] = address(arg1)
    emit Transfer(0, address(arg1), stor7);
    if not ownerOf[stor7]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721URIStorage: nonexistent token'
    sub_bc1d241d[stor7].field_0 = block.number
    sub_bc1d241d[stor7].field_256 = block.timestamp
    sub_bc1d241d[stor7].field_512 = arg2
    sub_bc1d241d[stor7].field_768 = arg3
    sub_bc1d241d[stor7].field_1024 = arg4
    sub_bc1d241d[stor7].field_1280 = address(arg5)
    return stor7
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721URIStorage: nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor2[arg1]] < 1:
        revert with 'NH{q', 17
    balanceOf[stor2[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
    sub_bc1d241d[arg1].field_0 = 0
    sub_bc1d241d[arg1].field_256 = 0
    sub_bc1d241d[arg1].field_512 = 0
    sub_bc1d241d[arg1].field_768 = 0
    sub_bc1d241d[arg1].field_1024 = 0
    sub_bc1d241d[arg1].field_1280 = 0
}

function setTokenURI(uint256 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor10[arg1].field_0:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor10[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor10[arg1].field_0 = 0
            idx = 0
            while stor10[arg1].field_1 + 31 / 32 > idx:
                stor10[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor10[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor10[arg1].field_0 = 0
            idx = 0
            while stor10[arg1].field_1 + 31 / 32 > idx:
                stor10[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
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
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(arg2)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: only available to verified users'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721URIStorage: nonexistent token'
    if not sub_bc1d241d[arg3].field_1280:
        revert with 0, 'ERC721: KYC token can not be moved'
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
    if not arg2:
        revert with 0, 'ERC721: balance query for the zero address'
    if balanceOf[address(arg2)] <= 0:
        revert with 0, 'ERC721: only available to verified users'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721URIStorage: nonexistent token'
    if not sub_bc1d241d[arg3].field_1280:
        revert with 0, 'ERC721: KYC token can not be moved'
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
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, 128, 0
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
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not arg2:
        revert with 0, 'ERC721: balance query for the zero address'
    if balanceOf[address(arg2)] <= 0:
        revert with 0, 'ERC721: only available to verified users'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721URIStorage: nonexistent token'
    if not sub_bc1d241d[arg3].field_1280:
        revert with 0, 'ERC721: KYC token can not be moved'
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
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
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

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721URIStorage: nonexistent token'
    if stor10[stor9[arg1].field_768].field_0:
        if stor10[stor9[arg1].field_768].field_0 == stor10[stor9[arg1].field_768].field_1 < 32:
            revert with 'NH{q', 34
        if stor10[stor9[arg1].field_768].field_0:
            if stor10[stor9[arg1].field_768].field_0 == stor10[stor9[arg1].field_768].field_1 < 32:
                revert with 'NH{q', 34
            if stor10[stor9[arg1].field_768].field_1:
                if 31 < stor10[stor9[arg1].field_768].field_1:
                    mem[320] = stor10[stor9[arg1].field_768].field_0
                    idx = 320
                    s = 0
                    while stor10[stor9[arg1].field_768].field_1 + 288 > idx:
                        mem[idx + 32] = stor10[stor9[arg1].field_768][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if not stor10[stor9[arg1].field_768].field_1:
                        return ''
                    return Array(len=2 * Mask(256, -1, stor10[stor9[arg1].field_768].field_1), data=mem[320 len ceil32(stor10[stor9[arg1].field_768].field_1)]), 
                mem[320] = 256 * stor10[stor9[arg1].field_768].field_8
        else:
            if stor10[stor9[arg1].field_768].field_0 == stor10[stor9[arg1].field_768].field_1 < 32:
                revert with 'NH{q', 34
            if stor10[stor9[arg1].field_768].field_1:
                if 31 < stor10[stor9[arg1].field_768].field_1:
                    mem[320] = stor10[stor9[arg1].field_768].field_0
                    idx = 320
                    s = 0
                    while stor10[stor9[arg1].field_768].field_1 + 288 > idx:
                        mem[idx + 32] = stor10[stor9[arg1].field_768][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if not stor10[stor9[arg1].field_768].field_1:
                        return ''
                    return Array(len=2 * Mask(256, -1, stor10[stor9[arg1].field_768].field_1), data=mem[320 len ceil32(stor10[stor9[arg1].field_768].field_1)]), 
                mem[320] = 256 * stor10[stor9[arg1].field_768].field_8
        if not stor10[stor9[arg1].field_768].field_1:
            return ''
        mem[ceil32(stor10[stor9[arg1].field_768].field_1) + 384 len ceil32(stor10[stor9[arg1].field_768].field_1)] = mem[320 len ceil32(stor10[stor9[arg1].field_768].field_1)]
        if ceil32(stor10[stor9[arg1].field_768].field_1) > stor10[stor9[arg1].field_768].field_1:
            mem[ceil32(stor10[stor9[arg1].field_768].field_1) + stor10[stor9[arg1].field_768].field_1 + 384] = 0
        return Array(len=2 * Mask(256, -1, stor10[stor9[arg1].field_768].field_1), data=mem[320 len ceil32(stor10[stor9[arg1].field_768].field_1)], mem[(2 * ceil32(stor10[stor9[arg1].field_768].field_1)) + 384 len 2 * ceil32(stor10[stor9[arg1].field_768].field_1)]), 
    if stor10[stor9[arg1].field_768].field_0 == stor10[stor9[arg1].field_768].field_1 < 32:
        revert with 'NH{q', 34
    if stor10[stor9[arg1].field_768].field_0:
        if stor10[stor9[arg1].field_768].field_0 == stor10[stor9[arg1].field_768].field_1 < 32:
            revert with 'NH{q', 34
        if stor10[stor9[arg1].field_768].field_1:
            if 31 < stor10[stor9[arg1].field_768].field_1:
                mem[320] = stor10[stor9[arg1].field_768].field_0
                idx = 320
                s = 0
                while stor10[stor9[arg1].field_768].field_1 + 288 > idx:
                    mem[idx + 32] = stor10[stor9[arg1].field_768][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if not stor10[stor9[arg1].field_768].field_1:
                    return ''
                return Array(len=stor10[stor9[arg1].field_768].field_0, data=mem[320 len ceil32(stor10[stor9[arg1].field_768].field_1)])
            mem[320] = 256 * stor10[stor9[arg1].field_768].field_8
    else:
        if stor10[stor9[arg1].field_768].field_0 == stor10[stor9[arg1].field_768].field_1 < 32:
            revert with 'NH{q', 34
        if stor10[stor9[arg1].field_768].field_1:
            if 31 < stor10[stor9[arg1].field_768].field_1:
                mem[320] = stor10[stor9[arg1].field_768].field_0
                idx = 320
                s = 0
                while stor10[stor9[arg1].field_768].field_1 + 288 > idx:
                    mem[idx + 32] = stor10[stor9[arg1].field_768][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if not stor10[stor9[arg1].field_768].field_1:
                    return ''
                return Array(len=stor10[stor9[arg1].field_768].field_0, data=mem[320 len ceil32(stor10[stor9[arg1].field_768].field_1)])
            mem[320] = 256 * stor10[stor9[arg1].field_768].field_8
    if not stor10[stor9[arg1].field_768].field_1:
        return ''
    mem[ceil32(stor10[stor9[arg1].field_768].field_1) + 384 len ceil32(stor10[stor9[arg1].field_768].field_1)] = mem[320 len ceil32(stor10[stor9[arg1].field_768].field_1)]
    if ceil32(stor10[stor9[arg1].field_768].field_1) > stor10[stor9[arg1].field_768].field_1:
        mem[ceil32(stor10[stor9[arg1].field_768].field_1) + stor10[stor9[arg1].field_768].field_1 + 384] = 0
    return Array(len=stor10[stor9[arg1].field_768].field_0, data=mem[320 len ceil32(stor10[stor9[arg1].field_768].field_1)], mem[(2 * ceil32(stor10[stor9[arg1].field_768].field_1)) + 384 len 2 * ceil32(stor10[stor9[arg1].field_768].field_1)]), 
}



}