contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
array of struct stor0;
address adminAddress;
mapping of uint8 stor3;
mapping of address stor4;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor7;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor9;
array of uint256 tokenByIndex;
mapping of uint256 stor11;
uint8 paused;
array of uint256 stor13;
uint256 totalBurned;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor4[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
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
    return bool(paused)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function isMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[address(arg1)])
}

function totalBurned() payable {
    return totalBurned
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor7[address(arg1)][address(arg2)])
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor4[arg1]:
        return stor4[arg1]
    return adminAddress
}

function changeAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'restrict to admin'
    adminAddress = arg1
}

function setPause() payable {
    if adminAddress != msg.sender:
        revert with 0, 'restrict to admin'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unsetPause() payable {
    if adminAddress != msg.sender:
        revert with 0, 'restrict to admin'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function setMinterStatus(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if adminAddress != msg.sender:
        revert with 0, 'restrict to admin'
    stor3[address(arg1)] = uint8(arg2)
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

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function rescueStuckErc20(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'restrict to admin'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args adminAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor4[arg2]:
        if arg1 == stor4[arg2]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
        if stor4[arg2] != msg.sender:
            if not stor7[stor4[arg2]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'ERC721: approve caller is not owner nor approved for all'
    else:
        if arg1 == adminAddress:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
        if adminAddress != msg.sender:
            if not stor7[stor2][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if stor4[arg2]:
        emit Approval(stor4[arg2], arg1, arg2);
    else:
        emit Approval(adminAddress, arg1, arg2);
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor3[msg.sender]:
        revert with 0, 'restrict to minter'
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if stor4[arg2]:
        revert with 0, 'ERC721: token already minted'
    if arg2 <= 0:
        revert with 0, 'ERC721: zero id'
    stor11[arg2] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg2
    if arg1:
        if arg1:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)]] = arg2
            stor9[arg2] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor11[arg2] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor11[arg2]] = tokenByIndex[tokenByIndex.length]
        stor11[stor10[stor10.length]] = stor11[arg2]
        stor11[arg2] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if paused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BRC721Pausable: token transfer while paused'
    if balanceOf[address(arg1)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]++
    stor4[arg2] = arg1
    emit Transfer(0, arg1, arg2);
}

function safeMint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor3[msg.sender]:
        revert with 0, 'restrict to minter'
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if stor4[arg2]:
        revert with 0, 'ERC721: token already minted'
    if arg2 <= 0:
        revert with 0, 'ERC721: zero id'
    stor11[arg2] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg2
    if arg1:
        if arg1:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)]] = arg2
            stor9[arg2] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor11[arg2] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor11[arg2]] = tokenByIndex[tokenByIndex.length]
        stor11[stor10[stor10.length]] = stor11[arg2]
        stor11[arg2] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if paused:
        revert with 0, 'BRC721Pausable: token transfer while paused'
    if balanceOf[address(arg1)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]++
    stor4[arg2] = arg1
    emit Transfer(0, arg1, arg2);
    if ext_code.size(arg1):
        call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), 0, arg2, 128, 0
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

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor4[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if stor4[arg1]:
        if stor4[arg1] != msg.sender:
            if not stor4[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
            if approved[arg1] != msg.sender:
                if not stor7[stor4[arg1]][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Burnable: caller is not owner nor approved'
    else:
        if adminAddress != msg.sender:
            if not stor4[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
            if approved[arg1] != msg.sender:
                if not stor7[stor2][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Burnable: caller is not owner nor approved'
    if not stor4[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not stor4[arg1]:
        stor11[arg1] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg1
    else:
        if stor4[arg1]:
            if not stor4[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[stor4[arg1]] < 1:
                revert with 'NH{q', 17
            if balanceOf[stor4[arg1]] - 1 != stor9[arg1]:
                tokenOfOwnerByIndex[stor4[arg1]][stor9[arg1]] = tokenOfOwnerByIndex[stor4[arg1]][stor5[stor4[arg1]] - 1]
                stor9[stor8[stor4[arg1]][stor5[stor4[arg1]] - 1]] = stor9[arg1]
            stor9[arg1] = 0
            tokenOfOwnerByIndex[stor4[arg1]][stor5[stor4[arg1]] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 'NH{q', 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if stor11[arg1] >= tokenByIndex.length:
        revert with 'NH{q', 50
    tokenByIndex[stor11[arg1]] = tokenByIndex[tokenByIndex.length]
    stor11[stor10[stor10.length]] = stor11[arg1]
    stor11[arg1] = 0
    if not tokenByIndex.length:
        revert with 'NH{q', 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    if paused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BRC721Pausable: token transfer while paused'
    approved[arg1] = 0
    if stor4[arg1]:
        emit Approval(stor4[arg1], 0, arg1);
    else:
        emit Approval(adminAddress, 0, arg1);
    if balanceOf[stor4[arg1]] < 1:
        revert with 'NH{q', 17
    balanceOf[stor4[arg1]]--
    stor4[arg1] = 0
    emit Transfer(stor4[arg1], 0, arg1);
    if totalBurned == -1:
        revert with 'NH{q', 17
    totalBurned++
}

function name() payable {
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 'NH{q', 34
            if Mask(256, -1, stor0.length):
                if 31 < uint255(stor0.length) * 0.5:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor0.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
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
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[(uint255(stor0.length) * 0.5) + ceil32(uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if Mask(256, -1, stor0.length):
            if 31 < uint255(stor0.length) * 0.5:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while (uint255(stor0.length) * 0.5) + 96 > idx:
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
        mem[stor0.length.field_1 + ceil32(stor0.length.field_1) + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() payable {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 'NH{q', 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
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
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[(uint255(stor1.length) * 0.5) + ceil32(uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
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
        mem[stor1.length.field_1 + ceil32(stor1.length.field_1) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function changeBaseURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[arg1.length + 128] = 0
    if adminAddress != msg.sender:
        revert with 0, 'restrict to admin'
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 'NH{q', 34
            if Mask(256, -1, stor1.length):
                if 31 >= uint255(stor1.length) * 0.5:
                    mem[ceil32(ceil32(arg1.length)) + 129] = 256 * stor1.length.field_8
                else:
                    mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor1.field_0)
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + (uint255(stor1.length) * 0.5) + 97 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 >= stor1.length.field_1:
                    mem[ceil32(ceil32(arg1.length)) + 129] = 256 * stor1.length.field_8
                else:
                    mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor1.field_0)
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + stor1.length.field_1 + 97 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor1.length) * 0.5) + 161 len ceil32(arg1.length)] = arg1[all], stor1.length.field_-(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 255
        if ceil32(arg1.length) > arg1.length:
            mem[arg1.length + ceil32(ceil32(arg1.length)) + ceil32(uint255(stor1.length) * 0.5) + 161] = 0
        mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor1.length) * 0.5) + arg1.length + 161 len ceil32(uint255(stor1.length) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor1.length) * 0.5)]
        mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor1.length) * 0.5) + arg1.length + (uint255(stor1.length) * 0.5) + 161] = '/'
        if bool(stor13.length):
            if bool(stor13.length) == uint255(stor13.length) * 0.5 < 32:
                revert with 'NH{q', 34
            if arg1.length + (uint255(stor1.length) * 0.5) + 1:
                stor13[].field_0 = Array(len=arg1.length + (uint255(stor1.length) * 0.5) + 1, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], stor1.length.field_-(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 255) << (8 * ceil32(arg1.length)) - 256, mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor1.length) * 0.5) + ceil32(arg1.length) + 161 len arg1.length + (uint255(stor1.length) * 0.5) + -ceil32(arg1.length) + 1])
            else:
                stor13.length = 0
                idx = 0
                while (uint255(stor13.length) * 0.5) + 31 / 32 > idx:
                    stor13[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 'NH{q', 34
            if arg1.length + (uint255(stor1.length) * 0.5) + 1:
                stor13[].field_0 = Array(len=arg1.length + (uint255(stor1.length) * 0.5) + 1, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], stor1.length.field_-(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 255) << (8 * ceil32(arg1.length)) - 256, mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor1.length) * 0.5) + ceil32(arg1.length) + 161 len arg1.length + (uint255(stor1.length) * 0.5) + -ceil32(arg1.length) + 1])
            else:
                stor13.length = 0
                idx = 0
                while stor13.length.field_1 + 31 / 32 > idx:
                    stor13[idx].field_0 = 0
                    idx = idx + 1
                    continue 
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 'NH{q', 34
            if Mask(256, -1, stor1.length):
                if 31 >= uint255(stor1.length) * 0.5:
                    mem[ceil32(ceil32(arg1.length)) + 129] = 256 * stor1.length.field_8
                else:
                    mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor1.field_0)
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + (uint255(stor1.length) * 0.5) + 97 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 >= stor1.length.field_1:
                    mem[ceil32(ceil32(arg1.length)) + 129] = 256 * stor1.length.field_8
                else:
                    mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor1.field_0)
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + stor1.length.field_1 + 97 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        mem[ceil32(ceil32(arg1.length)) + ceil32(stor1.length.field_1) + 161 len ceil32(arg1.length)] = arg1[all], stor1.length.field_-(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 8
        if ceil32(arg1.length) > arg1.length:
            mem[arg1.length + ceil32(ceil32(arg1.length)) + ceil32(stor1.length.field_1) + 161] = 0
        mem[ceil32(ceil32(arg1.length)) + ceil32(stor1.length.field_1) + arg1.length + 161 len ceil32(stor1.length.field_1)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor1.length.field_1)]
        mem[ceil32(ceil32(arg1.length)) + ceil32(stor1.length.field_1) + arg1.length + stor1.length.field_1 + 161] = '/'
        if bool(stor13.length):
            if bool(stor13.length) == uint255(stor13.length) * 0.5 < 32:
                revert with 'NH{q', 34
            if arg1.length + stor1.length.field_1 + 1:
                stor13[].field_0 = Array(len=arg1.length + stor1.length.field_1 + 1, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], stor1.length.field_-(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 8) << (8 * ceil32(arg1.length)) - 256, mem[ceil32(ceil32(arg1.length)) + ceil32(stor1.length.field_1) + ceil32(arg1.length) + 161 len arg1.length + stor1.length.field_1 + -ceil32(arg1.length) + 1])
            else:
                stor13.length = 0
                idx = 0
                while (uint255(stor13.length) * 0.5) + 31 / 32 > idx:
                    stor13[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 'NH{q', 34
            if arg1.length + stor1.length.field_1 + 1:
                stor13[].field_0 = Array(len=arg1.length + stor1.length.field_1 + 1, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], stor1.length.field_-(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 8) << (8 * ceil32(arg1.length)) - 256, mem[ceil32(ceil32(arg1.length)) + ceil32(stor1.length.field_1) + ceil32(arg1.length) + 161 len arg1.length + stor1.length.field_1 + -ceil32(arg1.length) + 1])
            else:
                stor13.length = 0
                idx = 0
                while stor13.length.field_1 + 31 / 32 > idx:
                    stor13[idx].field_0 = 0
                    idx = idx + 1
                    continue 
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        mem[96] = 1
        mem[128] = '0'
        if bool(stor13.length):
            if bool(stor13.length) == uint255(stor13.length) * 0.5 < 32:
                revert with 'NH{q', 34
            if not bool(stor13.length):
                mem[192] = Mask(248, 8, stor13.length)
            else:
                if bool(stor13.length) != 1:
                    mem[64] = 1
                    _119 = mem[160]
                    mem[33] = mem[160]
                    mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_119) > _119:
                        mem[_119 + 65] = 0
                    return memory
                      from mem[64]
                       len ceil32(_119) + -mem[64] + 65
                idx = 0
                s = 0
                while idx < uint255(stor13.length) * 0.5:
                    mem[idx + 192] = stor13[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[(uint255(stor13.length) * 0.5) + 192] = '0'
            mem[(uint255(stor13.length) * 0.5) + 193] = 32
            mem[(uint255(stor13.length) * 0.5) + 225] = mem[160]
            mem[(uint255(stor13.length) * 0.5) + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[mem[160] + (uint255(stor13.length) * 0.5) + 257] = 0
            return Array(len=mem[160], data=mem[(uint255(stor13.length) * 0.5) + 257 len ceil32(mem[160])])
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor13.length):
            mem[192] = Mask(248, 8, stor13.length)
        else:
            if bool(stor13.length) != 1:
                mem[64] = 1
                _123 = mem[160]
                mem[33] = mem[160]
                mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_123) > _123:
                    mem[_123 + 65] = 0
                return memory
                  from mem[64]
                   len ceil32(_123) + -mem[64] + 65
            idx = 0
            s = 0
            while idx < stor13.length.field_1:
                mem[idx + 192] = stor13[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[stor13.length.field_1 + 192] = '0'
        mem[stor13.length.field_1 + 193] = 32
        mem[stor13.length.field_1 + 225] = mem[160]
        mem[stor13.length.field_1 + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[mem[160] + stor13.length.field_1 + 257] = 0
        return Array(len=mem[160], data=mem[stor13.length.field_1 + 257 len ceil32(mem[160])])
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
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > !(idx % 10):
                revert with 'NH{q', 17
            if t - 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _356 = mem[64]
        if bool(stor13.length):
            if bool(stor13.length) == uint255(stor13.length) * 0.5 < 32:
                revert with 'NH{q', 34
            if not bool(stor13.length):
                mem[mem[64] + 32] = Mask(248, 8, stor13.length)
                _384 = mem[96]
                mem[mem[64] + (uint255(stor13.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _588 = mem[64]
                    mem[64] = mem[96] + mem[64] + (uint255(stor13.length) * 0.5) + 32
                    mem[mem[96] + _356 + (uint255(stor13.length) * 0.5) + 32] = 32
                    _632 = mem[_588]
                    mem[_384 + _356 + (uint255(stor13.length) * 0.5) + 64] = mem[_588]
                    mem[_384 + _356 + (uint255(stor13.length) * 0.5) + 96 len ceil32(_632)] = mem[_588 + 32 len ceil32(_632)]
                    if ceil32(_632) > _632:
                        mem[_632 + _384 + _356 + (uint255(stor13.length) * 0.5) + 96] = 0
                    return memory
                      from mem[64]
                       len ceil32(_632) + _384 + _356 + (uint255(stor13.length) * 0.5) + -mem[64] + 96
                mem[mem[96] + mem[64] + (uint255(stor13.length) * 0.5) + 32] = 0
                _589 = mem[64]
                mem[64] = _384 + _356 + (uint255(stor13.length) * 0.5) + 32
                mem[_384 + _356 + (uint255(stor13.length) * 0.5) + 32] = 32
                _633 = mem[_589]
                mem[_384 + _356 + (uint255(stor13.length) * 0.5) + 64] = mem[_589]
                mem[_384 + _356 + (uint255(stor13.length) * 0.5) + 96 len ceil32(_633)] = mem[_589 + 32 len ceil32(_633)]
                if ceil32(_633) > _633:
                    mem[_633 + _384 + _356 + (uint255(stor13.length) * 0.5) + 96] = 0
                return 32, mem[_384 + _356 + (uint255(stor13.length) * 0.5) + 64 len ceil32(_633) + 32]
            if bool(stor13.length) != 1:
                _392 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_392) <= _392:
                    _590 = mem[64]
                    mem[64] = _392
                    mem[_392] = 32
                    _634 = mem[_590]
                    mem[_392 + 32] = mem[_590]
                    mem[_392 + 64 len ceil32(_634)] = mem[_590 + 32 len ceil32(_634)]
                    if ceil32(_634) > _634:
                        mem[_634 + _392 + 64] = 0
                    return 32, mem[_392 + 32 len ceil32(_634) + 32]
                mem[_392] = 0
                _591 = mem[64]
                mem[64] = _392
                mem[_392] = 32
                _635 = mem[_591]
                mem[_392 + 32] = mem[_591]
                mem[_392 + 64 len ceil32(_635)] = mem[_591 + 32 len ceil32(_635)]
                if ceil32(_635) > _635:
                    mem[_635 + _392 + 64] = 0
                return 32, mem[_392 + 32 len ceil32(_635) + 32]
            mem[0] = 13
            idx = 0
            s = 0
            while idx < uint255(stor13.length) * 0.5:
                mem[idx + _356 + 32] = stor13[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _584 = mem[96]
            mem[_356 + (uint255(stor13.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_584) <= _584:
                _768 = mem[64]
                mem[64] = _584 + _356 + (uint255(stor13.length) * 0.5) + 32
                mem[_584 + _356 + (uint255(stor13.length) * 0.5) + 32] = 32
                _812 = mem[_768]
                mem[_584 + _356 + (uint255(stor13.length) * 0.5) + 64] = mem[_768]
                mem[_584 + _356 + (uint255(stor13.length) * 0.5) + 96 len ceil32(_812)] = mem[_768 + 32 len ceil32(_812)]
                if ceil32(_812) > _812:
                    mem[_812 + _584 + _356 + (uint255(stor13.length) * 0.5) + 96] = 0
                return 32, mem[_584 + _356 + (uint255(stor13.length) * 0.5) + 64 len ceil32(_812) + 32]
            mem[_584 + _356 + (uint255(stor13.length) * 0.5) + 32] = 0
            _769 = mem[64]
            mem[64] = _584 + _356 + (uint255(stor13.length) * 0.5) + 32
            mem[_584 + _356 + (uint255(stor13.length) * 0.5) + 32] = 32
            _813 = mem[_769]
            mem[_584 + _356 + (uint255(stor13.length) * 0.5) + 64] = mem[_769]
            mem[_584 + _356 + (uint255(stor13.length) * 0.5) + 96 len ceil32(_813)] = mem[_769 + 32 len ceil32(_813)]
            if ceil32(_813) > _813:
                mem[_813 + _584 + _356 + (uint255(stor13.length) * 0.5) + 96] = 0
            return 32, mem[_584 + _356 + (uint255(stor13.length) * 0.5) + 64 len ceil32(_813) + 32]
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor13.length):
            mem[mem[64] + 32] = Mask(248, 8, stor13.length)
            _393 = mem[96]
            mem[mem[64] + stor13.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_393) <= _393:
                _592 = mem[64]
                mem[64] = _393 + _356 + stor13.length.field_1 + 32
                mem[_393 + _356 + stor13.length.field_1 + 32] = 32
                _636 = mem[_592]
                mem[_393 + _356 + stor13.length.field_1 + 64] = mem[_592]
                mem[_393 + _356 + stor13.length.field_1 + 96 len ceil32(_636)] = mem[_592 + 32 len ceil32(_636)]
                if ceil32(_636) > _636:
                    mem[_636 + _393 + _356 + stor13.length.field_1 + 96] = 0
                return 32, mem[_393 + _356 + stor13.length.field_1 + 64 len ceil32(_636) + 32]
            mem[_393 + _356 + stor13.length.field_1 + 32] = 0
            _593 = mem[64]
            mem[64] = _393 + _356 + stor13.length.field_1 + 32
            mem[_393 + _356 + stor13.length.field_1 + 32] = 32
            _637 = mem[_593]
            mem[_393 + _356 + stor13.length.field_1 + 64] = mem[_593]
            mem[_393 + _356 + stor13.length.field_1 + 96 len ceil32(_637)] = mem[_593 + 32 len ceil32(_637)]
            if ceil32(_637) > _637:
                mem[_637 + _393 + _356 + stor13.length.field_1 + 96] = 0
            return 32, mem[_393 + _356 + stor13.length.field_1 + 64 len ceil32(_637) + 32]
        if bool(stor13.length) != 1:
            _396 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_396) <= _396:
                _594 = mem[64]
                mem[64] = _396
                mem[_396] = 32
                _638 = mem[_594]
                mem[_396 + 32] = mem[_594]
                mem[_396 + 64 len ceil32(_638)] = mem[_594 + 32 len ceil32(_638)]
                if ceil32(_638) > _638:
                    mem[_638 + _396 + 64] = 0
                return 32, mem[_396 + 32 len ceil32(_638) + 32]
            mem[_396] = 0
            _595 = mem[64]
            mem[64] = _396
            mem[_396] = 32
            _639 = mem[_595]
            mem[_396 + 32] = mem[_595]
            mem[_396 + 64 len ceil32(_639)] = mem[_595 + 32 len ceil32(_639)]
            if ceil32(_639) > _639:
                mem[_639 + _396 + 64] = 0
            return 32, mem[_396 + 32 len ceil32(_639) + 32]
        mem[0] = 13
        idx = 0
        s = 0
        while idx < stor13.length.field_1:
            mem[idx + _356 + 32] = stor13[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _585 = mem[96]
        mem[_356 + stor13.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_585) <= _585:
            _778 = mem[64]
            mem[64] = _585 + _356 + stor13.length.field_1 + 32
            mem[_585 + _356 + stor13.length.field_1 + 32] = 32
            _814 = mem[_778]
            mem[_585 + _356 + stor13.length.field_1 + 64] = mem[_778]
            mem[_585 + _356 + stor13.length.field_1 + 96 len ceil32(_814)] = mem[_778 + 32 len ceil32(_814)]
            if ceil32(_814) > _814:
                mem[_814 + _585 + _356 + stor13.length.field_1 + 96] = 0
            return 32, mem[_585 + _356 + stor13.length.field_1 + 64 len ceil32(_814) + 32]
        mem[_585 + _356 + stor13.length.field_1 + 32] = 0
        _779 = mem[64]
        mem[64] = _585 + _356 + stor13.length.field_1 + 32
        mem[_585 + _356 + stor13.length.field_1 + 32] = 32
        _815 = mem[_779]
        mem[_585 + _356 + stor13.length.field_1 + 64] = mem[_779]
        mem[_585 + _356 + stor13.length.field_1 + 96 len ceil32(_815)] = mem[_779 + 32 len ceil32(_815)]
        if ceil32(_815) > _815:
            mem[_815 + _585 + _356 + stor13.length.field_1 + 96] = 0
        return 32, mem[_585 + _356 + stor13.length.field_1 + 64 len ceil32(_815) + 32]
    mem[128 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > !(idx % 10):
            revert with 'NH{q', 17
        if t - 1 >= mem[96]:
            revert with 'NH{q', 50
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _357 = mem[64]
    if bool(stor13.length):
        if bool(stor13.length) == uint255(stor13.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if not bool(stor13.length):
            mem[mem[64] + 32] = Mask(248, 8, stor13.length)
            _386 = mem[96]
            mem[mem[64] + (uint255(stor13.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _596 = mem[64]
                mem[64] = mem[96] + mem[64] + (uint255(stor13.length) * 0.5) + 32
                mem[mem[96] + _357 + (uint255(stor13.length) * 0.5) + 32] = 32
                _640 = mem[_596]
                mem[_386 + _357 + (uint255(stor13.length) * 0.5) + 64] = mem[_596]
                mem[_386 + _357 + (uint255(stor13.length) * 0.5) + 96 len ceil32(_640)] = mem[_596 + 32 len ceil32(_640)]
                if ceil32(_640) > _640:
                    mem[_640 + _386 + _357 + (uint255(stor13.length) * 0.5) + 96] = 0
                return memory
                  from mem[64]
                   len ceil32(_640) + _386 + _357 + (uint255(stor13.length) * 0.5) + -mem[64] + 96
            mem[mem[96] + mem[64] + (uint255(stor13.length) * 0.5) + 32] = 0
            _597 = mem[64]
            mem[64] = _386 + _357 + (uint255(stor13.length) * 0.5) + 32
            mem[_386 + _357 + (uint255(stor13.length) * 0.5) + 32] = 32
            _641 = mem[_597]
            mem[_386 + _357 + (uint255(stor13.length) * 0.5) + 64] = mem[_597]
            mem[_386 + _357 + (uint255(stor13.length) * 0.5) + 96 len ceil32(_641)] = mem[_597 + 32 len ceil32(_641)]
            if ceil32(_641) > _641:
                mem[_641 + _386 + _357 + (uint255(stor13.length) * 0.5) + 96] = 0
            return 32, mem[_386 + _357 + (uint255(stor13.length) * 0.5) + 64 len ceil32(_641) + 32]
        if bool(stor13.length) != 1:
            _394 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_394) <= _394:
                _598 = mem[64]
                mem[64] = _394
                mem[_394] = 32
                _642 = mem[_598]
                mem[_394 + 32] = mem[_598]
                mem[_394 + 64 len ceil32(_642)] = mem[_598 + 32 len ceil32(_642)]
                if ceil32(_642) > _642:
                    mem[_642 + _394 + 64] = 0
                return 32, mem[_394 + 32 len ceil32(_642) + 32]
            mem[_394] = 0
            _599 = mem[64]
            mem[64] = _394
            mem[_394] = 32
            _643 = mem[_599]
            mem[_394 + 32] = mem[_599]
            mem[_394 + 64 len ceil32(_643)] = mem[_599 + 32 len ceil32(_643)]
            if ceil32(_643) > _643:
                mem[_643 + _394 + 64] = 0
            return 32, mem[_394 + 32 len ceil32(_643) + 32]
        mem[0] = 13
        idx = 0
        s = 0
        while idx < uint255(stor13.length) * 0.5:
            mem[idx + _357 + 32] = stor13[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _586 = mem[96]
        mem[_357 + (uint255(stor13.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_586) <= _586:
            _788 = mem[64]
            mem[64] = _586 + _357 + (uint255(stor13.length) * 0.5) + 32
            mem[_586 + _357 + (uint255(stor13.length) * 0.5) + 32] = 32
            _816 = mem[_788]
            mem[_586 + _357 + (uint255(stor13.length) * 0.5) + 64] = mem[_788]
            mem[_586 + _357 + (uint255(stor13.length) * 0.5) + 96 len ceil32(_816)] = mem[_788 + 32 len ceil32(_816)]
            if ceil32(_816) > _816:
                mem[_816 + _586 + _357 + (uint255(stor13.length) * 0.5) + 96] = 0
            return 32, mem[_586 + _357 + (uint255(stor13.length) * 0.5) + 64 len ceil32(_816) + 32]
        mem[_586 + _357 + (uint255(stor13.length) * 0.5) + 32] = 0
        _789 = mem[64]
        mem[64] = _586 + _357 + (uint255(stor13.length) * 0.5) + 32
        mem[_586 + _357 + (uint255(stor13.length) * 0.5) + 32] = 32
        _817 = mem[_789]
        mem[_586 + _357 + (uint255(stor13.length) * 0.5) + 64] = mem[_789]
        mem[_586 + _357 + (uint255(stor13.length) * 0.5) + 96 len ceil32(_817)] = mem[_789 + 32 len ceil32(_817)]
        if ceil32(_817) > _817:
            mem[_817 + _586 + _357 + (uint255(stor13.length) * 0.5) + 96] = 0
        return 32, mem[_586 + _357 + (uint255(stor13.length) * 0.5) + 64 len ceil32(_817) + 32]
    if bool(stor13.length) == stor13.length.field_1 < 32:
        revert with 'NH{q', 34
    if not bool(stor13.length):
        mem[mem[64] + 32] = Mask(248, 8, stor13.length)
        _395 = mem[96]
        mem[mem[64] + stor13.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_395) <= _395:
            _600 = mem[64]
            mem[64] = _395 + _357 + stor13.length.field_1 + 32
            mem[_395 + _357 + stor13.length.field_1 + 32] = 32
            _644 = mem[_600]
            mem[_395 + _357 + stor13.length.field_1 + 64] = mem[_600]
            mem[_395 + _357 + stor13.length.field_1 + 96 len ceil32(_644)] = mem[_600 + 32 len ceil32(_644)]
            if ceil32(_644) > _644:
                mem[_644 + _395 + _357 + stor13.length.field_1 + 96] = 0
            return 32, mem[_395 + _357 + stor13.length.field_1 + 64 len ceil32(_644) + 32]
        mem[_395 + _357 + stor13.length.field_1 + 32] = 0
        _601 = mem[64]
        mem[64] = _395 + _357 + stor13.length.field_1 + 32
        mem[_395 + _357 + stor13.length.field_1 + 32] = 32
        _645 = mem[_601]
        mem[_395 + _357 + stor13.length.field_1 + 64] = mem[_601]
        mem[_395 + _357 + stor13.length.field_1 + 96 len ceil32(_645)] = mem[_601 + 32 len ceil32(_645)]
        if ceil32(_645) > _645:
            mem[_645 + _395 + _357 + stor13.length.field_1 + 96] = 0
        return 32, mem[_395 + _357 + stor13.length.field_1 + 64 len ceil32(_645) + 32]
    if bool(stor13.length) != 1:
        _398 = mem[96]
        mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_398) <= _398:
            _602 = mem[64]
            mem[64] = _398
            mem[_398] = 32
            _646 = mem[_602]
            mem[_398 + 32] = mem[_602]
            mem[_398 + 64 len ceil32(_646)] = mem[_602 + 32 len ceil32(_646)]
            if ceil32(_646) > _646:
                mem[_646 + _398 + 64] = 0
            return 32, mem[_398 + 32 len ceil32(_646) + 32]
        mem[_398] = 0
        _603 = mem[64]
        mem[64] = _398
        mem[_398] = 32
        _647 = mem[_603]
        mem[_398 + 32] = mem[_603]
        mem[_398 + 64 len ceil32(_647)] = mem[_603 + 32 len ceil32(_647)]
        if ceil32(_647) > _647:
            mem[_647 + _398 + 64] = 0
        return 32, mem[_398 + 32 len ceil32(_647) + 32]
    mem[0] = 13
    idx = 0
    s = 0
    while idx < stor13.length.field_1:
        mem[idx + _357 + 32] = stor13[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    _587 = mem[96]
    mem[_357 + stor13.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(_587) <= _587:
        _798 = mem[64]
        mem[64] = _587 + _357 + stor13.length.field_1 + 32
        mem[_587 + _357 + stor13.length.field_1 + 32] = 32
        _818 = mem[_798]
        mem[_587 + _357 + stor13.length.field_1 + 64] = mem[_798]
        mem[_587 + _357 + stor13.length.field_1 + 96 len ceil32(_818)] = mem[_798 + 32 len ceil32(_818)]
        if ceil32(_818) > _818:
            mem[_818 + _587 + _357 + stor13.length.field_1 + 96] = 0
        return 32, mem[_587 + _357 + stor13.length.field_1 + 64 len ceil32(_818) + 32]
    mem[_587 + _357 + stor13.length.field_1 + 32] = 0
    _799 = mem[64]
    mem[64] = _587 + _357 + stor13.length.field_1 + 32
    mem[_587 + _357 + stor13.length.field_1 + 32] = 32
    _819 = mem[_799]
    mem[_587 + _357 + stor13.length.field_1 + 64] = mem[_799]
    mem[_587 + _357 + stor13.length.field_1 + 96 len ceil32(_819)] = mem[_799 + 32 len ceil32(_819)]
    if ceil32(_819) > _819:
        mem[_819 + _587 + _357 + stor13.length.field_1 + 96] = 0
    return 32, mem[_587 + _357 + stor13.length.field_1 + 64 len ceil32(_819) + 32]
}



}
