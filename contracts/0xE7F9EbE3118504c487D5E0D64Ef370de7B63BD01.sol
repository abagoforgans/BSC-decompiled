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
array of struct stor11;
array of struct stor12;
uint256 cost;
uint256 maxSupply;
uint256 maxMintAmount;
uint8 paused;
uint8 revealed; offset 8
uint256 stor16; offset 8
array of struct stor17;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function cost() {
    return cost
}

function totalSupply() {
    return tokenByIndex.length
}

function maxMintAmount() {
    return maxMintAmount
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

function revealed() {
    return bool(revealed)
}

function paused() {
    return bool(paused)
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

function owner() {
    return owner
}

function maxSupply() {
    return maxSupply
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

function reveal() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor16 = 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setCost(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    cost = arg1
}

function pause(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    paused = uint8(arg1)
}

function setmaxMintAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxMintAmount = arg1
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

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) and 5 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    call 0x943590a42c27d08e3744202c4ae5ed55c2de240d with:
       value 5 * eth.balance(this.address) / 100 wei
         gas gas_remaining wei
    require ext_call.success
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    require ext_call.success
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
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor11[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor11.length = 0
            idx = 0
            while stor11.length.field_1 + 31 / 32 > idx:
                stor11[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor11[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor11.length = 0
            idx = 0
            while stor11.length.field_1 + 31 / 32 > idx:
                stor11[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function setBaseExtension(string arg1) {
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
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor12[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor12.length = 0
            idx = 0
            while stor12.length.field_1 + 31 / 32 > idx:
                stor12[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor12[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor12.length = 0
            idx = 0
            while stor12.length.field_1 + 31 / 32 > idx:
                stor12[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function setNotRevealedURI(string arg1) {
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
    if bool(stor17.length):
        if bool(stor17.length) == stor17.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor17[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor17.length = 0
            idx = 0
            while stor17.length.field_1 + 31 / 32 > idx:
                stor17[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor17.length) == stor17.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor17[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor17.length = 0
            idx = 0
            while stor17.length.field_1 + 31 / 32 > idx:
                stor17[idx].field_0 = 0
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

function baseExtension() {
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor12.length):
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor12.length.field_1:
                if 31 < stor12.length.field_1:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while stor12.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12.length.field_1), data=mem[128 len ceil32(stor12.length.field_1)])
                mem[128] = 256 * stor12.length.field_8
        else:
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor12.length.field_1:
                if 31 < stor12.length.field_1:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while stor12.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12.length.field_1), data=mem[128 len ceil32(stor12.length.field_1)])
                mem[128] = 256 * stor12.length.field_8
        mem[ceil32(stor12.length.field_1) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
        if ceil32(stor12.length.field_1) > stor12.length.field_1:
            mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor12.length.field_1), data=mem[128 len ceil32(stor12.length.field_1)], mem[(2 * ceil32(stor12.length.field_1)) + 192 len 2 * ceil32(stor12.length.field_1)]), 
    if bool(stor12.length) == stor12.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor12.length.field_1:
            if 31 < stor12.length.field_1:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while stor12.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)])
            mem[128] = 256 * stor12.length.field_8
    else:
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor12.length.field_1:
            if 31 < stor12.length.field_1:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while stor12.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)])
            mem[128] = 256 * stor12.length.field_8
    mem[ceil32(stor12.length.field_1) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
    if ceil32(stor12.length.field_1) > stor12.length.field_1:
        mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 192] = 0
    return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)], mem[(2 * ceil32(stor12.length.field_1)) + 192 len 2 * ceil32(stor12.length.field_1)]), 
}

function notRevealedUri() {
    if bool(stor17.length):
        if bool(stor17.length) == stor17.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor17.length):
            if bool(stor17.length) == stor17.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor17.length.field_1:
                if 31 < stor17.length.field_1:
                    mem[128] = uint256(stor17.field_0)
                    idx = 128
                    s = 0
                    while stor17.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor17[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor17.length.field_1), data=mem[128 len ceil32(stor17.length.field_1)])
                mem[128] = 256 * stor17.length.field_8
        else:
            if bool(stor17.length) == stor17.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor17.length.field_1:
                if 31 < stor17.length.field_1:
                    mem[128] = uint256(stor17.field_0)
                    idx = 128
                    s = 0
                    while stor17.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor17[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor17.length.field_1), data=mem[128 len ceil32(stor17.length.field_1)])
                mem[128] = 256 * stor17.length.field_8
        mem[ceil32(stor17.length.field_1) + 192 len ceil32(stor17.length.field_1)] = mem[128 len ceil32(stor17.length.field_1)]
        if ceil32(stor17.length.field_1) > stor17.length.field_1:
            mem[ceil32(stor17.length.field_1) + stor17.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor17.length.field_1), data=mem[128 len ceil32(stor17.length.field_1)], mem[(2 * ceil32(stor17.length.field_1)) + 192 len 2 * ceil32(stor17.length.field_1)]), 
    if bool(stor17.length) == stor17.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor17.length):
        if bool(stor17.length) == stor17.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor17.length.field_1:
            if 31 < stor17.length.field_1:
                mem[128] = uint256(stor17.field_0)
                idx = 128
                s = 0
                while stor17.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor17[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor17.length % 128, data=mem[128 len ceil32(stor17.length.field_1)])
            mem[128] = 256 * stor17.length.field_8
    else:
        if bool(stor17.length) == stor17.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor17.length.field_1:
            if 31 < stor17.length.field_1:
                mem[128] = uint256(stor17.field_0)
                idx = 128
                s = 0
                while stor17.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor17[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor17.length % 128, data=mem[128 len ceil32(stor17.length.field_1)])
            mem[128] = 256 * stor17.length.field_8
    mem[ceil32(stor17.length.field_1) + 192 len ceil32(stor17.length.field_1)] = mem[128 len ceil32(stor17.length.field_1)]
    if ceil32(stor17.length.field_1) > stor17.length.field_1:
        mem[ceil32(stor17.length.field_1) + stor17.length.field_1 + 192] = 0
    return Array(len=stor17.length % 128, data=mem[128 len ceil32(stor17.length.field_1)], mem[(2 * ceil32(stor17.length.field_1)) + 192 len 2 * ceil32(stor17.length.field_1)]), 
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

function mint(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require not paused
    require arg1 > 0
    require arg1 <= maxMintAmount
    if tokenByIndex.length > -arg1 - 1:
        revert with 'NH{q', 17
    require tokenByIndex.length + arg1 <= maxSupply
    if msg.sender == owner:
        idx = 1
        while idx <= arg1:
            if tokenByIndex.length > -idx - 1:
                revert with 'NH{q', 17
            _177 = mem[64]
            mem[64] = mem[64] + 32
            mem[_177] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor8.length + idx]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor8.length + idx] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = tokenByIndex.length + idx
            if msg.sender:
                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length + idx
                stor7[stor8.length + idx] = balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                mem[0] = tokenByIndex.length + idx
                mem[32] = 2
                ownerOf[stor8.length + idx] = msg.sender
                emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                if ext_code.size(msg.sender) > 0:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = tokenByIndex.length + idx
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 164] = mem[_177 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                    _365 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_365] == Mask(32, 224, mem[_365])
                    if Mask(32, 224, mem[_365]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if tokenByIndex.length < 1:
                    revert with 'NH{q', 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 'NH{q', 50
                if stor9[stor8.length + idx] >= tokenByIndex.length:
                    revert with 'NH{q', 50
                tokenByIndex[stor9[tokenByIndex.length + idx]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[stor8.length + idx]
                stor9[stor8.length + idx] = 0
                if not tokenByIndex.length:
                    revert with 'NH{q', 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                mem[0] = tokenByIndex.length + idx
                mem[32] = 2
                ownerOf[stor8.length + idx] = msg.sender
                emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                if ext_code.size(msg.sender) > 0:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = tokenByIndex.length + idx
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 164] = mem[_177 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                    _366 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_366] == Mask(32, 224, mem[_366])
                    if Mask(32, 224, mem[_366]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if cost and arg1 > -1 / cost:
            revert with 'NH{q', 17
        require msg.value >= cost * arg1
        idx = 1
        while idx <= arg1:
            if tokenByIndex.length > -idx - 1:
                revert with 'NH{q', 17
            _178 = mem[64]
            mem[64] = mem[64] + 32
            mem[_178] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor8.length + idx]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor8.length + idx] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = tokenByIndex.length + idx
            if msg.sender:
                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length + idx
                stor7[stor8.length + idx] = balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                mem[0] = tokenByIndex.length + idx
                mem[32] = 2
                ownerOf[stor8.length + idx] = msg.sender
                emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                if ext_code.size(msg.sender) > 0:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = tokenByIndex.length + idx
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 164] = mem[_178 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                    _367 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_367] == Mask(32, 224, mem[_367])
                    if Mask(32, 224, mem[_367]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if tokenByIndex.length < 1:
                    revert with 'NH{q', 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 'NH{q', 50
                if stor9[stor8.length + idx] >= tokenByIndex.length:
                    revert with 'NH{q', 50
                tokenByIndex[stor9[tokenByIndex.length + idx]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[stor8.length + idx]
                stor9[stor8.length + idx] = 0
                if not tokenByIndex.length:
                    revert with 'NH{q', 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                mem[0] = tokenByIndex.length + idx
                mem[32] = 2
                ownerOf[stor8.length + idx] = msg.sender
                emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                if ext_code.size(msg.sender) > 0:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = tokenByIndex.length + idx
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 164] = mem[_178 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                    _368 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_368] == Mask(32, 224, mem[_368])
                    if Mask(32, 224, mem[_368]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if not revealed:
        if bool(stor17.length):
            if bool(stor17.length) == stor17.length.field_1 < 32:
                revert with 'NH{q', 34
            if bool(stor17.length):
                if bool(stor17.length) == stor17.length.field_1 < 32:
                    revert with 'NH{q', 34
                if stor17.length.field_1:
                    if 31 < stor17.length.field_1:
                        mem[128] = uint256(stor17.field_0)
                        idx = 128
                        s = 0
                        while stor17.length.field_1 + 96 > idx:
                            mem[idx + 32] = stor17[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor17.length.field_1), data=mem[128 len ceil32(stor17.length.field_1)])
                    mem[128] = 256 * stor17.length.field_8
            else:
                if bool(stor17.length) == stor17.length.field_1 < 32:
                    revert with 'NH{q', 34
                if stor17.length.field_1:
                    if 31 < stor17.length.field_1:
                        mem[128] = uint256(stor17.field_0)
                        idx = 128
                        s = 0
                        while stor17.length.field_1 + 96 > idx:
                            mem[idx + 32] = stor17[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor17.length.field_1), data=mem[128 len ceil32(stor17.length.field_1)])
                    mem[128] = 256 * stor17.length.field_8
            mem[ceil32(stor17.length.field_1) + 192 len ceil32(stor17.length.field_1)] = mem[128 len ceil32(stor17.length.field_1)]
            if ceil32(stor17.length.field_1) > stor17.length.field_1:
                mem[ceil32(stor17.length.field_1) + stor17.length.field_1 + 192] = 0
            return Array(len=2 * Mask(256, -1, stor17.length.field_1), data=mem[128 len ceil32(stor17.length.field_1)], mem[(2 * ceil32(stor17.length.field_1)) + 192 len 2 * ceil32(stor17.length.field_1)]), 
        if bool(stor17.length) == stor17.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor17.length):
            if bool(stor17.length) == stor17.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor17.length.field_1:
                if 31 < stor17.length.field_1:
                    mem[128] = uint256(stor17.field_0)
                    idx = 128
                    s = 0
                    while stor17.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor17[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor17.length % 128, data=mem[128 len ceil32(stor17.length.field_1)])
                mem[128] = 256 * stor17.length.field_8
        else:
            if bool(stor17.length) == stor17.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor17.length.field_1:
                if 31 < stor17.length.field_1:
                    mem[128] = uint256(stor17.field_0)
                    idx = 128
                    s = 0
                    while stor17.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor17[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor17.length % 128, data=mem[128 len ceil32(stor17.length.field_1)])
                mem[128] = 256 * stor17.length.field_8
        mem[ceil32(stor17.length.field_1) + 192 len ceil32(stor17.length.field_1)] = mem[128 len ceil32(stor17.length.field_1)]
        if ceil32(stor17.length.field_1) > stor17.length.field_1:
            mem[ceil32(stor17.length.field_1) + stor17.length.field_1 + 192] = 0
        return Array(len=stor17.length % 128, data=mem[128 len ceil32(stor17.length.field_1)], mem[(2 * ceil32(stor17.length.field_1)) + 192 len 2 * ceil32(stor17.length.field_1)]), 
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        mem[96] = stor11.length.field_1
        if bool(stor11.length):
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor11.length.field_1:
                if stor11.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor11.length.field_1) + 128] = 1
                    mem[ceil32(stor11.length.field_1) + 160] = '0'
                    mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 0
                    if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _7288 = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    if ceil32(_7288) > _7288:
                                        mem[_7288 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7288) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _7372 = mem[ceil32(stor11.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(_7372) > _7372:
                                    mem[_7372 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_7372) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    else:
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _7292 = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    if ceil32(_7292) > _7292:
                                        mem[_7292 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7292) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _7375 = mem[ceil32(stor11.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(_7375) > _7375:
                                    mem[_7375 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_7375) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
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
                mem[ceil32(stor11.length.field_1) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                    if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18896 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18896) > _18896:
                                            mem[_18896 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18896) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19057 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19057) > _19057:
                                        mem[_19057 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19057) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19058 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19058) > _19058:
                                            mem[_19058 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19058) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19218 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19218) > _19218:
                                        mem[_19218 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19218) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18900 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18900) > _18900:
                                            mem[_18900 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18900) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19061 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19061) > _19061:
                                        mem[_19061 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19061) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19062 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19062) > _19062:
                                            mem[_19062 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19062) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19221 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19221) > _19221:
                                        mem[_19221 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19221) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                else:
                    mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                    if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18904 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18904) > _18904:
                                            mem[_18904 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18904) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19065 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19065) > _19065:
                                        mem[_19065 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19065) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19066 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19066) > _19066:
                                            mem[_19066 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19066) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19224 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19224) > _19224:
                                        mem[_19224 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19224) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18908 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18908) > _18908:
                                            mem[_18908 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18908) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19069 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19069) > _19069:
                                        mem[_19069 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19069) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19070 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19070) > _19070:
                                            mem[_19070 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19070) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19227 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19227) > _19227:
                                        mem[_19227 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19227) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
            else:
                if 31 >= stor11.length.field_1:
                    mem[128] = 256 * stor11.length.field_8
                    if stor11.length.field_1 <= 0:
                        return ''
                    if not arg1:
                        mem[ceil32(stor11.length.field_1) + 128] = 1
                        mem[ceil32(stor11.length.field_1) + 160] = '0'
                        mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 0
                        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _7299 = mem[ceil32(stor11.length.field_1) + 192]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                        if ceil32(_7299) > _7299:
                                            mem[_7299 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_7299) + -mem[64] + 64
                                    idx = 0
                                    s = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _7380 = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    if ceil32(_7380) > _7380:
                                        mem[_7380 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7380) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _7303 = mem[ceil32(stor11.length.field_1) + 192]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                        if ceil32(_7303) > _7303:
                                            mem[_7303 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_7303) + -mem[64] + 64
                                    idx = 0
                                    s = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _7383 = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    if ceil32(_7383) > _7383:
                                        mem[_7383 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7383) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
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
                    mem[ceil32(stor11.length.field_1) + 128] = s
                    if not s:
                        t = s
                        idx = arg1
                        while idx:
                            if t < 1:
                                revert with 'NH{q', 17
                            if 48 > -(idx % 10) - 1:
                                revert with 'NH{q', 17
                            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                                revert with 'NH{q', 50
                            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _18920 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18920) > _18920:
                                                mem[_18920 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18920) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19081 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19081) > _19081:
                                            mem[_19081 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19081) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _19082 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_19082) > _19082:
                                                mem[_19082 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_19082) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19230 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19230) > _19230:
                                            mem[_19230 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19230) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _18924 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18924) > _18924:
                                                mem[_18924 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18924) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19085 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19085) > _19085:
                                            mem[_19085 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19085) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _19086 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_19086) > _19086:
                                                mem[_19086 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_19086) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19233 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19233) > _19233:
                                            mem[_19233 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19233) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
                        t = s
                        idx = arg1
                        while idx:
                            if t < 1:
                                revert with 'NH{q', 17
                            if 48 > -(idx % 10) - 1:
                                revert with 'NH{q', 17
                            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                                revert with 'NH{q', 50
                            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _18928 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18928) > _18928:
                                                mem[_18928 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18928) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19089 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19089) > _19089:
                                            mem[_19089 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19089) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _19090 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_19090) > _19090:
                                                mem[_19090 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_19090) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19236 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19236) > _19236:
                                            mem[_19236 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19236) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _18932 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18932) > _18932:
                                                mem[_18932 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18932) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19093 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19093) > _19093:
                                            mem[_19093 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19093) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _19094 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_19094) > _19094:
                                                mem[_19094 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_19094) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19239 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19239) > _19239:
                                            mem[_19239 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19239) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                else:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while stor11.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor11.length.field_1 <= 0:
                        return ''
                    if not arg1:
                        mem[ceil32(stor11.length.field_1) + 128] = 1
                        mem[ceil32(stor11.length.field_1) + 160] = '0'
                        mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 0
                        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    var88001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                                if bool(stor12.length) == 1:
                                    idx = 0
                                    s = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                                mem[64] = 0
                                _13444 = mem[ceil32(stor11.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                var89001 = ceil32(_13444)
                                if ceil32(_13444) > _13444:
                                    mem[_13444 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_13444) + -mem[64] + 64
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                var89001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _13540 = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    if ceil32(_13540) > _13540:
                                        mem[_13540 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_13540) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        else:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    var89001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _13448 = mem[ceil32(stor11.length.field_1) + 192]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                        if ceil32(_13448) > _13448:
                                            mem[_13448 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_13448) + -mem[64] + 64
                                    idx = 0
                                    s = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _13543 = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    if ceil32(_13543) > _13543:
                                        mem[_13543 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_13543) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
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
                    mem[ceil32(stor11.length.field_1) + 128] = s
                    if not s:
                        t = s
                        idx = arg1
                        while idx:
                            if t < 1:
                                revert with 'NH{q', 17
                            if 48 > -(idx % 10) - 1:
                                revert with 'NH{q', 17
                            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                                revert with 'NH{q', 50
                            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23632 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23632) > _23632:
                                                mem[_23632 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23632) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23825 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23825) > _23825:
                                            mem[_23825 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23825) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23826 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23826) > _23826:
                                                mem[_23826 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23826) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _24002 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_24002) > _24002:
                                            mem[_24002 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_24002) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23636 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23636) > _23636:
                                                mem[_23636 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23636) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23829 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23829) > _23829:
                                            mem[_23829 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23829) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23830 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23830) > _23830:
                                                mem[_23830 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23830) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _24005 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_24005) > _24005:
                                            mem[_24005 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_24005) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
                        t = s
                        idx = arg1
                        while idx:
                            if t < 1:
                                revert with 'NH{q', 17
                            if 48 > -(idx % 10) - 1:
                                revert with 'NH{q', 17
                            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                                revert with 'NH{q', 50
                            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23640 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23640) > _23640:
                                                mem[_23640 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23640) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23833 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23833) > _23833:
                                            mem[_23833 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23833) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23834 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23834) > _23834:
                                                mem[_23834 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23834) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _24008 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_24008) > _24008:
                                            mem[_24008 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_24008) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23644 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23644) > _23644:
                                                mem[_23644 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23644) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23837 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23837) > _23837:
                                            mem[_23837 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23837) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23838 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23838) > _23838:
                                                mem[_23838 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23838) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _24011 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_24011) > _24011:
                                            mem[_24011 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_24011) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
        else:
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor11.length.field_1:
                if stor11.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor11.length.field_1) + 128] = 1
                    mem[ceil32(stor11.length.field_1) + 160] = '0'
                    mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 0
                    if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _7309 = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    if ceil32(_7309) > _7309:
                                        mem[_7309 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7309) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _7388 = mem[ceil32(stor11.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(_7388) > _7388:
                                    mem[_7388 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_7388) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    else:
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _7313 = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    if ceil32(_7313) > _7313:
                                        mem[_7313 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7313) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _7391 = mem[ceil32(stor11.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(_7391) > _7391:
                                    mem[_7391 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_7391) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
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
                mem[ceil32(stor11.length.field_1) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                    if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18936 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18936) > _18936:
                                            mem[_18936 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18936) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19097 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19097) > _19097:
                                        mem[_19097 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19097) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19098 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19098) > _19098:
                                            mem[_19098 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19098) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19242 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19242) > _19242:
                                        mem[_19242 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19242) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18940 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18940) > _18940:
                                            mem[_18940 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18940) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19101 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19101) > _19101:
                                        mem[_19101 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19101) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19102 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19102) > _19102:
                                            mem[_19102 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19102) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19245 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19245) > _19245:
                                        mem[_19245 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19245) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                else:
                    mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                    if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18944 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18944) > _18944:
                                            mem[_18944 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18944) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19105 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19105) > _19105:
                                        mem[_19105 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19105) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19106 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19106) > _19106:
                                            mem[_19106 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19106) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19248 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19248) > _19248:
                                        mem[_19248 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19248) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18948 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18948) > _18948:
                                            mem[_18948 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18948) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19109 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19109) > _19109:
                                        mem[_19109 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19109) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19110 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19110) > _19110:
                                            mem[_19110 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19110) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19251 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19251) > _19251:
                                        mem[_19251 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19251) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
            else:
                if 31 >= stor11.length.field_1:
                    mem[128] = 256 * stor11.length.field_8
                    if stor11.length.field_1 <= 0:
                        return ''
                    if not arg1:
                        mem[ceil32(stor11.length.field_1) + 128] = 1
                        mem[ceil32(stor11.length.field_1) + 160] = '0'
                        mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 0
                        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _7320 = mem[ceil32(stor11.length.field_1) + 192]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                        if ceil32(_7320) > _7320:
                                            mem[_7320 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_7320) + -mem[64] + 64
                                    idx = 0
                                    s = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _7396 = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    if ceil32(_7396) > _7396:
                                        mem[_7396 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7396) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _7324 = mem[ceil32(stor11.length.field_1) + 192]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                        if ceil32(_7324) > _7324:
                                            mem[_7324 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_7324) + -mem[64] + 64
                                    idx = 0
                                    s = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _7399 = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    if ceil32(_7399) > _7399:
                                        mem[_7399 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7399) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
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
                    mem[ceil32(stor11.length.field_1) + 128] = s
                    if not s:
                        t = s
                        idx = arg1
                        while idx:
                            if t < 1:
                                revert with 'NH{q', 17
                            if 48 > -(idx % 10) - 1:
                                revert with 'NH{q', 17
                            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                                revert with 'NH{q', 50
                            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _18960 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18960) > _18960:
                                                mem[_18960 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18960) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19121 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19121) > _19121:
                                            mem[_19121 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19121) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _19122 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_19122) > _19122:
                                                mem[_19122 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_19122) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19254 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19254) > _19254:
                                            mem[_19254 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19254) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _18964 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18964) > _18964:
                                                mem[_18964 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18964) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19125 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19125) > _19125:
                                            mem[_19125 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19125) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _19126 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_19126) > _19126:
                                                mem[_19126 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_19126) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19257 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19257) > _19257:
                                            mem[_19257 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19257) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
                        t = s
                        idx = arg1
                        while idx:
                            if t < 1:
                                revert with 'NH{q', 17
                            if 48 > -(idx % 10) - 1:
                                revert with 'NH{q', 17
                            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                                revert with 'NH{q', 50
                            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _18968 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18968) > _18968:
                                                mem[_18968 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18968) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19129 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19129) > _19129:
                                            mem[_19129 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19129) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _19130 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_19130) > _19130:
                                                mem[_19130 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_19130) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19260 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19260) > _19260:
                                            mem[_19260 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19260) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _18972 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18972) > _18972:
                                                mem[_18972 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18972) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19133 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19133) > _19133:
                                            mem[_19133 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19133) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _19134 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_19134) > _19134:
                                                mem[_19134 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_19134) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19263 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19263) > _19263:
                                            mem[_19263 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19263) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                else:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while stor11.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor11.length.field_1 <= 0:
                        return ''
                    if not arg1:
                        mem[ceil32(stor11.length.field_1) + 128] = 1
                        mem[ceil32(stor11.length.field_1) + 160] = '0'
                        mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 0
                        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    var89001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                                if bool(stor12.length) == 1:
                                    idx = 0
                                    s = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                                mem[64] = 0
                                _13470 = mem[ceil32(stor11.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                var90001 = ceil32(_13470)
                                if ceil32(_13470) > _13470:
                                    mem[_13470 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_13470) + -mem[64] + 64
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                var90001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _13548 = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    if ceil32(_13548) > _13548:
                                        mem[_13548 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_13548) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        else:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    var90001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _13474 = mem[ceil32(stor11.length.field_1) + 192]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                        if ceil32(_13474) > _13474:
                                            mem[_13474 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_13474) + -mem[64] + 64
                                    idx = 0
                                    s = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _13551 = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    if ceil32(_13551) > _13551:
                                        mem[_13551 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_13551) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
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
                    mem[ceil32(stor11.length.field_1) + 128] = s
                    if not s:
                        t = s
                        idx = arg1
                        while idx:
                            if t < 1:
                                revert with 'NH{q', 17
                            if 48 > -(idx % 10) - 1:
                                revert with 'NH{q', 17
                            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                                revert with 'NH{q', 50
                            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23680 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23680) > _23680:
                                                mem[_23680 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23680) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23873 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23873) > _23873:
                                            mem[_23873 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23873) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23874 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23874) > _23874:
                                                mem[_23874 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23874) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _24014 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_24014) > _24014:
                                            mem[_24014 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_24014) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23684 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23684) > _23684:
                                                mem[_23684 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23684) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23877 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23877) > _23877:
                                            mem[_23877 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23877) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23878 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23878) > _23878:
                                                mem[_23878 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23878) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _24017 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_24017) > _24017:
                                            mem[_24017 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_24017) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
                        t = s
                        idx = arg1
                        while idx:
                            if t < 1:
                                revert with 'NH{q', 17
                            if 48 > -(idx % 10) - 1:
                                revert with 'NH{q', 17
                            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                                revert with 'NH{q', 50
                            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23688 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23688) > _23688:
                                                mem[_23688 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23688) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23881 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23881) > _23881:
                                            mem[_23881 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23881) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23882 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23882) > _23882:
                                                mem[_23882 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23882) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _24020 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_24020) > _24020:
                                            mem[_24020 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_24020) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23692 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23692) > _23692:
                                                mem[_23692 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23692) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23885 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23885) > _23885:
                                            mem[_23885 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23885) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23886 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23886) > _23886:
                                                mem[_23886 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23886) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _24023 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_24023) > _24023:
                                            mem[_24023 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_24023) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
        return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
    if bool(stor11.length) == stor11.length.field_1 < 32:
        revert with 'NH{q', 34
    mem[96] = stor11.length.field_1
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor11.length.field_1:
            if stor11.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor11.length.field_1) + 128] = 1
                mem[ceil32(stor11.length.field_1) + 160] = '0'
                mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 0
                if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _7330 = mem[ceil32(stor11.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(_7330) > _7330:
                                    mem[_7330 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_7330) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _7404 = mem[ceil32(stor11.length.field_1) + 192]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            if ceil32(_7404) > _7404:
                                mem[_7404 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_7404) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _7334 = mem[ceil32(stor11.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(_7334) > _7334:
                                    mem[_7334 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_7334) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _7407 = mem[ceil32(stor11.length.field_1) + 192]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            if ceil32(_7407) > _7407:
                                mem[_7407 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_7407) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
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
            mem[ceil32(stor11.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _18976 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18976) > _18976:
                                        mem[_18976 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18976) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _19137 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19137) > _19137:
                                    mem[_19137 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19137) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19138 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19138) > _19138:
                                        mem[_19138 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19138) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _19266 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19266) > _19266:
                                    mem[_19266 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19266) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                else:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _18980 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18980) > _18980:
                                        mem[_18980 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18980) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _19141 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19141) > _19141:
                                    mem[_19141 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19141) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19142 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19142) > _19142:
                                        mem[_19142 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19142) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _19269 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19269) > _19269:
                                    mem[_19269 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19269) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
            else:
                mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _18984 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18984) > _18984:
                                        mem[_18984 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18984) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _19145 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19145) > _19145:
                                    mem[_19145 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19145) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19146 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19146) > _19146:
                                        mem[_19146 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19146) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _19272 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19272) > _19272:
                                    mem[_19272 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19272) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                else:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _18988 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18988) > _18988:
                                        mem[_18988 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18988) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _19149 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19149) > _19149:
                                    mem[_19149 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19149) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19150 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19150) > _19150:
                                        mem[_19150 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19150) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _19275 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19275) > _19275:
                                    mem[_19275 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19275) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
        if 31 < stor11.length.field_1:
            mem[128] = uint256(stor11.field_0)
            idx = 128
            s = 0
            while stor11.length.field_1 + 96 > idx:
                mem[idx + 32] = stor11[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if stor11.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor11.length.field_1) + 128] = 1
                mem[ceil32(stor11.length.field_1) + 160] = '0'
                mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 0
                if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            var89001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                        if bool(stor12.length) == 1:
                            idx = 0
                            s = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                        mem[64] = 0
                        _13496 = mem[ceil32(stor11.length.field_1) + 192]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        var90001 = ceil32(_13496)
                        if ceil32(_13496) > _13496:
                            mem[_13496 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_13496) + -mem[64] + 64
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        var90001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _13556 = mem[ceil32(stor11.length.field_1) + 192]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            if ceil32(_13556) > _13556:
                                mem[_13556 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_13556) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                else:
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            var90001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _13500 = mem[ceil32(stor11.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(_13500) > _13500:
                                    mem[_13500 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_13500) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _13559 = mem[ceil32(stor11.length.field_1) + 192]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            if ceil32(_13559) > _13559:
                                mem[_13559 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_13559) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
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
            mem[ceil32(stor11.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _23728 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23728) > _23728:
                                        mem[_23728 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23728) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _23921 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_23921) > _23921:
                                    mem[_23921 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23921) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _23922 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23922) > _23922:
                                        mem[_23922 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23922) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _24026 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_24026) > _24026:
                                    mem[_24026 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_24026) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                else:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _23732 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23732) > _23732:
                                        mem[_23732 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23732) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _23925 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_23925) > _23925:
                                    mem[_23925 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23925) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _23926 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23926) > _23926:
                                        mem[_23926 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23926) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _24029 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_24029) > _24029:
                                    mem[_24029 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_24029) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
            else:
                mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _23736 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23736) > _23736:
                                        mem[_23736 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23736) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _23929 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_23929) > _23929:
                                    mem[_23929 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23929) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _23930 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23930) > _23930:
                                        mem[_23930 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23930) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _24032 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_24032) > _24032:
                                    mem[_24032 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_24032) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                else:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _23740 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23740) > _23740:
                                        mem[_23740 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23740) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _23933 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_23933) > _23933:
                                    mem[_23933 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23933) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _23934 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23934) > _23934:
                                        mem[_23934 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23934) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _24035 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_24035) > _24035:
                                    mem[_24035 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_24035) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
        mem[128] = 256 * stor11.length.field_8
        if stor11.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor11.length.field_1) + 128] = 1
            mem[ceil32(stor11.length.field_1) + 160] = '0'
            mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 0
            if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                if bool(stor12.length):
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _7341 = mem[ceil32(stor11.length.field_1) + 192]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            if ceil32(_7341) > _7341:
                                mem[_7341 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_7341) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                else:
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _7412 = mem[ceil32(stor11.length.field_1) + 192]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(_7412) > _7412:
                            mem[_7412 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_7412) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
            else:
                if bool(stor12.length):
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _7345 = mem[ceil32(stor11.length.field_1) + 192]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            if ceil32(_7345) > _7345:
                                mem[_7345 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_7345) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                else:
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _7415 = mem[ceil32(stor11.length.field_1) + 192]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(_7415) > _7415:
                            mem[_7415 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_7415) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
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
        mem[ceil32(stor11.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                _12608 = mem[ceil32(stor11.length.field_1) + 128]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _19000 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_19000) > _19000:
                                mem[_19000 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_19000) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12608 + stor12.length.field_1 + 192] = 32
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12608 + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12608 + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12608 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12608 + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _19161 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_19161) > _19161:
                            mem[_19161 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_19161) + -mem[64] + 64
                else:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _19162 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_19162) > _19162:
                                mem[_19162 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_19162) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12608 + stor12.length.field_1 + 192] = 32
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12608 + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12608 + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12608 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12608 + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _19278 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_19278) > _19278:
                            mem[_19278 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_19278) + -mem[64] + 64
                ('eq', ('type', 1, ('stor', ('length', ('name', 'stor12', 12)))), 1)
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12608 + stor12.length.field_1 + 192] = 32
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12608 + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12608 + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12608 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12608 + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
            _12746 = mem[ceil32(stor11.length.field_1) + 128]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                if bool(stor12.length):
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _19004 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_19004) > _19004:
                            mem[_19004 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_19004) + -mem[64] + 64
                    idx = 0
                    t = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12746 + stor12.length.field_1 + 192] = 32
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12746 + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12746 + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12746 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12746 + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _19165 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_19165) > _19165:
                        mem[_19165 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19165) + -mem[64] + 64
            else:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                if bool(stor12.length):
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _19166 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_19166) > _19166:
                            mem[_19166 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_19166) + -mem[64] + 64
                    idx = 0
                    t = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12746 + stor12.length.field_1 + 192] = 32
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12746 + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12746 + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12746 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12746 + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _19281 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_19281) > _19281:
                        mem[_19281 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19281) + -mem[64] + 64
            ('eq', ('type', 1, ('stor', ('length', ('name', 'stor12', 12)))), 1)
            idx = 0
            t = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12746 + stor12.length.field_1 + 192] = 32
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12746 + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12746 + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12746 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12746 + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
        mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
            _12609 = mem[ceil32(stor11.length.field_1) + 128]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                if bool(stor12.length):
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _19008 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_19008) > _19008:
                            mem[_19008 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_19008) + -mem[64] + 64
                    idx = 0
                    t = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12609 + stor12.length.field_1 + 192] = 32
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12609 + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12609 + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12609 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12609 + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _19169 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_19169) > _19169:
                        mem[_19169 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19169) + -mem[64] + 64
            else:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                if bool(stor12.length):
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _19170 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_19170) > _19170:
                            mem[_19170 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_19170) + -mem[64] + 64
                    idx = 0
                    t = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12609 + stor12.length.field_1 + 192] = 32
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12609 + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12609 + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12609 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12609 + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _19284 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_19284) > _19284:
                        mem[_19284 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19284) + -mem[64] + 64
            ('eq', ('type', 1, ('stor', ('length', ('name', 'stor12', 12)))), 1)
            idx = 0
            t = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12609 + stor12.length.field_1 + 192] = 32
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12609 + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12609 + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12609 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12609 + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
        _12747 = mem[ceil32(stor11.length.field_1) + 128]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
            if bool(stor12.length):
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _19012 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_19012) > _19012:
                        mem[_19012 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19012) + -mem[64] + 64
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12747 + stor12.length.field_1 + 192] = 32
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12747 + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12747 + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12747 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12747 + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
            if bool(stor12.length) != 1:
                mem[64] = 0
                _19173 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(_19173) > _19173:
                    mem[_19173 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_19173) + -mem[64] + 64
        else:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
            if bool(stor12.length):
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _19174 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_19174) > _19174:
                        mem[_19174 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19174) + -mem[64] + 64
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12747 + stor12.length.field_1 + 192] = 32
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12747 + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12747 + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12747 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12747 + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
            if bool(stor12.length) != 1:
                mem[64] = 0
                _19287 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(_19287) > _19287:
                    mem[_19287 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_19287) + -mem[64] + 64
        ('eq', ('type', 1, ('stor', ('length', ('name', 'stor12', 12)))), 1)
        idx = 0
        t = 0
        while idx < stor12.length.field_1:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
            idx = idx + 32
            t = t + 1
            continue 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12747 + stor12.length.field_1 + 192] = 32
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12747 + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12747 + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12747 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
        return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12747 + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
    if bool(stor11.length) == stor11.length.field_1 < 32:
        revert with 'NH{q', 34
    if not stor11.length.field_1:
        if stor11.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor11.length.field_1) + 128] = 1
            mem[ceil32(stor11.length.field_1) + 160] = '0'
            mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 0
            if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                if bool(stor12.length):
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _7351 = mem[ceil32(stor11.length.field_1) + 192]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            if ceil32(_7351) > _7351:
                                mem[_7351 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_7351) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                else:
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _7420 = mem[ceil32(stor11.length.field_1) + 192]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(_7420) > _7420:
                            mem[_7420 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_7420) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
            else:
                if bool(stor12.length):
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _7355 = mem[ceil32(stor11.length.field_1) + 192]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            if ceil32(_7355) > _7355:
                                mem[_7355 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_7355) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                else:
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _7423 = mem[ceil32(stor11.length.field_1) + 192]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(_7423) > _7423:
                            mem[_7423 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_7423) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
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
        mem[ceil32(stor11.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _19016 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19016) > _19016:
                                    mem[_19016 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19016) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _19177 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_19177) > _19177:
                                mem[_19177 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_19177) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                else:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _19178 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19178) > _19178:
                                    mem[_19178 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19178) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _19290 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_19290) > _19290:
                                mem[_19290 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_19290) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
            else:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _19020 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19020) > _19020:
                                    mem[_19020 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19020) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _19181 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_19181) > _19181:
                                mem[_19181 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_19181) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                else:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _19182 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19182) > _19182:
                                    mem[_19182 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19182) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _19293 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_19293) > _19293:
                                mem[_19293 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_19293) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
        else:
            mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _19024 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19024) > _19024:
                                    mem[_19024 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19024) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _19185 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_19185) > _19185:
                                mem[_19185 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_19185) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                else:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _19186 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19186) > _19186:
                                    mem[_19186 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19186) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _19296 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_19296) > _19296:
                                mem[_19296 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_19296) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
            else:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _19028 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19028) > _19028:
                                    mem[_19028 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19028) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _19189 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_19189) > _19189:
                                mem[_19189 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_19189) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                else:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _19190 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19190) > _19190:
                                    mem[_19190 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19190) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _19299 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_19299) > _19299:
                                mem[_19299 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_19299) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
    if 31 >= stor11.length.field_1:
        mem[128] = 256 * stor11.length.field_8
        if stor11.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor11.length.field_1) + 128] = 1
            mem[ceil32(stor11.length.field_1) + 160] = '0'
            mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 0
            if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                if bool(stor12.length):
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _7362 = mem[ceil32(stor11.length.field_1) + 192]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            if ceil32(_7362) > _7362:
                                mem[_7362 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_7362) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                else:
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _7428 = mem[ceil32(stor11.length.field_1) + 192]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(_7428) > _7428:
                            mem[_7428 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_7428) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
            else:
                if bool(stor12.length):
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _7366 = mem[ceil32(stor11.length.field_1) + 192]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            if ceil32(_7366) > _7366:
                                mem[_7366 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_7366) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                else:
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _7431 = mem[ceil32(stor11.length.field_1) + 192]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(_7431) > _7431:
                            mem[_7431 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_7431) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
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
        mem[ceil32(stor11.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _19040 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19040) > _19040:
                                    mem[_19040 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19040) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _19201 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_19201) > _19201:
                                mem[_19201 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_19201) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                else:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _19202 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19202) > _19202:
                                    mem[_19202 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19202) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _19302 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_19302) > _19302:
                                mem[_19302 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_19302) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
            else:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _19044 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19044) > _19044:
                                    mem[_19044 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19044) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _19205 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_19205) > _19205:
                                mem[_19205 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_19205) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                else:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _19206 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19206) > _19206:
                                    mem[_19206 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19206) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _19305 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_19305) > _19305:
                                mem[_19305 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_19305) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
        else:
            mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _19048 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19048) > _19048:
                                    mem[_19048 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19048) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _19209 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_19209) > _19209:
                                mem[_19209 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_19209) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                else:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _19210 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19210) > _19210:
                                    mem[_19210 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19210) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _19308 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_19308) > _19308:
                                mem[_19308 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_19308) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
            else:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _19052 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19052) > _19052:
                                    mem[_19052 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19052) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _19213 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_19213) > _19213:
                                mem[_19213 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_19213) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                else:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _19214 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19214) > _19214:
                                    mem[_19214 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19214) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _19311 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_19311) > _19311:
                                mem[_19311 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_19311) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
    mem[0] = 11
    mem[128] = uint256(stor11.field_0)
    idx = 128
    s = 0
    while stor11.length.field_1 + 96 > idx:
        mem[idx + 32] = stor11[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor11.length.field_1 <= 0:
        return ''
    if not arg1:
        mem[ceil32(stor11.length.field_1) + 128] = 1
        mem[ceil32(stor11.length.field_1) + 160] = '0'
        mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 0
        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
            if bool(stor12.length):
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    var90001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                if bool(stor12.length) == 1:
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                mem[64] = 0
                _13522 = mem[ceil32(stor11.length.field_1) + 192]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                var91001 = ceil32(_13522)
                if ceil32(_13522) > _13522:
                    mem[_13522 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_13522) + -mem[64] + 64
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                var91001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
            else:
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _13564 = mem[ceil32(stor11.length.field_1) + 192]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(_13564) > _13564:
                        mem[_13564 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_13564) + -mem[64] + 64
                idx = 0
                s = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
        else:
            if bool(stor12.length):
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    var91001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                else:
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _13526 = mem[ceil32(stor11.length.field_1) + 192]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(_13526) > _13526:
                            mem[_13526 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_13526) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
            else:
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _13567 = mem[ceil32(stor11.length.field_1) + 192]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(_13567) > _13567:
                        mem[_13567 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_13567) + -mem[64] + 64
                idx = 0
                s = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
        return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
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
    mem[ceil32(stor11.length.field_1) + 128] = s
    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + 160
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
            _17750 = mem[ceil32(stor11.length.field_1) + 128]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                if bool(stor12.length):
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _23776 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_23776) > _23776:
                            mem[_23776 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_23776) + -mem[64] + 64
                    mem[0] = 12
                    idx = 0
                    t = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _25008 = mem[64]
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17750 + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17750 + stor12.length.field_1 + 192] = 32
                    _25648 = mem[_25008]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17750 + stor12.length.field_1 + 224] = mem[_25008]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17750 + stor12.length.field_1 + 256 len ceil32(_25648)] = mem[_25008 + 32 len ceil32(_25648)]
                    if ceil32(_25648) > _25648:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17750 + stor12.length.field_1 + _25648 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17750 + stor12.length.field_1 + 224 len ceil32(_25648) + 32], 
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _23969 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_23969) > _23969:
                        mem[_23969 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_23969) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _25009 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17750 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17750 + stor12.length.field_1 + 192] = 32
                _25649 = mem[_25009]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17750 + stor12.length.field_1 + 224] = mem[_25009]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17750 + stor12.length.field_1 + 256 len ceil32(_25649)] = mem[_25009 + 32 len ceil32(_25649)]
                if ceil32(_25649) > _25649:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17750 + stor12.length.field_1 + _25649 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17750 + stor12.length.field_1 + 224 len ceil32(_25649) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
            if bool(stor12.length):
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _23970 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_23970) > _23970:
                        mem[_23970 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_23970) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _25010 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17750 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17750 + stor12.length.field_1 + 192] = 32
                _25650 = mem[_25010]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17750 + stor12.length.field_1 + 224] = mem[_25010]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17750 + stor12.length.field_1 + 256 len ceil32(_25650)] = mem[_25010 + 32 len ceil32(_25650)]
                if ceil32(_25650) > _25650:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17750 + stor12.length.field_1 + _25650 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17750 + stor12.length.field_1 + 224 len ceil32(_25650) + 32], 
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
            if bool(stor12.length) != 1:
                mem[64] = 0
                _24038 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(_24038) > _24038:
                    mem[_24038 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_24038) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            t = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _25011 = mem[64]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17750 + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17750 + stor12.length.field_1 + 192] = 32
            _25651 = mem[_25011]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17750 + stor12.length.field_1 + 224] = mem[_25011]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17750 + stor12.length.field_1 + 256 len ceil32(_25651)] = mem[_25011 + 32 len ceil32(_25651)]
            if ceil32(_25651) > _25651:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17750 + stor12.length.field_1 + _25651 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17750 + stor12.length.field_1 + 224 len ceil32(_25651) + 32], 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
        _17886 = mem[ceil32(stor11.length.field_1) + 128]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
            if bool(stor12.length):
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _23780 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_23780) > _23780:
                        mem[_23780 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_23780) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _25012 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17886 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17886 + stor12.length.field_1 + 192] = 32
                _25652 = mem[_25012]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17886 + stor12.length.field_1 + 224] = mem[_25012]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17886 + stor12.length.field_1 + 256 len ceil32(_25652)] = mem[_25012 + 32 len ceil32(_25652)]
                if ceil32(_25652) > _25652:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17886 + stor12.length.field_1 + _25652 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17886 + stor12.length.field_1 + 224 len ceil32(_25652) + 32], 
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
            if bool(stor12.length) != 1:
                mem[64] = 0
                _23973 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(_23973) > _23973:
                    mem[_23973 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_23973) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            t = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _25013 = mem[64]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17886 + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17886 + stor12.length.field_1 + 192] = 32
            _25653 = mem[_25013]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17886 + stor12.length.field_1 + 224] = mem[_25013]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17886 + stor12.length.field_1 + 256 len ceil32(_25653)] = mem[_25013 + 32 len ceil32(_25653)]
            if ceil32(_25653) > _25653:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17886 + stor12.length.field_1 + _25653 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17886 + stor12.length.field_1 + 224 len ceil32(_25653) + 32], 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
        if bool(stor12.length):
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
            if bool(stor12.length) != 1:
                mem[64] = 0
                _23974 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(_23974) > _23974:
                    mem[_23974 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_23974) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            t = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _25014 = mem[64]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17886 + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17886 + stor12.length.field_1 + 192] = 32
            _25654 = mem[_25014]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17886 + stor12.length.field_1 + 224] = mem[_25014]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17886 + stor12.length.field_1 + 256 len ceil32(_25654)] = mem[_25014 + 32 len ceil32(_25654)]
            if ceil32(_25654) > _25654:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17886 + stor12.length.field_1 + _25654 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17886 + stor12.length.field_1 + 224 len ceil32(_25654) + 32], 
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor12.length):
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
        if bool(stor12.length) != 1:
            mem[64] = 0
            _24041 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
            if ceil32(_24041) > _24041:
                mem[_24041 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_24041) + -mem[64] + 64
        mem[0] = 12
        idx = 0
        t = 0
        while idx < stor12.length.field_1:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
            idx = idx + 32
            t = t + 1
            continue 
        _25015 = mem[64]
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17886 + stor12.length.field_1 + 192
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17886 + stor12.length.field_1 + 192] = 32
        _25655 = mem[_25015]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17886 + stor12.length.field_1 + 224] = mem[_25015]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17886 + stor12.length.field_1 + 256 len ceil32(_25655)] = mem[_25015 + 32 len ceil32(_25655)]
        if ceil32(_25655) > _25655:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17886 + stor12.length.field_1 + _25655 + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17886 + stor12.length.field_1 + 224 len ceil32(_25655) + 32], 
    mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
            revert with 'NH{q', 50
        mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
    if ceil32(stor11.length.field_1) <= stor11.length.field_1:
        _17751 = mem[ceil32(stor11.length.field_1) + 128]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
            if bool(stor12.length):
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _23784 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_23784) > _23784:
                        mem[_23784 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_23784) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _25016 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17751 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17751 + stor12.length.field_1 + 192] = 32
                _25656 = mem[_25016]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17751 + stor12.length.field_1 + 224] = mem[_25016]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17751 + stor12.length.field_1 + 256 len ceil32(_25656)] = mem[_25016 + 32 len ceil32(_25656)]
                if ceil32(_25656) > _25656:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17751 + stor12.length.field_1 + _25656 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17751 + stor12.length.field_1 + 224 len ceil32(_25656) + 32], 
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
            if bool(stor12.length) != 1:
                mem[64] = 0
                _23977 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(_23977) > _23977:
                    mem[_23977 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_23977) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            t = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _25017 = mem[64]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17751 + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17751 + stor12.length.field_1 + 192] = 32
            _25657 = mem[_25017]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17751 + stor12.length.field_1 + 224] = mem[_25017]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17751 + stor12.length.field_1 + 256 len ceil32(_25657)] = mem[_25017 + 32 len ceil32(_25657)]
            if ceil32(_25657) > _25657:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17751 + stor12.length.field_1 + _25657 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17751 + stor12.length.field_1 + 224 len ceil32(_25657) + 32], 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
        if bool(stor12.length):
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
            if bool(stor12.length) != 1:
                mem[64] = 0
                _23978 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(_23978) > _23978:
                    mem[_23978 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_23978) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            t = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _25018 = mem[64]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17751 + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17751 + stor12.length.field_1 + 192] = 32
            _25658 = mem[_25018]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17751 + stor12.length.field_1 + 224] = mem[_25018]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17751 + stor12.length.field_1 + 256 len ceil32(_25658)] = mem[_25018 + 32 len ceil32(_25658)]
            if ceil32(_25658) > _25658:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17751 + stor12.length.field_1 + _25658 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17751 + stor12.length.field_1 + 224 len ceil32(_25658) + 32], 
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor12.length):
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
        if bool(stor12.length) != 1:
            mem[64] = 0
            _24044 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
            if ceil32(_24044) > _24044:
                mem[_24044 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_24044) + -mem[64] + 64
        mem[0] = 12
        idx = 0
        t = 0
        while idx < stor12.length.field_1:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
            idx = idx + 32
            t = t + 1
            continue 
        _25019 = mem[64]
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17751 + stor12.length.field_1 + 192
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17751 + stor12.length.field_1 + 192] = 32
        _25659 = mem[_25019]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17751 + stor12.length.field_1 + 224] = mem[_25019]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17751 + stor12.length.field_1 + 256 len ceil32(_25659)] = mem[_25019 + 32 len ceil32(_25659)]
        if ceil32(_25659) > _25659:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17751 + stor12.length.field_1 + _25659 + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17751 + stor12.length.field_1 + 224 len ceil32(_25659) + 32], 
    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
    _17887 = mem[ceil32(stor11.length.field_1) + 128]
    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
        if bool(stor12.length):
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
            if bool(stor12.length) != 1:
                mem[64] = 0
                _23788 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(_23788) > _23788:
                    mem[_23788 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_23788) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            t = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _25020 = mem[64]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17887 + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17887 + stor12.length.field_1 + 192] = 32
            _25660 = mem[_25020]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17887 + stor12.length.field_1 + 224] = mem[_25020]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17887 + stor12.length.field_1 + 256 len ceil32(_25660)] = mem[_25020 + 32 len ceil32(_25660)]
            if ceil32(_25660) > _25660:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17887 + stor12.length.field_1 + _25660 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17887 + stor12.length.field_1 + 224 len ceil32(_25660) + 32], 
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor12.length):
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
        if bool(stor12.length) != 1:
            mem[64] = 0
            _23981 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
            if ceil32(_23981) > _23981:
                mem[_23981 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_23981) + -mem[64] + 64
        mem[0] = 12
        idx = 0
        t = 0
        while idx < stor12.length.field_1:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
            idx = idx + 32
            t = t + 1
            continue 
        _25021 = mem[64]
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17887 + stor12.length.field_1 + 192
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17887 + stor12.length.field_1 + 192] = 32
        _25661 = mem[_25021]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17887 + stor12.length.field_1 + 224] = mem[_25021]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17887 + stor12.length.field_1 + 256 len ceil32(_25661)] = mem[_25021 + 32 len ceil32(_25661)]
        if ceil32(_25661) > _25661:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17887 + stor12.length.field_1 + _25661 + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17887 + stor12.length.field_1 + 224 len ceil32(_25661) + 32], 
    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor12.length):
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
        if bool(stor12.length) != 1:
            mem[64] = 0
            _23982 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
            if ceil32(_23982) > _23982:
                mem[_23982 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_23982) + -mem[64] + 64
        mem[0] = 12
        idx = 0
        t = 0
        while idx < stor12.length.field_1:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
            idx = idx + 32
            t = t + 1
            continue 
        _25022 = mem[64]
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17887 + stor12.length.field_1 + 192
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17887 + stor12.length.field_1 + 192] = 32
        _25662 = mem[_25022]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17887 + stor12.length.field_1 + 224] = mem[_25022]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17887 + stor12.length.field_1 + 256 len ceil32(_25662)] = mem[_25022 + 32 len ceil32(_25662)]
        if ceil32(_25662) > _25662:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17887 + stor12.length.field_1 + _25662 + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17887 + stor12.length.field_1 + 224 len ceil32(_25662) + 32], 
    if bool(stor12.length) == stor12.length.field_1 < 32:
        revert with 'NH{q', 34
    if not bool(stor12.length):
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
    if bool(stor12.length) != 1:
        mem[64] = 0
        _24047 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
        if ceil32(_24047) > _24047:
            mem[_24047 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_24047) + -mem[64] + 64
    mem[0] = 12
    idx = 0
    t = 0
    while idx < stor12.length.field_1:
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
        idx = idx + 32
        t = t + 1
        continue 
    _25023 = mem[64]
    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17887 + stor12.length.field_1 + 192
    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17887 + stor12.length.field_1 + 192] = 32
    _25663 = mem[_25023]
    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17887 + stor12.length.field_1 + 224] = mem[_25023]
    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17887 + stor12.length.field_1 + 256 len ceil32(_25663)] = mem[_25023 + 32 len ceil32(_25663)]
    if ceil32(_25663) > _25663:
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17887 + stor12.length.field_1 + _25663 + 256] = 0
    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17887 + stor12.length.field_1 + 224 len ceil32(_25663) + 32], 
}



}
