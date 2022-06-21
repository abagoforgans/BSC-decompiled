contract main {




// =====================  Runtime code  =====================


#
#  - sub_074bc326(?)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
array of struct stor0;
array of struct stor1;
mapping of uint32 ownerOf;
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
uint256 stor12;
address stor13;
mapping of address sub_e4622663;
mapping of uint256 price;
mapping of uint256 sub_83829328;
mapping of uint8 stor20;
mapping of uint8 stor21;
mapping of uint256 stor22;
mapping of uint256 sub_6891939d;
mapping of address sub_80012390;
mapping of uint256 sub_ce750286;
mapping of address sub_bbae64d2;
mapping of uint256 minBidPrice;
mapping of uint256 sub_4df3d313;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_083d353b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_80012390[arg1]
}

function totalSupply() {
    return tokenByIndex.length
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

function sub_3761c810(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor21[arg1])
}

function sub_4df3d313(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_4df3d313[arg1]
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function paused() {
    return bool(paused)
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return address(ownerOf[arg1])
}

function sub_6891939d(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_6891939d[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function sub_80012390(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_80012390[arg1]
}

function sub_83829328(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_83829328[arg1]
}

function owner() {
    return owner
}

function sub_b1c6e562(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor20[arg1])
}

function sub_bbae64d2(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_bbae64d2[arg1]
}

function getMinBidPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return minBidPrice[arg1]
}

function sub_ce750286(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_ce750286[arg1]
}

function sub_e4622663(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_e4622663[arg1]
}

function getPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return price[arg1]
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

function buyNft(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if price[arg1] != msg.value:
        revert with 0, 'Price must be equal to NFT price'
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
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

function sub_6555895d(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor21[arg1]:
        revert with 0, 'NFT is not on Auction'
    if stor22[arg1] < block.timestamp:
        revert with 'NH{q', 17
    if stor22[arg1] - block.timestamp <= 0:
        revert with 0, 'Biding on this NFT is Ended'
    if stor22[arg1] < block.timestamp:
        revert with 'NH{q', 17
    return (stor22[arg1] - block.timestamp)
}

function sub_a77dc1c4(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if address(ownerOf[arg1]) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only NFT Owner can Retrive from Sale'
    stor20[arg1] = 1
}

function sub_46d6adaa(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    call address(arg3).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function updatePrice(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if address(ownerOf[arg1]) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only NFT Owner can change the Price'
    price[arg1] = arg2
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

function closeAuction(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if address(ownerOf[arg1]) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only NFT Owner can close the Auction'
    stor21[arg1] = 0
    sub_ce750286[arg1] = 0
    sub_6891939d[arg1] = 0
    if sub_4df3d313[arg1] > -1:
        revert with 'NH{q', 17
}

function purchase(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor20[arg1]:
        if not address(ownerOf[arg1]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        require ext_code.size(stor13)
        call stor13.0xb88d4fde with:
             gas gas_remaining wei
            args 0, uint32(ownerOf[arg1]), msg.sender, arg1, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor20[arg1] = 0
}

function sub_98feb030(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    stor21[arg1] = 0
    sub_6891939d[arg1] = 0
    if not address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    sub_80012390[arg1] = address(ownerOf[arg1])
    if not address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    require ext_code.size(stor13)
    call stor13.0xb88d4fde with:
         gas gas_remaining wei
        args 0, uint32(ownerOf[arg1]), sub_80012390[arg1], arg1, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor20[arg1] = 0
}

function sub_ad6561ec(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    if arg2 <= sub_6891939d[arg1]:
        revert with 0, 'High Bid is placed already'
    stor21[arg1] = 1
    if stor22[arg1] < block.timestamp:
        revert with 'NH{q', 17
    if stor22[arg1] - block.timestamp <= 0:
        revert with 0, 'Biding on this NFT is Ended'
    if arg2 < minBidPrice[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Bids Lower than minimum bid amoount are not accepted'
    sub_ce750286[arg1] = sub_6891939d[arg1]
    sub_bbae64d2[arg1] = sub_80012390[arg1]
    sub_6891939d[arg1] = arg2
    sub_80012390[arg1] = msg.sender
    if sub_4df3d313[arg1] > -2:
        revert with 'NH{q', 17
    sub_4df3d313[arg1]++
}

function sub_94d866fb(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = 16
    mem[ceil32(ceil32(arg1.length)) + 97] = stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
    return memory
      from ceil32(ceil32(arg1.length)) + 97
       len 32
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not address(ownerOf[arg2]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == address(ownerOf[arg2]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if address(ownerOf[arg2]) != msg.sender:
        if not stor5[address(stor2[arg2])][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not address(ownerOf[arg2]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(address(ownerOf[arg2]), arg1, arg2);
}

function putOnSale(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if address(ownerOf[arg1]) != msg.sender:
        revert with 0, 'Only NFT Owner can Put for Sale'
    stor21[arg1] = 0
    if not address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if this.address == address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if address(ownerOf[arg1]) != msg.sender:
        if not stor5[address(stor2[arg1])][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg1] = this.address
    if not address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(address(ownerOf[arg1]), this.address, arg1);
    stor20[arg1] = 1
    price[arg1] = arg2
}

function putOnAuction(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if address(ownerOf[arg1]) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only NFT Owner can Put On Auction'
    stor20[arg1] = 0
    if arg2 > -block.timestamp - 1:
        revert with 'NH{q', 17
    stor22[arg1] = arg2 + block.timestamp
    minBidPrice[arg1] = arg3
    if not address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if this.address == address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if address(ownerOf[arg1]) != msg.sender:
        if not stor5[address(stor2[arg1])][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg1] = this.address
    if not address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(address(ownerOf[arg1]), this.address, arg1);
    stor21[arg1] = 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not address(ownerOf[arg3]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not address(ownerOf[arg3]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if address(ownerOf[arg3]) != msg.sender:
        if not address(ownerOf[arg3]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[address(stor2[arg3])][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not address(ownerOf[arg3]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if address(ownerOf[arg3]) != arg1:
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
    if not address(ownerOf[arg3]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(address(ownerOf[arg3]), 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    address(ownerOf[arg3]) = arg2
    emit Transfer(arg1, arg2, arg3);
}

function safeMint(address arg1, string arg2) {
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
    stor12++
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if address(ownerOf[stor12]):
        revert with 0, 'ERC721: token already minted'
    if paused:
        revert with 0, 'Pausable: paused'
    stor9[stor12] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor12
    if arg1:
        tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = stor12
        stor7[stor12] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[stor12] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[stor12]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor12]
        stor9[stor12] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(arg1)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]++
    address(ownerOf[stor12]) = arg1
    emit Transfer(0, arg1, stor12);
    if ext_code.size(arg1) > 0:
        call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, 0, stor12, 128, 0
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
    if not address(ownerOf[stor12]):
        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
    if bool(stor10[stor12].field_0):
        if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_1) < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor10[stor12][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor10[stor12].field_0 = 0
            idx = 0
            while uint255(stor10[stor12].field_1) + 31 / 32 > idx:
                stor10[stor12][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor10[stor12][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor10[stor12].field_0 = 0
            idx = 0
            while stor10[stor12].field_1 % 128 + 31 / 32 > idx:
                stor10[stor12][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not address(ownerOf[arg3]):
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not address(ownerOf[arg3]):
        revert with 0, 'ERC721: owner query for nonexistent token'
    if address(ownerOf[arg3]) != msg.sender:
        if not address(ownerOf[arg3]):
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[address(stor2[arg3])][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not address(ownerOf[arg3]):
        revert with 0, 'ERC721: owner query for nonexistent token'
    if address(ownerOf[arg3]) != arg1:
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
    if not address(ownerOf[arg3]):
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(address(ownerOf[arg3]), 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    address(ownerOf[arg3]) = arg2
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

function sub_3580bf27(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if paused:
        revert with 0, 'Pausable: paused'
    if not address(ownerOf[arg1]):
        stor9[arg1] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg1
    else:
        if balanceOf[address(stor2[arg1])] < 1:
            revert with 'NH{q', 17
        if stor7[arg1] != balanceOf[address(stor2[arg1])] - 1:
            tokenOfOwnerByIndex[address(stor2[arg1])][stor7[arg1]] = tokenOfOwnerByIndex[address(stor2[arg1])][stor3[address(stor2[arg1])] - 1]
            stor7[stor6[address(stor2[arg1])][stor3[address(stor2[arg1])] - 1]] = stor7[arg1]
        stor7[arg1] = 0
        tokenOfOwnerByIndex[address(stor2[arg1])][stor3[address(stor2[arg1])] - 1] = 0
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
    if not address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(address(ownerOf[arg1]), 0, arg1);
    if balanceOf[address(stor2[arg1])] < 1:
        revert with 'NH{q', 17
    balanceOf[address(stor2[arg1])]--
    address(ownerOf[arg1]) = 0
    emit Transfer(address(ownerOf[arg1]), 0, arg1);
    if bool(stor10[arg1].field_0):
        if bool(stor10[arg1].field_0) == uint255(stor10[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor10[arg1].field_1):
            if bool(stor10[arg1].field_0):
                if bool(stor10[arg1].field_0) == uint255(stor10[arg1].field_1) < 32:
                    revert with 'NH{q', 34
                stor10[arg1].field_0 = 0
                if 31 < uint255(stor10[arg1].field_1):
                    idx = 0
                    while uint255(stor10[arg1].field_1) + 31 / 32 > idx:
                        stor10[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor10[arg1].field_0) == stor10[arg1].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                stor10[arg1].field_0 = 0
                if 31 < stor10[arg1].field_1 % 128:
                    idx = 0
                    while stor10[arg1].field_1 % 128 + 31 / 32 > idx:
                        stor10[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
    else:
        if bool(stor10[arg1].field_0) == stor10[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor10[arg1].field_1 % 128:
            if bool(stor10[arg1].field_0):
                if bool(stor10[arg1].field_0) == uint255(stor10[arg1].field_1) < 32:
                    revert with 'NH{q', 34
                stor10[arg1].field_0 = 0
                if 31 < uint255(stor10[arg1].field_1):
                    idx = 0
                    while uint255(stor10[arg1].field_1) + 31 / 32 > idx:
                        stor10[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor10[arg1].field_0) == stor10[arg1].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                stor10[arg1].field_0 = 0
                if 31 < stor10[arg1].field_1 % 128:
                    idx = 0
                    while stor10[arg1].field_1 % 128 + 31 / 32 > idx:
                        stor10[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
}

function name() {
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
                        mem[idx + 32] = stor0[s].field_256
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
                        mem[idx + 32] = stor0[s].field_256
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
                    mem[idx + 32] = stor0[s].field_256
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
                    mem[idx + 32] = stor0[s].field_256
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

function symbol() {
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
                        mem[idx + 32] = stor1[s].field_256
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
                        mem[idx + 32] = stor1[s].field_256
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
                    mem[idx + 32] = stor1[s].field_256
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
                    mem[idx + 32] = stor1[s].field_256
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

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721URIStorage: URI query for nonexistent token'
    if bool(stor10[arg1].field_0):
        if bool(stor10[arg1].field_0) == uint255(stor10[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor10[arg1].field_0):
            if bool(stor10[arg1].field_0) == uint255(stor10[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor10[arg1].field_1):
                if 31 < uint255(stor10[arg1].field_1):
                    mem[128] = stor10[arg1].field_0
                    idx = 128
                    s = 0
                    while uint255(stor10[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = stor10[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor10[arg1].field_1)), data=mem[128 len ceil32(uint255(stor10[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor10[arg1].field_8)
        else:
            if bool(stor10[arg1].field_0) == stor10[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor10[arg1].field_1 % 128:
                if 31 < stor10[arg1].field_1 % 128:
                    mem[128] = stor10[arg1].field_0
                    idx = 128
                    s = 0
                    while stor10[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor10[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor10[arg1].field_1)), data=mem[128 len ceil32(uint255(stor10[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor10[arg1].field_8)
        mem[ceil32(uint255(stor10[arg1].field_1)) + 224 len ceil32(uint255(stor10[arg1].field_1))] = mem[128 len ceil32(uint255(stor10[arg1].field_1))]
        if ceil32(uint255(stor10[arg1].field_1)) > uint255(stor10[arg1].field_1):
            mem[ceil32(uint255(stor10[arg1].field_1)) + uint255(stor10[arg1].field_1) + 224] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor10[arg1].field_1)), data=mem[128 len ceil32(uint255(stor10[arg1].field_1))], mem[(2 * ceil32(uint255(stor10[arg1].field_1))) + 224 len 2 * ceil32(uint255(stor10[arg1].field_1))]), 
    if bool(stor10[arg1].field_0) == stor10[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor10[arg1].field_0):
        if bool(stor10[arg1].field_0) == uint255(stor10[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor10[arg1].field_1):
            if 31 < uint255(stor10[arg1].field_1):
                mem[128] = stor10[arg1].field_0
                idx = 128
                s = 0
                while uint255(stor10[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = stor10[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10[arg1].field_0 % 128, data=mem[128 len ceil32(stor10[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor10[arg1].field_8)
    else:
        if bool(stor10[arg1].field_0) == stor10[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor10[arg1].field_1 % 128:
            if 31 < stor10[arg1].field_1 % 128:
                mem[128] = stor10[arg1].field_0
                idx = 128
                s = 0
                while stor10[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor10[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10[arg1].field_0 % 128, data=mem[128 len ceil32(stor10[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor10[arg1].field_8)
    mem[ceil32(stor10[arg1].field_1 % 128) + 224 len ceil32(stor10[arg1].field_1 % 128)] = mem[128 len ceil32(stor10[arg1].field_1 % 128)]
    if ceil32(stor10[arg1].field_1 % 128) > stor10[arg1].field_1 % 128:
        mem[ceil32(stor10[arg1].field_1 % 128) + stor10[arg1].field_1 % 128 + 224] = 0
    return Array(len=stor10[arg1].field_0 % 128, data=mem[128 len ceil32(stor10[arg1].field_1 % 128)], mem[(2 * ceil32(stor10[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor10[arg1].field_1 % 128)]), 
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if address(ownerOf[arg1]) != msg.sender:
        if not address(ownerOf[arg1]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg1] != msg.sender:
            if not stor5[address(stor2[arg1])][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Burnable: caller is not owner nor approved'
    if not address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if paused:
        revert with 0, 'Pausable: paused'
    if not address(ownerOf[arg1]):
        stor9[arg1] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg1
    else:
        if balanceOf[address(stor2[arg1])] < 1:
            revert with 'NH{q', 17
        if stor7[arg1] != balanceOf[address(stor2[arg1])] - 1:
            tokenOfOwnerByIndex[address(stor2[arg1])][stor7[arg1]] = tokenOfOwnerByIndex[address(stor2[arg1])][stor3[address(stor2[arg1])] - 1]
            stor7[stor6[address(stor2[arg1])][stor3[address(stor2[arg1])] - 1]] = stor7[arg1]
        stor7[arg1] = 0
        tokenOfOwnerByIndex[address(stor2[arg1])][stor3[address(stor2[arg1])] - 1] = 0
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
    if not address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(address(ownerOf[arg1]), 0, arg1);
    if balanceOf[address(stor2[arg1])] < 1:
        revert with 'NH{q', 17
    balanceOf[address(stor2[arg1])]--
    address(ownerOf[arg1]) = 0
    emit Transfer(address(ownerOf[arg1]), 0, arg1);
    if bool(stor10[arg1].field_0):
        if bool(stor10[arg1].field_0) == uint255(stor10[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor10[arg1].field_1):
            if bool(stor10[arg1].field_0):
                if bool(stor10[arg1].field_0) == uint255(stor10[arg1].field_1) < 32:
                    revert with 'NH{q', 34
                stor10[arg1].field_0 = 0
                if 31 < uint255(stor10[arg1].field_1):
                    idx = 0
                    while uint255(stor10[arg1].field_1) + 31 / 32 > idx:
                        stor10[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor10[arg1].field_0) == stor10[arg1].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                stor10[arg1].field_0 = 0
                if 31 < stor10[arg1].field_1 % 128:
                    idx = 0
                    while stor10[arg1].field_1 % 128 + 31 / 32 > idx:
                        stor10[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
    else:
        if bool(stor10[arg1].field_0) == stor10[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor10[arg1].field_1 % 128:
            if bool(stor10[arg1].field_0):
                if bool(stor10[arg1].field_0) == uint255(stor10[arg1].field_1) < 32:
                    revert with 'NH{q', 34
                stor10[arg1].field_0 = 0
                if 31 < uint255(stor10[arg1].field_1):
                    idx = 0
                    while uint255(stor10[arg1].field_1) + 31 / 32 > idx:
                        stor10[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor10[arg1].field_0) == stor10[arg1].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                stor10[arg1].field_0 = 0
                if 31 < stor10[arg1].field_1 % 128:
                    idx = 0
                    while stor10[arg1].field_1 % 128 + 31 / 32 > idx:
                        stor10[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
}



}
