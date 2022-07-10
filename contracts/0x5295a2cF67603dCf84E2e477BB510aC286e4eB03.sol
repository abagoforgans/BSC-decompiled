contract main {




// =====================  Runtime code  =====================


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
uint256 stor6;
address owner;
uint256 royalty;
uint256 mintPrice;
uint256 startMint;
uint256 sub_2da7e49b;
uint256 maxSupply;
mapping of struct royalty;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function getRoyalty(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ERC721Metadata: Royalty query for nonexistent token'
    return uint8(royalty[arg1].field_1024)
}

function royalty() {
    return royalty
}

function startMint() {
    return startMint
}

function sub_2da7e49b(?) {
    return sub_2da7e49b
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function mintPrice() {
    return mintPrice
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

function getCreator(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ERC721Metadata: Creator query for nonexistent token'
    return address(royalty[arg1].field_256)
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

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
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
    emit 0xfeddf252: arg1, arg2, arg3
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
    emit 0xfeddf252: arg1, arg2, arg3
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(arg4.length) + 128 < 96 or ceil32(arg4.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg4.length + arg4 + 36
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
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit 0xfeddf252: arg1, arg2, arg3
    if not ext_code.size(arg2):
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

function sub_1e5521b7(?) {
    require calldata.size - 4 >= 32
    if bool(royalty[arg1].field_768):
        if bool(royalty[arg1].field_768) == uint255(royalty[arg1].field_769) < 32:
            revert with 0, 34
        if bool(royalty[arg1].field_768):
            if bool(royalty[arg1].field_768) == uint255(royalty[arg1].field_769) < 32:
                revert with 0, 34
            if uint255(royalty[arg1].field_769):
                if 31 >= uint255(royalty[arg1].field_769):
                    mem[128] = 256 * Mask(248, 0, royalty[arg1].field_776)
                else:
                    mem[128] = royalty[arg1][3].field_0
                    idx = 128
                    s = 0
                    while uint255(royalty[arg1].field_769) + 96 > idx:
                        mem[idx + 32] = royalty[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(royalty[arg1].field_768) == royalty[arg1].field_769 % 128 < 32:
                revert with 0, 34
            if royalty[arg1].field_769 % 128:
                if 31 >= royalty[arg1].field_769 % 128:
                    mem[128] = 256 * Mask(248, 0, royalty[arg1].field_776)
                else:
                    mem[128] = royalty[arg1][3].field_0
                    idx = 128
                    s = 0
                    while royalty[arg1].field_769 % 128 + 96 > idx:
                        mem[idx + 32] = royalty[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return royalty[arg1].field_0, 
               address(royalty[arg1].field_256),
               address(royalty[arg1].field_512),
               Array(len=2 * Mask(256, -1, uint255(royalty[arg1].field_769)), data=mem[128 len ceil32(uint255(royalty[arg1].field_769))]),
               uint8(royalty[arg1].field_1024)
    if bool(royalty[arg1].field_768) == royalty[arg1].field_769 % 128 < 32:
        revert with 0, 34
    if bool(royalty[arg1].field_768):
        if bool(royalty[arg1].field_768) == uint255(royalty[arg1].field_769) < 32:
            revert with 0, 34
        if uint255(royalty[arg1].field_769):
            if 31 >= uint255(royalty[arg1].field_769):
                mem[128] = 256 * Mask(248, 0, royalty[arg1].field_776)
            else:
                mem[128] = royalty[arg1][3].field_0
                idx = 128
                s = 0
                while uint255(royalty[arg1].field_769) + 96 > idx:
                    mem[idx + 32] = royalty[arg1][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(royalty[arg1].field_768) == royalty[arg1].field_769 % 128 < 32:
            revert with 0, 34
        if royalty[arg1].field_769 % 128:
            if 31 >= royalty[arg1].field_769 % 128:
                mem[128] = 256 * Mask(248, 0, royalty[arg1].field_776)
            else:
                mem[128] = royalty[arg1][3].field_0
                idx = 128
                s = 0
                while royalty[arg1].field_769 % 128 + 96 > idx:
                    mem[idx + 32] = royalty[arg1][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return royalty[arg1].field_0, 
           address(royalty[arg1].field_256),
           address(royalty[arg1].field_512),
           Array(len=royalty[arg1].field_768 % 128, data=mem[128 len ceil32(royalty[arg1].field_769 % 128)]),
           uint8(royalty[arg1].field_1024)
}

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length.field_1) < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length.field_1) < 32:
                revert with 0, 34
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
                revert with 0, 34
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
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length.field_1) < 32:
            revert with 0, 34
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
            revert with 0, 34
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
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length.field_1) < 32:
                revert with 0, 34
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
                revert with 0, 34
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
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length.field_1) < 32:
            revert with 0, 34
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
            revert with 0, 34
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
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(royalty[arg1].field_768):
        if bool(royalty[arg1].field_768) == uint255(royalty[arg1].field_769) < 32:
            revert with 0, 34
        if bool(royalty[arg1].field_768):
            if bool(royalty[arg1].field_768) == uint255(royalty[arg1].field_769) < 32:
                revert with 0, 34
            if uint255(royalty[arg1].field_769):
                if 31 < uint255(royalty[arg1].field_769):
                    mem[128] = royalty[arg1][3].field_0
                    idx = 128
                    s = 0
                    while uint255(royalty[arg1].field_769) + 96 > idx:
                        mem[idx + 32] = royalty[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(royalty[arg1].field_769)), data=mem[128 len ceil32(uint255(royalty[arg1].field_769))]), 
                mem[128] = 256 * Mask(248, 0, royalty[arg1].field_776)
        else:
            if bool(royalty[arg1].field_768) == royalty[arg1].field_769 % 128 < 32:
                revert with 0, 34
            if royalty[arg1].field_769 % 128:
                if 31 < royalty[arg1].field_769 % 128:
                    mem[128] = royalty[arg1][3].field_0
                    idx = 128
                    s = 0
                    while royalty[arg1].field_769 % 128 + 96 > idx:
                        mem[idx + 32] = royalty[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(royalty[arg1].field_769)), data=mem[128 len ceil32(uint255(royalty[arg1].field_769))]), 
                mem[128] = 256 * Mask(248, 0, royalty[arg1].field_776)
        mem[ceil32(uint255(royalty[arg1].field_769)) + 192 len ceil32(uint255(royalty[arg1].field_769))] = mem[128 len ceil32(uint255(royalty[arg1].field_769))]
        if ceil32(uint255(royalty[arg1].field_769)) > uint255(royalty[arg1].field_769):
            mem[ceil32(uint255(royalty[arg1].field_769)) + uint255(royalty[arg1].field_769) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(royalty[arg1].field_769)), data=mem[128 len ceil32(uint255(royalty[arg1].field_769))], mem[(2 * ceil32(uint255(royalty[arg1].field_769))) + 192 len 2 * ceil32(uint255(royalty[arg1].field_769))]), 
    if bool(royalty[arg1].field_768) == royalty[arg1].field_769 % 128 < 32:
        revert with 0, 34
    if bool(royalty[arg1].field_768):
        if bool(royalty[arg1].field_768) == uint255(royalty[arg1].field_769) < 32:
            revert with 0, 34
        if uint255(royalty[arg1].field_769):
            if 31 < uint255(royalty[arg1].field_769):
                mem[128] = royalty[arg1][3].field_0
                idx = 128
                s = 0
                while uint255(royalty[arg1].field_769) + 96 > idx:
                    mem[idx + 32] = royalty[arg1][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=royalty[arg1].field_768 % 128, data=mem[128 len ceil32(royalty[arg1].field_769 % 128)])
            mem[128] = 256 * Mask(248, 0, royalty[arg1].field_776)
    else:
        if bool(royalty[arg1].field_768) == royalty[arg1].field_769 % 128 < 32:
            revert with 0, 34
        if royalty[arg1].field_769 % 128:
            if 31 < royalty[arg1].field_769 % 128:
                mem[128] = royalty[arg1][3].field_0
                idx = 128
                s = 0
                while royalty[arg1].field_769 % 128 + 96 > idx:
                    mem[idx + 32] = royalty[arg1][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=royalty[arg1].field_768 % 128, data=mem[128 len ceil32(royalty[arg1].field_769 % 128)])
            mem[128] = 256 * Mask(248, 0, royalty[arg1].field_776)
    mem[ceil32(royalty[arg1].field_769 % 128) + 192 len ceil32(royalty[arg1].field_769 % 128)] = mem[128 len ceil32(royalty[arg1].field_769 % 128)]
    if ceil32(royalty[arg1].field_769 % 128) > royalty[arg1].field_769 % 128:
        mem[ceil32(royalty[arg1].field_769 % 128) + royalty[arg1].field_769 % 128 + 192] = 0
    return Array(len=royalty[arg1].field_768 % 128, data=mem[128 len ceil32(royalty[arg1].field_769 % 128)], mem[(2 * ceil32(royalty[arg1].field_769 % 128)) + 192 len 2 * ceil32(royalty[arg1].field_769 % 128)]), 
}

function mint(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if not arg1:
        if msg.value < 0:
            revert with 0, 'invalid price paid'
        if block.timestamp <= startMint:
            revert with 0, 'presale did not start'
        if stor6 > !arg1:
            revert with 0, 17
        if stor6 + arg1 < stor6:
            revert with 0, 'SafeMath: addition overflow'
        if stor6 + arg1 > maxSupply:
            revert with 0, 'finished minting'
        idx = 0
        while idx < arg1:
            stor6++
            _236 = mem[64]
            mem[64] = mem[64] + 32
            mem[_236] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor6]:
                revert with 0, 'ERC721: token already minted'
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[32] = 2
            ownerOf[stor6] = msg.sender
            mem[0] = stor6
            emit 0xfeddf252: 0, msg.sender, stor6
            if not ext_code.size(msg.sender):
                _268 = mem[64]
                mem[64] = mem[64] + 160
                mem[_268] = stor6
                mem[_268 + 32] = msg.sender
                mem[_268 + 64] = this.address
                _269 = mem[64]
                mem[64] = mem[64] + 64
                mem[_269] = 7
                mem[_269 + 32] = 'someuri' << 200
                mem[_268 + 96] = _269
                mem[_268 + 128] = 0
            else:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor6
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[_236 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor6, 128, 0
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
                _478 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_478] == Mask(32, 224, mem[_478])
                if Mask(32, 224, mem[_478]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                _534 = mem[64]
                mem[64] = mem[64] + 160
                mem[_534] = stor6
                mem[_534 + 32] = msg.sender
                mem[_534 + 64] = this.address
                _535 = mem[64]
                mem[64] = mem[64] + 64
                mem[_535] = 7
                mem[_535 + 32] = 'someuri' << 200
                mem[_534 + 96] = _535
                mem[_534 + 128] = 0
            mem[32] = 13
            royalty[stor6].field_0 = stor6
            address(royalty[stor6].field_256) = msg.sender
            address(royalty[stor6].field_512) = this.address
            if bool(royalty[stor6].field_768):
                if bool(royalty[stor6].field_768) == uint255(royalty[stor6].field_769) < 32:
                    revert with 0, 34
                mem[0] = sha3(stor6, 13) + 3
                bool(royalty[stor6].field_768) = 0
                uint255(royalty[stor6].field_769) = 7
                Mask(248, 0, royalty[stor6].field_776) = 'someuri' / 256
                s = sha3(sha3(stor6, 13) + 3)
                while sha3(sha3(stor6, 13) + 3) + (uint255(royalty[stor6].field_769) + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            else:
                if bool(royalty[stor6].field_768) == royalty[stor6].field_769 % 128 < 32:
                    revert with 0, 34
                mem[0] = sha3(stor6, 13) + 3
                bool(royalty[stor6].field_768) = 0
                uint255(royalty[stor6].field_769) = 7
                Mask(248, 0, royalty[stor6].field_776) = 'someuri' / 256
                s = sha3(sha3(stor6, 13) + 3)
                while sha3(sha3(stor6, 13) + 3) + (royalty[stor6].field_769 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            uint8(royalty[stor6].field_1024) = 0
            royalty[stor6].field_1280 % 1 = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if arg1 and sub_2da7e49b > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * sub_2da7e49b / arg1 != sub_2da7e49b:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if msg.value < arg1 * sub_2da7e49b:
            revert with 0, 'invalid price paid'
        if block.timestamp <= startMint:
            revert with 0, 'presale did not start'
        if stor6 > !arg1:
            revert with 0, 17
        if stor6 + arg1 < stor6:
            revert with 0, 'SafeMath: addition overflow'
        if stor6 + arg1 > maxSupply:
            revert with 0, 'finished minting'
        idx = 0
        while idx < arg1:
            stor6++
            _235 = mem[64]
            mem[64] = mem[64] + 32
            mem[_235] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor6]:
                revert with 0, 'ERC721: token already minted'
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[32] = 2
            ownerOf[stor6] = msg.sender
            mem[0] = stor6
            emit 0xfeddf252: 0, msg.sender, stor6
            if not ext_code.size(msg.sender):
                _259 = mem[64]
                mem[64] = mem[64] + 160
                mem[_259] = stor6
                mem[_259 + 32] = msg.sender
                mem[_259 + 64] = this.address
                _260 = mem[64]
                mem[64] = mem[64] + 64
                mem[_260] = 7
                mem[_260 + 32] = 'someuri' << 200
                mem[_259 + 96] = _260
                mem[_259 + 128] = 0
            else:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor6
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[_235 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor6, 128, 0
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
                _475 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_475] == Mask(32, 224, mem[_475])
                if Mask(32, 224, mem[_475]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                _525 = mem[64]
                mem[64] = mem[64] + 160
                mem[_525] = stor6
                mem[_525 + 32] = msg.sender
                mem[_525 + 64] = this.address
                _526 = mem[64]
                mem[64] = mem[64] + 64
                mem[_526] = 7
                mem[_526 + 32] = 'someuri' << 200
                mem[_525 + 96] = _526
                mem[_525 + 128] = 0
            mem[32] = 13
            royalty[stor6].field_0 = stor6
            address(royalty[stor6].field_256) = msg.sender
            address(royalty[stor6].field_512) = this.address
            if bool(royalty[stor6].field_768):
                if bool(royalty[stor6].field_768) == uint255(royalty[stor6].field_769) < 32:
                    revert with 0, 34
                mem[0] = sha3(stor6, 13) + 3
                bool(royalty[stor6].field_768) = 0
                uint255(royalty[stor6].field_769) = 7
                Mask(248, 0, royalty[stor6].field_776) = 'someuri' / 256
                s = sha3(sha3(stor6, 13) + 3)
                while sha3(sha3(stor6, 13) + 3) + (uint255(royalty[stor6].field_769) + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            else:
                if bool(royalty[stor6].field_768) == royalty[stor6].field_769 % 128 < 32:
                    revert with 0, 34
                mem[0] = sha3(stor6, 13) + 3
                bool(royalty[stor6].field_768) = 0
                uint255(royalty[stor6].field_769) = 7
                Mask(248, 0, royalty[stor6].field_776) = 'someuri' / 256
                s = sha3(sha3(stor6, 13) + 3)
                while sha3(sha3(stor6, 13) + 3) + (royalty[stor6].field_769 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            uint8(royalty[stor6].field_1024) = 0
            royalty[stor6].field_1280 % 1 = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
