contract main {




// =====================  Runtime code  =====================


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
address owner;
uint256 totalSupply;
uint256 stor9;
array of struct stor10;
uint256 mintCost;
mapping of uint256 mintsPer;
uint8 saleState;
mapping of uint256 sub_9eec3618;
mapping of uint8 stor15;
uint256 stor16;
address sub_36d60082Address;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return totalSupply
}

function mintsPerAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return mintsPer[arg1]
}

function sub_36d60082(?) {
    return sub_36d60082Address
}

function saleState() {
    if saleState >= 2:
        revert with 'NH{q', 33
    return saleState
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

function sub_9eec3618(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor15[arg1]) != 1:
        revert with 0, 'Collection does not exist!'
    return sub_9eec3618[arg1]
}

function isCollection(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor15[arg1])
}

function mintCost() {
    return mintCost
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

function accountBalance() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return eth.balance(this.address)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_7f1921ef(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mintCost = arg1
}

function toggleSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if saleState > 1:
        revert with 'NH{q', 33
    if saleState:
        saleState = 0
    else:
        saleState = 1
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

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'No Funds to withdraw, Balance is 0'
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
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

function changeBaseURI(string arg1) {
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
    if bool(stor10.length):
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor10[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor10.length = 0
            idx = 0
            while stor10.length.field_1 + 31 / 32 > idx:
                stor10[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor10[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor10.length = 0
            idx = 0
            while stor10.length.field_1 + 31 / 32 > idx:
                stor10[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_592e0355(?) {
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
    if stor16 > -2:
        revert with 'NH{q', 17
    stor16++
    stor15[stor16] = 1
    if stor9 > -101:
        revert with 'NH{q', 17
    stor9 += 100
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor10.length):
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor10[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor10.length = 0
            idx = 0
            while stor10.length.field_1 + 31 / 32 > idx:
                stor10[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor10[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor10.length = 0
            idx = 0
            while stor10.length.field_1 + 31 / 32 > idx:
                stor10[idx].field_0 = 0
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
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if saleState > 1:
        revert with 'NH{q', 33
    if saleState != 1:
        revert with 0, 'Sale in not open!'
    if not stor15[arg1]:
        revert with 0, 'Collection Id does not exist!'
    if arg1 <= 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Collection Id must be 3 or greater!'
    mem[100] = msg.sender
    require ext_code.size(sub_36d60082Address)
    staticcall sub_36d60082Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Must be an $ERO Token holder!'
    if sub_9eec3618[arg1] >= 100:
        revert with 0, 'Not enough NFTs left to mint for this Collection..'
    if msg.value < mintCost:
        revert with 0, 'Not sufficient BNB to mint this amount of NFTs (Cost = 1 BNB for each NFT)'
    if arg1 < 1:
        revert with 'NH{q', 17
    if arg1 - 1 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if (100 * arg1) - 100 > -sub_9eec3618[arg1] - 1:
        revert with 'NH{q', 17
    if (100 * arg1) + sub_9eec3618[arg1] - 100 > -2:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 96] = 0
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[(100 * arg1) + stor14[arg1] - 99]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(msg.sender)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)]++
    ownerOf[(100 * arg1) + stor14[arg1] - 99] = msg.sender
    emit Transfer(0, msg.sender, (100 * arg1) + sub_9eec3618[arg1] - 99);
    if ext_code.size(msg.sender) > 0:
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = 0
        mem[ceil32(return_data.size) + 196] = (100 * arg1) + sub_9eec3618[arg1] - 99
        mem[ceil32(return_data.size) + 228] = 128
        mem[ceil32(return_data.size) + 260] = 0
        mem[ceil32(return_data.size) + 292 len 0] = None
        require ext_code.size(msg.sender)
        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, 0, (100 * arg1) + sub_9eec3618[arg1] - 99, 128, 0
        mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
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
    if mintsPer[address(msg.sender)] > -2:
        revert with 'NH{q', 17
    mintsPer[address(msg.sender)]++
    if totalSupply > -2:
        revert with 'NH{q', 17
    totalSupply++
    if sub_9eec3618[arg1] > -2:
        revert with 'NH{q', 17
    sub_9eec3618[arg1]++
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

function sub_89f6dff6(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + 97 > test266151307() or floor32(('cd', 68).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 68).length) + 97
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(cd[4]):
        revert with 0, 'ERC721: mint to the zero address'
    idx = 0
    while idx < ('cd', 68).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        if ownerOf[mem[(32 * idx) + 128]]:
            revert with 0, 'ERC721: token already minted'
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _126 = mem[(32 * idx) + 128]
        _127 = mem[64]
        mem[64] = mem[64] + 32
        mem[_127] = 0
        if not address(cd[4]):
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[_126]:
            revert with 0, 'ERC721: token already minted'
        if balanceOf[address(cd[4])] > -2:
            revert with 'NH{q', 17
        balanceOf[address(cd[4])]++
        mem[0] = _126
        mem[32] = 2
        ownerOf[_126] = address(cd[4])
        emit Transfer(0, address(cd[4]), _126);
        if ext_code.size(address(cd[4])) > 0:
            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = _126
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = 0
            s = 0
            while s < 0:
                mem[mem[64] + s + 164] = mem[_127 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(address(cd[4]))
            call address(cd[4]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args msg.sender, 0, _126, 128, 0
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
            _178 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_178] == Mask(32, 224, mem[_178])
            if Mask(32, 224, mem[_178]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if mintsPer[address(msg.sender)] > -2:
            revert with 'NH{q', 17
        mintsPer[address(msg.sender)]++
        if totalSupply > -2:
            revert with 'NH{q', 17
        totalSupply++
        mem[0] = cd[36]
        mem[32] = 14
        if sub_9eec3618[cd[36]] > -2:
            revert with 'NH{q', 17
        sub_9eec3618[cd[36]]++
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if not bool(stor10.length):
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor10.length):
            if bool(stor10.length) == stor10.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor10.length.field_1:
                if 31 >= stor10.length.field_1:
                    mem[128] = 256 * stor10.length.field_8
                else:
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while stor10.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor10.length) == stor10.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor10.length.field_1:
                if 31 >= stor10.length.field_1:
                    mem[128] = 256 * stor10.length.field_8
                else:
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while stor10.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor10.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor10.length.field_1) + 224 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
            mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 224] = '0'
            mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 225] = '.json'
            mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 230] = 32
            mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 262] = mem[ceil32(stor10.length.field_1) + 192]
            mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 294 len ceil32(mem[ceil32(stor10.length.field_1) + 192])] = mem[ceil32(stor10.length.field_1) + 224 len ceil32(mem[ceil32(stor10.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor10.length.field_1) + 192]) > mem[ceil32(stor10.length.field_1) + 192]:
                mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 192] + 294] = 0
            return Array(len=mem[ceil32(stor10.length.field_1) + 192], data=mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 294 len ceil32(mem[ceil32(stor10.length.field_1) + 192])]), 
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
        mem[ceil32(stor10.length.field_1) + 128] = s
        if s:
            mem[ceil32(stor10.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor10.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor10.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor10.length.field_1) + ceil32(s) + 192 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
        if ceil32(stor10.length.field_1) > stor10.length.field_1:
            mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + 192] = 0
        mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + 192 len ceil32(mem[ceil32(stor10.length.field_1) + 128])] = mem[ceil32(stor10.length.field_1) + 160 len ceil32(mem[ceil32(stor10.length.field_1) + 128])]
        mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 192] = '.json'
        mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 197] = 32
        mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 229] = mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor10.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]:
            mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + mem[ceil32(stor10.length.field_1) + ceil32(s) + 160] + 261] = 0
        return Array(len=mem[ceil32(stor10.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])]), 
    if bool(stor10.length) == stor10.length.field_1 < 32:
        revert with 'NH{q', 34
    mem[96] = stor10.length.field_1
    if bool(stor10.length):
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor10.length.field_1:
            if 31 >= stor10.length.field_1:
                mem[128] = 256 * stor10.length.field_8
            else:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while stor10.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
        if stor10.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor10.length.field_1) + 224 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
            mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 224] = '0'
            mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 225] = '.json'
            mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 230] = 32
            mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 262] = mem[ceil32(stor10.length.field_1) + 192]
            mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 294 len ceil32(mem[ceil32(stor10.length.field_1) + 192])] = mem[ceil32(stor10.length.field_1) + 224 len ceil32(mem[ceil32(stor10.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor10.length.field_1) + 192]) <= mem[ceil32(stor10.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor10.length.field_1) + 192], data=mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 294 len ceil32(mem[ceil32(stor10.length.field_1) + 192])]), 
            mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 192] + 294] = 0
            return 32, mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 262 len ceil32(mem[ceil32(stor10.length.field_1) + 192]) + 32], 
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
        mem[ceil32(stor10.length.field_1) + 128] = s
        if s:
            mem[ceil32(stor10.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor10.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor10.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor10.length.field_1) + ceil32(s) + 192 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
        if ceil32(stor10.length.field_1) > stor10.length.field_1:
            mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + 192] = 0
        mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + 192 len ceil32(mem[ceil32(stor10.length.field_1) + 128])] = mem[ceil32(stor10.length.field_1) + 160 len ceil32(mem[ceil32(stor10.length.field_1) + 128])]
        mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 192] = '.json'
    else:
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor10.length.field_1:
            if stor10.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor10.length.field_1) + 224 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
                mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 224] = '0'
                mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 225] = '.json'
                mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 230] = 32
                mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 262] = mem[ceil32(stor10.length.field_1) + 192]
                mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 294 len ceil32(mem[ceil32(stor10.length.field_1) + 192])] = mem[ceil32(stor10.length.field_1) + 224 len ceil32(mem[ceil32(stor10.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor10.length.field_1) + 192]) <= mem[ceil32(stor10.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor10.length.field_1) + 192], data=mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 294 len ceil32(mem[ceil32(stor10.length.field_1) + 192])]), 
                mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 192] + 294] = 0
                return 32, mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 262 len ceil32(mem[ceil32(stor10.length.field_1) + 192]) + 32], 
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
            mem[ceil32(stor10.length.field_1) + 128] = s
            if s:
                mem[ceil32(stor10.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor10.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor10.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor10.length.field_1) + ceil32(s) + 192 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
            if ceil32(stor10.length.field_1) > stor10.length.field_1:
                mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + 192] = 0
            mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + 192 len ceil32(mem[ceil32(stor10.length.field_1) + 128])] = mem[ceil32(stor10.length.field_1) + 160 len ceil32(mem[ceil32(stor10.length.field_1) + 128])]
            mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 192] = '.json'
            mem[64] = ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 197
        else:
            if 31 >= stor10.length.field_1:
                mem[128] = 256 * stor10.length.field_8
            else:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while stor10.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if stor10.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor10.length.field_1) + 224 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
                mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 224] = '0'
                mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 225] = '.json'
                mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 230] = 32
                mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 262] = mem[ceil32(stor10.length.field_1) + 192]
                mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 294 len ceil32(mem[ceil32(stor10.length.field_1) + 192])] = mem[ceil32(stor10.length.field_1) + 224 len ceil32(mem[ceil32(stor10.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor10.length.field_1) + 192]) <= mem[ceil32(stor10.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor10.length.field_1) + 192], data=mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 294 len ceil32(mem[ceil32(stor10.length.field_1) + 192])]), 
                mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 192] + 294] = 0
                return 32, mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 262 len ceil32(mem[ceil32(stor10.length.field_1) + 192]) + 32], 
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
            mem[ceil32(stor10.length.field_1) + 128] = s
            if s:
                mem[ceil32(stor10.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor10.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor10.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor10.length.field_1) + ceil32(s) + 192 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
            if ceil32(stor10.length.field_1) > stor10.length.field_1:
                mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + 192] = 0
            mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + 192 len ceil32(mem[ceil32(stor10.length.field_1) + 128])] = mem[ceil32(stor10.length.field_1) + 160 len ceil32(mem[ceil32(stor10.length.field_1) + 128])]
            mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 192] = '.json'
    mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 197] = 32
    mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 229] = mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]
    mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor10.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])]
    if ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]:
        return Array(len=mem[ceil32(stor10.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])]), 
    mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + mem[ceil32(stor10.length.field_1) + ceil32(s) + 160] + 261] = 0
    return 32, mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 229 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]) + 32], 
}



}
