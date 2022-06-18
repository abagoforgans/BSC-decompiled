contract main {




// =====================  Runtime code  =====================


array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor2;
mapping of address approved;
mapping of uint8 stor4;
array of struct stor5;
array of struct stor6;
array of struct stor8;
address _owner;
mapping of uint8 stor10;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor2[arg1]:
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
    if tokenOfOwnerByIndex[address(arg1)] <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    if arg2 >= tokenOfOwnerByIndex[address(arg1)]:
        revert with 'NH{q', 50
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenByIndex.length <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableMap: index out of bounds'
    if arg1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    return tokenByIndex[arg1].field_0
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor2[arg1]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    if stor2[arg1] < 1:
        revert with 'NH{q', 17
    if stor2[arg1] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    return tokenByIndex[stor2[arg1] - 1].field_256
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return tokenOfOwnerByIndex[address(arg1)]
}

function _owner() payable {
    return _owner
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor4[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _owner = arg1
}

function approveForMinting(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10[address(arg1)] = uint8(arg2)
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor4[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000)
}

function setName(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor5[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor5.length = 0
            idx = 0
            while stor5.length.field_1 + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor5[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor5.length = 0
            idx = 0
            while stor5.length.field_1 + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function setSymbol(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor6[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor6.length = 0
            idx = 0
            while stor6.length.field_1 + 31 / 32 > idx:
                stor6[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor6[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor6.length = 0
            idx = 0
            while stor6.length.field_1 + 31 / 32 > idx:
                stor6[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function setBaseURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor8[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8.length = 0
            idx = 0
            while stor8.length.field_1 + 31 / 32 > idx:
                stor8[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor8[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8.length = 0
            idx = 0
            while stor8.length.field_1 + 31 / 32 > idx:
                stor8[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor2[arg2]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    if stor2[arg2] < 1:
        revert with 'NH{q', 17
    if stor2[arg2] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if arg1 == tokenByIndex[stor2[arg2] - 1].field_256:
        revert with 0, 'ERC721: approval to current owner'
    if tokenByIndex[stor2[arg2] - 1].field_256 != msg.sender:
        if not stor4[stor1[stor2[arg2] - 1].field_256][address(msg.sender)]:
            revert with 0, 'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not stor2[arg2]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    if stor2[arg2] < 1:
        revert with 'NH{q', 17
    if stor2[arg2] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    emit Approval(tokenByIndex[stor2[arg2] - 1].field_256, arg1, arg2);
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor10[address(msg.sender)]:
        revert with 0, 'Account is not mint approved'
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if stor2[arg2]:
        revert with 0, 'ERC721: token already minted'
    if not tokenOfOwnerByIndex[address(arg1)][1][arg2]:
        tokenOfOwnerByIndex[address(arg1)]++
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = arg2
        tokenOfOwnerByIndex[address(arg1)][1][arg2] = tokenOfOwnerByIndex[address(arg1)]
    if stor2[arg2]:
        if stor2[arg2] < 1:
            revert with 'NH{q', 17
        if stor2[arg2] - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor2[arg2] - 1].field_256 = arg1
        tokenByIndex[stor2[arg2] - 1].field_416 = 0
        emit Transfer(0, arg1, arg2);
        if ext_code.size(arg1) > 0:
            require ext_code.size(arg1)
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
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg2
        tokenByIndex[tokenByIndex.length].field_256 = arg1
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor2[arg2] = tokenByIndex.length
        emit Transfer(0, arg1, arg2);
        if ext_code.size(arg1) > 0:
            require ext_code.size(arg1)
            call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args msg.sender, 0, arg2, 128, 0
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

function mint(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg3.length) + 128 > test266151307() or ceil32(arg3.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if not stor10[address(msg.sender)]:
        revert with 0, 'Account is not mint approved'
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if stor2[arg2]:
        revert with 0, 'ERC721: token already minted'
    if not tokenOfOwnerByIndex[address(arg1)][1][arg2]:
        tokenOfOwnerByIndex[address(arg1)]++
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = arg2
        tokenOfOwnerByIndex[address(arg1)][1][arg2] = tokenOfOwnerByIndex[address(arg1)]
    if stor2[arg2]:
        if stor2[arg2] < 1:
            revert with 'NH{q', 17
        if stor2[arg2] - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor2[arg2] - 1].field_256 = arg1
        tokenByIndex[stor2[arg2] - 1].field_416 = 0
        emit Transfer(0, arg1, arg2);
        if ext_code.size(arg1) <= 0:
        mem[ceil32(arg3.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        call arg1 with:
             gas gas_remaining wei
            args msg.sender, 0, arg2, 128, arg3.length, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not ext_call.success:
            if not return_data.size:
                if not arg3.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg3[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require not 0, ext_call.return_data[4 len 28]
        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    mem[ceil32(arg3.length) + 128] = arg2
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length].field_0 = arg2
    tokenByIndex[tokenByIndex.length].field_256 = arg1
    tokenByIndex[tokenByIndex.length].field_416 = 0
    stor2[arg2] = tokenByIndex.length
    emit Transfer(0, arg1, arg2);
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, 0, arg2, 128, arg3.length, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not ext_call.success:
            if not return_data.size:
                if not arg3.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg3[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function name() payable {
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor5.length):
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
        if ceil32(stor5.length.field_1) > stor5.length.field_1:
            mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function symbol() payable {
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor6.length):
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        else:
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
        if ceil32(stor6.length.field_1) > stor6.length.field_1:
            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
    if bool(stor6.length) == stor6.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
    if ceil32(stor6.length.field_1) > stor6.length.field_1:
        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
    return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
}

function baseURI() payable {
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor8.length):
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor8.length.field_1:
                if 31 < stor8.length.field_1:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)])
                mem[128] = 256 * stor8.length.field_8
        else:
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor8.length.field_1:
                if 31 < stor8.length.field_1:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)])
                mem[128] = 256 * stor8.length.field_8
        mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
        if ceil32(stor8.length.field_1) > stor8.length.field_1:
            mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
    if bool(stor8.length) == stor8.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor8.length.field_1:
            if 31 < stor8.length.field_1:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    else:
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor8.length.field_1:
            if 31 < stor8.length.field_1:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
    if ceil32(stor8.length.field_1) > stor8.length.field_1:
        mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
    return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor2[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor8.length):
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor8.length.field_1:
                if 31 < stor8.length.field_1:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)])
                mem[128] = 256 * stor8.length.field_8
        else:
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor8.length.field_1:
                if 31 < stor8.length.field_1:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)])
                mem[128] = 256 * stor8.length.field_8
        mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
        if ceil32(stor8.length.field_1) > stor8.length.field_1:
            mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
    if bool(stor8.length) == stor8.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor8.length.field_1:
            if 31 < stor8.length.field_1:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    else:
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor8.length.field_1:
            if 31 < stor8.length.field_1:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
    if ceil32(stor8.length.field_1) > stor8.length.field_1:
        mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
    return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor2[arg3]:
        if not stor2[arg3]:
            revert with 0, 
                        32,
                        41,
                        0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                        0
        if stor2[arg3] < 1:
            revert with 'NH{q', 17
        if stor2[arg3] - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if tokenByIndex[stor2[arg3] - 1].field_256 != msg.sender:
            if not stor2[arg3]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
                if not stor4[stor1[stor2[arg3] - 1].field_256][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
        if not stor2[arg3]:
            revert with 0, 
                        32,
                        41,
                        0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                        0
        if stor2[arg3] < 1:
            revert with 'NH{q', 17
        if stor2[arg3] - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if tokenByIndex[stor2[arg3] - 1].field_256 != arg1:
            revert with 0, 'ERC721: transfer of token that is not own'
        if not arg2:
            revert with 0, 'ERC721: transfer to the zero address'
        approved[arg3] = 0
        if not stor2[arg3]:
            revert with 0, 
                        32,
                        41,
                        0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[361 len 23] >> 72,
                        0
        if stor2[arg3] < 1:
            revert with 'NH{q', 17
        if stor2[arg3] - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        emit Approval(tokenByIndex[stor2[arg3] - 1].field_256, 0, arg3);
        if tokenOfOwnerByIndex[address(arg1)][1][arg3]:
            if tokenOfOwnerByIndex[address(arg1)][1][arg3] < 1:
                revert with 'NH{q', 17
            if tokenOfOwnerByIndex[address(arg1)] < 1:
                revert with 'NH{q', 17
            if tokenOfOwnerByIndex[address(arg1)] - 1 >= tokenOfOwnerByIndex[address(arg1)]:
                revert with 'NH{q', 50
            if tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 >= tokenOfOwnerByIndex[address(arg1)]:
                revert with 'NH{q', 50
            tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)][1][arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
            if tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 > -2:
                revert with 'NH{q', 17
            tokenOfOwnerByIndex[address(arg1)][1][tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]] = tokenOfOwnerByIndex[address(arg1)][1][arg3]
            if not tokenOfOwnerByIndex[address(arg1)]:
                revert with 'NH{q', 49
            tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
            tokenOfOwnerByIndex[address(arg1)]--
            tokenOfOwnerByIndex[address(arg1)][1][arg3] = 0
        if not tokenOfOwnerByIndex[address(arg2)][1][arg3]:
            tokenOfOwnerByIndex[address(arg2)]++
            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
            tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
        if stor2[arg3]:
            if stor2[arg3] < 1:
                revert with 'NH{q', 17
            if stor2[arg3] - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor2[arg3] - 1].field_256 = arg2
            tokenByIndex[stor2[arg3] - 1].field_416 = 0
        else:
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length].field_0 = arg3
            tokenByIndex[tokenByIndex.length].field_256 = arg2
            tokenByIndex[tokenByIndex.length].field_416 = 0
            stor2[arg3] = tokenByIndex.length
        emit Transfer(arg1, arg2, arg3);
    else:
        if stor10[address(msg.sender)]:
            if not arg2:
                revert with 0, 'ERC721: mint to the zero address'
            if stor2[arg3]:
                revert with 0, 'ERC721: token already minted'
            if not tokenOfOwnerByIndex[address(arg2)][1][arg3]:
                tokenOfOwnerByIndex[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
            if stor2[arg3]:
                if stor2[arg3] < 1:
                    revert with 'NH{q', 17
                if stor2[arg3] - 1 >= tokenByIndex.length:
                    revert with 'NH{q', 50
                tokenByIndex[stor2[arg3] - 1].field_256 = arg2
                tokenByIndex[stor2[arg3] - 1].field_416 = 0
            else:
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = arg3
                tokenByIndex[tokenByIndex.length].field_256 = arg2
                tokenByIndex[tokenByIndex.length].field_416 = 0
                stor2[arg3] = tokenByIndex.length
            emit Transfer(0, arg2, arg3);
        else:
            if not stor2[arg3]:
                revert with 0, 
                            32,
                            41,
                            0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                            0
            if stor2[arg3] < 1:
                revert with 'NH{q', 17
            if stor2[arg3] - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if tokenByIndex[stor2[arg3] - 1].field_256 != msg.sender:
                if not stor2[arg3]:
                    revert with 0, 'ERC721: approved query for nonexistent token'
                if approved[arg3] != msg.sender:
                    if not stor4[stor1[stor2[arg3] - 1].field_256][address(msg.sender)]:
                        revert with 0, 'ERC721: transfer caller is not owner nor approved'
            if not stor2[arg3]:
                revert with 0, 
                            32,
                            41,
                            0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                            0
            if stor2[arg3] < 1:
                revert with 'NH{q', 17
            if stor2[arg3] - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if tokenByIndex[stor2[arg3] - 1].field_256 != arg1:
                revert with 0, 'ERC721: transfer of token that is not own'
            if not arg2:
                revert with 0, 'ERC721: transfer to the zero address'
            approved[arg3] = 0
            if not stor2[arg3]:
                revert with 0, 
                            32,
                            41,
                            0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[361 len 23] >> 72,
                            0
            if stor2[arg3] < 1:
                revert with 'NH{q', 17
            if stor2[arg3] - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            emit Approval(tokenByIndex[stor2[arg3] - 1].field_256, 0, arg3);
            if tokenOfOwnerByIndex[address(arg1)][1][arg3]:
                if tokenOfOwnerByIndex[address(arg1)][1][arg3] < 1:
                    revert with 'NH{q', 17
                if tokenOfOwnerByIndex[address(arg1)] < 1:
                    revert with 'NH{q', 17
                if tokenOfOwnerByIndex[address(arg1)] - 1 >= tokenOfOwnerByIndex[address(arg1)]:
                    revert with 'NH{q', 50
                if tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 >= tokenOfOwnerByIndex[address(arg1)]:
                    revert with 'NH{q', 50
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)][1][arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                if tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 > -2:
                    revert with 'NH{q', 17
                tokenOfOwnerByIndex[address(arg1)][1][tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]] = tokenOfOwnerByIndex[address(arg1)][1][arg3]
                if not tokenOfOwnerByIndex[address(arg1)]:
                    revert with 'NH{q', 49
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                tokenOfOwnerByIndex[address(arg1)]--
                tokenOfOwnerByIndex[address(arg1)][1][arg3] = 0
            if not tokenOfOwnerByIndex[address(arg2)][1][arg3]:
                tokenOfOwnerByIndex[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
            if stor2[arg3]:
                if stor2[arg3] < 1:
                    revert with 'NH{q', 17
                if stor2[arg3] - 1 >= tokenByIndex.length:
                    revert with 'NH{q', 50
                tokenByIndex[stor2[arg3] - 1].field_256 = arg2
                tokenByIndex[stor2[arg3] - 1].field_416 = 0
            else:
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = arg3
                tokenByIndex[tokenByIndex.length].field_256 = arg2
                tokenByIndex[tokenByIndex.length].field_416 = 0
                stor2[arg3] = tokenByIndex.length
            emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor2[arg3]:
        if not stor2[arg3]:
            revert with 0, 
                        32,
                        41,
                        0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[201 len 23] >> 72,
                        0
        if stor2[arg3] < 1:
            revert with 'NH{q', 17
        if stor2[arg3] - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if tokenByIndex[stor2[arg3] - 1].field_256 != msg.sender:
            if not stor2[arg3]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
                if not stor4[stor1[stor2[arg3] - 1].field_256][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
        if not stor2[arg3]:
            revert with 0, 
                        32,
                        41,
                        0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[297 len 23] >> 72,
                        0
        if stor2[arg3] < 1:
            revert with 'NH{q', 17
        if stor2[arg3] - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if tokenByIndex[stor2[arg3] - 1].field_256 != arg1:
            revert with 0, 'ERC721: transfer of token that is not own'
        if not arg2:
            revert with 0, 'ERC721: transfer to the zero address'
        approved[arg3] = 0
        if not stor2[arg3]:
            revert with 0, 
                        32,
                        41,
                        0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[393 len 23] >> 72,
                        0
        if stor2[arg3] < 1:
            revert with 'NH{q', 17
        if stor2[arg3] - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        emit Approval(tokenByIndex[stor2[arg3] - 1].field_256, 0, arg3);
        if tokenOfOwnerByIndex[address(arg1)][1][arg3]:
            if tokenOfOwnerByIndex[address(arg1)][1][arg3] < 1:
                revert with 'NH{q', 17
            if tokenOfOwnerByIndex[address(arg1)] < 1:
                revert with 'NH{q', 17
            if tokenOfOwnerByIndex[address(arg1)] - 1 >= tokenOfOwnerByIndex[address(arg1)]:
                revert with 'NH{q', 50
            if tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 >= tokenOfOwnerByIndex[address(arg1)]:
                revert with 'NH{q', 50
            tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)][1][arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
            if tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 > -2:
                revert with 'NH{q', 17
            tokenOfOwnerByIndex[address(arg1)][1][tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]] = tokenOfOwnerByIndex[address(arg1)][1][arg3]
            if not tokenOfOwnerByIndex[address(arg1)]:
                revert with 'NH{q', 49
            tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
            tokenOfOwnerByIndex[address(arg1)]--
            tokenOfOwnerByIndex[address(arg1)][1][arg3] = 0
        if not tokenOfOwnerByIndex[address(arg2)][1][arg3]:
            tokenOfOwnerByIndex[address(arg2)]++
            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
            tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
        if stor2[arg3]:
            if stor2[arg3] < 1:
                revert with 'NH{q', 17
            if stor2[arg3] - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor2[arg3] - 1].field_256 = arg2
            tokenByIndex[stor2[arg3] - 1].field_416 = 0
        else:
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length].field_0 = arg3
            tokenByIndex[tokenByIndex.length].field_256 = arg2
            tokenByIndex[tokenByIndex.length].field_416 = 0
            stor2[arg3] = tokenByIndex.length
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
    else:
        if stor10[address(msg.sender)]:
            if not arg2:
                revert with 0, 'ERC721: mint to the zero address'
            if stor2[arg3]:
                revert with 0, 'ERC721: token already minted'
            if not tokenOfOwnerByIndex[address(arg2)][1][arg3]:
                tokenOfOwnerByIndex[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
            if stor2[arg3]:
                if stor2[arg3] < 1:
                    revert with 'NH{q', 17
                if stor2[arg3] - 1 >= tokenByIndex.length:
                    revert with 'NH{q', 50
                tokenByIndex[stor2[arg3] - 1].field_256 = arg2
                tokenByIndex[stor2[arg3] - 1].field_416 = 0
            else:
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = arg3
                tokenByIndex[tokenByIndex.length].field_256 = arg2
                tokenByIndex[tokenByIndex.length].field_416 = 0
                stor2[arg3] = tokenByIndex.length
            emit Transfer(0, arg2, arg3);
            if ext_code.size(arg2) > 0:
                require ext_code.size(arg2)
                call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, arg3, 128, 0
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
        else:
            if not stor2[arg3]:
                revert with 0, 
                            32,
                            41,
                            0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[201 len 23] >> 72,
                            0
            if stor2[arg3] < 1:
                revert with 'NH{q', 17
            if stor2[arg3] - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if tokenByIndex[stor2[arg3] - 1].field_256 != msg.sender:
                if not stor2[arg3]:
                    revert with 0, 'ERC721: approved query for nonexistent token'
                if approved[arg3] != msg.sender:
                    if not stor4[stor1[stor2[arg3] - 1].field_256][address(msg.sender)]:
                        revert with 0, 'ERC721: transfer caller is not owner nor approved'
            if not stor2[arg3]:
                revert with 0, 
                            32,
                            41,
                            0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[297 len 23] >> 72,
                            0
            if stor2[arg3] < 1:
                revert with 'NH{q', 17
            if stor2[arg3] - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if tokenByIndex[stor2[arg3] - 1].field_256 != arg1:
                revert with 0, 'ERC721: transfer of token that is not own'
            if not arg2:
                revert with 0, 'ERC721: transfer to the zero address'
            approved[arg3] = 0
            if not stor2[arg3]:
                revert with 0, 
                            32,
                            41,
                            0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[393 len 23] >> 72,
                            0
            if stor2[arg3] < 1:
                revert with 'NH{q', 17
            if stor2[arg3] - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            emit Approval(tokenByIndex[stor2[arg3] - 1].field_256, 0, arg3);
            if tokenOfOwnerByIndex[address(arg1)][1][arg3]:
                if tokenOfOwnerByIndex[address(arg1)][1][arg3] < 1:
                    revert with 'NH{q', 17
                if tokenOfOwnerByIndex[address(arg1)] < 1:
                    revert with 'NH{q', 17
                if tokenOfOwnerByIndex[address(arg1)] - 1 >= tokenOfOwnerByIndex[address(arg1)]:
                    revert with 'NH{q', 50
                if tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 >= tokenOfOwnerByIndex[address(arg1)]:
                    revert with 'NH{q', 50
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)][1][arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                if tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 > -2:
                    revert with 'NH{q', 17
                tokenOfOwnerByIndex[address(arg1)][1][tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]] = tokenOfOwnerByIndex[address(arg1)][1][arg3]
                if not tokenOfOwnerByIndex[address(arg1)]:
                    revert with 'NH{q', 49
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                tokenOfOwnerByIndex[address(arg1)]--
                tokenOfOwnerByIndex[address(arg1)][1][arg3] = 0
            if not tokenOfOwnerByIndex[address(arg2)][1][arg3]:
                tokenOfOwnerByIndex[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
            if stor2[arg3]:
                if stor2[arg3] < 1:
                    revert with 'NH{q', 17
                if stor2[arg3] - 1 >= tokenByIndex.length:
                    revert with 'NH{q', 50
                tokenByIndex[stor2[arg3] - 1].field_256 = arg2
                tokenByIndex[stor2[arg3] - 1].field_416 = 0
            else:
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = arg3
                tokenByIndex[tokenByIndex.length].field_256 = arg2
                tokenByIndex[tokenByIndex.length].field_416 = 0
                stor2[arg3] = tokenByIndex.length
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
    if ceil32(arg4.length) + 128 > test266151307() or ceil32(arg4.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    if stor2[arg3]:
        if not stor2[arg3]:
            revert with 0, 
                        32,
                        41,
                        0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg4.length) + 201 len 23] >> 72,
                        0
        if stor2[arg3] < 1:
            revert with 'NH{q', 17
        if stor2[arg3] - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if tokenByIndex[stor2[arg3] - 1].field_256 != msg.sender:
            if not stor2[arg3]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
                if not stor4[stor1[stor2[arg3] - 1].field_256][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
        if not stor2[arg3]:
            revert with 0, 
                        32,
                        41,
                        0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg4.length) + 297 len 23] >> 72,
                        0
        if stor2[arg3] < 1:
            revert with 'NH{q', 17
        if stor2[arg3] - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if tokenByIndex[stor2[arg3] - 1].field_256 != arg1:
            revert with 0, 'ERC721: transfer of token that is not own'
        if not arg2:
            revert with 0, 'ERC721: transfer to the zero address'
        approved[arg3] = 0
        if not stor2[arg3]:
            revert with 0, 
                        32,
                        41,
                        0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg4.length) + 393 len 23] >> 72,
                        0
        if stor2[arg3] < 1:
            revert with 'NH{q', 17
        if stor2[arg3] - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        emit Approval(tokenByIndex[stor2[arg3] - 1].field_256, 0, arg3);
        if tokenOfOwnerByIndex[address(arg1)][1][arg3]:
            if tokenOfOwnerByIndex[address(arg1)][1][arg3] < 1:
                revert with 'NH{q', 17
            if tokenOfOwnerByIndex[address(arg1)] < 1:
                revert with 'NH{q', 17
            if tokenOfOwnerByIndex[address(arg1)] - 1 >= tokenOfOwnerByIndex[address(arg1)]:
                revert with 'NH{q', 50
            if tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 >= tokenOfOwnerByIndex[address(arg1)]:
                revert with 'NH{q', 50
            tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)][1][arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
            if tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 > -2:
                revert with 'NH{q', 17
            tokenOfOwnerByIndex[address(arg1)][1][tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]] = tokenOfOwnerByIndex[address(arg1)][1][arg3]
            if not tokenOfOwnerByIndex[address(arg1)]:
                revert with 'NH{q', 49
            tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
            tokenOfOwnerByIndex[address(arg1)]--
            tokenOfOwnerByIndex[address(arg1)][1][arg3] = 0
        if not tokenOfOwnerByIndex[address(arg2)][1][arg3]:
            tokenOfOwnerByIndex[address(arg2)]++
            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
            tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
        if stor2[arg3]:
            if stor2[arg3] < 1:
                revert with 'NH{q', 17
            if stor2[arg3] - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor2[arg3] - 1].field_256 = arg2
            tokenByIndex[stor2[arg3] - 1].field_416 = 0
        else:
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length].field_0 = arg3
            tokenByIndex[tokenByIndex.length].field_256 = arg2
            tokenByIndex[tokenByIndex.length].field_416 = 0
            stor2[arg3] = tokenByIndex.length
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
    else:
        if stor10[address(msg.sender)]:
            if not arg2:
                revert with 0, 'ERC721: mint to the zero address'
            if stor2[arg3]:
                revert with 0, 'ERC721: token already minted'
            if not tokenOfOwnerByIndex[address(arg2)][1][arg3]:
                tokenOfOwnerByIndex[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
            if stor2[arg3]:
                if stor2[arg3] < 1:
                    revert with 'NH{q', 17
                if stor2[arg3] - 1 >= tokenByIndex.length:
                    revert with 'NH{q', 50
                tokenByIndex[stor2[arg3] - 1].field_256 = arg2
                tokenByIndex[stor2[arg3] - 1].field_416 = 0
            else:
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = arg3
                tokenByIndex[tokenByIndex.length].field_256 = arg2
                tokenByIndex[tokenByIndex.length].field_416 = 0
                stor2[arg3] = tokenByIndex.length
            emit Transfer(0, arg2, arg3);
            if ext_code.size(arg2) > 0:
                require ext_code.size(arg2)
                call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, arg3, 128, 0
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
        else:
            if not stor2[arg3]:
                revert with 0, 
                            32,
                            41,
                            0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg4.length) + 201 len 23] >> 72,
                            0
            if stor2[arg3] < 1:
                revert with 'NH{q', 17
            if stor2[arg3] - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if tokenByIndex[stor2[arg3] - 1].field_256 != msg.sender:
                if not stor2[arg3]:
                    revert with 0, 'ERC721: approved query for nonexistent token'
                if approved[arg3] != msg.sender:
                    if not stor4[stor1[stor2[arg3] - 1].field_256][address(msg.sender)]:
                        revert with 0, 'ERC721: transfer caller is not owner nor approved'
            if not stor2[arg3]:
                revert with 0, 
                            32,
                            41,
                            0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg4.length) + 297 len 23] >> 72,
                            0
            if stor2[arg3] < 1:
                revert with 'NH{q', 17
            if stor2[arg3] - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if tokenByIndex[stor2[arg3] - 1].field_256 != arg1:
                revert with 0, 'ERC721: transfer of token that is not own'
            if not arg2:
                revert with 0, 'ERC721: transfer to the zero address'
            approved[arg3] = 0
            if not stor2[arg3]:
                revert with 0, 
                            32,
                            41,
                            0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg4.length) + 393 len 23] >> 72,
                            0
            if stor2[arg3] < 1:
                revert with 'NH{q', 17
            if stor2[arg3] - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            emit Approval(tokenByIndex[stor2[arg3] - 1].field_256, 0, arg3);
            if tokenOfOwnerByIndex[address(arg1)][1][arg3]:
                if tokenOfOwnerByIndex[address(arg1)][1][arg3] < 1:
                    revert with 'NH{q', 17
                if tokenOfOwnerByIndex[address(arg1)] < 1:
                    revert with 'NH{q', 17
                if tokenOfOwnerByIndex[address(arg1)] - 1 >= tokenOfOwnerByIndex[address(arg1)]:
                    revert with 'NH{q', 50
                if tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 >= tokenOfOwnerByIndex[address(arg1)]:
                    revert with 'NH{q', 50
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)][1][arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                if tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 > -2:
                    revert with 'NH{q', 17
                tokenOfOwnerByIndex[address(arg1)][1][tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]] = tokenOfOwnerByIndex[address(arg1)][1][arg3]
                if not tokenOfOwnerByIndex[address(arg1)]:
                    revert with 'NH{q', 49
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                tokenOfOwnerByIndex[address(arg1)]--
                tokenOfOwnerByIndex[address(arg1)][1][arg3] = 0
            if not tokenOfOwnerByIndex[address(arg2)][1][arg3]:
                tokenOfOwnerByIndex[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
            if stor2[arg3]:
                if stor2[arg3] < 1:
                    revert with 'NH{q', 17
                if stor2[arg3] - 1 >= tokenByIndex.length:
                    revert with 'NH{q', 50
                tokenByIndex[stor2[arg3] - 1].field_256 = arg2
                tokenByIndex[stor2[arg3] - 1].field_416 = 0
            else:
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = arg3
                tokenByIndex[tokenByIndex.length].field_256 = arg2
                tokenByIndex[tokenByIndex.length].field_416 = 0
                stor2[arg3] = tokenByIndex.length
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
