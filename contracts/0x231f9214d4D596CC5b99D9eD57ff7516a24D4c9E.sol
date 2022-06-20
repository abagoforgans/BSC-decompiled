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
mapping of struct stor10;
uint8 paused;
address owner; offset 8
address sub_3747560aAddress;
mapping of uint8 stor13;
uint256 stor14;
mapping of address stor99;

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

function sub_3747560a(?) payable {
    return sub_3747560aAddress
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function paused() payable {
    return bool(paused)
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

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function pause() payable {
    require sub_3747560aAddress == msg.sender
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require sub_3747560aAddress == msg.sender
    stor13[address(arg1)] = 1
}

function removeMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require sub_3747560aAddress == msg.sender
    stor13[address(arg1)] = 0
}

function replaceOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require sub_3747560aAddress == msg.sender
    sub_3747560aAddress = arg1
}

function unpause() payable {
    require sub_3747560aAddress == msg.sender
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
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

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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

function sub_99459d9e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require stor13[address(msg.sender)]
    mem[ceil32(arg1.length) + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(arg1.length) + arg1.length + 128] = 15
    stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)] = 0
}

function sub_594c1554(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg2.length) + 128 > test266151307() or ceil32(arg2.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require stor13[address(msg.sender)]
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[ceil32(arg2.length) + arg2.length + 128] = 15
    stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)] = address(arg1)
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

function sub_6134866b(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
        revert with 'NH{q', 65
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[4] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _15 = mem[64]
        if mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32 > test266151307() or mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32
        mem[_15] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 <= calldata.size
        mem[_15 + 32 len cd[(cd[4] + cd[s] + 36)]] = call.data[cd[4] + cd[s] + 68 len cd[(cd[4] + cd[s] + 36)]]
        mem[_15 + cd[(cd[4] + cd[s] + 36)] + 32] = 0
        mem[t] = _15
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 13
    require stor13[address(msg.sender)]
    _26 = mem[96]
    idx = 0
    while idx < _26:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _28 = mem[(32 * idx) + 128]
        _29 = mem[64]
        _30 = mem[mem[(32 * idx) + 128]]
        s = 0
        while s < _30:
            mem[_29 + s] = mem[_28 + s + 32]
            _26 = mem[96]
            s = s + 32
            continue 
        mem[_29 + _30] = 15
        stor[sha3(mem[mem[64] len _29 + _30 + -mem[64] + 32])] = 0
        if idx == -1:
            revert with 'NH{q', 17
        _26 = mem[96]
        idx = idx + 1
        continue 
}

function sub_60a4108b(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
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
    if (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > test266151307() or (32 * ('cd', 36).length) + 160 < 128:
        revert with 'NH{q', 65
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _33 = mem[64]
        if mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 > test266151307() or mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_33] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_33 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_33 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _33
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 13
    require stor13[address(msg.sender)]
    _46 = mem[96]
    idx = 0
    while idx < _46:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _48 = mem[(32 * idx) + 128]
        if idx >= mem[(32 * ('cd', 4).length) + 128]:
            revert with 'NH{q', 50
        _50 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        _51 = mem[64]
        _52 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]
        s = 0
        while s < _52:
            mem[_51 + s] = mem[_50 + s + 32]
            _46 = mem[96]
            s = s + 32
            continue 
        mem[_51 + _52] = 15
        stor[sha3(mem[mem[64] len _51 + _52 + -mem[64] + 32])] = address(_48)
        if idx == -1:
            revert with 'NH{q', 17
        _46 = mem[96]
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
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if paused:
        revert with 0, 'Pausable: paused'
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
    if paused:
        revert with 0, 'Pausable: paused'
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
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg4.length) + 128 > test266151307() or ceil32(arg4.length) + 128 < 96:
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
    if paused:
        revert with 0, 'Pausable: paused'
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
    if ext_code.size(arg2) <= 0:
    require ext_code.size(arg2)
    call arg2 with:
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
    require not 0, ext_call.return_data[4 len 28]
    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function name() payable {
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor0.length.field_1):
                if 31 < uint255(stor0.length.field_1):
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor0.length.field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor0[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor0.length.field_1)), data=mem[128 len ceil32(uint255(stor0.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        else:
            if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, uint255(stor0.length.field_1)), data=mem[128 len ceil32(uint255(stor0.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        mem[ceil32(uint255(stor0.length.field_1)) + 192 len ceil32(uint255(stor0.length.field_1))] = mem[128 len ceil32(uint255(stor0.length.field_1))]
        if ceil32(uint255(stor0.length.field_1)) > uint255(stor0.length.field_1):
            mem[ceil32(uint255(stor0.length.field_1)) + uint255(stor0.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor0.length.field_1)), data=mem[128 len ceil32(uint255(stor0.length.field_1))], mem[(2 * ceil32(uint255(stor0.length.field_1))) + 192 len 2 * ceil32(uint255(stor0.length.field_1))]), 
    if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor0.length.field_1):
            if 31 < uint255(stor0.length.field_1):
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while uint255(stor0.length.field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor0[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    else:
        if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
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
            if not stor5[stor2[arg1]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Burnable: caller is not owner nor approved'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if paused:
        revert with 0, 'Pausable: paused'
    if not ownerOf[arg1]:
        stor9[arg1] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg1
    else:
        if balanceOf[stor2[arg1]] < 1:
            revert with 'NH{q', 17
        if stor7[arg1] != balanceOf[stor2[arg1]] - 1:
            tokenOfOwnerByIndex[stor2[arg1]][stor7[arg1]] = tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1]
            stor7[stor6[stor2[arg1]][stor3[stor2[arg1]] - 1]] = stor7[arg1]
        stor7[arg1] = 0
        tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 'NH{q', 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if stor9[arg1] >= tokenByIndex.length:
        revert with 'NH{q', 50
    tokenByIndex[stor9[arg1]] = tokenByIndex[tokenByIndex.length]
    stor9[stor8[stor8.length]] = stor9[arg1]
    stor9[arg1] = 0
    if not tokenByIndex.length:
        revert with 'NH{q', 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor2[arg1]] < 1:
        revert with 'NH{q', 17
    balanceOf[stor2[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
    if bool(stor10[arg1].field_0):
        if bool(stor10[arg1].field_0) == uint255(stor10[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor10[arg1].field_1):
            if bool(stor10[arg1].field_0):
                if bool(stor10[arg1].field_0) == uint255(stor10[arg1].field_1) < 32:
                    revert with 'NH{q', 34
                uint256(stor10[arg1].field_0) = 0
                if 31 < uint255(stor10[arg1].field_1):
                    idx = 0
                    while uint255(stor10[arg1].field_1) + 31 / 32 > idx:
                        uint256(stor10[arg1][idx].field_0) = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor10[arg1].field_0) == stor10[arg1].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                uint256(stor10[arg1].field_0) = 0
                if 31 < stor10[arg1].field_1 % 128:
                    idx = 0
                    while stor10[arg1].field_1 % 128 + 31 / 32 > idx:
                        uint256(stor10[arg1][idx].field_0) = 0
                        idx = idx + 1
                        continue 
    else:
        if bool(stor10[arg1].field_0) == stor10[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor10[arg1].field_1 % 128:
            if bool(stor10[arg1].field_0):
                if bool(stor10[arg1].field_0) == uint255(stor10[arg1].field_1) < 32:
                    revert with 'NH{q', 34
                uint256(stor10[arg1].field_0) = 0
                if 31 < uint255(stor10[arg1].field_1):
                    idx = 0
                    while uint255(stor10[arg1].field_1) + 31 / 32 > idx:
                        uint256(stor10[arg1][idx].field_0) = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor10[arg1].field_0) == stor10[arg1].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                uint256(stor10[arg1].field_0) = 0
                if 31 < stor10[arg1].field_1 % 128:
                    idx = 0
                    while stor10[arg1].field_1 % 128 + 31 / 32 > idx:
                        uint256(stor10[arg1][idx].field_0) = 0
                        idx = idx + 1
                        continue 
}

function safeMint(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg2.length) + 128 > test266151307() or ceil32(arg2.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[ceil32(arg2.length) + arg2.length + 128] = 15
    if stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)] != arg1:
        revert with 0, 'Not reserve'
    stor14++
    mem[ceil32(arg2.length) + 128] = 0
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor14]:
        revert with 0, 'ERC721: token already minted'
    if paused:
        revert with 0, 'Pausable: paused'
    stor9[stor14] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor14
    if arg1:
        tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = stor14
        stor7[stor14] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[stor14] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[stor14]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor14]
        stor9[stor14] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(arg1)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]++
    ownerOf[stor14] = arg1
    emit Transfer(0, arg1, stor14);
    if ext_code.size(arg1) <= 0:
        if not ownerOf[stor14]:
            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
        if bool(stor10[stor14].field_0):
            if bool(stor10[stor14].field_0) == uint255(stor10[stor14].field_1) < 32:
                revert with 'NH{q', 34
            if arg2.length:
                uint256(stor10[stor14][].field_0) = Array(len=arg2.length, data=arg2[all])
            else:
                uint256(stor10[stor14].field_0) = 0
                idx = 0
                while uint255(stor10[stor14].field_1) + 31 / 32 > idx:
                    uint256(stor10[stor14][idx].field_0) = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor10[stor14].field_0) == stor10[stor14].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if arg2.length:
                uint256(stor10[stor14][].field_0) = Array(len=arg2.length, data=arg2[all])
            else:
                uint256(stor10[stor14].field_0) = 0
                idx = 0
                while stor10[stor14].field_1 % 128 + 31 / 32 > idx:
                    uint256(stor10[stor14][idx].field_0) = 0
                    idx = idx + 1
                    continue 
        mem[ceil32(arg2.length) + 160 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        mem[ceil32(arg2.length) + arg2.length + 160] = 15
        stor[mem[(2 * ceil32(arg2.length)) + 160 len arg2.length + -ceil32(arg2.length) + 32]][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256] = 0
    else:
        mem[ceil32(arg2.length) + 164] = msg.sender
        mem[ceil32(arg2.length) + 196] = 0
        mem[ceil32(arg2.length) + 228] = stor14
        mem[ceil32(arg2.length) + 260] = 128
        mem[ceil32(arg2.length) + 292] = 0
        mem[ceil32(arg2.length) + 324 len 0] = None
        require ext_code.size(arg1)
        call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, 0, stor14, 128, 0
        mem[ceil32(arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            if not return_data.size:
                if not arg2.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg2[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if not ownerOf[stor14]:
            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
        if bool(stor10[stor14].field_0):
            if bool(stor10[stor14].field_0) == uint255(stor10[stor14].field_1) < 32:
                revert with 'NH{q', 34
            if arg2.length:
                uint256(stor10[stor14][].field_0) = Array(len=arg2.length, data=arg2[all])
            else:
                uint256(stor10[stor14].field_0) = 0
                idx = 0
                while uint255(stor10[stor14].field_1) + 31 / 32 > idx:
                    uint256(stor10[stor14][idx].field_0) = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor10[stor14].field_0) == stor10[stor14].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if arg2.length:
                uint256(stor10[stor14][].field_0) = Array(len=arg2.length, data=arg2[all])
            else:
                uint256(stor10[stor14].field_0) = 0
                idx = 0
                while stor10[stor14].field_1 % 128 + 31 / 32 > idx:
                    uint256(stor10[stor14][idx].field_0) = 0
                    idx = idx + 1
                    continue 
        mem[ceil32(arg2.length) + ceil32(return_data.size) + 160 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        mem[ceil32(arg2.length) + ceil32(return_data.size) + arg2.length + 160] = 15
        stor[mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 160 len arg2.length + -ceil32(arg2.length) + 32]][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256] = 0
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721URIStorage: URI query for nonexistent token'
    if bool(stor10[arg1].field_0):
        if bool(stor10[arg1].field_0) == uint255(stor10[arg1].field_1) < 32:
            revert with 'NH{q', 34
        mem[96] = uint255(stor10[arg1].field_1)
        if bool(stor10[arg1].field_0):
            if bool(stor10[arg1].field_0) == uint255(stor10[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor10[arg1].field_1):
                if 31 >= uint255(stor10[arg1].field_1):
                    mem[128] = 256 * Mask(248, 0, stor10[arg1].field_8)
                else:
                    mem[128] = uint256(stor10[arg1].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor10[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor10[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor10[arg1].field_0) == stor10[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor10[arg1].field_1 % 128:
                if 31 >= stor10[arg1].field_1 % 128:
                    mem[128] = 256 * Mask(248, 0, stor10[arg1].field_8)
                else:
                    mem[128] = uint256(stor10[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor10[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor10[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        if uint255(stor10[arg1].field_1) > 0:
            mem[ceil32(uint255(stor10[arg1].field_1)) + 256 len 64] = 0xfe68747470733a2f2f646174616e66742e6d657a75726173686967616d652e636f6d, mem[ceil32(uint255(stor10[arg1].field_1)) + 194 len 30]
            mem[ceil32(uint255(stor10[arg1].field_1)) + 290] = 0
            mem[ceil32(uint255(stor10[arg1].field_1)) + 290 len ceil32(uint255(stor10[arg1].field_1))] = mem[128 len ceil32(uint255(stor10[arg1].field_1))]
            mem[ceil32(uint255(stor10[arg1].field_1)) + uint255(stor10[arg1].field_1) + 290] = 32
            mem[ceil32(uint255(stor10[arg1].field_1)) + uint255(stor10[arg1].field_1) + 322] = mem[ceil32(uint255(stor10[arg1].field_1)) + 224]
            mem[ceil32(uint255(stor10[arg1].field_1)) + uint255(stor10[arg1].field_1) + 354 len ceil32(mem[ceil32(uint255(stor10[arg1].field_1)) + 224])] = mem[ceil32(uint255(stor10[arg1].field_1)) + 256 len ceil32(mem[ceil32(uint255(stor10[arg1].field_1)) + 224])]
            if ceil32(mem[ceil32(uint255(stor10[arg1].field_1)) + 224]) <= mem[ceil32(uint255(stor10[arg1].field_1)) + 224]:
                return Array(len=mem[ceil32(uint255(stor10[arg1].field_1)) + 224], data=mem[ceil32(uint255(stor10[arg1].field_1)) + uint255(stor10[arg1].field_1) + 354 len ceil32(mem[ceil32(uint255(stor10[arg1].field_1)) + 224])]), 
            mem[ceil32(uint255(stor10[arg1].field_1)) + uint255(stor10[arg1].field_1) + mem[ceil32(uint255(stor10[arg1].field_1)) + 224] + 354] = 0
            return 32, mem[ceil32(uint255(stor10[arg1].field_1)) + uint255(stor10[arg1].field_1) + 322 len ceil32(mem[ceil32(uint255(stor10[arg1].field_1)) + 224]) + 32], 
        mem[0] = arg1
        mem[32] = 2
        if not ownerOf[arg1]:
            revert with 0, 'ERC721Metadata: URI query for nonexistent token'
        if not arg1:
            mem[ceil32(uint255(stor10[arg1].field_1)) + 416 len 64] = 0xfe68747470733a2f2f646174616e66742e6d657a75726173686967616d652e636f6d, mem[ceil32(uint255(stor10[arg1].field_1)) + 290 len 30]
            mem[ceil32(uint255(stor10[arg1].field_1)) + 450] = '0'
            mem[ceil32(uint255(stor10[arg1].field_1)) + 451] = 32
            mem[ceil32(uint255(stor10[arg1].field_1)) + 483] = mem[ceil32(uint255(stor10[arg1].field_1)) + 384]
            mem[ceil32(uint255(stor10[arg1].field_1)) + 515 len ceil32(mem[ceil32(uint255(stor10[arg1].field_1)) + 384])] = mem[ceil32(uint255(stor10[arg1].field_1)) + 416 len ceil32(mem[ceil32(uint255(stor10[arg1].field_1)) + 384])]
            if ceil32(mem[ceil32(uint255(stor10[arg1].field_1)) + 384]) > mem[ceil32(uint255(stor10[arg1].field_1)) + 384]:
                mem[ceil32(uint255(stor10[arg1].field_1)) + mem[ceil32(uint255(stor10[arg1].field_1)) + 384] + 515] = 0
            return Array(len=mem[ceil32(uint255(stor10[arg1].field_1)) + 384], data=mem[ceil32(uint255(stor10[arg1].field_1)) + 515 len ceil32(mem[ceil32(uint255(stor10[arg1].field_1)) + 384])]), 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(uint255(stor10[arg1].field_1)) + 320] = s
        if s:
            mem[ceil32(uint255(stor10[arg1].field_1)) + 352 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(uint255(stor10[arg1].field_1)) + 320]:
                revert with 'NH{q', 50
            mem[t + ceil32(uint255(stor10[arg1].field_1)) + 351 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor10[arg1].field_1)) + ceil32(s) + 384 len 64] = 0xfe68747470733a2f2f646174616e66742e6d657a75726173686967616d652e636f6d, mem[ceil32(uint255(stor10[arg1].field_1)) + 290 len 30]
        mem[ceil32(uint255(stor10[arg1].field_1)) + ceil32(s) + 418] = 0
        mem[ceil32(uint255(stor10[arg1].field_1)) + ceil32(s) + 418 len ceil32(mem[ceil32(uint255(stor10[arg1].field_1)) + 320])] = mem[ceil32(uint255(stor10[arg1].field_1)) + 352 len ceil32(mem[ceil32(uint255(stor10[arg1].field_1)) + 320])]
        mem[64] = ceil32(uint255(stor10[arg1].field_1)) + ceil32(s) + mem[ceil32(uint255(stor10[arg1].field_1)) + 320] + 418
        mem[ceil32(uint255(stor10[arg1].field_1)) + ceil32(s) + mem[ceil32(uint255(stor10[arg1].field_1)) + 320] + 418] = 32
        mem[ceil32(uint255(stor10[arg1].field_1)) + ceil32(s) + mem[ceil32(uint255(stor10[arg1].field_1)) + 320] + 450] = mem[ceil32(uint255(stor10[arg1].field_1)) + ceil32(s) + 352]
        mem[ceil32(uint255(stor10[arg1].field_1)) + ceil32(s) + mem[ceil32(uint255(stor10[arg1].field_1)) + 320] + 482 len ceil32(mem[ceil32(uint255(stor10[arg1].field_1)) + ceil32(s) + 352])] = mem[ceil32(uint255(stor10[arg1].field_1)) + ceil32(s) + 384 len ceil32(mem[ceil32(uint255(stor10[arg1].field_1)) + ceil32(s) + 352])]
        if ceil32(mem[ceil32(uint255(stor10[arg1].field_1)) + ceil32(s) + 352]) > mem[ceil32(uint255(stor10[arg1].field_1)) + ceil32(s) + 352]:
            mem[ceil32(uint255(stor10[arg1].field_1)) + ceil32(s) + mem[ceil32(uint255(stor10[arg1].field_1)) + 320] + mem[ceil32(uint255(stor10[arg1].field_1)) + ceil32(s) + 352] + 482] = 0
        return Array(len=mem[ceil32(uint255(stor10[arg1].field_1)) + ceil32(s) + 352], data=mem[ceil32(uint255(stor10[arg1].field_1)) + ceil32(s) + mem[ceil32(uint255(stor10[arg1].field_1)) + 320] + 482 len ceil32(mem[ceil32(uint255(stor10[arg1].field_1)) + ceil32(s) + 352])]), 
    if bool(stor10[arg1].field_0) == stor10[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    mem[96] = stor10[arg1].field_1 % 128
    if bool(stor10[arg1].field_0):
        if bool(stor10[arg1].field_0) == uint255(stor10[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor10[arg1].field_1):
            if 31 >= uint255(stor10[arg1].field_1):
                mem[128] = 256 * Mask(248, 0, stor10[arg1].field_8)
            else:
                mem[128] = uint256(stor10[arg1].field_0)
                idx = 128
                s = 0
                while uint255(stor10[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor10[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor10[arg1].field_0) == stor10[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor10[arg1].field_1 % 128:
            if 31 >= stor10[arg1].field_1 % 128:
                mem[128] = 256 * Mask(248, 0, stor10[arg1].field_8)
            else:
                mem[128] = uint256(stor10[arg1].field_0)
                idx = 128
                s = 0
                while stor10[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor10[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    if stor10[arg1].field_1 % 128 > 0:
        mem[ceil32(stor10[arg1].field_1 % 128) + 256 len 64] = 0xfe68747470733a2f2f646174616e66742e6d657a75726173686967616d652e636f6d, mem[ceil32(stor10[arg1].field_1 % 128) + 194 len 30]
        mem[ceil32(stor10[arg1].field_1 % 128) + 290] = 0
        mem[ceil32(stor10[arg1].field_1 % 128) + 290 len ceil32(stor10[arg1].field_1 % 128)] = mem[128 len ceil32(stor10[arg1].field_1 % 128)]
        mem[ceil32(stor10[arg1].field_1 % 128) + stor10[arg1].field_1 % 128 + 290] = 32
        mem[ceil32(stor10[arg1].field_1 % 128) + stor10[arg1].field_1 % 128 + 322] = mem[ceil32(stor10[arg1].field_1 % 128) + 224]
        mem[ceil32(stor10[arg1].field_1 % 128) + stor10[arg1].field_1 % 128 + 354 len ceil32(mem[ceil32(stor10[arg1].field_1 % 128) + 224])] = mem[ceil32(stor10[arg1].field_1 % 128) + 256 len ceil32(mem[ceil32(stor10[arg1].field_1 % 128) + 224])]
        if ceil32(mem[ceil32(stor10[arg1].field_1 % 128) + 224]) <= mem[ceil32(stor10[arg1].field_1 % 128) + 224]:
            return Array(len=mem[ceil32(stor10[arg1].field_1 % 128) + 224], data=mem[ceil32(stor10[arg1].field_1 % 128) + stor10[arg1].field_1 % 128 + 354 len ceil32(mem[ceil32(stor10[arg1].field_1 % 128) + 224])]), 
        mem[ceil32(stor10[arg1].field_1 % 128) + stor10[arg1].field_1 % 128 + mem[ceil32(stor10[arg1].field_1 % 128) + 224] + 354] = 0
        return 32, mem[ceil32(stor10[arg1].field_1 % 128) + stor10[arg1].field_1 % 128 + 322 len ceil32(mem[ceil32(stor10[arg1].field_1 % 128) + 224]) + 32], 
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0, 'ERC721Metadata: URI query for nonexistent token'
    if not arg1:
        mem[ceil32(stor10[arg1].field_1 % 128) + 416 len 64] = 0xfe68747470733a2f2f646174616e66742e6d657a75726173686967616d652e636f6d, mem[ceil32(stor10[arg1].field_1 % 128) + 290 len 30]
        mem[ceil32(stor10[arg1].field_1 % 128) + 450] = '0'
        mem[ceil32(stor10[arg1].field_1 % 128) + 451] = 32
        mem[ceil32(stor10[arg1].field_1 % 128) + 483] = mem[ceil32(stor10[arg1].field_1 % 128) + 384]
        mem[ceil32(stor10[arg1].field_1 % 128) + 515 len ceil32(mem[ceil32(stor10[arg1].field_1 % 128) + 384])] = mem[ceil32(stor10[arg1].field_1 % 128) + 416 len ceil32(mem[ceil32(stor10[arg1].field_1 % 128) + 384])]
        if ceil32(mem[ceil32(stor10[arg1].field_1 % 128) + 384]) > mem[ceil32(stor10[arg1].field_1 % 128) + 384]:
            mem[ceil32(stor10[arg1].field_1 % 128) + mem[ceil32(stor10[arg1].field_1 % 128) + 384] + 515] = 0
        return Array(len=mem[ceil32(stor10[arg1].field_1 % 128) + 384], data=mem[ceil32(stor10[arg1].field_1 % 128) + 515 len ceil32(mem[ceil32(stor10[arg1].field_1 % 128) + 384])]), 
    s = 0
    idx = arg1
    while idx:
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(stor10[arg1].field_1 % 128) + 320] = s
    if s:
        mem[ceil32(stor10[arg1].field_1 % 128) + 352 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[ceil32(stor10[arg1].field_1 % 128) + 320]:
            revert with 'NH{q', 50
        mem[t + ceil32(stor10[arg1].field_1 % 128) + 351 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor10[arg1].field_1 % 128) + ceil32(s) + 384 len 64] = 0xfe68747470733a2f2f646174616e66742e6d657a75726173686967616d652e636f6d, mem[ceil32(stor10[arg1].field_1 % 128) + 290 len 30]
    mem[ceil32(stor10[arg1].field_1 % 128) + ceil32(s) + 418] = 0
    mem[ceil32(stor10[arg1].field_1 % 128) + ceil32(s) + 418 len ceil32(mem[ceil32(stor10[arg1].field_1 % 128) + 320])] = mem[ceil32(stor10[arg1].field_1 % 128) + 352 len ceil32(mem[ceil32(stor10[arg1].field_1 % 128) + 320])]
    mem[64] = ceil32(stor10[arg1].field_1 % 128) + ceil32(s) + mem[ceil32(stor10[arg1].field_1 % 128) + 320] + 418
    mem[ceil32(stor10[arg1].field_1 % 128) + ceil32(s) + mem[ceil32(stor10[arg1].field_1 % 128) + 320] + 418] = 32
    mem[ceil32(stor10[arg1].field_1 % 128) + ceil32(s) + mem[ceil32(stor10[arg1].field_1 % 128) + 320] + 450] = mem[ceil32(stor10[arg1].field_1 % 128) + ceil32(s) + 352]
    mem[ceil32(stor10[arg1].field_1 % 128) + ceil32(s) + mem[ceil32(stor10[arg1].field_1 % 128) + 320] + 482 len ceil32(mem[ceil32(stor10[arg1].field_1 % 128) + ceil32(s) + 352])] = mem[ceil32(stor10[arg1].field_1 % 128) + ceil32(s) + 384 len ceil32(mem[ceil32(stor10[arg1].field_1 % 128) + ceil32(s) + 352])]
    if ceil32(mem[ceil32(stor10[arg1].field_1 % 128) + ceil32(s) + 352]) > mem[ceil32(stor10[arg1].field_1 % 128) + ceil32(s) + 352]:
        mem[ceil32(stor10[arg1].field_1 % 128) + ceil32(s) + mem[ceil32(stor10[arg1].field_1 % 128) + 320] + mem[ceil32(stor10[arg1].field_1 % 128) + ceil32(s) + 352] + 482] = 0
    return Array(len=mem[ceil32(stor10[arg1].field_1 % 128) + ceil32(s) + 352], data=mem[ceil32(stor10[arg1].field_1 % 128) + ceil32(s) + mem[ceil32(stor10[arg1].field_1 % 128) + 320] + 482 len ceil32(mem[ceil32(stor10[arg1].field_1 % 128) + ceil32(s) + 352])]), 
}



}
