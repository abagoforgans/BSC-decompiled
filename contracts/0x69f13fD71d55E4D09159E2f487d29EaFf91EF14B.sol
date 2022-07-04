contract main {




// =====================  Runtime code  =====================


#
#  - mint(uint256 arg1)
#
const MAX_ELEMENTS = 3331

const MAX_PER_TRANSACTION = 2


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
uint256 totalMint;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 PRICE;
uint8 isSaleOpen;
uint8 isPaused; offset 8
address stor17; offset 16
uint256 stor17; offset 8
address stor18;
array of struct stor19;
mapping of uint256 stor20;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function isSaleOpen() {
    return bool(isSaleOpen)
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function totalMint() {
    return totalMint
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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

function PRICE() {
    return PRICE
}

function owner() {
    return owner
}

function isPaused() {
    return bool(isPaused)
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

function pauseMinting() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor17.field_8) = 1
}

function resumeMinting() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor17.field_8) = 0
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function salePrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if PRICE and arg1 > -1 / PRICE:
        revert with 'NH{q', 17
    return (PRICE * arg1)
}

function setSalePrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    PRICE = arg1
}

function setSaleOpen(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    isSaleOpen = uint8(arg1)
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
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
    if Mask(32, 224, arg1) == 0x780e9d6300000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function withdrawAll() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require eth.balance(this.address) > 0
    if eth.balance(this.address) and 95 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    if eth.balance(this.address) < 95 * eth.balance(this.address) / 100:
        revert with 'NH{q', 17
    call address(stor17.field_16) with:
       value 95 * eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor18 with:
       value eth.balance(this.address) - (95 * eth.balance(this.address) / 100) wei
         gas 2300 * is_zero(value) wei
}

function approve(address arg1, uint256 arg2) {
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

function walletOfOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(arg1)] > test266151307():
        revert with 'NH{q', 65
    if balanceOf[address(arg1)]:
        mem[128 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
    idx = 0
    while idx < balanceOf[address(arg1)]:
        if not arg1:
            revert with 0, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(arg1)]:
            revert with 0, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = idx
        mem[32] = sha3(address(arg1), 6)
        if idx >= balanceOf[address(arg1)]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=balanceOf[address(arg1)], data=mem[128 len 32 * balanceOf[address(arg1)]])
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor19.length):
        if bool(stor19.length) == stor19.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor19[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor19.length = 0
            idx = 0
            while stor19.length.field_1 + 31 / 32 > idx:
                stor19[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor19.length) == stor19.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor19[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor19.length = 0
            idx = 0
            while stor19.length.field_1 + 31 / 32 > idx:
                stor19[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
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

function symbol() {
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

function baseTokenURI() {
    if bool(stor19.length):
        if bool(stor19.length) == stor19.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor19.length):
            if bool(stor19.length) == stor19.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor19.length.field_1:
                if 31 < stor19.length.field_1:
                    mem[128] = uint256(stor19.field_0)
                    idx = 128
                    s = 0
                    while stor19.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor19[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor19.length.field_1), data=mem[128 len ceil32(stor19.length.field_1)])
                mem[128] = 256 * stor19.length.field_8
        else:
            if bool(stor19.length) == stor19.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor19.length.field_1:
                if 31 < stor19.length.field_1:
                    mem[128] = uint256(stor19.field_0)
                    idx = 128
                    s = 0
                    while stor19.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor19[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor19.length.field_1), data=mem[128 len ceil32(stor19.length.field_1)])
                mem[128] = 256 * stor19.length.field_8
        mem[ceil32(stor19.length.field_1) + 192 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
        if ceil32(stor19.length.field_1) > stor19.length.field_1:
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor19.length.field_1), data=mem[128 len ceil32(stor19.length.field_1)], mem[(2 * ceil32(stor19.length.field_1)) + 192 len 2 * ceil32(stor19.length.field_1)]), 
    if bool(stor19.length) == stor19.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor19.length):
        if bool(stor19.length) == stor19.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor19.length.field_1:
            if 31 < stor19.length.field_1:
                mem[128] = uint256(stor19.field_0)
                idx = 128
                s = 0
                while stor19.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor19[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor19.length % 128, data=mem[128 len ceil32(stor19.length.field_1)])
            mem[128] = 256 * stor19.length.field_8
    else:
        if bool(stor19.length) == stor19.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor19.length.field_1:
            if 31 < stor19.length.field_1:
                mem[128] = uint256(stor19.field_0)
                idx = 128
                s = 0
                while stor19.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor19[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor19.length % 128, data=mem[128 len ceil32(stor19.length.field_1)])
            mem[128] = 256 * stor19.length.field_8
    mem[ceil32(stor19.length.field_1) + 192 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
    if ceil32(stor19.length.field_1) > stor19.length.field_1:
        mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 192] = 0
    return Array(len=stor19.length % 128, data=mem[128 len ceil32(stor19.length.field_1)], mem[(2 * ceil32(stor19.length.field_1)) + 192 len 2 * ceil32(stor19.length.field_1)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
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

function sub_5bc00f41(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length <= 0:
        revert with 0, 'Please provide the list of wallets for the airdrop'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _3032 = mem[(32 * idx) + 128]
        _3033 = mem[64]
        mem[mem[64] + 32] = block.timestamp
        mem[mem[64] + 64] = block.difficulty
        mem[mem[64] + 96] = address(msg.sender)
        _3034 = mem[64]
        mem[mem[64]] = 84
        mem[64] = mem[64] + 116
        if sha3(mem[_3034 + 32 len mem[_3034]]) % 4 != 3:
            if sha3(mem[_3034 + 32 len mem[_3034]]) % 4 != 2:
                if sha3(mem[_3034 + 32 len mem[_3034]]) % 4 != 1:
                    stor12++
                    stor20[stor11] = 1
                else:
                    if stor13 >= 300:
                        stor12++
                        stor20[stor11] = 1
                    else:
                        stor13++
                        stor20[stor11] = 2
            else:
                if stor14 < 30:
                    stor14++
                    stor20[stor11] = 3
                else:
                    if sha3(mem[_3034 + 32 len mem[_3034]]) % 4 < 1:
                        revert with 'NH{q', 17
                    if (sha3(mem[_3034 + 32 len mem[_3034]]) % 4) - 1 != 1:
                        stor12++
                        stor20[stor11] = 1
                    else:
                        if stor13 >= 300:
                            stor12++
                            stor20[stor11] = 1
                        else:
                            stor13++
                            stor20[stor11] = 2
        else:
            if stor15 < 1:
                stor15++
                stor20[stor11] = 4
            else:
                if sha3(mem[_3034 + 32 len mem[_3034]]) % 4 < 1:
                    revert with 'NH{q', 17
                if (sha3(mem[_3034 + 32 len mem[_3034]]) % 4) - 1 != 2:
                    if (sha3(mem[_3034 + 32 len mem[_3034]]) % 4) - 1 != 1:
                        stor12++
                        stor20[stor11] = 1
                    else:
                        if stor13 >= 300:
                            stor12++
                            stor20[stor11] = 1
                        else:
                            stor13++
                            stor20[stor11] = 2
                else:
                    if stor14 < 30:
                        stor14++
                        stor20[stor11] = 3
                    else:
                        if (sha3(mem[_3034 + 32 len mem[_3034]]) % 4) - 1 < 1:
                            revert with 'NH{q', 17
                        if (sha3(mem[_3034 + 32 len mem[_3034]]) % 4) - 2 != 1:
                            stor12++
                            stor20[stor11] = 1
                        else:
                            if stor13 >= 300:
                                stor12++
                                stor20[stor11] = 1
                            else:
                                stor13++
                                stor20[stor11] = 2
        totalMint++
        mem[64] = _3033 + 148
        mem[_3033 + 116] = 0
        if not address(_3032):
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor11]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor11] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = totalMint
        if address(_3032):
            tokenOfOwnerByIndex[address(_3032)][stor3[address(_3032)]] = totalMint
            stor7[stor11] = balanceOf[address(_3032)]
        else:
            if tokenByIndex.length < 1:
                revert with 'NH{q', 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if stor9[stor11] >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor9[stor11]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor11]
            stor9[stor11] = 0
            if not tokenByIndex.length:
                revert with 'NH{q', 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
        if balanceOf[address(_3032)] > -2:
            revert with 'NH{q', 17
        balanceOf[address(_3032)]++
        mem[0] = totalMint
        mem[32] = 2
        ownerOf[stor11] = address(_3032)
        emit Transfer(0, address(_3032), totalMint);
        if ext_code.size(address(_3032)) > 0:
            mem[_3033 + 148] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[_3033 + 152] = msg.sender
            mem[_3033 + 184] = 0
            mem[_3033 + 216] = totalMint
            mem[_3033 + 248] = 128
            mem[_3033 + 280] = 0
            s = 0
            while s < 0:
                mem[_3033 + s + 312] = mem[_3033 + s + 148]
                s = s + 32
                continue 
            call address(_3032).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args msg.sender, 0, totalMint, 128, 0
            mem[_3033 + 148] = ext_call.return_data[0]
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
            mem[64] = _3033 + ceil32(return_data.size) + 148
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        emit CreateNFT(totalMint);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    mem[0] = arg1
    mem[32] = 20
    mem[96] = 5
    mem[128] = '.json'
    if bool(stor19.length):
        if bool(stor19.length) == stor19.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor19.length):
            if bool(stor19.length) == stor19.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor19.length.field_1:
                if 31 >= stor19.length.field_1:
                    mem[192] = 256 * stor19.length.field_8
                    if stor19.length.field_1 <= 0:
                        return ''
                    if not stor20[arg1]:
                        mem[ceil32(stor19.length.field_1) + 288 len ceil32(stor19.length.field_1)] = mem[192 len ceil32(stor19.length.field_1)]
                        mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 288] = '0'
                        mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 289] = '.json'
                        mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 294] = 32
                        mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 326] = mem[ceil32(stor19.length.field_1) + 256]
                        mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 358 len ceil32(mem[ceil32(stor19.length.field_1) + 256])] = mem[ceil32(stor19.length.field_1) + 288 len ceil32(mem[ceil32(stor19.length.field_1) + 256])]
                        if ceil32(mem[ceil32(stor19.length.field_1) + 256]) > mem[ceil32(stor19.length.field_1) + 256]:
                            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 256] + 358] = 0
                        return Array(len=mem[ceil32(stor19.length.field_1) + 256], data=mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 358 len ceil32(mem[ceil32(stor19.length.field_1) + 256])]), 
                    s = 0
                    idx = stor20[arg1]
                    while idx:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        idx = idx / 10
                        continue 
                    if s > test266151307():
                        revert with 'NH{q', 65
                    mem[ceil32(stor19.length.field_1) + 192] = s
                    if s:
                        mem[ceil32(stor19.length.field_1) + 224 len s] = call.data[calldata.size len s]
                    t = s
                    idx = stor20[arg1]
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if idx / 10 and 10 > -1 / idx / 10:
                            revert with 'NH{q', 17
                        if idx < 10 * idx / 10:
                            revert with 'NH{q', 17
                        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor19.length.field_1) + 192]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor19.length.field_1) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(stor19.length.field_1)] = mem[192 len ceil32(stor19.length.field_1)]
                    if ceil32(stor19.length.field_1) > stor19.length.field_1:
                        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256] = 0
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256 len ceil32(mem[ceil32(stor19.length.field_1) + 192])] = mem[ceil32(stor19.length.field_1) + 224 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 256] = '.json'
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261] = 32
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(mem[ceil32(stor19.length.field_1) + ceil32(s) + 224])] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19.length.field_1) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]) <= mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]:
                        return Array(len=mem[ceil32(stor19.length.field_1) + ceil32(s) + 224], data=mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(mem[ceil32(stor19.length.field_1) + ceil32(s) + 224])]), 
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + mem[ceil32(stor19.length.field_1) + ceil32(s) + 224] + 325] = 0
                    return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]) + 32], 
                mem[192] = uint256(stor19.field_0)
                idx = 192
                s = 0
                while stor19.length.field_1 + 160 > idx:
                    mem[idx + 32] = stor19[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
        else:
            if bool(stor19.length) == stor19.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor19.length.field_1:
                if 31 >= stor19.length.field_1:
                    mem[192] = 256 * stor19.length.field_8
                else:
                    mem[192] = uint256(stor19.field_0)
                    idx = 192
                    s = 0
                    while stor19.length.field_1 + 160 > idx:
                        mem[idx + 32] = stor19[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor19.length.field_1 <= 0:
            return ''
        if not stor20[arg1]:
            mem[ceil32(stor19.length.field_1) + 288 len ceil32(stor19.length.field_1)] = mem[192 len ceil32(stor19.length.field_1)]
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 288] = '0'
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 289] = '.json'
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 294] = 32
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 326] = mem[ceil32(stor19.length.field_1) + 256]
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 358 len ceil32(mem[ceil32(stor19.length.field_1) + 256])] = mem[ceil32(stor19.length.field_1) + 288 len ceil32(mem[ceil32(stor19.length.field_1) + 256])]
            if ceil32(mem[ceil32(stor19.length.field_1) + 256]) > mem[ceil32(stor19.length.field_1) + 256]:
                mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 256] + 358] = 0
            return Array(len=mem[ceil32(stor19.length.field_1) + 256], data=mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 358 len ceil32(mem[ceil32(stor19.length.field_1) + 256])]), 
        s = 0
        idx = stor20[arg1]
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(stor19.length.field_1) + 192] = s
        if s:
            mem[ceil32(stor19.length.field_1) + 224 len s] = call.data[calldata.size len s]
        t = s
        idx = stor20[arg1]
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if idx / 10 and 10 > -1 / idx / 10:
                revert with 'NH{q', 17
            if idx < 10 * idx / 10:
                revert with 'NH{q', 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor19.length.field_1) + 192]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor19.length.field_1) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(stor19.length.field_1)] = mem[192 len ceil32(stor19.length.field_1)]
        if ceil32(stor19.length.field_1) > stor19.length.field_1:
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256] = 0
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256 len ceil32(mem[ceil32(stor19.length.field_1) + 192])] = mem[ceil32(stor19.length.field_1) + 224 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 256] = '.json'
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261] = 32
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(mem[ceil32(stor19.length.field_1) + ceil32(s) + 224])] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19.length.field_1) + ceil32(s) + 224])]
        if ceil32(mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]) > mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]:
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + mem[ceil32(stor19.length.field_1) + ceil32(s) + 224] + 325] = 0
        return Array(len=mem[ceil32(stor19.length.field_1) + ceil32(s) + 224], data=mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(mem[ceil32(stor19.length.field_1) + ceil32(s) + 224])]), 
    if bool(stor19.length) == stor19.length.field_1 < 32:
        revert with 'NH{q', 34
    mem[160] = stor19.length.field_1
    if bool(stor19.length):
        if bool(stor19.length) == stor19.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor19.length.field_1:
            if stor19.length.field_1 <= 0:
                return ''
            if not stor20[arg1]:
                mem[ceil32(stor19.length.field_1) + 288 len ceil32(stor19.length.field_1)] = mem[192 len ceil32(stor19.length.field_1)]
                mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 288] = '0'
                mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 289] = '.json'
                mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 294] = 32
                mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 326] = mem[ceil32(stor19.length.field_1) + 256]
                mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 358 len ceil32(mem[ceil32(stor19.length.field_1) + 256])] = mem[ceil32(stor19.length.field_1) + 288 len ceil32(mem[ceil32(stor19.length.field_1) + 256])]
                if ceil32(mem[ceil32(stor19.length.field_1) + 256]) <= mem[ceil32(stor19.length.field_1) + 256]:
                    return Array(len=mem[ceil32(stor19.length.field_1) + 256], data=mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 358 len ceil32(mem[ceil32(stor19.length.field_1) + 256])]), 
                mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 256] + 358] = 0
                return 32, mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 326 len ceil32(mem[ceil32(stor19.length.field_1) + 256]) + 32], 
            s = 0
            idx = stor20[arg1]
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor19.length.field_1) + 192] = s
            if not s:
                t = s
                idx = stor20[arg1]
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if idx / 10 and 10 > -1 / idx / 10:
                        revert with 'NH{q', 17
                    if idx < 10 * idx / 10:
                        revert with 'NH{q', 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor19.length.field_1) + 192]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor19.length.field_1) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(stor19.length.field_1)] = mem[192 len ceil32(stor19.length.field_1)]
                if ceil32(stor19.length.field_1) <= stor19.length.field_1:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256 len ceil32(mem[ceil32(stor19.length.field_1) + 192])] = mem[ceil32(stor19.length.field_1) + 224 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 256] = '.json'
                    mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261] = 32
                    if ceil32(mem[ceil32(stor19.length.field_1) + 192]) <= mem[ceil32(stor19.length.field_1) + 192]:
                        _9464 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_9464)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_9464)]
                        if ceil32(_9464) > _9464:
                            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _9464 + 325] = 0
                        return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_9464) + 32], 
                    _9465 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_9465)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_9465)]
                    if ceil32(_9465) > _9465:
                        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _9465 + 325] = 0
                    return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_9465) + 32], 
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256] = 0
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256 len ceil32(mem[ceil32(stor19.length.field_1) + 192])] = mem[ceil32(stor19.length.field_1) + 224 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 256] = '.json'
                mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261] = 32
                if ceil32(mem[ceil32(stor19.length.field_1) + 192]) <= mem[ceil32(stor19.length.field_1) + 192]:
                    _9466 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_9466)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_9466)]
                    if ceil32(_9466) > _9466:
                        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _9466 + 325] = 0
                    return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_9466) + 32], 
                _9467 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_9467)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_9467)]
                if ceil32(_9467) > _9467:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _9467 + 325] = 0
                return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_9467) + 32], 
            mem[ceil32(stor19.length.field_1) + 224 len s] = call.data[calldata.size len s]
            t = s
            idx = stor20[arg1]
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if idx / 10 and 10 > -1 / idx / 10:
                    revert with 'NH{q', 17
                if idx < 10 * idx / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor19.length.field_1) + 192]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor19.length.field_1) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(stor19.length.field_1)] = mem[192 len ceil32(stor19.length.field_1)]
            if ceil32(stor19.length.field_1) <= stor19.length.field_1:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256 len ceil32(mem[ceil32(stor19.length.field_1) + 192])] = mem[ceil32(stor19.length.field_1) + 224 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 256] = '.json'
                mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261] = 32
                if ceil32(mem[ceil32(stor19.length.field_1) + 192]) <= mem[ceil32(stor19.length.field_1) + 192]:
                    _9468 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_9468)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_9468)]
                    if ceil32(_9468) > _9468:
                        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _9468 + 325] = 0
                    return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_9468) + 32], 
                _9469 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_9469)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_9469)]
                if ceil32(_9469) > _9469:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _9469 + 325] = 0
                return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_9469) + 32], 
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256] = 0
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256 len ceil32(mem[ceil32(stor19.length.field_1) + 192])] = mem[ceil32(stor19.length.field_1) + 224 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 256] = '.json'
            mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261] = 32
            if ceil32(mem[ceil32(stor19.length.field_1) + 192]) <= mem[ceil32(stor19.length.field_1) + 192]:
                _9470 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_9470)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_9470)]
                if ceil32(_9470) > _9470:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _9470 + 325] = 0
                return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_9470) + 32], 
            _9471 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_9471)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_9471)]
            if ceil32(_9471) > _9471:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _9471 + 325] = 0
            return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_9471) + 32], 
        if 31 >= stor19.length.field_1:
            mem[192] = 256 * stor19.length.field_8
            if stor19.length.field_1 <= 0:
                return ''
            if not stor20[arg1]:
                mem[ceil32(stor19.length.field_1) + 288 len ceil32(stor19.length.field_1)] = mem[192 len ceil32(stor19.length.field_1)]
                mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 288] = '0'
                mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 289] = '.json'
                mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 294] = 32
                mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 326] = mem[ceil32(stor19.length.field_1) + 256]
                mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 358 len ceil32(mem[ceil32(stor19.length.field_1) + 256])] = mem[ceil32(stor19.length.field_1) + 288 len ceil32(mem[ceil32(stor19.length.field_1) + 256])]
                if ceil32(mem[ceil32(stor19.length.field_1) + 256]) <= mem[ceil32(stor19.length.field_1) + 256]:
                    return Array(len=mem[ceil32(stor19.length.field_1) + 256], data=mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 358 len ceil32(mem[ceil32(stor19.length.field_1) + 256])]), 
                mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 256] + 358] = 0
                return 32, mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 326 len ceil32(mem[ceil32(stor19.length.field_1) + 256]) + 32], 
            s = 0
            idx = stor20[arg1]
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor19.length.field_1) + 192] = s
            if not s:
                t = s
                idx = stor20[arg1]
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if idx / 10 and 10 > -1 / idx / 10:
                        revert with 'NH{q', 17
                    if idx < 10 * idx / 10:
                        revert with 'NH{q', 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor19.length.field_1) + 192]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor19.length.field_1) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(stor19.length.field_1)] = mem[192 len ceil32(stor19.length.field_1)]
                if ceil32(stor19.length.field_1) <= stor19.length.field_1:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256 len ceil32(mem[ceil32(stor19.length.field_1) + 192])] = mem[ceil32(stor19.length.field_1) + 224 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 256] = '.json'
                    mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261] = 32
                    if ceil32(mem[ceil32(stor19.length.field_1) + 192]) <= mem[ceil32(stor19.length.field_1) + 192]:
                        _9472 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_9472)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_9472)]
                        if ceil32(_9472) > _9472:
                            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _9472 + 325] = 0
                        return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_9472) + 32], 
                    _9473 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_9473)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_9473)]
                    if ceil32(_9473) > _9473:
                        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _9473 + 325] = 0
                    return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_9473) + 32], 
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256] = 0
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256 len ceil32(mem[ceil32(stor19.length.field_1) + 192])] = mem[ceil32(stor19.length.field_1) + 224 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 256] = '.json'
                mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261] = 32
                if ceil32(mem[ceil32(stor19.length.field_1) + 192]) <= mem[ceil32(stor19.length.field_1) + 192]:
                    _9474 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_9474)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_9474)]
                    if ceil32(_9474) > _9474:
                        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _9474 + 325] = 0
                    return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_9474) + 32], 
                _9475 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_9475)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_9475)]
                if ceil32(_9475) > _9475:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _9475 + 325] = 0
                return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_9475) + 32], 
            mem[ceil32(stor19.length.field_1) + 224 len s] = call.data[calldata.size len s]
            t = s
            idx = stor20[arg1]
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if idx / 10 and 10 > -1 / idx / 10:
                    revert with 'NH{q', 17
                if idx < 10 * idx / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor19.length.field_1) + 192]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor19.length.field_1) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(stor19.length.field_1)] = mem[192 len ceil32(stor19.length.field_1)]
            if ceil32(stor19.length.field_1) <= stor19.length.field_1:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256 len ceil32(mem[ceil32(stor19.length.field_1) + 192])] = mem[ceil32(stor19.length.field_1) + 224 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 256] = '.json'
                mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261] = 32
                if ceil32(mem[ceil32(stor19.length.field_1) + 192]) <= mem[ceil32(stor19.length.field_1) + 192]:
                    _9476 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_9476)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_9476)]
                    if ceil32(_9476) > _9476:
                        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _9476 + 325] = 0
                    return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_9476) + 32], 
                _9477 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_9477)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_9477)]
                if ceil32(_9477) > _9477:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _9477 + 325] = 0
                return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_9477) + 32], 
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256] = 0
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256 len ceil32(mem[ceil32(stor19.length.field_1) + 192])] = mem[ceil32(stor19.length.field_1) + 224 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 256] = '.json'
            mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261] = 32
            if ceil32(mem[ceil32(stor19.length.field_1) + 192]) <= mem[ceil32(stor19.length.field_1) + 192]:
                _9478 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_9478)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_9478)]
                if ceil32(_9478) > _9478:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _9478 + 325] = 0
                return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_9478) + 32], 
            _9479 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_9479)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_9479)]
            if ceil32(_9479) > _9479:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _9479 + 325] = 0
            return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_9479) + 32], 
        mem[0] = 19
        mem[192] = uint256(stor19.field_0)
        idx = 192
        s = 0
        while stor19.length.field_1 + 160 > idx:
            mem[idx + 32] = stor19[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor19.length.field_1 <= 0:
            return ''
        if not stor20[arg1]:
            mem[ceil32(stor19.length.field_1) + 288 len ceil32(stor19.length.field_1)] = mem[192 len ceil32(stor19.length.field_1)]
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 288] = '0'
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 289] = '.json'
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 294] = 32
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 326] = mem[ceil32(stor19.length.field_1) + 256]
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 358 len ceil32(mem[ceil32(stor19.length.field_1) + 256])] = mem[ceil32(stor19.length.field_1) + 288 len ceil32(mem[ceil32(stor19.length.field_1) + 256])]
            if ceil32(mem[ceil32(stor19.length.field_1) + 256]) <= mem[ceil32(stor19.length.field_1) + 256]:
                return Array(len=mem[ceil32(stor19.length.field_1) + 256], data=mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 358 len ceil32(mem[ceil32(stor19.length.field_1) + 256])]), 
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 256] + 358] = 0
            return 32, mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 326 len ceil32(mem[ceil32(stor19.length.field_1) + 256]) + 32], 
        s = 0
        idx = stor20[arg1]
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(stor19.length.field_1) + 192] = s
        if not s:
            t = s
            idx = stor20[arg1]
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if idx / 10 and 10 > -1 / idx / 10:
                    revert with 'NH{q', 17
                if idx < 10 * idx / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor19.length.field_1) + 192]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor19.length.field_1) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(stor19.length.field_1)] = mem[192 len ceil32(stor19.length.field_1)]
            if ceil32(stor19.length.field_1) <= stor19.length.field_1:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256 len ceil32(mem[ceil32(stor19.length.field_1) + 192])] = mem[ceil32(stor19.length.field_1) + 224 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 256] = '.json'
                mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261] = 32
                if ceil32(mem[ceil32(stor19.length.field_1) + 192]) <= mem[ceil32(stor19.length.field_1) + 192]:
                    _10888 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_10888)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_10888)]
                    if ceil32(_10888) > _10888:
                        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _10888 + 325] = 0
                    return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_10888) + 32], 
                _10889 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_10889)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_10889)]
                if ceil32(_10889) > _10889:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _10889 + 325] = 0
                return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_10889) + 32], 
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256] = 0
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256 len ceil32(mem[ceil32(stor19.length.field_1) + 192])] = mem[ceil32(stor19.length.field_1) + 224 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 256] = '.json'
            mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261] = 32
            if ceil32(mem[ceil32(stor19.length.field_1) + 192]) <= mem[ceil32(stor19.length.field_1) + 192]:
                _10890 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_10890)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_10890)]
                if ceil32(_10890) > _10890:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _10890 + 325] = 0
                return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_10890) + 32], 
            _10891 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_10891)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_10891)]
            if ceil32(_10891) > _10891:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _10891 + 325] = 0
            return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_10891) + 32], 
        mem[ceil32(stor19.length.field_1) + 224 len s] = call.data[calldata.size len s]
        t = s
        idx = stor20[arg1]
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if idx / 10 and 10 > -1 / idx / 10:
                revert with 'NH{q', 17
            if idx < 10 * idx / 10:
                revert with 'NH{q', 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor19.length.field_1) + 192]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor19.length.field_1) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(stor19.length.field_1)] = mem[192 len ceil32(stor19.length.field_1)]
        if ceil32(stor19.length.field_1) <= stor19.length.field_1:
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256 len ceil32(mem[ceil32(stor19.length.field_1) + 192])] = mem[ceil32(stor19.length.field_1) + 224 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 256] = '.json'
            mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261] = 32
            if ceil32(mem[ceil32(stor19.length.field_1) + 192]) <= mem[ceil32(stor19.length.field_1) + 192]:
                _10892 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_10892)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_10892)]
                if ceil32(_10892) > _10892:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _10892 + 325] = 0
                return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_10892) + 32], 
            _10893 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_10893)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_10893)]
            if ceil32(_10893) > _10893:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _10893 + 325] = 0
            return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_10893) + 32], 
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256] = 0
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256 len ceil32(mem[ceil32(stor19.length.field_1) + 192])] = mem[ceil32(stor19.length.field_1) + 224 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 256] = '.json'
        mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261] = 32
        if ceil32(mem[ceil32(stor19.length.field_1) + 192]) <= mem[ceil32(stor19.length.field_1) + 192]:
            _10894 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_10894)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_10894)]
            if ceil32(_10894) > _10894:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _10894 + 325] = 0
            return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_10894) + 32], 
        _10895 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_10895)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_10895)]
        if ceil32(_10895) > _10895:
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _10895 + 325] = 0
        return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_10895) + 32], 
    if bool(stor19.length) == stor19.length.field_1 < 32:
        revert with 'NH{q', 34
    if not stor19.length.field_1:
        if stor19.length.field_1 <= 0:
            return ''
        if not stor20[arg1]:
            mem[ceil32(stor19.length.field_1) + 288 len ceil32(stor19.length.field_1)] = mem[192 len ceil32(stor19.length.field_1)]
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 288] = '0'
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 289] = '.json'
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 294] = 32
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 326] = mem[ceil32(stor19.length.field_1) + 256]
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 358 len ceil32(mem[ceil32(stor19.length.field_1) + 256])] = mem[ceil32(stor19.length.field_1) + 288 len ceil32(mem[ceil32(stor19.length.field_1) + 256])]
            if ceil32(mem[ceil32(stor19.length.field_1) + 256]) <= mem[ceil32(stor19.length.field_1) + 256]:
                return Array(len=mem[ceil32(stor19.length.field_1) + 256], data=mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 358 len ceil32(mem[ceil32(stor19.length.field_1) + 256])]), 
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 256] + 358] = 0
            return 32, mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 326 len ceil32(mem[ceil32(stor19.length.field_1) + 256]) + 32], 
        s = 0
        idx = stor20[arg1]
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(stor19.length.field_1) + 192] = s
        if not s:
            t = s
            idx = stor20[arg1]
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if idx / 10 and 10 > -1 / idx / 10:
                    revert with 'NH{q', 17
                if idx < 10 * idx / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor19.length.field_1) + 192]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor19.length.field_1) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(stor19.length.field_1)] = mem[192 len ceil32(stor19.length.field_1)]
            if ceil32(stor19.length.field_1) <= stor19.length.field_1:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256 len ceil32(mem[ceil32(stor19.length.field_1) + 192])] = mem[ceil32(stor19.length.field_1) + 224 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 256] = '.json'
                mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261] = 32
                if ceil32(mem[ceil32(stor19.length.field_1) + 192]) <= mem[ceil32(stor19.length.field_1) + 192]:
                    _9480 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_9480)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_9480)]
                    if ceil32(_9480) > _9480:
                        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _9480 + 325] = 0
                    return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_9480) + 32], 
                _9481 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_9481)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_9481)]
                if ceil32(_9481) > _9481:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _9481 + 325] = 0
                return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_9481) + 32], 
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256] = 0
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256 len ceil32(mem[ceil32(stor19.length.field_1) + 192])] = mem[ceil32(stor19.length.field_1) + 224 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 256] = '.json'
            mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261] = 32
            if ceil32(mem[ceil32(stor19.length.field_1) + 192]) <= mem[ceil32(stor19.length.field_1) + 192]:
                _9482 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_9482)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_9482)]
                if ceil32(_9482) > _9482:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _9482 + 325] = 0
                return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_9482) + 32], 
            _9483 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_9483)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_9483)]
            if ceil32(_9483) > _9483:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _9483 + 325] = 0
            return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_9483) + 32], 
        mem[ceil32(stor19.length.field_1) + 224 len s] = call.data[calldata.size len s]
        t = s
        idx = stor20[arg1]
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if idx / 10 and 10 > -1 / idx / 10:
                revert with 'NH{q', 17
            if idx < 10 * idx / 10:
                revert with 'NH{q', 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor19.length.field_1) + 192]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor19.length.field_1) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(stor19.length.field_1)] = mem[192 len ceil32(stor19.length.field_1)]
        if ceil32(stor19.length.field_1) <= stor19.length.field_1:
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256 len ceil32(mem[ceil32(stor19.length.field_1) + 192])] = mem[ceil32(stor19.length.field_1) + 224 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 256] = '.json'
            mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261] = 32
            if ceil32(mem[ceil32(stor19.length.field_1) + 192]) <= mem[ceil32(stor19.length.field_1) + 192]:
                _9484 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_9484)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_9484)]
                if ceil32(_9484) > _9484:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _9484 + 325] = 0
                return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_9484) + 32], 
            _9485 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_9485)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_9485)]
            if ceil32(_9485) > _9485:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _9485 + 325] = 0
            return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_9485) + 32], 
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256] = 0
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256 len ceil32(mem[ceil32(stor19.length.field_1) + 192])] = mem[ceil32(stor19.length.field_1) + 224 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 256] = '.json'
        mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261] = 32
        if ceil32(mem[ceil32(stor19.length.field_1) + 192]) <= mem[ceil32(stor19.length.field_1) + 192]:
            _9486 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_9486)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_9486)]
            if ceil32(_9486) > _9486:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _9486 + 325] = 0
            return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_9486) + 32], 
        _9487 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_9487)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_9487)]
        if ceil32(_9487) > _9487:
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _9487 + 325] = 0
        return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_9487) + 32], 
    if 31 >= stor19.length.field_1:
        mem[192] = 256 * stor19.length.field_8
        if stor19.length.field_1 <= 0:
            return ''
        if not stor20[arg1]:
            mem[ceil32(stor19.length.field_1) + 288 len ceil32(stor19.length.field_1)] = mem[192 len ceil32(stor19.length.field_1)]
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 288] = '0'
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 289] = '.json'
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 294] = 32
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 326] = mem[ceil32(stor19.length.field_1) + 256]
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 358 len ceil32(mem[ceil32(stor19.length.field_1) + 256])] = mem[ceil32(stor19.length.field_1) + 288 len ceil32(mem[ceil32(stor19.length.field_1) + 256])]
            if ceil32(mem[ceil32(stor19.length.field_1) + 256]) <= mem[ceil32(stor19.length.field_1) + 256]:
                return Array(len=mem[ceil32(stor19.length.field_1) + 256], data=mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 358 len ceil32(mem[ceil32(stor19.length.field_1) + 256])]), 
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 256] + 358] = 0
            return 32, mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 326 len ceil32(mem[ceil32(stor19.length.field_1) + 256]) + 32], 
        s = 0
        idx = stor20[arg1]
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(stor19.length.field_1) + 192] = s
        if not s:
            t = s
            idx = stor20[arg1]
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if idx / 10 and 10 > -1 / idx / 10:
                    revert with 'NH{q', 17
                if idx < 10 * idx / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor19.length.field_1) + 192]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor19.length.field_1) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(stor19.length.field_1)] = mem[192 len ceil32(stor19.length.field_1)]
            if ceil32(stor19.length.field_1) <= stor19.length.field_1:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256 len ceil32(mem[ceil32(stor19.length.field_1) + 192])] = mem[ceil32(stor19.length.field_1) + 224 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 256] = '.json'
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261] = 32
                if ceil32(mem[ceil32(stor19.length.field_1) + 192]) <= mem[ceil32(stor19.length.field_1) + 192]:
                    _9488 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_9488)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_9488)]
                    if ceil32(_9488) > _9488:
                        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _9488 + 325] = 0
                    return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_9488) + 32], 
                _9489 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_9489)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_9489)]
                if ceil32(_9489) > _9489:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _9489 + 325] = 0
                return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_9489) + 32], 
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256] = 0
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256 len ceil32(mem[ceil32(stor19.length.field_1) + 192])] = mem[ceil32(stor19.length.field_1) + 224 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 256] = '.json'
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261] = 32
            if ceil32(mem[ceil32(stor19.length.field_1) + 192]) <= mem[ceil32(stor19.length.field_1) + 192]:
                _9490 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_9490)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_9490)]
                if ceil32(_9490) > _9490:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _9490 + 325] = 0
                return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_9490) + 32], 
            _9491 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_9491)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_9491)]
            if ceil32(_9491) > _9491:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _9491 + 325] = 0
            return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_9491) + 32], 
        mem[ceil32(stor19.length.field_1) + 224 len s] = call.data[calldata.size len s]
        t = s
        idx = stor20[arg1]
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if idx / 10 and 10 > -1 / idx / 10:
                revert with 'NH{q', 17
            if idx < 10 * idx / 10:
                revert with 'NH{q', 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor19.length.field_1) + 192]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor19.length.field_1) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(stor19.length.field_1)] = mem[192 len ceil32(stor19.length.field_1)]
        if ceil32(stor19.length.field_1) <= stor19.length.field_1:
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256 len ceil32(mem[ceil32(stor19.length.field_1) + 192])] = mem[ceil32(stor19.length.field_1) + 224 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 256] = '.json'
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261] = 32
            if ceil32(mem[ceil32(stor19.length.field_1) + 192]) <= mem[ceil32(stor19.length.field_1) + 192]:
                _9492 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_9492)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_9492)]
                if ceil32(_9492) > _9492:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _9492 + 325] = 0
                return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_9492) + 32], 
            _9493 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_9493)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_9493)]
            if ceil32(_9493) > _9493:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _9493 + 325] = 0
            return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_9493) + 32], 
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256] = 0
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256 len ceil32(mem[ceil32(stor19.length.field_1) + 192])] = mem[ceil32(stor19.length.field_1) + 224 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 256] = '.json'
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261] = 32
        if ceil32(mem[ceil32(stor19.length.field_1) + 192]) <= mem[ceil32(stor19.length.field_1) + 192]:
            _9494 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_9494)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_9494)]
            if ceil32(_9494) > _9494:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _9494 + 325] = 0
            return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_9494) + 32], 
        _9495 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_9495)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_9495)]
        if ceil32(_9495) > _9495:
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _9495 + 325] = 0
        return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_9495) + 32], 
    mem[0] = 19
    mem[192] = uint256(stor19.field_0)
    idx = 192
    s = 0
    while stor19.length.field_1 + 160 > idx:
        mem[idx + 32] = stor19[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor19.length.field_1 <= 0:
        return ''
    if not stor20[arg1]:
        mem[ceil32(stor19.length.field_1) + 288 len ceil32(stor19.length.field_1)] = mem[192 len ceil32(stor19.length.field_1)]
        mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 288] = '0'
        mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 289] = '.json'
        mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 294] = 32
        mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 326] = mem[ceil32(stor19.length.field_1) + 256]
        mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 358 len ceil32(mem[ceil32(stor19.length.field_1) + 256])] = mem[ceil32(stor19.length.field_1) + 288 len ceil32(mem[ceil32(stor19.length.field_1) + 256])]
        if ceil32(mem[ceil32(stor19.length.field_1) + 256]) <= mem[ceil32(stor19.length.field_1) + 256]:
            return Array(len=mem[ceil32(stor19.length.field_1) + 256], data=mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 358 len ceil32(mem[ceil32(stor19.length.field_1) + 256])]), 
        mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 256] + 358] = 0
        return 32, mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 326 len ceil32(mem[ceil32(stor19.length.field_1) + 256]) + 32], 
    s = 0
    idx = stor20[arg1]
    while idx:
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(stor19.length.field_1) + 192] = s
    if not s:
        t = s
        idx = stor20[arg1]
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if idx / 10 and 10 > -1 / idx / 10:
                revert with 'NH{q', 17
            if idx < 10 * idx / 10:
                revert with 'NH{q', 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor19.length.field_1) + 192]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor19.length.field_1) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(stor19.length.field_1)] = mem[192 len ceil32(stor19.length.field_1)]
        if ceil32(stor19.length.field_1) <= stor19.length.field_1:
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256 len ceil32(mem[ceil32(stor19.length.field_1) + 192])] = mem[ceil32(stor19.length.field_1) + 224 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 256] = '.json'
            if ceil32(mem[ceil32(stor19.length.field_1) + 192]) > mem[ceil32(stor19.length.field_1) + 192]:
                mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261] = 32
                _10897 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_10897)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_10897)]
                if ceil32(_10897) > _10897:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _10897 + 325] = 0
                return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_10897) + 32], 
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261] = 0
            mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261] = 32
            _10896 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_10896)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_10896)]
            if ceil32(_10896) > _10896:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _10896 + 325] = 0
            return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_10896) + 32], 
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256] = 0
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256 len ceil32(mem[ceil32(stor19.length.field_1) + 192])] = mem[ceil32(stor19.length.field_1) + 224 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 256] = '.json'
        mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261] = 32
        if ceil32(mem[ceil32(stor19.length.field_1) + 192]) <= mem[ceil32(stor19.length.field_1) + 192]:
            _10898 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_10898)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_10898)]
            if ceil32(_10898) > _10898:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _10898 + 325] = 0
            return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_10898) + 32], 
        _10899 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_10899)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_10899)]
        if ceil32(_10899) > _10899:
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _10899 + 325] = 0
        return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_10899) + 32], 
    mem[ceil32(stor19.length.field_1) + 224 len s] = call.data[calldata.size len s]
    t = s
    idx = stor20[arg1]
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if idx / 10 and 10 > -1 / idx / 10:
            revert with 'NH{q', 17
        if idx < 10 * idx / 10:
            revert with 'NH{q', 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 'NH{q', 17
        if t - 1 >= mem[ceil32(stor19.length.field_1) + 192]:
            revert with 'NH{q', 50
        mem[t + ceil32(stor19.length.field_1) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(stor19.length.field_1)] = mem[192 len ceil32(stor19.length.field_1)]
    if ceil32(stor19.length.field_1) <= stor19.length.field_1:
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256 len ceil32(mem[ceil32(stor19.length.field_1) + 192])] = mem[ceil32(stor19.length.field_1) + 224 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 256] = '.json'
        if ceil32(mem[ceil32(stor19.length.field_1) + 192]) > mem[ceil32(stor19.length.field_1) + 192]:
            mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261] = 32
            _10901 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_10901)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_10901)]
            if ceil32(_10901) > _10901:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _10901 + 325] = 0
            return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_10901) + 32], 
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261] = 0
        mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261] = 32
        _10900 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_10900)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_10900)]
        if ceil32(_10900) > _10900:
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _10900 + 325] = 0
        return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_10900) + 32], 
    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256] = 0
    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 256 len ceil32(mem[ceil32(stor19.length.field_1) + 192])] = mem[ceil32(stor19.length.field_1) + 224 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]
    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 256] = '.json'
    mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261
    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 261] = 32
    if ceil32(mem[ceil32(stor19.length.field_1) + 192]) <= mem[ceil32(stor19.length.field_1) + 192]:
        _10902 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_10902)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_10902)]
        if ceil32(_10902) > _10902:
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _10902 + 325] = 0
        return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_10902) + 32], 
    _10903 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 224]
    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 325 len ceil32(_10903)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 256 len ceil32(_10903)]
    if ceil32(_10903) > _10903:
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + _10903 + 325] = 0
    return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 293 len ceil32(_10903) + 32], 
}



}
