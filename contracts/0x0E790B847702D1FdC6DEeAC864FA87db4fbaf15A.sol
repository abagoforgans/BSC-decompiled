contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
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
mapping of struct stor11;
uint256 stor12;
address owner;
uint256 stor14;
mapping of uint8 stor15;
mapping of struct sub_0829ca24;
mapping of uint8 stor17;
mapping of uint8 stor18;
mapping of uint8 stor19;
uint256 stor20;
uint256 tokenCounter;
address stor22;
address stor23;
mapping of uint8 stor24;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_0829ca24(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_0829ca24[arg1].field_256
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

function sub_30f2db2b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_0829ca24[arg1].field_512
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function getTokenCounter() payable {
    return tokenCounter
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
    return bool(stor6[address(arg1)][address(arg2)])
}

function sub_eb03413c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_0829ca24[arg1].field_0
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

function setTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if not stor24[address(msg.sender)]:
            revert with 0, 'Ownable: caller is not an admin'
    stor23 = arg1
}

function setAdmin(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor24[address(arg1)] = uint8(arg2)
}

function sub_de9f475c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        if not stor24[address(msg.sender)]:
            revert with 0, 'Ownable: caller is not an admin'
    sub_0829ca24[arg1].field_256 = arg2
}

function sub_e2b02143(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        if not stor24[address(msg.sender)]:
            revert with 0, 'Ownable: caller is not an admin'
    sub_0829ca24[arg1].field_512 = arg2
}

function sub_4cf62ae9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == bool(arg2)
    if owner != msg.sender:
        if not stor24[address(msg.sender)]:
            revert with 0, 'Ownable: caller is not an admin'
    stor18[arg1] = uint8(bool(arg2))
}

function sub_7cb53dc8(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == bool(arg2)
    if owner != msg.sender:
        if not stor24[address(msg.sender)]:
            revert with 0, 'Ownable: caller is not an admin'
    stor17[arg1] = uint8(bool(arg2))
}

function sub_74604260(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        if not stor24[address(msg.sender)]:
            revert with 0, 'Ownable: caller is not an admin'
    stor19[address(arg1)] = uint8(bool(arg2))
}

function sub_1de2b176(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if not stor24[address(msg.sender)]:
            revert with 0, 'Ownable: caller is not an admin'
    tokenCounter = arg1
    if stor14 > -2:
        revert with 'NH{q', 17
    stor14++
}

function setStartTime(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        if not stor24[address(msg.sender)]:
            revert with 0, 'Ownable: caller is not an admin'
    sub_0829ca24[arg1].field_0 = arg2
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor6[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_5c2e43b4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_0829ca24[arg1].field_512 <= 0:
        return (sub_0829ca24[arg1].field_512 > 0)
    if sub_0829ca24[arg1].field_256 <= block.timestamp:
        return (sub_0829ca24[arg1].field_256 > block.timestamp)
    return not bool(stor17[arg1])
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

function sub_c01a9992(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor19[address(msg.sender)]:
        revert with 0, 'NFT: caller is not a vendor.'
    if sub_0829ca24[arg1].field_512 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Member Card has been used. Purchase a new one to avail the benefits.'
    if sub_0829ca24[arg1].field_256 <= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Member Card has been expired. Purchase a new one to avail the benefits.'
    if stor17[arg1]:
        revert with 0, 'Member Card has been frozen.'
    if sub_0829ca24[arg1].field_512 < 1:
        revert with 'NH{q', 17
    sub_0829ca24[arg1].field_512--
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

function sub_613489f5(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg5.length)) + 97 > test266151307() or ceil32(ceil32(arg5.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg5 + arg5.length + 36 <= calldata.size
    if owner != msg.sender:
        if not stor24[address(msg.sender)]:
            revert with 0, 'Ownable: caller is not an admin'
    if not ownerOf[arg1]:
        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
    if stor11[arg1].field_0:
        if stor11[arg1].field_0 == stor11[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if arg5.length:
            stor11[arg1][].field_0 = Array(len=arg5.length, data=arg5[all])
        else:
            stor11[arg1].field_0 = 0
            idx = 0
            while stor11[arg1].field_1 + 31 / 32 > idx:
                stor11[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor11[arg1].field_0 == stor11[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if arg5.length:
            stor11[arg1][].field_0 = Array(len=arg5.length, data=arg5[all])
        else:
            stor11[arg1].field_0 = 0
            idx = 0
            while stor11[arg1].field_1 + 31 / 32 > idx:
                stor11[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    sub_0829ca24[arg1].field_0 = arg2
    sub_0829ca24[arg1].field_256 = arg3
    sub_0829ca24[arg1].field_512 = arg4
}

function isMember(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    idx = 0
    s = 0
    s = 0
    while idx < balanceOf[address(arg1)]:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
        mem[32] = 16
        if sub_0829ca24[stor7[address(arg1)][idx]].field_512 <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = tokenOfOwnerByIndex[address(arg1)][idx]
            s = s
            continue 
        mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
        mem[32] = 16
        if sub_0829ca24[stor7[address(arg1)][idx]].field_256 <= block.timestamp:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = tokenOfOwnerByIndex[address(arg1)][idx]
            s = s
            continue 
        mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
        mem[32] = 17
        if idx == -1:
            revert with 'NH{q', 17
        if stor17[stor7[address(arg1)][idx]]:
            idx = idx + 1
            s = tokenOfOwnerByIndex[address(arg1)][idx]
            s = s
            continue 
        idx = idx + 1
        s = tokenOfOwnerByIndex[address(arg1)][idx]
        s = 1
        continue 
    return bool(s)
}

function buy() payable {
    if stor15[address(msg.sender)][stor14]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'User already own an active Access Key in the current Batch.'
    if stor20 >= tokenCounter:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'No more NFTs can be bought in the current batch.'
    require ext_code.size(stor22)
    call stor22.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor23, stor12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor20]:
        revert with 0, 'ERC721: token already minted'
    stor18[stor20] = 0
    stor10[stor20] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor20
    if msg.sender:
        tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]] = stor20
        stor8[stor20] = balanceOf[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor10[stor20] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor10[stor20]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[stor20]
        stor10[stor20] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(msg.sender)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor20] = msg.sender
    emit Transfer(0, msg.sender, stor20);
    stor15[address(msg.sender)][stor14] = 1
    if stor20 == -1:
        revert with 'NH{q', 17
    stor20++
}

function sub_da4624b7(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == address(arg4)
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg5.length)) + 97 > test266151307() or ceil32(ceil32(arg5.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg5 + arg5.length + 36 <= calldata.size
    if owner != msg.sender:
        if not stor24[address(msg.sender)]:
            revert with 0, 'Ownable: caller is not an admin'
    if not address(arg4):
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor20]:
        revert with 0, 'ERC721: token already minted'
    stor18[stor20] = 0
    stor10[stor20] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor20
    if address(arg4):
        tokenOfOwnerByIndex[address(arg4)][stor4[address(arg4)]] = stor20
        stor8[stor20] = balanceOf[address(arg4)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor10[stor20] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor10[stor20]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[stor20]
        stor10[stor20] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(arg4)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg4)]++
    ownerOf[stor20] = address(arg4)
    emit Transfer(0, address(arg4), stor20);
    if not ownerOf[stor20]:
        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
    if stor11[stor20].field_0:
        if stor11[stor20].field_0 == stor11[stor20].field_1 < 32:
            revert with 'NH{q', 34
        if arg5.length:
            stor11[stor20][].field_0 = Array(len=arg5.length, data=arg5[all])
        else:
            stor11[stor20].field_0 = 0
            idx = 0
            while stor11[stor20].field_1 + 31 / 32 > idx:
                stor11[stor20][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor11[stor20].field_0 == stor11[stor20].field_1 < 32:
            revert with 'NH{q', 34
        if arg5.length:
            stor11[stor20][].field_0 = Array(len=arg5.length, data=arg5[all])
        else:
            stor11[stor20].field_0 = 0
            idx = 0
            while stor11[stor20].field_1 + 31 / 32 > idx:
                stor11[stor20][idx].field_0 = 0
                idx = idx + 1
                continue 
    sub_0829ca24[stor20].field_0 = arg1
    sub_0829ca24[stor20].field_256 = arg2
    sub_0829ca24[stor20].field_512 = arg3
    if stor20 == -1:
        revert with 'NH{q', 17
    stor20++
}

function sub_354cb29e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        if not stor24[address(msg.sender)]:
            revert with 0, 'Ownable: caller is not an admin'
    if not address(arg1):
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor20]:
        revert with 0, 'ERC721: token already minted'
    stor18[stor20] = 0
    stor10[stor20] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor20
    if address(arg1):
        tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)]] = stor20
        stor8[stor20] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor10[stor20] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor10[stor20]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[stor20]
        stor10[stor20] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(arg1)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]++
    ownerOf[stor20] = address(arg1)
    emit Transfer(0, address(arg1), stor20);
    if not ownerOf[stor20]:
        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
    if stor11[stor20].field_0:
        if stor11[stor20].field_0 == stor11[stor20].field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor11[stor20][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor11[stor20].field_0 = 0
            idx = 0
            while stor11[stor20].field_1 + 31 / 32 > idx:
                stor11[stor20][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor11[stor20].field_0 == stor11[stor20].field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor11[stor20][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor11[stor20].field_0 = 0
            idx = 0
            while stor11[stor20].field_1 + 31 / 32 > idx:
                stor11[stor20][idx].field_0 = 0
                idx = idx + 1
                continue 
    if block.timestamp > -7776001:
        revert with 'NH{q', 17
    sub_0829ca24[stor20].field_0 = block.timestamp
    sub_0829ca24[stor20].field_256 = block.timestamp + (2160 * 24 * 3600)
    sub_0829ca24[stor20].field_512 = 3
    if stor20 == -1:
        revert with 'NH{q', 17
    stor20++
}

function initialize(address arg1, string arg2, string arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 > test266151307() or ceil32(ceil32(arg3.length)) + 98 < 97:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    if uint8(stor0.field_8):
        if ext_code.size(this.address) > 0:
            revert with 0, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
    stor22 = 0xe9e7cea3dedca5984780bafc599bd69add087d56
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
    stor23 = 0x35b119730f79881dac623dc51c831c6a04cab5f3
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor1[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor1.length = 0
            idx = 0
            while stor1.length.field_1 + 31 / 32 > idx:
                stor1[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor1[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor1.length = 0
            idx = 0
            while stor1.length.field_1 + 31 / 32 > idx:
                stor1[idx].field_0 = 0
                idx = idx + 1
                continue 
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg3.length:
            stor2[].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor2.length = 0
            idx = 0
            while stor2.length.field_1 + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg3.length:
            stor2[].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor2.length = 0
            idx = 0
            while stor2.length.field_1 + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
    stor12 = 100 * 10^18
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 0
}

function name() payable {
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

function symbol() payable {
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) > stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not stor18[arg3]:
        if arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'NFT cannot be transferred, ask admin to grant approval.'
        stor18[arg3] = 0
        stor10[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        stor18[arg3] = 0
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

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: URI query for nonexistent token'
    if stor11[arg1].field_0:
        if stor11[arg1].field_0 == stor11[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor11[arg1].field_0:
            if stor11[arg1].field_0 == stor11[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor11[arg1].field_1:
                if 31 < stor11[arg1].field_1:
                    mem[128] = stor11[arg1].field_0
                    idx = 128
                    s = 0
                    while stor11[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor11[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11[arg1].field_1), data=mem[128 len ceil32(stor11[arg1].field_1)])
                mem[128] = 256 * stor11[arg1].field_8
        else:
            if stor11[arg1].field_0 == stor11[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor11[arg1].field_1:
                if 31 < stor11[arg1].field_1:
                    mem[128] = stor11[arg1].field_0
                    idx = 128
                    s = 0
                    while stor11[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor11[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11[arg1].field_1), data=mem[128 len ceil32(stor11[arg1].field_1)])
                mem[128] = 256 * stor11[arg1].field_8
        mem[ceil32(stor11[arg1].field_1) + 192 len ceil32(stor11[arg1].field_1)] = mem[128 len ceil32(stor11[arg1].field_1)]
        if ceil32(stor11[arg1].field_1) > stor11[arg1].field_1:
            mem[ceil32(stor11[arg1].field_1) + stor11[arg1].field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor11[arg1].field_1), data=mem[128 len ceil32(stor11[arg1].field_1)], mem[(2 * ceil32(stor11[arg1].field_1)) + 192 len 2 * ceil32(stor11[arg1].field_1)]), 
    if stor11[arg1].field_0 == stor11[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor11[arg1].field_0:
        if stor11[arg1].field_0 == stor11[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor11[arg1].field_1:
            if 31 < stor11[arg1].field_1:
                mem[128] = stor11[arg1].field_0
                idx = 128
                s = 0
                while stor11[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor11[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11[arg1].field_0, data=mem[128 len ceil32(stor11[arg1].field_1)])
            mem[128] = 256 * stor11[arg1].field_8
    else:
        if stor11[arg1].field_0 == stor11[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor11[arg1].field_1:
            if 31 < stor11[arg1].field_1:
                mem[128] = stor11[arg1].field_0
                idx = 128
                s = 0
                while stor11[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor11[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11[arg1].field_0, data=mem[128 len ceil32(stor11[arg1].field_1)])
            mem[128] = 256 * stor11[arg1].field_8
    mem[ceil32(stor11[arg1].field_1) + 192 len ceil32(stor11[arg1].field_1)] = mem[128 len ceil32(stor11[arg1].field_1)]
    if ceil32(stor11[arg1].field_1) > stor11[arg1].field_1:
        mem[ceil32(stor11[arg1].field_1) + stor11[arg1].field_1 + 192] = 0
    return Array(len=stor11[arg1].field_0, data=mem[128 len ceil32(stor11[arg1].field_1)], mem[(2 * ceil32(stor11[arg1].field_1)) + 192 len 2 * ceil32(stor11[arg1].field_1)]), 
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
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not stor18[arg3]:
        if arg1:
            revert with 0, 'NFT cannot be transferred, ask admin to grant approval.'
        stor18[arg3] = 0
        stor10[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        stor18[arg3] = 0
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
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not stor18[arg3]:
        if arg1:
            revert with 0, 'NFT cannot be transferred, ask admin to grant approval.'
        stor18[arg3] = 0
        stor10[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        stor18[arg3] = 0
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



}
