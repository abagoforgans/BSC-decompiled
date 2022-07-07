contract main {




// =====================  Runtime code  =====================


const sub_3ccfe611(?) = 3000

const DISCOUNT_PRICE = 38 * 10^14

const MAX_TOKENS = 10000


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
uint16 stor10;
uint16 purchased; offset 160
address owner;
address sub_7349790bAddress;
mapping of uint8 stor12;
array of uint256 sub_2748fec8;
mapping of uint256 sub_a1b5a556;
mapping of uint8 stor15;
uint8 sub_1a215730;
uint256 stor16;
mapping of uint8 stor17;
mapping of uint8 sub_c7c69111;
uint256 stor19;
address stor20;
address stor21;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function sub_1a215730(?) {
    return bool(uint8(sub_1a215730))
}

function sub_2748fec8(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_2748fec8.length
    return sub_2748fec8[arg1]
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function sub_7349790b(?) {
    return sub_7349790bAddress
}

function sub_7decd3d8(?) {
    return sub_2748fec8.length
}

function purchased() {
    return purchased
}

function owner() {
    return owner
}

function sub_a1b5a556(?) {
    require calldata.size - 4 >= 32
    return sub_a1b5a556[arg1]
}

function sub_b82f74e1(?) {
    require calldata.size - 4 >= 32
    return bool(stor12[arg1])
}

function sub_bb10c829(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return bool(stor17[arg1[all]])
}

function sub_c7c69111(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_c7c69111[arg1]
}

function sub_e079f24f(?) {
    require calldata.size - 4 >= 32
    return bool(stor15[arg1])
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_9edede9f(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor16) = not uint8(sub_1a215730) or Mask(248, 8, uint256(stor16))
}

function sub_2d03b7f8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'Cannot be zero'
    sub_7349790bAddress = address(arg1)
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function supportsInterface(bytes4 arg1) {
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

function sub_e17bfef1(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if purchased > -uint16(arg1) + 65535:
        revert with 0, 17
    require uint16(uint16(arg1) + purchased) >= 3000
    if purchased > -uint16(arg1) + 65535:
        revert with 0, 17
    if uint16(uint16(arg1) + purchased) < 3000:
        revert with 0, 17
    if 1 > -uint16(uint16(uint16(uint16(arg1) + purchased) - 3000) / 500) + 65535:
        revert with 0, 17
    if uint16(uint16(uint16(uint16(uint16(arg1) + purchased) - 3000) / 500) + 1) > 118:
        revert with 0, 17
    return Mask(72, 0, 40 * 10^18 * uint16(uint16(uint16(uint16(uint16(arg1) + purchased) - 3000) / 500) + 1))
}

function approve(address arg1, uint256 arg2) {
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

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 14
    mem[96] = 0xee2a7e3200000000000000000000000000000000000000000000000000000000
    mem[100] = bool(stor12[arg1])
    mem[132] = sub_a1b5a556[arg1]
    mem[164] = arg1
    require ext_code.size(stor21)
    staticcall stor21.0xee2a7e32 with:
            gas gas_remaining wei
           args bool(stor12[arg1]), sub_a1b5a556[arg1], arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96 len 4], Mask(224, 32, bool(stor12[arg1])) >> 32
    require mem[96 len 4], Mask(224, 32, bool(stor12[arg1])) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, bool(stor12[arg1])) >> 32 + 127
    _7 = mem[mem[96 len 4], Mask(224, 32, bool(stor12[arg1])) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, bool(stor12[arg1])) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, bool(stor12[arg1])) >> 32 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, bool(stor12[arg1])) >> 32 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, bool(stor12[arg1])) >> 32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _7
    require _6 + _7 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_7)] = mem[_6 + 128 len ceil32(_7)]
    if ceil32(_7) > _7:
        mem[_7 + ceil32(return_data.size) + 128] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _7
    mem[mem[64] + 64 len ceil32(_7)] = mem[ceil32(return_data.size) + 128 len ceil32(_7)]
    if ceil32(_7) > _7:
        mem[_7 + mem[64] + 64] = 0
    return Array(len=_7, data=mem[mem[64] + 64 len ceil32(_7)])
}

function sub_bd74e0aa(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg4 == bool(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(sub_1a215730):
        revert with 0, 'Main Sale has already begun'
    if 1 > -purchased + 65535:
        revert with 0, 17
    if uint16(purchased + 1) != arg2:
        revert with 0, 'Incorrect tokenId'
    if stor15[arg3]:
        revert with 0, 'Traits already in use'
    if purchased == 65535:
        revert with 0, 17
    purchased = uint16(purchased + 1)
    if arg4:
        stor12[arg2] = 1
        sub_2748fec8.length++
        sub_2748fec8[sub_2748fec8.length] = arg2
    stor15[arg3] = 1
    sub_a1b5a556[arg2] = arg3
    if not address(arg1):
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[arg2]:
        revert with 0, 'ERC721: token already minted'
    stor9[arg2] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg2
    if address(arg1):
        if address(arg1):
            if not address(arg1):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = arg2
            stor7[arg2] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg2] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg2]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg2]
        stor9[arg2] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    ownerOf[arg2] = address(arg1)
    emit Transfer(0, address(arg1), arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
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
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
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
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
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
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
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
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
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

function name() {
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
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
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
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
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

function symbol() {
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
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
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
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
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
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
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
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
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

function sub_8a8cbf77(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 1 > !stor19:
        revert with 0, 17
    if stor19 + 1 > 30:
        revert with 0, 'Max extras minted'
    if stor19 == -1:
        revert with 0, 17
    stor19++
    if 10000 > !stor19:
        revert with 0, 17
    mem[100] = gas_remaining
    require ext_code.size(sub_7349790bAddress)
    staticcall sub_7349790bAddress.0xb37217a4 with:
            gas gas_remaining wei
           args gas_remaining
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 160] = 2
    mem[ceil32(return_data.size) + 96] = 64
    if sha3(ext_call.return_data[0], 2) % 10:
        mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 256] = 1
        mem[ceil32(return_data.size) + 192] = 64
        mem[64] = ceil32(return_data.size) + 288
        mem[0] = uint16(sha3(ext_call.return_data[0], 1))
        mem[32] = 15
        s = uint16(sha3(mem[ceil32(return_data.size) + 224 len mem[ceil32(return_data.size) + 192]]))
        t = sha3(mem[ceil32(return_data.size) + 224 len mem[ceil32(return_data.size) + 192]])
        while stor15[uint16(('map', ('ext_call.return_data', 0, 32), ('name', 'stor1', 1)))].field_0:
            mem[mem[64] + 32] = t
            mem[mem[64] + 64] = 1
            _95 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _97 = sha3(mem[_95 + 32 len mem[_95]])
            mem[0] = uint16(sha3(mem[_95 + 32 len mem[_95]]))
            mem[32] = 15
            s = uint16(_97)
            t = _97
            continue 
    else:
        stor12[stor19 + 10000] = 1
        sub_2748fec8.length++
        sub_2748fec8[sub_2748fec8.length] = stor19 + 10000
        mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 256] = 1
        mem[ceil32(return_data.size) + 192] = 64
        mem[64] = ceil32(return_data.size) + 288
        mem[0] = uint16(sha3(ext_call.return_data[0], 1))
        mem[32] = 15
        s = uint16(sha3(mem[ceil32(return_data.size) + 224 len mem[ceil32(return_data.size) + 192]]))
        t = sha3(mem[ceil32(return_data.size) + 224 len mem[ceil32(return_data.size) + 192]])
        while stor15[uint16(('map', ('ext_call.return_data', 0, 32), ('name', 'stor1', 1)))].field_0:
            mem[mem[64] + 32] = t
            mem[mem[64] + 64] = 1
            _101 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _103 = sha3(mem[_101 + 32 len mem[_101]])
            mem[0] = uint16(sha3(mem[_101 + 32 len mem[_101]]))
            mem[32] = 15
            s = uint16(_103)
            t = _103
            continue 
    stor15[s] = 1
    sub_a1b5a556[stor19 + 10000] = s
    if not address(arg1):
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor19 + 10000]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor19 + 10000] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor19 + 10000
    if address(arg1):
        if address(arg1):
            if not address(arg1):
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = stor19 + 10000
            stor7[stor19 + 10000] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[stor19 + 10000] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[stor19 + 10000]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor19 + 10000]
        stor9[stor19 + 10000] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    ownerOf[stor19 + 10000] = address(arg1)
    emit Transfer(0, address(arg1), stor19 + 10000);
}

function allTokensOfOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    mem[0] = arg1
    mem[32] = 3
    if balanceOf[address(arg1)] > test266151307():
        revert with 0, 65
    mem[96] = balanceOf[address(arg1)]
    mem[64] = (32 * balanceOf[address(arg1)]) + 128
    if not balanceOf[address(arg1)]:
        idx = 0
        while idx < balanceOf[address(arg1)]:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if idx >= balanceOf[address(arg1)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
            mem[32] = 14
            mem[mem[64]] = 0xee2a7e3200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = bool(stor12[stor6[address(arg1)][idx]])
            mem[mem[64] + 36] = sub_a1b5a556[stor6[address(arg1)][idx]]
            mem[mem[64] + 68] = tokenOfOwnerByIndex[address(arg1)][idx]
            require ext_code.size(stor21)
            staticcall stor21.0xee2a7e32 with:
                    gas gas_remaining wei
                   args bool(stor12[stor6[address(arg1)][idx]]), sub_a1b5a556[stor6[address(arg1)][idx]], tokenOfOwnerByIndex[address(arg1)][idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _103 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _109 = mem[_103]
            require mem[_103] <= test266151307()
            require _103 + return_data.size > _103 + mem[_103] + 31
            _112 = mem[_103 + mem[_103]]
            if mem[_103 + mem[_103]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_103 + mem[_103]])) + 1 < 0 or _103 + ceil32(return_data.size) + ceil32(ceil32(mem[_103 + mem[_103]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _103 + ceil32(return_data.size) + ceil32(ceil32(mem[_103 + mem[_103]])) + 1
            mem[_103 + ceil32(return_data.size)] = _112
            require _109 + _112 + 32 <= return_data.size
            s = 0
            while s < _112:
                mem[s + _103 + ceil32(return_data.size) + 32] = mem[s + _103 + _109 + 32]
                s = s + 32
                continue 
            if ceil32(_112) <= _112:
                _143 = mem[64]
                mem[64] = mem[64] + 96
                mem[_143] = tokenOfOwnerByIndex[address(arg1)][idx]
                mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
                mem[32] = 12
                mem[_143 + 32] = bool(stor12[stor6[address(arg1)][idx]])
                mem[_143 + 64] = _103 + ceil32(return_data.size)
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _143
            else:
                mem[_112 + _103 + ceil32(return_data.size) + 32] = 0
                _146 = mem[64]
                mem[64] = mem[64] + 96
                mem[_146] = tokenOfOwnerByIndex[address(arg1)][idx]
                mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
                mem[32] = 12
                mem[_146 + 32] = bool(stor12[stor6[address(arg1)][idx]])
                mem[_146 + 64] = _103 + ceil32(return_data.size)
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _146
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _69 = mem[64]
        mem[mem[64]] = 32
        _70 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _70:
            mem[u] = t + -_69 - 64
            _131 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = bool(mem[_131 + 32])
            _134 = mem[_131 + 64]
            mem[t + 64] = 96
            _137 = mem[_134]
            mem[t + 96] = mem[_134]
            v = 0
            while v < _137:
                mem[v + t + 128] = mem[v + _134 + 32]
                v = v + 32
                continue 
            if ceil32(_137) > _137:
                mem[_137 + t + 128] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_137) + t + 128
            u = u + 32
            continue 
    else:
        mem[64] = (32 * balanceOf[address(arg1)]) + 224
        mem[(32 * balanceOf[address(arg1)]) + 128] = 0
        mem[(32 * balanceOf[address(arg1)]) + 160] = 0
        mem[(32 * balanceOf[address(arg1)]) + 192] = 96
        mem[128] = (32 * balanceOf[address(arg1)]) + 128
        s = 128
        idx = balanceOf[address(arg1)]
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(32 * balanceOf[address(arg1)]) + 128] = 0
            mem[(32 * balanceOf[address(arg1)]) + 160] = 0
            mem[(32 * balanceOf[address(arg1)]) + 192] = 96
            mem[s + 32] = (32 * balanceOf[address(arg1)]) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < balanceOf[address(arg1)]:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if idx >= balanceOf[address(arg1)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
            mem[32] = 14
            mem[mem[64]] = 0xee2a7e3200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = bool(stor12[stor6[address(arg1)][idx]])
            mem[mem[64] + 36] = sub_a1b5a556[stor6[address(arg1)][idx]]
            mem[mem[64] + 68] = tokenOfOwnerByIndex[address(arg1)][idx]
            require ext_code.size(stor21)
            staticcall stor21.0xee2a7e32 with:
                    gas gas_remaining wei
                   args bool(stor12[stor6[address(arg1)][idx]]), sub_a1b5a556[stor6[address(arg1)][idx]], tokenOfOwnerByIndex[address(arg1)][idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _165 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _166 = mem[_165]
            require mem[_165] <= test266151307()
            require _165 + return_data.size > _165 + mem[_165] + 31
            _167 = mem[_165 + mem[_165]]
            if mem[_165 + mem[_165]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_165 + mem[_165]])) + 1 < 0 or _165 + ceil32(return_data.size) + ceil32(ceil32(mem[_165 + mem[_165]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _165 + ceil32(return_data.size) + ceil32(ceil32(mem[_165 + mem[_165]])) + 1
            mem[_165 + ceil32(return_data.size)] = _167
            require _166 + _167 + 32 <= return_data.size
            s = 0
            while s < _167:
                mem[s + _165 + ceil32(return_data.size) + 32] = mem[s + _165 + _166 + 32]
                s = s + 32
                continue 
            if ceil32(_167) <= _167:
                _185 = mem[64]
                mem[64] = mem[64] + 96
                mem[_185] = tokenOfOwnerByIndex[address(arg1)][idx]
                mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
                mem[32] = 12
                mem[_185 + 32] = bool(stor12[stor6[address(arg1)][idx]])
                mem[_185 + 64] = _165 + ceil32(return_data.size)
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _185
            else:
                mem[_167 + _165 + ceil32(return_data.size) + 32] = 0
                _188 = mem[64]
                mem[64] = mem[64] + 96
                mem[_188] = tokenOfOwnerByIndex[address(arg1)][idx]
                mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
                mem[32] = 12
                mem[_188 + 32] = bool(stor12[stor6[address(arg1)][idx]])
                mem[_188 + 64] = _165 + ceil32(return_data.size)
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _188
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _138 = mem[64]
        mem[mem[64]] = 32
        _139 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _139:
            mem[u] = t + -_138 - 64
            _177 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = bool(mem[_177 + 32])
            _180 = mem[_177 + 64]
            mem[t + 64] = 96
            _183 = mem[_180]
            mem[t + 96] = mem[_180]
            v = 0
            while v < _183:
                mem[v + t + 128] = mem[v + _180 + 32]
                v = v + 32
                continue 
            if ceil32(_183) > _183:
                mem[_183 + t + 128] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_183) + t + 128
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_5073246e(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if msg.sender != tx.origin:
        revert with 0, 'Only EOA'
    if not uint8(sub_1a215730):
        revert with 0, 'Main Sale hasn't started yet'
    mem[0] = msg.sender
    mem[32] = 18
    if sub_c7c69111[address(msg.sender)] > -uint8(arg1) + 255:
        revert with 0, 17
    if uint8(uint8(arg1) + sub_c7c69111[address(msg.sender)]) > 5:
        revert with 0, 'You can't free mint any more'
    if purchased > -uint8(arg1) + 65535:
        revert with 0, 17
    if uint16(uint8(arg1) + purchased) > 3000:
        revert with 0, 'Sold out'
    if uint8(arg1) and 38 * 10^14 > -1 / uint8(arg1):
        revert with 0, 17
    if msg.value < 38 * 10^14 * uint8(arg1):
        revert with 0, 'Not enough ETH transferred'
    idx = 0
    s = 0
    while uint8(idx) < uint8(arg1):
        mem[0] = msg.sender
        mem[32] = 18
        if sub_c7c69111[address(msg.sender)] == 255:
            revert with 0, 17
        sub_c7c69111[address(msg.sender)] = uint8(sub_c7c69111[address(msg.sender)] + 1)
        if purchased == 65535:
            revert with 0, 17
        purchased = uint16(purchased + 1)
        if not s:
            mem[mem[64] + 4] = gas_remaining
            require ext_code.size(sub_7349790bAddress)
            staticcall sub_7349790bAddress.0xb37217a4 with:
                    gas gas_remaining wei
                   args gas_remaining
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _105 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _107 = mem[_105]
            _109 = mem[64]
            mem[mem[64] + 32] = mem[_105]
            mem[mem[64] + 64] = 2
            _111 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            if sha3(mem[_111 + 32 len mem[_111]]) % 10:
                mem[_109 + 128] = _107
                mem[_109 + 160] = 1
                mem[_109 + 96] = 64
                mem[64] = _109 + 192
                mem[0] = uint16(sha3(_107, 1))
                mem[32] = 15
                s = uint16(sha3(_107, 1))
                t = sha3(_107, 1)
                while stor15[uint16(('map', ('var', '_107'), ('name', 'stor1', 1)))].field_0:
                    mem[mem[64] + 32] = t
                    mem[mem[64] + 64] = 1
                    _278 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    _280 = sha3(mem[_278 + 32 len mem[_278]])
                    mem[0] = uint16(sha3(mem[_278 + 32 len mem[_278]]))
                    mem[32] = 15
                    s = uint16(_280)
                    t = _280
                    continue 
            else:
                stor12[uint16(stor10.field_0)] = 1
                sub_2748fec8.length++
                sub_2748fec8[sub_2748fec8.length] = purchased
                mem[_109 + 128] = _107
                mem[_109 + 160] = 1
                mem[_109 + 96] = 64
                mem[64] = _109 + 192
                mem[0] = uint16(sha3(_107, 1))
                mem[32] = 15
                s = uint16(sha3(_107, 1))
                t = sha3(_107, 1)
                while stor15[uint16(('map', ('var', '_107'), ('name', 'stor1', 1)))].field_0:
                    mem[mem[64] + 32] = t
                    mem[mem[64] + 64] = 1
                    _284 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    _286 = sha3(mem[_284 + 32 len mem[_284]])
                    mem[0] = uint16(sha3(mem[_284 + 32 len mem[_284]]))
                    mem[32] = 15
                    s = uint16(_286)
                    t = _286
                    continue 
            stor15[s] = 1
            sub_a1b5a556[uint16(stor10.field_0)] = s
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[uint16(stor10.field_0)]:
                revert with 0, 'ERC721: token already minted'
            stor9[uint16(stor10.field_0)] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = purchased
            if msg.sender:
                if msg.sender:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = purchased
                    stor7[uint16(stor10.field_0)] = balanceOf[address(msg.sender)]
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[uint16(stor10.field_0)] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[uint16(stor10.field_0)]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[uint16(stor10.field_0)]
                stor9[uint16(stor10.field_160)] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = purchased
            mem[32] = 2
            ownerOf[uint16(stor10.field_0)] = msg.sender
            emit Transfer(0, msg.sender, purchased);
            if uint8(idx) == 255:
                revert with 0, 17
            idx = uint8(idx) + 1
            s = _107
            continue 
        mem[mem[64] + 4] = s
        require ext_code.size(sub_7349790bAddress)
        staticcall sub_7349790bAddress.0xb37217a4 with:
                gas gas_remaining wei
               args s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _106 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _108 = mem[_106]
        _110 = mem[64]
        mem[mem[64] + 32] = mem[_106]
        mem[mem[64] + 64] = 2
        _114 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        if sha3(mem[_114 + 32 len mem[_114]]) % 10:
            mem[_110 + 128] = _108
            mem[_110 + 160] = 1
            mem[_110 + 96] = 64
            mem[64] = _110 + 192
            mem[0] = uint16(sha3(_108, 1))
            mem[32] = 15
            s = uint16(sha3(_108, 1))
            t = sha3(_108, 1)
            while stor15[uint16(('map', ('var', '_108'), ('name', 'stor1', 1)))].field_0:
                mem[mem[64] + 32] = t
                mem[mem[64] + 64] = 1
                _290 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                _292 = sha3(mem[_290 + 32 len mem[_290]])
                mem[0] = uint16(sha3(mem[_290 + 32 len mem[_290]]))
                mem[32] = 15
                s = uint16(_292)
                t = _292
                continue 
        else:
            stor12[uint16(stor10.field_0)] = 1
            sub_2748fec8.length++
            sub_2748fec8[sub_2748fec8.length] = purchased
            mem[_110 + 128] = _108
            mem[_110 + 160] = 1
            mem[_110 + 96] = 64
            mem[64] = _110 + 192
            mem[0] = uint16(sha3(_108, 1))
            mem[32] = 15
            s = uint16(sha3(_108, 1))
            t = sha3(_108, 1)
            while stor15[uint16(('map', ('var', '_108'), ('name', 'stor1', 1)))].field_0:
                mem[mem[64] + 32] = t
                mem[mem[64] + 64] = 1
                _296 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                _298 = sha3(mem[_296 + 32 len mem[_296]])
                mem[0] = uint16(sha3(mem[_296 + 32 len mem[_296]]))
                mem[32] = 15
                s = uint16(_298)
                t = _298
                continue 
        stor15[s] = 1
        sub_a1b5a556[uint16(stor10.field_0)] = s
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[uint16(stor10.field_0)]:
            revert with 0, 'ERC721: token already minted'
        stor9[uint16(stor10.field_0)] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = purchased
        if msg.sender:
            if msg.sender:
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = purchased
                stor7[uint16(stor10.field_0)] = balanceOf[address(msg.sender)]
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor9[uint16(stor10.field_0)] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor9[uint16(stor10.field_0)]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[uint16(stor10.field_0)]
            stor9[uint16(stor10.field_160)] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
        if balanceOf[address(msg.sender)] > -2:
            revert with 0, 17
        balanceOf[address(msg.sender)]++
        mem[0] = purchased
        mem[32] = 2
        ownerOf[uint16(stor10.field_0)] = msg.sender
        emit Transfer(0, msg.sender, purchased);
        if uint8(idx) == 255:
            revert with 0, 17
        idx = uint8(idx) + 1
        s = _108
        continue 
    if 38 * 10^14 * uint8(arg1) < msg.value:
        revert with 0, 17
    if (38 * 10^14 * uint8(arg1)) - msg.value:
        call msg.sender with:
           value (38 * 10^14 * uint8(arg1)) - msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_b46b254f(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if msg.sender != tx.origin:
        revert with 0, 'Only EOA'
    if not uint8(sub_1a215730):
        revert with 0, 'Main Sale hasn't started yet'
    if uint16(arg1) <= 0:
        revert with 0, 'Max 20 mints per tx'
    if uint16(arg1) > 20:
        revert with 0, 'Max 20 mints per tx'
    if purchased < 3000:
        revert with 0, 'Eggs sale not active'
    if purchased > -uint16(arg1) + 65535:
        revert with 0, 17
    if uint16(uint16(arg1) + purchased) > 10000:
        revert with 0, 'Sold out'
    if purchased > -uint16(arg1) + 65535:
        revert with 0, 17
    require uint16(uint16(arg1) + purchased) >= 3000
    if purchased > -uint16(arg1) + 65535:
        revert with 0, 17
    if uint16(uint16(arg1) + purchased) < 3000:
        revert with 0, 17
    if 1 > -uint16(uint16(uint16(uint16(arg1) + purchased) - 3000) / 500) + 65535:
        revert with 0, 17
    if uint16(uint16(uint16(uint16(uint16(arg1) + purchased) - 3000) / 500) + 1) > 118:
        revert with 0, 17
    if uint16(arg1) and Mask(72, 0, 40 * 10^18 * uint16(uint16(uint16(uint16(uint16(arg1) + purchased) - 3000) / 500) + 1)) > -1 / uint16(arg1):
        revert with 0, 17
    mem[100] = msg.sender
    mem[132] = this.address
    require ext_code.size(stor20)
    staticcall stor20.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint16(arg1) * Mask(72, 0, 40 * 10^18 * uint16(uint16(uint16(uint16(uint16(arg1) + purchased) - 3000) / 500) + 1)) > ext_call.return_data[0]:
        revert with 0, 'Not enough eggs or allowance'
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(stor20)
    staticcall stor20.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint16(arg1) * Mask(72, 0, 40 * 10^18 * uint16(uint16(uint16(uint16(uint16(arg1) + purchased) - 3000) / 500) + 1)) > ext_call.return_data[0]:
        revert with 0, 'Not enough eggs or allowance'
    if purchased > -uint16(arg1) + 65535:
        revert with 0, 17
    purchased = uint16(uint16(arg1) + purchased)
    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 132] = this.address
    mem[(2 * ceil32(return_data.size)) + 164] = uint16(arg1) * Mask(72, 0, 40 * 10^18 * uint16(uint16(uint16(uint16(uint16(arg1) + purchased) - 3000) / 500) + 1))
    require ext_code.size(stor20)
    call stor20.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, uint16(arg1) * Mask(72, 0, 40 * 10^18 * uint16(uint16(uint16(uint16(uint16(arg1) + purchased) - 3000) / 500) + 1))
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    idx = 1
    s = 0
    while uint16(idx) <= uint16(arg1):
        if purchased > !uint16(idx):
            revert with 0, 17
        if not s:
            mem[mem[64] + 4] = gas_remaining
            require ext_code.size(sub_7349790bAddress)
            staticcall sub_7349790bAddress.0xb37217a4 with:
                    gas gas_remaining wei
                   args gas_remaining
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _118 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _120 = mem[_118]
            _122 = mem[64]
            mem[mem[64] + 32] = mem[_118]
            mem[mem[64] + 64] = 2
            _124 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            if sha3(mem[_124 + 32 len mem[_124]]) % 10:
                mem[_122 + 128] = _120
                mem[_122 + 160] = 1
                mem[_122 + 96] = 64
                mem[64] = _122 + 192
                mem[0] = uint16(sha3(_120, 1))
                mem[32] = 15
                s = uint16(sha3(_120, 1))
                t = sha3(_120, 1)
                while stor15[uint16(('map', ('var', '_120'), ('name', 'stor1', 1)))].field_0:
                    mem[mem[64] + 32] = t
                    mem[mem[64] + 64] = 1
                    _291 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    _293 = sha3(mem[_291 + 32 len mem[_291]])
                    mem[0] = uint16(sha3(mem[_291 + 32 len mem[_291]]))
                    mem[32] = 15
                    s = uint16(_293)
                    t = _293
                    continue 
            else:
                stor12[uint16(stor10.field_160) + uint16(idx)] = 1
                sub_2748fec8.length++
                sub_2748fec8[sub_2748fec8.length] = purchased + uint16(idx)
                mem[_122 + 128] = _120
                mem[_122 + 160] = 1
                mem[_122 + 96] = 64
                mem[64] = _122 + 192
                mem[0] = uint16(sha3(_120, 1))
                mem[32] = 15
                s = uint16(sha3(_120, 1))
                t = sha3(_120, 1)
                while stor15[uint16(('map', ('var', '_120'), ('name', 'stor1', 1)))].field_0:
                    mem[mem[64] + 32] = t
                    mem[mem[64] + 64] = 1
                    _297 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    _299 = sha3(mem[_297 + 32 len mem[_297]])
                    mem[0] = uint16(sha3(mem[_297 + 32 len mem[_297]]))
                    mem[32] = 15
                    s = uint16(_299)
                    t = _299
                    continue 
            stor15[s] = 1
            sub_a1b5a556[uint16(stor10.field_160) + uint16(idx)] = s
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[uint16(stor10.field_160) + uint16(idx)]:
                revert with 0, 'ERC721: token already minted'
            stor9[uint16(stor10.field_160) + uint16(idx)] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = purchased + uint16(idx)
            if msg.sender:
                if msg.sender:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = purchased + uint16(idx)
                    stor7[uint16(stor10.field_160) + uint16(idx)] = balanceOf[address(msg.sender)]
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[uint16(stor10.field_160) + uint16(idx)] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[uint16(stor10.field_160) + uint16(idx)]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[uint16(stor10.field_160) + uint16(idx)]
                stor9[uint16(stor10.field_160) + uint16(idx)] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = purchased + uint16(idx)
            mem[32] = 2
            ownerOf[uint16(stor10.field_160) + uint16(idx)] = msg.sender
            emit Transfer(0, msg.sender, purchased + uint16(idx));
            if uint16(idx) == 65535:
                revert with 0, 17
            idx = uint16(idx) + 1
            s = _120
            continue 
        mem[mem[64] + 4] = s
        require ext_code.size(sub_7349790bAddress)
        staticcall sub_7349790bAddress.0xb37217a4 with:
                gas gas_remaining wei
               args s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _119 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _121 = mem[_119]
        _123 = mem[64]
        mem[mem[64] + 32] = mem[_119]
        mem[mem[64] + 64] = 2
        _127 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        if sha3(mem[_127 + 32 len mem[_127]]) % 10:
            mem[_123 + 128] = _121
            mem[_123 + 160] = 1
            mem[_123 + 96] = 64
            mem[64] = _123 + 192
            mem[0] = uint16(sha3(_121, 1))
            mem[32] = 15
            s = uint16(sha3(_121, 1))
            t = sha3(_121, 1)
            while stor15[uint16(('map', ('var', '_121'), ('name', 'stor1', 1)))].field_0:
                mem[mem[64] + 32] = t
                mem[mem[64] + 64] = 1
                _303 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                _305 = sha3(mem[_303 + 32 len mem[_303]])
                mem[0] = uint16(sha3(mem[_303 + 32 len mem[_303]]))
                mem[32] = 15
                s = uint16(_305)
                t = _305
                continue 
        else:
            stor12[uint16(stor10.field_160) + uint16(idx)] = 1
            sub_2748fec8.length++
            sub_2748fec8[sub_2748fec8.length] = purchased + uint16(idx)
            mem[_123 + 128] = _121
            mem[_123 + 160] = 1
            mem[_123 + 96] = 64
            mem[64] = _123 + 192
            mem[0] = uint16(sha3(_121, 1))
            mem[32] = 15
            s = uint16(sha3(_121, 1))
            t = sha3(_121, 1)
            while stor15[uint16(('map', ('var', '_121'), ('name', 'stor1', 1)))].field_0:
                mem[mem[64] + 32] = t
                mem[mem[64] + 64] = 1
                _309 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                _311 = sha3(mem[_309 + 32 len mem[_309]])
                mem[0] = uint16(sha3(mem[_309 + 32 len mem[_309]]))
                mem[32] = 15
                s = uint16(_311)
                t = _311
                continue 
        stor15[s] = 1
        sub_a1b5a556[uint16(stor10.field_160) + uint16(idx)] = s
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[uint16(stor10.field_160) + uint16(idx)]:
            revert with 0, 'ERC721: token already minted'
        stor9[uint16(stor10.field_160) + uint16(idx)] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = purchased + uint16(idx)
        if msg.sender:
            if msg.sender:
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = purchased + uint16(idx)
                stor7[uint16(stor10.field_160) + uint16(idx)] = balanceOf[address(msg.sender)]
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor9[uint16(stor10.field_160) + uint16(idx)] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor9[uint16(stor10.field_160) + uint16(idx)]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[uint16(stor10.field_160) + uint16(idx)]
            stor9[uint16(stor10.field_160) + uint16(idx)] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
        if balanceOf[address(msg.sender)] > -2:
            revert with 0, 17
        balanceOf[address(msg.sender)]++
        mem[0] = purchased + uint16(idx)
        mem[32] = 2
        ownerOf[uint16(stor10.field_160) + uint16(idx)] = msg.sender
        emit Transfer(0, msg.sender, purchased + uint16(idx));
        if uint16(idx) == 65535:
            revert with 0, 17
        idx = uint16(idx) + 1
        s = _121
        continue 
}



}
