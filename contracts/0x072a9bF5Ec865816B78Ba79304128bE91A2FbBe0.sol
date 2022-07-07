contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
const VERSION = 10


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
array of struct stor101;
array of struct stor102;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor106;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor152;
array of uint256 tokenByIndex;
mapping of uint256 stor154;
address owner;
uint8 sub_3c02ee32;
address stor251; offset 8
uint256 stor251;
mapping of struct sub_a8fe8b8c;
uint256 sub_9b486235;
mapping of uint256 sub_a9cc8f1d;
mapping of uint256 sub_c85cae6c;
mapping of uint256 sub_08de113a;
mapping of uint256 sub_0623e7c7;
array of uint256 stor51848699043762354786445001410105671568266765734117956169291548475795829136640;

function sub_0623e7c7(?) payable {
    require calldata.size - 4 >= 32
    return sub_0623e7c7[arg1]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_08de113a(?) payable {
    require calldata.size - 4 >= 32
    return sub_08de113a[arg1]
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

function sub_3c02ee32(?) payable {
    return bool(sub_3c02ee32)
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
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

function owner() payable {
    return owner
}

function sub_9b486235(?) payable {
    return sub_9b486235
}

function sub_a8fe8b8c(?) payable {
    require calldata.size - 4 >= 32
    return sub_a8fe8b8c[arg1].field_0, 
           sub_a8fe8b8c[arg1].field_256,
           sub_a8fe8b8c[arg1].field_512,
           sub_a8fe8b8c[arg1].field_768,
           sub_a8fe8b8c[arg1].field_1024,
           sub_a8fe8b8c[arg1].field_1280
}

function sub_a9cc8f1d(?) payable {
    require calldata.size - 4 >= 32
    return sub_a9cc8f1d[arg1]
}

function sub_c85cae6c(?) payable {
    require calldata.size - 4 >= 32
    return sub_c85cae6c[arg1]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor106[address(arg1)][address(arg2)])
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

function flipStakingState() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor251.field_0) = not sub_3c02ee32 or Mask(248, 8, uint256(stor251.field_0))
}

function sub_b83e5c7e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor251.field_8) = address(arg1)
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    return ''
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor106[address(msg.sender)][address(arg1)] = uint8(arg2)
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

function sub_d743b7dd(?) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < sub_08de113a[arg1]:
        revert with 0, 17
    if block.timestamp - sub_08de113a[arg1] / 168 * 24 * 3600 and sub_a8fe8b8c[stor254[arg1]].field_1024 > -1 / block.timestamp - sub_08de113a[arg1] / 168 * 24 * 3600:
        revert with 0, 17
    return (block.timestamp - sub_08de113a[arg1] / 168 * 24 * 3600 * sub_a8fe8b8c[stor254[arg1]].field_1024)
}

function sub_3d64691d(?) payable {
    require calldata.size - 4 >= 224
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a8fe8b8c[arg1].field_0 = arg2
    sub_a8fe8b8c[arg1].field_256 = address(arg3)
    sub_a8fe8b8c[arg1].field_512 = address(arg4)
    sub_a8fe8b8c[arg1].field_768 = arg5
    sub_a8fe8b8c[arg1].field_1024 = arg6
    sub_a8fe8b8c[arg1].field_1280 = arg7
    sub_0623e7c7[arg1] = arg7
}

function approveToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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

function stakingPower(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor251.field_8))
    staticcall address(stor251.field_8).0x1cf766fc with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor251.field_8))
    staticcall address(stor251.field_8).0xf265d2f9 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * ext_call.return_data[0])
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor106[stor103[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function initialize(string arg1, string arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    if bool(stor101.length):
        if bool(stor101.length) == uint255(stor101.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor101[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor101.length = 0
            idx = 0
            while (uint255(stor101.length) * 0.5) + 31 / 32 > idx:
                stor101[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor101[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor101.length = 0
            idx = 0
            while stor101.length.field_1 + 31 / 32 > idx:
                stor101[idx].field_0 = 0
                idx = idx + 1
                continue 
    if bool(stor102.length):
        if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor102[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor102.length = 0
            idx = 0
            while (uint255(stor102.length) * 0.5) + 31 / 32 > idx:
                stor102[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor102[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor102.length = 0
            idx = 0
            while stor102.length.field_1 + 31 / 32 > idx:
                stor102[idx].field_0 = 0
                idx = idx + 1
                continue 
    sub_3c02ee32 = 0
    address(stor251.field_8) = arg3
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor154[arg3] = tokenByIndex.length
        tokenByIndex.length++
        stor72A1[stor153.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor152[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
            stor152[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor152[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor154[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor154[arg3]] = tokenByIndex[tokenByIndex.length]
        stor154[stor153[stor153.length]] = stor154[arg3]
        stor154[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor154[arg3] = tokenByIndex.length
        tokenByIndex.length++
        stor72A1[stor153.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor152[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
            stor152[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor152[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor154[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor154[arg3]] = tokenByIndex[tokenByIndex.length]
        stor154[stor153[stor153.length]] = stor154[arg3]
        stor154[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
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

function name() payable {
    if bool(stor101.length):
        if bool(stor101.length) == uint255(stor101.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor101.length):
            if bool(stor101.length) == uint255(stor101.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor101.length):
                if 31 < uint255(stor101.length) * 0.5:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor101.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor101.length), data=mem[128 len ceil32(uint255(stor101.length) * 0.5)])
                mem[128] = 256 * stor101.length.field_8
        else:
            if bool(stor101.length) == stor101.length.field_1 < 32:
                revert with 0, 34
            if stor101.length.field_1:
                if 31 < stor101.length.field_1:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while stor101.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor101.length), data=mem[128 len ceil32(uint255(stor101.length) * 0.5)])
                mem[128] = 256 * stor101.length.field_8
        mem[ceil32(uint255(stor101.length) * 0.5) + 192 len ceil32(uint255(stor101.length) * 0.5)] = mem[128 len ceil32(uint255(stor101.length) * 0.5)]
        if ceil32(uint255(stor101.length) * 0.5) > uint255(stor101.length) * 0.5:
            mem[(uint255(stor101.length) * 0.5) + ceil32(uint255(stor101.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor101.length), data=mem[128 len ceil32(uint255(stor101.length) * 0.5)], mem[(2 * ceil32(uint255(stor101.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor101.length) * 0.5)]), 
    if bool(stor101.length) == stor101.length.field_1 < 32:
        revert with 0, 34
    if bool(stor101.length):
        if bool(stor101.length) == uint255(stor101.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor101.length):
            if 31 < uint255(stor101.length) * 0.5:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while (uint255(stor101.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)])
            mem[128] = 256 * stor101.length.field_8
    else:
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 0, 34
        if stor101.length.field_1:
            if 31 < stor101.length.field_1:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while stor101.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)])
            mem[128] = 256 * stor101.length.field_8
    mem[ceil32(stor101.length.field_1) + 192 len ceil32(stor101.length.field_1)] = mem[128 len ceil32(stor101.length.field_1)]
    if ceil32(stor101.length.field_1) > stor101.length.field_1:
        mem[stor101.length.field_1 + ceil32(stor101.length.field_1) + 192] = 0
    return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)], mem[(2 * ceil32(stor101.length.field_1)) + 192 len 2 * ceil32(stor101.length.field_1)]), 
}

function symbol() payable {
    if bool(stor102.length):
        if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor102.length):
            if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor102.length):
                if 31 < uint255(stor102.length) * 0.5:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor102.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor102.length), data=mem[128 len ceil32(uint255(stor102.length) * 0.5)])
                mem[128] = 256 * stor102.length.field_8
        else:
            if bool(stor102.length) == stor102.length.field_1 < 32:
                revert with 0, 34
            if stor102.length.field_1:
                if 31 < stor102.length.field_1:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while stor102.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor102.length), data=mem[128 len ceil32(uint255(stor102.length) * 0.5)])
                mem[128] = 256 * stor102.length.field_8
        mem[ceil32(uint255(stor102.length) * 0.5) + 192 len ceil32(uint255(stor102.length) * 0.5)] = mem[128 len ceil32(uint255(stor102.length) * 0.5)]
        if ceil32(uint255(stor102.length) * 0.5) > uint255(stor102.length) * 0.5:
            mem[(uint255(stor102.length) * 0.5) + ceil32(uint255(stor102.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor102.length), data=mem[128 len ceil32(uint255(stor102.length) * 0.5)], mem[(2 * ceil32(uint255(stor102.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor102.length) * 0.5)]), 
    if bool(stor102.length) == stor102.length.field_1 < 32:
        revert with 0, 34
    if bool(stor102.length):
        if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor102.length):
            if 31 < uint255(stor102.length) * 0.5:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while (uint255(stor102.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)])
            mem[128] = 256 * stor102.length.field_8
    else:
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 0, 34
        if stor102.length.field_1:
            if 31 < stor102.length.field_1:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while stor102.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)])
            mem[128] = 256 * stor102.length.field_8
    mem[ceil32(stor102.length.field_1) + 192 len ceil32(stor102.length.field_1)] = mem[128 len ceil32(stor102.length.field_1)]
    if ceil32(stor102.length.field_1) > stor102.length.field_1:
        mem[stor102.length.field_1 + ceil32(stor102.length.field_1) + 192] = 0
    return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)], mem[(2 * ceil32(stor102.length.field_1)) + 192 len 2 * ceil32(stor102.length.field_1)]), 
}

function sub_9957400a(?) payable {
    require calldata.size - 4 >= 64
    if not sub_3c02ee32:
        revert with 0, 'No active staking'
    mem[100] = arg1
    require ext_code.size(address(stor251.field_8))
    staticcall address(stor251.field_8).0x6352211e with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'No owner'
    if not sub_a8fe8b8c[arg2].field_768:
        revert with 0, 'Invalid farm'
    mem[ceil32(return_data.size) + 100] = arg1
    require ext_code.size(address(stor251.field_8))
    staticcall address(stor251.field_8).0x1cf766fc with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 100] = arg1
    require ext_code.size(address(stor251.field_8))
    staticcall address(stor251.field_8).0xf265d2f9 with:
            gas gas_remaining wei
           args arg1
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * ext_call.return_data[0] < sub_a8fe8b8c[arg2].field_0:
        revert with 0, 'Not enough staking power'
    require ext_code.size(address(stor251.field_8))
    call address(stor251.field_8).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_9b486235 > -2:
        revert with 0, 17
    sub_9b486235++
    mem[(4 * ceil32(return_data.size)) + 96] = 0
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor253]:
        revert with 0, 'ERC721: token already minted'
    stor154[stor253] = tokenByIndex.length
    tokenByIndex.length++
    stor72A1[stor153.length] = sub_9b486235
    if msg.sender:
        if msg.sender:
            if not msg.sender:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(msg.sender)][stor104[address(msg.sender)]] = sub_9b486235
            stor152[stor253] = balanceOf[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor154[stor253] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor154[stor253]] = tokenByIndex[tokenByIndex.length]
        stor154[stor153[stor153.length]] = stor154[stor253]
        stor154[stor253] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor253] = msg.sender
    emit Transfer(0, msg.sender, sub_9b486235);
    if ext_code.size(msg.sender):
        mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(4 * ceil32(return_data.size)) + 164] = 0
        mem[(4 * ceil32(return_data.size)) + 196] = sub_9b486235
        mem[(4 * ceil32(return_data.size)) + 228] = 128
        mem[(4 * ceil32(return_data.size)) + 260] = 0
        mem[(4 * ceil32(return_data.size)) + 292 len 0] = None
        require ext_code.size(msg.sender)
        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, 0, sub_9b486235, 128, 0
        mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            if not return_data.size:
                if not ext_call.return_data[0]:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    sub_a9cc8f1d[stor253] = arg2
    sub_c85cae6c[stor253] = arg1
    sub_08de113a[stor253] = block.timestamp
    emit 0xdba86951: arg2, sub_9b486235, block.timestamp, ext_call.return_data[0] * ext_call.return_data[0]
}

function sub_90399b88(?) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, 'Invalid Stake ID'
    if block.timestamp < sub_08de113a[arg1]:
        revert with 0, 17
    require ext_code.size(address(stor251.field_8))
    staticcall address(stor251.field_8).0x1cf766fc with:
            gas gas_remaining wei
           args sub_c85cae6c[arg1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor251.field_8))
    staticcall address(stor251.field_8).0xf265d2f9 with:
            gas gas_remaining wei
           args sub_c85cae6c[arg1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not sub_0623e7c7[stor254[arg1]]:
        if block.timestamp - sub_08de113a[arg1] and ext_call.return_data[0] * ext_call.return_data[0] > -1 / block.timestamp - sub_08de113a[arg1]:
            revert with 0, 17
        if (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (sub_08de113a[arg1] * ext_call.return_data[0] * ext_call.return_data[0]) and sub_a8fe8b8c[stor254[arg1]].field_768 > -1 / (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (sub_08de113a[arg1] * ext_call.return_data[0] * ext_call.return_data[0]):
            revert with 0, 17
        if block.timestamp < sub_08de113a[arg1]:
            revert with 0, 17
        if block.timestamp - sub_08de113a[arg1] / 168 * 24 * 3600 and sub_a8fe8b8c[stor254[arg1]].field_1024 > -1 / block.timestamp - sub_08de113a[arg1] / 168 * 24 * 3600:
            revert with 0, 17
        if 100 > !(block.timestamp - sub_08de113a[arg1] / 168 * 24 * 3600 * sub_a8fe8b8c[stor254[arg1]].field_1024):
            revert with 0, 17
        if (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) - (sub_08de113a[arg1] * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) / 24 * 3600 and (block.timestamp - sub_08de113a[arg1] / 168 * 24 * 3600 * sub_a8fe8b8c[stor254[arg1]].field_1024) + 100 > -1 / (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) - (sub_08de113a[arg1] * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) / 24 * 3600:
            revert with 0, 17
        return ((100 * (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) - (sub_08de113a[arg1] * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) / 24 * 3600) + (block.timestamp - sub_08de113a[arg1] / 168 * 24 * 3600 * sub_a8fe8b8c[stor254[arg1]].field_1024 * (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) - (sub_08de113a[arg1] * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) / 24 * 3600) / 100)
    if block.timestamp - sub_08de113a[arg1] <= sub_0623e7c7[stor254[arg1]]:
        if block.timestamp - sub_08de113a[arg1] and ext_call.return_data[0] * ext_call.return_data[0] > -1 / block.timestamp - sub_08de113a[arg1]:
            revert with 0, 17
        if (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (sub_08de113a[arg1] * ext_call.return_data[0] * ext_call.return_data[0]) and sub_a8fe8b8c[stor254[arg1]].field_768 > -1 / (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (sub_08de113a[arg1] * ext_call.return_data[0] * ext_call.return_data[0]):
            revert with 0, 17
        if block.timestamp < sub_08de113a[arg1]:
            revert with 0, 17
        if block.timestamp - sub_08de113a[arg1] / 168 * 24 * 3600 and sub_a8fe8b8c[stor254[arg1]].field_1024 > -1 / block.timestamp - sub_08de113a[arg1] / 168 * 24 * 3600:
            revert with 0, 17
        if 100 > !(block.timestamp - sub_08de113a[arg1] / 168 * 24 * 3600 * sub_a8fe8b8c[stor254[arg1]].field_1024):
            revert with 0, 17
        if (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) - (sub_08de113a[arg1] * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) / 24 * 3600 and (block.timestamp - sub_08de113a[arg1] / 168 * 24 * 3600 * sub_a8fe8b8c[stor254[arg1]].field_1024) + 100 > -1 / (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) - (sub_08de113a[arg1] * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) / 24 * 3600:
            revert with 0, 17
        return ((100 * (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) - (sub_08de113a[arg1] * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) / 24 * 3600) + (block.timestamp - sub_08de113a[arg1] / 168 * 24 * 3600 * sub_a8fe8b8c[stor254[arg1]].field_1024 * (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) - (sub_08de113a[arg1] * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) / 24 * 3600) / 100)
    if sub_0623e7c7[stor254[arg1]] and ext_call.return_data[0] * ext_call.return_data[0] > -1 / sub_0623e7c7[stor254[arg1]]:
        revert with 0, 17
    if sub_0623e7c7[stor254[arg1]] * ext_call.return_data[0] * ext_call.return_data[0] and sub_a8fe8b8c[stor254[arg1]].field_768 > -1 / sub_0623e7c7[stor254[arg1]] * ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 0, 17
    if block.timestamp < sub_08de113a[arg1]:
        revert with 0, 17
    if block.timestamp - sub_08de113a[arg1] / 168 * 24 * 3600 and sub_a8fe8b8c[stor254[arg1]].field_1024 > -1 / block.timestamp - sub_08de113a[arg1] / 168 * 24 * 3600:
        revert with 0, 17
    if 100 > !(block.timestamp - sub_08de113a[arg1] / 168 * 24 * 3600 * sub_a8fe8b8c[stor254[arg1]].field_1024):
        revert with 0, 17
    if sub_0623e7c7[stor254[arg1]] * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768 / 24 * 3600 and (block.timestamp - sub_08de113a[arg1] / 168 * 24 * 3600 * sub_a8fe8b8c[stor254[arg1]].field_1024) + 100 > -1 / sub_0623e7c7[stor254[arg1]] * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768 / 24 * 3600:
        revert with 0, 17
    return ((100 * sub_0623e7c7[stor254[arg1]] * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768 / 24 * 3600) + (block.timestamp - sub_08de113a[arg1] / 168 * 24 * 3600 * sub_a8fe8b8c[stor254[arg1]].field_1024 * sub_0623e7c7[stor254[arg1]] * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768 / 24 * 3600) / 100)
}

function sub_b5530713(?) payable {
    require calldata.size - 4 >= 32
    if not sub_3c02ee32:
        revert with 0, 'No active staking'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'No owner'
    require ext_code.size(address(stor251.field_8))
    call address(stor251.field_8).0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, sub_c85cae6c[arg1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if block.timestamp < sub_08de113a[arg1]:
        revert with 0, 17
    if block.timestamp - sub_08de113a[arg1] <= sub_0623e7c7[stor254[arg1]]:
        revert with 0, 'Period is not met.'
    if not ownerOf[arg1]:
        revert with 0, 'Invalid Stake ID'
    if block.timestamp < sub_08de113a[arg1]:
        revert with 0, 17
    require ext_code.size(address(stor251.field_8))
    staticcall address(stor251.field_8).0x1cf766fc with:
            gas gas_remaining wei
           args sub_c85cae6c[arg1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor251.field_8))
    staticcall address(stor251.field_8).0xf265d2f9 with:
            gas gas_remaining wei
           args sub_c85cae6c[arg1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not sub_0623e7c7[stor254[arg1]]:
        if block.timestamp - sub_08de113a[arg1] and ext_call.return_data[0] * ext_call.return_data[0] > -1 / block.timestamp - sub_08de113a[arg1]:
            revert with 0, 17
        if (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (sub_08de113a[arg1] * ext_call.return_data[0] * ext_call.return_data[0]) and sub_a8fe8b8c[stor254[arg1]].field_768 > -1 / (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (sub_08de113a[arg1] * ext_call.return_data[0] * ext_call.return_data[0]):
            revert with 0, 17
        if block.timestamp < sub_08de113a[arg1]:
            revert with 0, 17
        if block.timestamp - sub_08de113a[arg1] / 168 * 24 * 3600 and sub_a8fe8b8c[stor254[arg1]].field_1024 > -1 / block.timestamp - sub_08de113a[arg1] / 168 * 24 * 3600:
            revert with 0, 17
        if 100 > !(block.timestamp - sub_08de113a[arg1] / 168 * 24 * 3600 * sub_a8fe8b8c[stor254[arg1]].field_1024):
            revert with 0, 17
        if (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) - (sub_08de113a[arg1] * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) / 24 * 3600 and (block.timestamp - sub_08de113a[arg1] / 168 * 24 * 3600 * sub_a8fe8b8c[stor254[arg1]].field_1024) + 100 > -1 / (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) - (sub_08de113a[arg1] * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) / 24 * 3600:
            revert with 0, 17
        if not ownerOf[arg1]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[arg1]:
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[stor103[arg1]] < 1:
                revert with 0, 17
            if balanceOf[stor103[arg1]] - 1 != stor152[arg1]:
                tokenOfOwnerByIndex[stor103[arg1]][stor152[arg1]] = tokenOfOwnerByIndex[stor103[arg1]][stor104[stor103[arg1]] - 1]
                stor152[stor151[stor103[arg1]][stor104[stor103[arg1]] - 1]] = stor152[arg1]
            stor152[arg1] = 0
            tokenOfOwnerByIndex[stor103[arg1]][stor104[stor103[arg1]] - 1] = 0
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor154[arg1] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor154[arg1]] = tokenByIndex[tokenByIndex.length]
        stor154[stor153[stor153.length]] = stor154[arg1]
        stor154[arg1] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
        approved[arg1] = 0
        if not ownerOf[arg1]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        emit Approval(ownerOf[arg1], 0, arg1);
        if balanceOf[stor103[arg1]] < 1:
            revert with 0, 17
        balanceOf[stor103[arg1]]--
        ownerOf[arg1] = 0
        emit Transfer(ownerOf[arg1], 0, arg1);
        require ext_code.size(sub_a8fe8b8c[stor254[arg1]].field_512)
        call sub_a8fe8b8c[stor254[arg1]].field_512.0x23b872dd with:
             gas gas_remaining wei
            args sub_a8fe8b8c[stor254[arg1]].field_256, msg.sender, (100 * (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) - (sub_08de113a[arg1] * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) / 24 * 3600) + (block.timestamp - sub_08de113a[arg1] / 168 * 24 * 3600 * sub_a8fe8b8c[stor254[arg1]].field_1024 * (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) - (sub_08de113a[arg1] * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) / 24 * 3600) / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit 0x9772c26e: sub_a9cc8f1d[arg1], arg1, block.timestamp, sub_a8fe8b8c[stor254[arg1]].field_512, (100 * (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) - (sub_08de113a[arg1] * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) / 24 * 3600) + (block.timestamp - sub_08de113a[arg1] / 168 * 24 * 3600 * sub_a8fe8b8c[stor254[arg1]].field_1024 * (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) - (sub_08de113a[arg1] * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) / 24 * 3600) / 100
    else:
        if block.timestamp - sub_08de113a[arg1] <= sub_0623e7c7[stor254[arg1]]:
            if block.timestamp - sub_08de113a[arg1] and ext_call.return_data[0] * ext_call.return_data[0] > -1 / block.timestamp - sub_08de113a[arg1]:
                revert with 0, 17
            if (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (sub_08de113a[arg1] * ext_call.return_data[0] * ext_call.return_data[0]) and sub_a8fe8b8c[stor254[arg1]].field_768 > -1 / (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (sub_08de113a[arg1] * ext_call.return_data[0] * ext_call.return_data[0]):
                revert with 0, 17
            if block.timestamp < sub_08de113a[arg1]:
                revert with 0, 17
            if block.timestamp - sub_08de113a[arg1] / 168 * 24 * 3600 and sub_a8fe8b8c[stor254[arg1]].field_1024 > -1 / block.timestamp - sub_08de113a[arg1] / 168 * 24 * 3600:
                revert with 0, 17
            if 100 > !(block.timestamp - sub_08de113a[arg1] / 168 * 24 * 3600 * sub_a8fe8b8c[stor254[arg1]].field_1024):
                revert with 0, 17
            if (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) - (sub_08de113a[arg1] * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) / 24 * 3600 and (block.timestamp - sub_08de113a[arg1] / 168 * 24 * 3600 * sub_a8fe8b8c[stor254[arg1]].field_1024) + 100 > -1 / (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) - (sub_08de113a[arg1] * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) / 24 * 3600:
                revert with 0, 17
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[arg1]:
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721: balance query for the zero address'
                if balanceOf[stor103[arg1]] < 1:
                    revert with 0, 17
                if balanceOf[stor103[arg1]] - 1 != stor152[arg1]:
                    tokenOfOwnerByIndex[stor103[arg1]][stor152[arg1]] = tokenOfOwnerByIndex[stor103[arg1]][stor104[stor103[arg1]] - 1]
                    stor152[stor151[stor103[arg1]][stor104[stor103[arg1]] - 1]] = stor152[arg1]
                stor152[arg1] = 0
                tokenOfOwnerByIndex[stor103[arg1]][stor104[stor103[arg1]] - 1] = 0
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor154[arg1] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor154[arg1]] = tokenByIndex[tokenByIndex.length]
            stor154[stor153[stor153.length]] = stor154[arg1]
            stor154[arg1] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            approved[arg1] = 0
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            emit Approval(ownerOf[arg1], 0, arg1);
            if balanceOf[stor103[arg1]] < 1:
                revert with 0, 17
            balanceOf[stor103[arg1]]--
            ownerOf[arg1] = 0
            emit Transfer(ownerOf[arg1], 0, arg1);
            require ext_code.size(sub_a8fe8b8c[stor254[arg1]].field_512)
            call sub_a8fe8b8c[stor254[arg1]].field_512.0x23b872dd with:
                 gas gas_remaining wei
                args sub_a8fe8b8c[stor254[arg1]].field_256, msg.sender, (100 * (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) - (sub_08de113a[arg1] * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) / 24 * 3600) + (block.timestamp - sub_08de113a[arg1] / 168 * 24 * 3600 * sub_a8fe8b8c[stor254[arg1]].field_1024 * (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) - (sub_08de113a[arg1] * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) / 24 * 3600) / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit 0x9772c26e: sub_a9cc8f1d[arg1], arg1, block.timestamp, sub_a8fe8b8c[stor254[arg1]].field_512, (100 * (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) - (sub_08de113a[arg1] * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) / 24 * 3600) + (block.timestamp - sub_08de113a[arg1] / 168 * 24 * 3600 * sub_a8fe8b8c[stor254[arg1]].field_1024 * (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) - (sub_08de113a[arg1] * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768) / 24 * 3600) / 100
        else:
            if sub_0623e7c7[stor254[arg1]] and ext_call.return_data[0] * ext_call.return_data[0] > -1 / sub_0623e7c7[stor254[arg1]]:
                revert with 0, 17
            if sub_0623e7c7[stor254[arg1]] * ext_call.return_data[0] * ext_call.return_data[0] and sub_a8fe8b8c[stor254[arg1]].field_768 > -1 / sub_0623e7c7[stor254[arg1]] * ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, 17
            if block.timestamp < sub_08de113a[arg1]:
                revert with 0, 17
            if block.timestamp - sub_08de113a[arg1] / 168 * 24 * 3600 and sub_a8fe8b8c[stor254[arg1]].field_1024 > -1 / block.timestamp - sub_08de113a[arg1] / 168 * 24 * 3600:
                revert with 0, 17
            if 100 > !(block.timestamp - sub_08de113a[arg1] / 168 * 24 * 3600 * sub_a8fe8b8c[stor254[arg1]].field_1024):
                revert with 0, 17
            if sub_0623e7c7[stor254[arg1]] * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768 / 24 * 3600 and (block.timestamp - sub_08de113a[arg1] / 168 * 24 * 3600 * sub_a8fe8b8c[stor254[arg1]].field_1024) + 100 > -1 / sub_0623e7c7[stor254[arg1]] * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768 / 24 * 3600:
                revert with 0, 17
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[arg1]:
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721: balance query for the zero address'
                if balanceOf[stor103[arg1]] < 1:
                    revert with 0, 17
                if balanceOf[stor103[arg1]] - 1 != stor152[arg1]:
                    tokenOfOwnerByIndex[stor103[arg1]][stor152[arg1]] = tokenOfOwnerByIndex[stor103[arg1]][stor104[stor103[arg1]] - 1]
                    stor152[stor151[stor103[arg1]][stor104[stor103[arg1]] - 1]] = stor152[arg1]
                stor152[arg1] = 0
                tokenOfOwnerByIndex[stor103[arg1]][stor104[stor103[arg1]] - 1] = 0
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor154[arg1] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor154[arg1]] = tokenByIndex[tokenByIndex.length]
            stor154[stor153[stor153.length]] = stor154[arg1]
            stor154[arg1] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            approved[arg1] = 0
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            emit Approval(ownerOf[arg1], 0, arg1);
            if balanceOf[stor103[arg1]] < 1:
                revert with 0, 17
            balanceOf[stor103[arg1]]--
            ownerOf[arg1] = 0
            emit Transfer(ownerOf[arg1], 0, arg1);
            require ext_code.size(sub_a8fe8b8c[stor254[arg1]].field_512)
            call sub_a8fe8b8c[stor254[arg1]].field_512.0x23b872dd with:
                 gas gas_remaining wei
                args sub_a8fe8b8c[stor254[arg1]].field_256, msg.sender, (100 * sub_0623e7c7[stor254[arg1]] * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768 / 24 * 3600) + (block.timestamp - sub_08de113a[arg1] / 168 * 24 * 3600 * sub_a8fe8b8c[stor254[arg1]].field_1024 * sub_0623e7c7[stor254[arg1]] * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768 / 24 * 3600) / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit 0x9772c26e: sub_a9cc8f1d[arg1], arg1, block.timestamp, sub_a8fe8b8c[stor254[arg1]].field_512, (100 * sub_0623e7c7[stor254[arg1]] * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768 / 24 * 3600) + (block.timestamp - sub_08de113a[arg1] / 168 * 24 * 3600 * sub_a8fe8b8c[stor254[arg1]].field_1024 * sub_0623e7c7[stor254[arg1]] * ext_call.return_data[0] * ext_call.return_data[0] * sub_a8fe8b8c[stor254[arg1]].field_768 / 24 * 3600) / 100
}



}
