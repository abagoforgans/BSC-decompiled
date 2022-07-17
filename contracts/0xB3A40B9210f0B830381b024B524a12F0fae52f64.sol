contract main {




// =====================  Runtime code  =====================


#
#  - sub_10093ed3(?)
#  - sub_2735cad3(?)
#  - buyBox(uint256 arg1, uint256 arg2)
#  - sub_807986e7(?)
#  - openBox(uint256 arg1)
#
address owner;
array of struct stor1;
array of struct stor2;
mapping of address stor3;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor6;
mapping of struct stor7;
uint256 stor8;
address stor9; offset 8
address stor10;
address stor11;
address stor12;
uint256 stor15;
uint8 stor16;
mapping of struct dragonInfo;
mapping of struct stor20;
mapping of struct stor21;
mapping of struct stor22;
uint256 stor23;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function dragonInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not dragonInfo[arg1].field_2976:
        revert with 0, 'Dragon is not exists'
    return dragonInfo[arg1].field_0, 
           dragonInfo[arg1].field_256,
           dragonInfo[arg1].field_512,
           dragonInfo[arg1].field_1024,
           dragonInfo[arg1].field_1280,
           dragonInfo[arg1].field_1536,
           dragonInfo[arg1].field_1792,
           dragonInfo[arg1].field_2048,
           dragonInfo[arg1].field_2304,
           dragonInfo[arg1].field_2560,
           dragonInfo[arg1].field_768,
           dragonInfo[arg1].field_3584
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not dragonInfo[arg1].field_2976:
        revert with 0, 'Dragon is not exists'
    return dragonInfo[arg1].field_2816
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

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor6[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function sub_c0205b8b(?) {
    if not stor16:
        return 0
    return stor15
}

function stopSell() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor16 = 0
}

function startSell() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor16 = 1
}

function sub_1e93dcab(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8 = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setBoxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor15 = arg1
}

function changePoolAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12 = arg1
}

function sub_944f28b8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9 = address(arg1)
}

function sub_25d87313(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10 = address(arg1)
}

function sub_ab9dd763(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11 = address(arg1)
}

function sub_d15cca10(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor22[arg1].field_1032:
        revert with 0, 'Index invalid'
    stor22[arg1].field_1024 = 0
}

function sub_e8e5181c(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor22[arg1].field_1032:
        revert with 0, 'Index invalid'
    stor22[arg1].field_1024 = 1
}

function sub_a5332c34(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor22[arg1].field_1032:
        revert with 0, 'Item not found'
    stor22[arg1].field_1280 = arg2
}

function sub_9d4c6661(?) {
    require calldata.size - 4 >= 32
    if stor9 != msg.sender:
        if stor10 != msg.sender:
            if owner != msg.sender:
                revert with 0, 'Caller is not allow'
    dragonInfo[arg1].field_2816 = this.address or Mask(96, 160, dragonInfo[arg1].field_2816)
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor6[address(msg.sender)][address(arg1)] = uint8(arg2)
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

function statusChange(uint256 arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if stor9 != msg.sender:
        if stor10 != msg.sender:
            if owner != msg.sender:
                revert with 0, 'Caller is not allow'
    if not dragonInfo[arg1].field_2976:
        revert with 0, 'Dragon is not exists'
    dragonInfo[arg1].field_768 = arg2
    return 1
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_c76a9190(?) payable {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if not dragonInfo[arg1].field_2976:
        revert with 0, 'Dragon is not exists'
    if not dragonInfo[arg1].field_2976:
        revert with 0, 'Dragon is not exists'
    if dragonInfo[arg1].field_2816 != address(arg2):
        revert with 0, 'Dragon owner not permit'
    dragonInfo[arg1].field_2816 = address(arg3)
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor3[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == stor3[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if stor3[arg2] != msg.sender:
        if not stor6[stor3[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not stor3[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(stor3[arg2], arg1, arg2);
}

function sub_19a682c6(?) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor20[arg1].field_0:
        if stor20[arg1].field_0 == uint255(stor20[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor20[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor20[arg1].field_0 = 0
            idx = 0
            while (uint255(stor20[arg1].field_0) * 0.5) + 31 / 32 > idx:
                stor20[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor20[arg1].field_0 == stor20[arg1].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor20[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor20[arg1].field_0 = 0
            idx = 0
            while stor20[arg1].field_1 + 31 / 32 > idx:
                stor20[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_14e8af1d(?) {
    require calldata.size - 4 >= 96
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor21[arg1][arg2].field_0:
        if stor21[arg1][arg2].field_0 == uint255(stor21[arg1][arg2].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg3.length:
            stor21[arg1][arg2][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor21[arg1][arg2].field_0 = 0
            idx = 0
            while (uint255(stor21[arg1][arg2].field_0) * 0.5) + 31 / 32 > idx:
                stor21[arg1][arg2][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor21[arg1][arg2].field_0 == stor21[arg1][arg2].field_1 < 32:
            revert with 0, 34
        if arg3.length:
            stor21[arg1][arg2][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor21[arg1][arg2].field_0 = 0
            idx = 0
            while stor21[arg1][arg2].field_1 + 31 / 32 > idx:
                stor21[arg1][arg2][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_a27ddcdb(?) {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == address(arg2)
    require arg4 == bool(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor23++
    stor22[stor23].field_0 = stor23
    if stor22[stor23].field_256:
        if stor22[stor23].field_256 == uint255(stor22[stor23].field_256) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor22[stor23][1][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor22[stor23].field_256 = 0
            idx = 0
            while (uint255(stor22[stor23].field_256) * 0.5) + 31 / 32 > idx:
                stor22[stor23][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor22[stor23].field_256 == stor22[stor23].field_257 < 32:
            revert with 0, 34
        if arg1.length:
            stor22[stor23][1][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor22[stor23].field_256 = 0
            idx = 0
            while stor22[stor23].field_257 + 31 / 32 > idx:
                stor22[stor23][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    stor22[stor23].field_512 = address(arg2)
    stor22[stor23].field_768 = arg3
    stor22[stor23].field_1024 = 1
    stor22[stor23].field_1032 = 1
    stor22[stor23].field_1040 = Mask(240, 0, bool(arg4))
    stor22[stor23].field_1048 = 0
    stor22[stor23].field_1048 = 0
    stor22[stor23].field_1280 = arg5
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not stor3[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not stor3[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if stor3[arg3] != msg.sender:
        if not stor3[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor6[stor3[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not stor3[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if stor3[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not stor3[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(stor3[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    stor3[arg3] = arg2
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not stor3[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not stor3[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if stor3[arg3] != msg.sender:
        if not stor3[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor6[stor3[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not stor3[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if stor3[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not stor3[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(stor3[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    stor3[arg3] = arg2
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

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor9 != msg.sender:
        if stor10 != msg.sender:
            if owner != msg.sender:
                revert with 0, 'Caller is not allow'
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    approved[arg1] = 0
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(stor3[arg1], 0, arg1);
    if balanceOf[stor3[arg1]] < 1:
        revert with 0, 17
    balanceOf[stor3[arg1]]--
    stor3[arg1] = 0
    emit Transfer(stor3[arg1], 0, arg1);
    if stor7[arg1].field_0:
        if stor7[arg1].field_0 == uint255(stor7[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor7[arg1].field_0):
            if stor7[arg1].field_0:
                if stor7[arg1].field_0 == uint255(stor7[arg1].field_0) * 0.5 < 32:
                    revert with 0, 34
                stor7[arg1].field_0 = 0
                if 31 < uint255(stor7[arg1].field_0) * 0.5:
                    idx = 0
                    while (uint255(stor7[arg1].field_0) * 0.5) + 31 / 32 > idx:
                        stor7[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor7[arg1].field_0 == stor7[arg1].field_1 < 32:
                    revert with 0, 34
                stor7[arg1].field_0 = 0
                if 31 < stor7[arg1].field_1:
                    idx = 0
                    while stor7[arg1].field_1 + 31 / 32 > idx:
                        stor7[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
    else:
        if stor7[arg1].field_0 == stor7[arg1].field_1 < 32:
            revert with 0, 34
        if stor7[arg1].field_1:
            if stor7[arg1].field_0:
                if stor7[arg1].field_0 == uint255(stor7[arg1].field_0) * 0.5 < 32:
                    revert with 0, 34
                stor7[arg1].field_0 = 0
                if 31 < uint255(stor7[arg1].field_0) * 0.5:
                    idx = 0
                    while (uint255(stor7[arg1].field_0) * 0.5) + 31 / 32 > idx:
                        stor7[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor7[arg1].field_0 == stor7[arg1].field_1 < 32:
                    revert with 0, 34
                stor7[arg1].field_0 = 0
                if 31 < stor7[arg1].field_1:
                    idx = 0
                    while stor7[arg1].field_1 + 31 / 32 > idx:
                        stor7[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not dragonInfo[arg3].field_2976:
        revert with 0, 'Dragon is not exists'
    if dragonInfo[arg3].field_3328:
        if dragonInfo[arg3].field_3328 == uint255(dragonInfo[arg3].field_3328) * 0.5 < 32:
            revert with 0, 34
    else:
        if dragonInfo[arg3].field_3328 == dragonInfo[arg3].field_3329 < 32:
            revert with 0, 34
    if dragonInfo[arg3].field_3328:
        if dragonInfo[arg3].field_3328 == uint255(dragonInfo[arg3].field_3328) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, dragonInfo[arg3].field_3328):
            if 31 < uint255(dragonInfo[arg3].field_3328) * 0.5:
                idx = 640
                s = 0
                while (uint255(dragonInfo[arg3].field_3328) * 0.5) + 608 > idx:
                    mem[idx + 32] = dragonInfo[arg3][s + 13].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if dragonInfo[arg3].field_3328 == dragonInfo[arg3].field_3329 < 32:
            revert with 0, 34
        if dragonInfo[arg3].field_3329:
            if 31 < dragonInfo[arg3].field_3329:
                idx = 640
                s = 0
                while dragonInfo[arg3].field_3329 + 608 > idx:
                    mem[idx + 32] = dragonInfo[arg3][s + 13].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if not dragonInfo[arg3].field_2976:
        revert with 0, 'Dragon is not exists'
    if not stor3[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not stor3[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if arg1 != stor3[arg3]:
        if not stor3[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != arg1:
            if not stor6[stor3[arg3]][address(arg1)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if dragonInfo[arg3].field_768:
        revert with 0, 'dragon is not free'
    if not stor3[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if stor3[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not stor3[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(stor3[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    stor3[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if not dragonInfo[arg3].field_2976:
        revert with 0, 'Dragon is not exists'
    if not dragonInfo[arg3].field_2976:
        revert with 0, 'Dragon is not exists'
    if dragonInfo[arg3].field_2816 != arg1:
        revert with 0, 'Dragon owner not permit'
    dragonInfo[arg3].field_2816 = arg2
}

function name() {
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

function symbol() {
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor2.length):
                if 31 < uint255(stor2.length) * 0.5:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor2.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(uint255(stor2.length) * 0.5) + 192 len ceil32(uint255(stor2.length) * 0.5)] = mem[128 len ceil32(uint255(stor2.length) * 0.5)]
        if ceil32(uint255(stor2.length) * 0.5) > uint255(stor2.length) * 0.5:
            mem[(uint255(stor2.length) * 0.5) + ceil32(uint255(stor2.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)], mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor2.length) * 0.5)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 0, 34
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor2.length):
            if 31 < uint255(stor2.length) * 0.5:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while (uint255(stor2.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 0, 34
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
        mem[stor2.length.field_1 + ceil32(stor2.length.field_1) + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721URIStorage: URI query for nonexistent token'
    if stor7[arg1].field_0:
        if stor7[arg1].field_0 == uint255(stor7[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor7[arg1].field_0:
            if stor7[arg1].field_0 == uint255(stor7[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor7[arg1].field_0):
                if 31 < uint255(stor7[arg1].field_0) * 0.5:
                    mem[128] = stor7[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor7[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor7[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7[arg1].field_0), data=mem[128 len ceil32(uint255(stor7[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor7[arg1].field_8
        else:
            if stor7[arg1].field_0 == stor7[arg1].field_1 < 32:
                revert with 0, 34
            if stor7[arg1].field_1:
                if 31 < stor7[arg1].field_1:
                    mem[128] = stor7[arg1].field_0
                    idx = 128
                    s = 0
                    while stor7[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor7[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7[arg1].field_0), data=mem[128 len ceil32(uint255(stor7[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor7[arg1].field_8
        mem[ceil32(uint255(stor7[arg1].field_0) * 0.5) + 224 len ceil32(uint255(stor7[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor7[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor7[arg1].field_0) * 0.5) > uint255(stor7[arg1].field_0) * 0.5:
            mem[(uint255(stor7[arg1].field_0) * 0.5) + ceil32(uint255(stor7[arg1].field_0) * 0.5) + 224] = 0
        return Array(len=2 * Mask(256, -1, stor7[arg1].field_0), data=mem[128 len ceil32(uint255(stor7[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor7[arg1].field_0) * 0.5)) + 224 len 2 * ceil32(uint255(stor7[arg1].field_0) * 0.5)]), 
    if stor7[arg1].field_0 == stor7[arg1].field_1 < 32:
        revert with 0, 34
    if stor7[arg1].field_0:
        if stor7[arg1].field_0 == uint255(stor7[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor7[arg1].field_0):
            if 31 < uint255(stor7[arg1].field_0) * 0.5:
                mem[128] = stor7[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor7[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor7[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7[arg1].field_0, data=mem[128 len ceil32(stor7[arg1].field_1)])
            mem[128] = 256 * stor7[arg1].field_8
    else:
        if stor7[arg1].field_0 == stor7[arg1].field_1 < 32:
            revert with 0, 34
        if stor7[arg1].field_1:
            if 31 < stor7[arg1].field_1:
                mem[128] = stor7[arg1].field_0
                idx = 128
                s = 0
                while stor7[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor7[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7[arg1].field_0, data=mem[128 len ceil32(stor7[arg1].field_1)])
            mem[128] = 256 * stor7[arg1].field_8
    mem[ceil32(stor7[arg1].field_1) + 224 len ceil32(stor7[arg1].field_1)] = mem[128 len ceil32(stor7[arg1].field_1)]
    if ceil32(stor7[arg1].field_1) > stor7[arg1].field_1:
        mem[stor7[arg1].field_1 + ceil32(stor7[arg1].field_1) + 224] = 0
    return Array(len=stor7[arg1].field_0, data=mem[128 len ceil32(stor7[arg1].field_1)], mem[(2 * ceil32(stor7[arg1].field_1)) + 224 len 2 * ceil32(stor7[arg1].field_1)]), 
}

function sub_b96d425a(?) {
    require calldata.size - 4 >= 32
    if not dragonInfo[arg1].field_2976:
        revert with 0, 'Dragon is not exists'
    if dragonInfo[arg1].field_3328:
        if dragonInfo[arg1].field_3328 == uint255(dragonInfo[arg1].field_3328) * 0.5 < 32:
            revert with 0, 34
        if dragonInfo[arg1].field_3328:
            if dragonInfo[arg1].field_3328 == uint255(dragonInfo[arg1].field_3328) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, dragonInfo[arg1].field_3328):
                if 31 >= uint255(dragonInfo[arg1].field_3328) * 0.5:
                    mem[1152] = 256 * dragonInfo[arg1].field_3336
                else:
                    mem[1152] = dragonInfo[arg1][13].field_0
                    idx = 1152
                    s = 0
                    while (uint255(dragonInfo[arg1].field_3328) * 0.5) + 1120 > idx:
                        mem[idx + 32] = dragonInfo[arg1][s + 13].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if dragonInfo[arg1].field_3328 == dragonInfo[arg1].field_3329 < 32:
                revert with 0, 34
            if dragonInfo[arg1].field_3329:
                if 31 >= dragonInfo[arg1].field_3329:
                    mem[1152] = 256 * dragonInfo[arg1].field_3336
                else:
                    mem[1152] = dragonInfo[arg1][13].field_0
                    idx = 1152
                    s = 0
                    while dragonInfo[arg1].field_3329 + 1120 > idx:
                        mem[idx + 32] = dragonInfo[arg1][s + 13].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return 32, dragonInfo[arg1].field_0, 
               dragonInfo[arg1].field_256,
               dragonInfo[arg1].field_512,
               dragonInfo[arg1].field_768,
               dragonInfo[arg1].field_1024,
               dragonInfo[arg1].field_1280,
               dragonInfo[arg1].field_1536,
               dragonInfo[arg1].field_1792,
               dragonInfo[arg1].field_2048,
               dragonInfo[arg1].field_2304,
               dragonInfo[arg1].field_2560,
               dragonInfo[arg1].field_2816,
               bool(dragonInfo[arg1].field_2976),
               dragonInfo[arg1].field_3072,
               512,
               dragonInfo[arg1].field_3584,
               2 * Mask(256, -1, dragonInfo[arg1].field_3328),
               mem[1152 len ceil32(uint255(dragonInfo[arg1].field_3328) * 0.5)]
    if dragonInfo[arg1].field_3328 == dragonInfo[arg1].field_3329 < 32:
        revert with 0, 34
    if dragonInfo[arg1].field_3328:
        if dragonInfo[arg1].field_3328 == uint255(dragonInfo[arg1].field_3328) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, dragonInfo[arg1].field_3328):
            if 31 >= uint255(dragonInfo[arg1].field_3328) * 0.5:
                mem[1152] = 256 * dragonInfo[arg1].field_3336
            else:
                mem[1152] = dragonInfo[arg1][13].field_0
                idx = 1152
                s = 0
                while (uint255(dragonInfo[arg1].field_3328) * 0.5) + 1120 > idx:
                    mem[idx + 32] = dragonInfo[arg1][s + 13].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if dragonInfo[arg1].field_3328 == dragonInfo[arg1].field_3329 < 32:
            revert with 0, 34
        if dragonInfo[arg1].field_3329:
            if 31 >= dragonInfo[arg1].field_3329:
                mem[1152] = 256 * dragonInfo[arg1].field_3336
            else:
                mem[1152] = dragonInfo[arg1][13].field_0
                idx = 1152
                s = 0
                while dragonInfo[arg1].field_3329 + 1120 > idx:
                    mem[idx + 32] = dragonInfo[arg1][s + 13].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return 32, dragonInfo[arg1].field_0, 
           dragonInfo[arg1].field_256,
           dragonInfo[arg1].field_512,
           dragonInfo[arg1].field_768,
           dragonInfo[arg1].field_1024,
           dragonInfo[arg1].field_1280,
           dragonInfo[arg1].field_1536,
           dragonInfo[arg1].field_1792,
           dragonInfo[arg1].field_2048,
           dragonInfo[arg1].field_2304,
           dragonInfo[arg1].field_2560,
           dragonInfo[arg1].field_2816,
           bool(dragonInfo[arg1].field_2976),
           dragonInfo[arg1].field_3072,
           512,
           dragonInfo[arg1].field_3584,
           dragonInfo[arg1].field_3328,
           mem[1152 len ceil32(dragonInfo[arg1].field_3329)]
}

function sub_2b84f6d2(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor23 > test266151307():
        revert with 0, 65
    mem[96] = stor23
    mem[64] = (32 * stor23) + 128
    if not stor23:
        idx = 1
        s = 0
        while idx <= stor23:
            mem[0] = idx
            mem[32] = 22
            _86 = mem[64]
            mem[64] = mem[64] + 256
            mem[_86] = stor22[idx].field_0
            if stor22[idx].field_256:
                if stor22[idx].field_256 == uint255(stor22[idx].field_256) * 0.5 < 32:
                    revert with 0, 34
                _93 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor22[idx].field_256) * 0.5) + 32
                mem[_93] = uint255(stor22[idx].field_256) * 0.5
                if stor22[idx].field_256:
                    if stor22[idx].field_256 == uint255(stor22[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor22[idx].field_256):
                        if 31 >= uint255(stor22[idx].field_256) * 0.5:
                            mem[_93 + 32] = 256 * stor22[idx].field_264
                        else:
                            mem[0] = sha3(idx, 22) + 1
                            mem[_93 + 32] = stor22[idx][1].field_0
                            t = _93 + 32
                            u = sha3(sha3(idx, 22) + 1)
                            while _93 + (uint255(stor22[idx].field_256) * 0.5) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                else:
                    if stor22[idx].field_256 == stor22[idx].field_257 < 32:
                        revert with 0, 34
                    if stor22[idx].field_257:
                        if 31 >= stor22[idx].field_257:
                            mem[_93 + 32] = 256 * stor22[idx].field_264
                        else:
                            mem[0] = sha3(idx, 22) + 1
                            mem[_93 + 32] = stor22[idx][1].field_0
                            t = _93 + 32
                            u = sha3(sha3(idx, 22) + 1)
                            while _93 + stor22[idx].field_257 > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                mem[_86 + 32] = _93
            else:
                if stor22[idx].field_256 == stor22[idx].field_257 < 32:
                    revert with 0, 34
                _96 = mem[64]
                mem[64] = mem[64] + ceil32(stor22[idx].field_257) + 32
                mem[_96] = stor22[idx].field_257
                if stor22[idx].field_256:
                    if stor22[idx].field_256 == uint255(stor22[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor22[idx].field_256):
                        if 31 >= uint255(stor22[idx].field_256) * 0.5:
                            mem[_96 + 32] = 256 * stor22[idx].field_264
                        else:
                            mem[0] = sha3(idx, 22) + 1
                            mem[_96 + 32] = stor22[idx][1].field_0
                            t = _96 + 32
                            u = sha3(sha3(idx, 22) + 1)
                            while _96 + (uint255(stor22[idx].field_256) * 0.5) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                else:
                    if stor22[idx].field_256 == stor22[idx].field_257 < 32:
                        revert with 0, 34
                    if stor22[idx].field_257:
                        if 31 >= stor22[idx].field_257:
                            mem[_96 + 32] = 256 * stor22[idx].field_264
                        else:
                            mem[0] = sha3(idx, 22) + 1
                            mem[_96 + 32] = stor22[idx][1].field_0
                            t = _96 + 32
                            u = sha3(sha3(idx, 22) + 1)
                            while _96 + stor22[idx].field_257 > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                mem[_86 + 32] = _96
            mem[_86 + 64] = stor22[idx].field_512
            mem[_86 + 96] = stor22[idx].field_768
            mem[_86 + 128] = bool(stor22[idx].field_1024)
            mem[_86 + 160] = bool(stor22[idx].field_1032)
            mem[_86 + 192] = bool(stor22[idx].field_1040)
            mem[_86 + 224] = stor22[idx].field_1280
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _86
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _88 = mem[64]
        mem[mem[64]] = 32
        _89 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _89:
            mem[u] = t + -_88 - 64
            _167 = mem[s]
            mem[t] = mem[mem[s]]
            _169 = mem[_167 + 32]
            mem[t + 32] = 256
            _171 = mem[_169]
            mem[t + 256] = mem[_169]
            v = 0
            while v < _171:
                mem[v + t + 288] = mem[v + _169 + 32]
                v = v + 32
                continue 
            if ceil32(_171) > _171:
                mem[_171 + t + 288] = 0
            mem[t + 64] = mem[_167 + 76 len 20]
            mem[t + 96] = mem[_167 + 96]
            mem[t + 128] = bool(mem[_167 + 128])
            mem[t + 160] = bool(mem[_167 + 160])
            mem[t + 192] = bool(mem[_167 + 192])
            mem[t + 224] = mem[_167 + 224]
            idx = idx + 1
            s = s + 32
            t = ceil32(_171) + t + 288
            u = u + 32
            continue 
    else:
        mem[64] = (32 * stor23) + 384
        mem[(32 * stor23) + 128] = 0
        mem[(32 * stor23) + 160] = 96
        mem[(32 * stor23) + 192] = 0
        mem[(32 * stor23) + 224] = 0
        mem[(32 * stor23) + 256] = 0
        mem[(32 * stor23) + 288] = 0
        mem[(32 * stor23) + 320] = 0
        mem[(32 * stor23) + 352] = 0
        mem[var11001] = (32 * stor23) + 128
        s = var11001
        idx = var11002
        while idx - 1:
            mem[64] = mem[64] + 256
            mem[(32 * stor23) + 128] = 0
            mem[(32 * stor23) + 160] = 96
            mem[(32 * stor23) + 192] = 0
            mem[(32 * stor23) + 224] = 0
            mem[(32 * stor23) + 256] = 0
            mem[(32 * stor23) + 288] = 0
            mem[(32 * stor23) + 320] = 0
            mem[(32 * stor23) + 352] = 0
            mem[s + 32] = (32 * stor23) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 1
        s = 0
        while idx <= stor23:
            mem[0] = idx
            mem[32] = 22
            _231 = mem[64]
            mem[64] = mem[64] + 256
            mem[_231] = stor22[idx].field_0
            if stor22[idx].field_256:
                if stor22[idx].field_256 == uint255(stor22[idx].field_256) * 0.5 < 32:
                    revert with 0, 34
                _249 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor22[idx].field_256) * 0.5) + 32
                mem[_249] = uint255(stor22[idx].field_256) * 0.5
                if stor22[idx].field_256:
                    if stor22[idx].field_256 == uint255(stor22[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor22[idx].field_256):
                        if 31 >= uint255(stor22[idx].field_256) * 0.5:
                            mem[_249 + 32] = 256 * stor22[idx].field_264
                        else:
                            mem[0] = sha3(idx, 22) + 1
                            mem[_249 + 32] = stor22[idx][1].field_0
                            t = _249 + 32
                            u = sha3(sha3(idx, 22) + 1)
                            while _249 + (uint255(stor22[idx].field_256) * 0.5) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                else:
                    if stor22[idx].field_256 == stor22[idx].field_257 < 32:
                        revert with 0, 34
                    if stor22[idx].field_257:
                        if 31 >= stor22[idx].field_257:
                            mem[_249 + 32] = 256 * stor22[idx].field_264
                        else:
                            mem[0] = sha3(idx, 22) + 1
                            mem[_249 + 32] = stor22[idx][1].field_0
                            t = _249 + 32
                            u = sha3(sha3(idx, 22) + 1)
                            while _249 + stor22[idx].field_257 > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                mem[_231 + 32] = _249
            else:
                if stor22[idx].field_256 == stor22[idx].field_257 < 32:
                    revert with 0, 34
                _252 = mem[64]
                mem[64] = mem[64] + ceil32(stor22[idx].field_257) + 32
                mem[_252] = stor22[idx].field_257
                if stor22[idx].field_256:
                    if stor22[idx].field_256 == uint255(stor22[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor22[idx].field_256):
                        if 31 >= uint255(stor22[idx].field_256) * 0.5:
                            mem[_252 + 32] = 256 * stor22[idx].field_264
                        else:
                            mem[0] = sha3(idx, 22) + 1
                            mem[_252 + 32] = stor22[idx][1].field_0
                            t = _252 + 32
                            u = sha3(sha3(idx, 22) + 1)
                            while _252 + (uint255(stor22[idx].field_256) * 0.5) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                else:
                    if stor22[idx].field_256 == stor22[idx].field_257 < 32:
                        revert with 0, 34
                    if stor22[idx].field_257:
                        if 31 >= stor22[idx].field_257:
                            mem[_252 + 32] = 256 * stor22[idx].field_264
                        else:
                            mem[0] = sha3(idx, 22) + 1
                            mem[_252 + 32] = stor22[idx][1].field_0
                            t = _252 + 32
                            u = sha3(sha3(idx, 22) + 1)
                            while _252 + stor22[idx].field_257 > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                mem[_231 + 32] = _252
            mem[_231 + 64] = stor22[idx].field_512
            mem[_231 + 96] = stor22[idx].field_768
            mem[_231 + 128] = bool(stor22[idx].field_1024)
            mem[_231 + 160] = bool(stor22[idx].field_1032)
            mem[_231 + 192] = bool(stor22[idx].field_1040)
            mem[_231 + 224] = stor22[idx].field_1280
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _231
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _232 = mem[64]
        mem[mem[64]] = 32
        _233 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _233:
            mem[u] = t + -_232 - 64
            _282 = mem[s]
            mem[t] = mem[mem[s]]
            _284 = mem[_282 + 32]
            mem[t + 32] = 256
            _286 = mem[_284]
            mem[t + 256] = mem[_284]
            v = 0
            while v < _286:
                mem[v + t + 288] = mem[v + _284 + 32]
                v = v + 32
                continue 
            if ceil32(_286) > _286:
                mem[_286 + t + 288] = 0
            mem[t + 64] = mem[_282 + 76 len 20]
            mem[t + 96] = mem[_282 + 96]
            mem[t + 128] = bool(mem[_282 + 128])
            mem[t + 160] = bool(mem[_282 + 160])
            mem[t + 192] = bool(mem[_282 + 192])
            mem[t + 224] = mem[_282 + 224]
            idx = idx + 1
            s = s + 32
            t = ceil32(_286) + t + 288
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_8023b556(?) {
    idx = 1
    s = 0
    while idx <= stor23:
        mem[0] = idx
        mem[32] = 22
        if not stor22[idx].field_1024:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[96] = s
    mem[64] = (32 * s) + 128
    if not s:
        idx = 1
        s = 0
        while idx <= stor23:
            mem[0] = idx
            mem[32] = 22
            if not stor22[idx].field_1024:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 22
            _133 = mem[64]
            mem[64] = mem[64] + 256
            mem[_133] = stor22[idx].field_0
            if stor22[idx].field_256:
                if stor22[idx].field_256 == uint255(stor22[idx].field_256) * 0.5 < 32:
                    revert with 0, 34
                _140 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor22[idx].field_256) * 0.5) + 32
                mem[_140] = uint255(stor22[idx].field_256) * 0.5
                if stor22[idx].field_256:
                    if stor22[idx].field_256 == uint255(stor22[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor22[idx].field_256):
                        if 31 >= uint255(stor22[idx].field_256) * 0.5:
                            mem[_140 + 32] = 256 * stor22[idx].field_264
                        else:
                            mem[0] = sha3(idx, 22) + 1
                            mem[_140 + 32] = stor22[idx][1].field_0
                            t = _140 + 32
                            u = sha3(sha3(idx, 22) + 1)
                            while _140 + (uint255(stor22[idx].field_256) * 0.5) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                else:
                    if stor22[idx].field_256 == stor22[idx].field_257 < 32:
                        revert with 0, 34
                    if stor22[idx].field_257:
                        if 31 >= stor22[idx].field_257:
                            mem[_140 + 32] = 256 * stor22[idx].field_264
                        else:
                            mem[0] = sha3(idx, 22) + 1
                            mem[_140 + 32] = stor22[idx][1].field_0
                            t = _140 + 32
                            u = sha3(sha3(idx, 22) + 1)
                            while _140 + stor22[idx].field_257 > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                mem[_133 + 32] = _140
            else:
                if stor22[idx].field_256 == stor22[idx].field_257 < 32:
                    revert with 0, 34
                _142 = mem[64]
                mem[64] = mem[64] + ceil32(stor22[idx].field_257) + 32
                mem[_142] = stor22[idx].field_257
                if stor22[idx].field_256:
                    if stor22[idx].field_256 == uint255(stor22[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor22[idx].field_256):
                        if 31 >= uint255(stor22[idx].field_256) * 0.5:
                            mem[_142 + 32] = 256 * stor22[idx].field_264
                        else:
                            mem[0] = sha3(idx, 22) + 1
                            mem[_142 + 32] = stor22[idx][1].field_0
                            t = _142 + 32
                            u = sha3(sha3(idx, 22) + 1)
                            while _142 + (uint255(stor22[idx].field_256) * 0.5) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                else:
                    if stor22[idx].field_256 == stor22[idx].field_257 < 32:
                        revert with 0, 34
                    if stor22[idx].field_257:
                        if 31 >= stor22[idx].field_257:
                            mem[_142 + 32] = 256 * stor22[idx].field_264
                        else:
                            mem[0] = sha3(idx, 22) + 1
                            mem[_142 + 32] = stor22[idx][1].field_0
                            t = _142 + 32
                            u = sha3(sha3(idx, 22) + 1)
                            while _142 + stor22[idx].field_257 > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                mem[_133 + 32] = _142
            mem[_133 + 64] = stor22[idx].field_512
            mem[_133 + 96] = stor22[idx].field_768
            mem[_133 + 128] = bool(stor22[idx].field_1024)
            mem[_133 + 160] = bool(stor22[idx].field_1032)
            mem[_133 + 192] = bool(stor22[idx].field_1040)
            mem[_133 + 224] = stor22[idx].field_1280
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _133
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _131 = mem[64]
        mem[mem[64]] = 32
        _134 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _134:
            mem[u] = t + -_131 - 64
            _213 = mem[s]
            mem[t] = mem[mem[s]]
            _215 = mem[_213 + 32]
            mem[t + 32] = 256
            _217 = mem[_215]
            mem[t + 256] = mem[_215]
            v = 0
            while v < _217:
                mem[v + t + 288] = mem[v + _215 + 32]
                v = v + 32
                continue 
            if ceil32(_217) > _217:
                mem[_217 + t + 288] = 0
            mem[t + 64] = mem[_213 + 76 len 20]
            mem[t + 96] = mem[_213 + 96]
            mem[t + 128] = bool(mem[_213 + 128])
            mem[t + 160] = bool(mem[_213 + 160])
            mem[t + 192] = bool(mem[_213 + 192])
            mem[t + 224] = mem[_213 + 224]
            idx = idx + 1
            s = s + 32
            t = ceil32(_217) + t + 288
            u = u + 32
            continue 
    else:
        mem[64] = (32 * s) + 384
        mem[(32 * s) + 128] = 0
        mem[(32 * s) + 160] = 96
        mem[(32 * s) + 192] = 0
        mem[(32 * s) + 224] = 0
        mem[(32 * s) + 256] = 0
        mem[(32 * s) + 288] = 0
        mem[(32 * s) + 320] = 0
        mem[(32 * s) + 352] = 0
        mem[var12001] = (32 * s) + 128
        t = var12001
        idx = var12002
        while idx - 1:
            mem[64] = mem[64] + 256
            mem[(32 * t) + 128] = 0
            mem[(32 * t) + 160] = 96
            mem[(32 * t) + 192] = 0
            mem[(32 * t) + 224] = 0
            mem[(32 * t) + 256] = 0
            mem[(32 * t) + 288] = 0
            mem[(32 * t) + 320] = 0
            mem[(32 * t) + 352] = 0
            mem[t + 32] = (32 * t) + 128
            t = t + 32
            idx = idx - 1
            continue 
        idx = 1
        s = 0
        while idx <= stor23:
            mem[0] = idx
            mem[32] = 22
            if not stor22[idx].field_1024:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 22
            _280 = mem[64]
            mem[64] = mem[64] + 256
            mem[_280] = stor22[idx].field_0
            if stor22[idx].field_256:
                if stor22[idx].field_256 == uint255(stor22[idx].field_256) * 0.5 < 32:
                    revert with 0, 34
                _299 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor22[idx].field_256) * 0.5) + 32
                mem[_299] = uint255(stor22[idx].field_256) * 0.5
                if stor22[idx].field_256:
                    if stor22[idx].field_256 == uint255(stor22[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor22[idx].field_256):
                        if 31 >= uint255(stor22[idx].field_256) * 0.5:
                            mem[_299 + 32] = 256 * stor22[idx].field_264
                        else:
                            mem[0] = sha3(idx, 22) + 1
                            mem[_299 + 32] = stor22[idx][1].field_0
                            t = _299 + 32
                            u = sha3(sha3(idx, 22) + 1)
                            while _299 + (uint255(stor22[idx].field_256) * 0.5) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                else:
                    if stor22[idx].field_256 == stor22[idx].field_257 < 32:
                        revert with 0, 34
                    if stor22[idx].field_257:
                        if 31 >= stor22[idx].field_257:
                            mem[_299 + 32] = 256 * stor22[idx].field_264
                        else:
                            mem[0] = sha3(idx, 22) + 1
                            mem[_299 + 32] = stor22[idx][1].field_0
                            t = _299 + 32
                            u = sha3(sha3(idx, 22) + 1)
                            while _299 + stor22[idx].field_257 > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                mem[_280 + 32] = _299
            else:
                if stor22[idx].field_256 == stor22[idx].field_257 < 32:
                    revert with 0, 34
                _300 = mem[64]
                mem[64] = mem[64] + ceil32(stor22[idx].field_257) + 32
                mem[_300] = stor22[idx].field_257
                if stor22[idx].field_256:
                    if stor22[idx].field_256 == uint255(stor22[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor22[idx].field_256):
                        if 31 >= uint255(stor22[idx].field_256) * 0.5:
                            mem[_300 + 32] = 256 * stor22[idx].field_264
                        else:
                            mem[0] = sha3(idx, 22) + 1
                            mem[_300 + 32] = stor22[idx][1].field_0
                            t = _300 + 32
                            u = sha3(sha3(idx, 22) + 1)
                            while _300 + (uint255(stor22[idx].field_256) * 0.5) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                else:
                    if stor22[idx].field_256 == stor22[idx].field_257 < 32:
                        revert with 0, 34
                    if stor22[idx].field_257:
                        if 31 >= stor22[idx].field_257:
                            mem[_300 + 32] = 256 * stor22[idx].field_264
                        else:
                            mem[0] = sha3(idx, 22) + 1
                            mem[_300 + 32] = stor22[idx][1].field_0
                            t = _300 + 32
                            u = sha3(sha3(idx, 22) + 1)
                            while _300 + stor22[idx].field_257 > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                mem[_280 + 32] = _300
            mem[_280 + 64] = stor22[idx].field_512
            mem[_280 + 96] = stor22[idx].field_768
            mem[_280 + 128] = bool(stor22[idx].field_1024)
            mem[_280 + 160] = bool(stor22[idx].field_1032)
            mem[_280 + 192] = bool(stor22[idx].field_1040)
            mem[_280 + 224] = stor22[idx].field_1280
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _280
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _278 = mem[64]
        mem[mem[64]] = 32
        _281 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _281:
            mem[u] = t + -_278 - 64
            _330 = mem[s]
            mem[t] = mem[mem[s]]
            _332 = mem[_330 + 32]
            mem[t + 32] = 256
            _334 = mem[_332]
            mem[t + 256] = mem[_332]
            v = 0
            while v < _334:
                mem[v + t + 288] = mem[v + _332 + 32]
                v = v + 32
                continue 
            if ceil32(_334) > _334:
                mem[_334 + t + 288] = 0
            mem[t + 64] = mem[_330 + 76 len 20]
            mem[t + 96] = mem[_330 + 96]
            mem[t + 128] = bool(mem[_330 + 128])
            mem[t + 160] = bool(mem[_330 + 160])
            mem[t + 192] = bool(mem[_330 + 192])
            mem[t + 224] = mem[_330 + 224]
            idx = idx + 1
            s = s + 32
            t = ceil32(_334) + t + 288
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_67f33f40(?) {
    idx = 0
    s = 0
    while idx < stor8:
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 19
        if dragonInfo[idx + 1].field_2816 != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[96] = s
    mem[64] = (32 * s) + 128
    if not s:
        idx = 0
        s = 0
        while idx < stor8:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 19
            if dragonInfo[idx + 1].field_2816 != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 19
            _161 = mem[64]
            mem[64] = mem[64] + 512
            mem[_161] = dragonInfo[idx + 1].field_0
            mem[_161 + 32] = dragonInfo[idx + 1].field_256
            mem[_161 + 64] = dragonInfo[idx + 1].field_512
            mem[_161 + 96] = dragonInfo[idx + 1].field_768
            mem[_161 + 128] = dragonInfo[idx + 1].field_1024
            mem[_161 + 160] = dragonInfo[idx + 1].field_1280
            mem[_161 + 192] = dragonInfo[idx + 1].field_1536
            mem[_161 + 224] = dragonInfo[idx + 1].field_1792
            mem[_161 + 256] = dragonInfo[idx + 1].field_2048
            mem[_161 + 288] = dragonInfo[idx + 1].field_2304
            mem[_161 + 320] = dragonInfo[idx + 1].field_2560
            mem[_161 + 352] = dragonInfo[idx + 1].field_2816
            mem[_161 + 384] = bool(dragonInfo[idx + 1].field_2976)
            mem[_161 + 416] = dragonInfo[idx + 1].field_3072
            if dragonInfo[idx + 1].field_3328:
                if dragonInfo[idx + 1].field_3328 == uint255(dragonInfo[idx + 1].field_3328) * 0.5 < 32:
                    revert with 0, 34
                _172 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(dragonInfo[idx + 1].field_3328) * 0.5) + 32
                mem[_172] = uint255(dragonInfo[idx + 1].field_3328) * 0.5
                if dragonInfo[idx + 1].field_3328:
                    if dragonInfo[idx + 1].field_3328 == uint255(dragonInfo[idx + 1].field_3328) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, dragonInfo[idx + 1].field_3328):
                        if 31 >= uint255(dragonInfo[idx + 1].field_3328) * 0.5:
                            mem[_172 + 32] = 256 * dragonInfo[idx + 1].field_3336
                        else:
                            mem[0] = sha3(idx + 1, 19) + 13
                            mem[_172 + 32] = dragonInfo[idx + 1][13].field_0
                            t = _172 + 32
                            u = sha3(sha3(idx + 1, 19) + 13)
                            while _172 + (uint255(dragonInfo[idx + 1].field_3328) * 0.5) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                else:
                    if dragonInfo[idx + 1].field_3328 == dragonInfo[idx + 1].field_3329 < 32:
                        revert with 0, 34
                    if dragonInfo[idx + 1].field_3329:
                        if 31 >= dragonInfo[idx + 1].field_3329:
                            mem[_172 + 32] = 256 * dragonInfo[idx + 1].field_3336
                        else:
                            mem[0] = sha3(idx + 1, 19) + 13
                            mem[_172 + 32] = dragonInfo[idx + 1][13].field_0
                            t = _172 + 32
                            u = sha3(sha3(idx + 1, 19) + 13)
                            while _172 + dragonInfo[idx + 1].field_3329 > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                mem[_161 + 448] = _172
            else:
                if dragonInfo[idx + 1].field_3328 == dragonInfo[idx + 1].field_3329 < 32:
                    revert with 0, 34
                _181 = mem[64]
                mem[64] = mem[64] + ceil32(dragonInfo[idx + 1].field_3329) + 32
                mem[_181] = dragonInfo[idx + 1].field_3329
                if dragonInfo[idx + 1].field_3328:
                    if dragonInfo[idx + 1].field_3328 == uint255(dragonInfo[idx + 1].field_3328) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, dragonInfo[idx + 1].field_3328):
                        if 31 >= uint255(dragonInfo[idx + 1].field_3328) * 0.5:
                            mem[_181 + 32] = 256 * dragonInfo[idx + 1].field_3336
                        else:
                            mem[0] = sha3(idx + 1, 19) + 13
                            mem[_181 + 32] = dragonInfo[idx + 1][13].field_0
                            t = _181 + 32
                            u = sha3(sha3(idx + 1, 19) + 13)
                            while _181 + (uint255(dragonInfo[idx + 1].field_3328) * 0.5) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                else:
                    if dragonInfo[idx + 1].field_3328 == dragonInfo[idx + 1].field_3329 < 32:
                        revert with 0, 34
                    if dragonInfo[idx + 1].field_3329:
                        if 31 >= dragonInfo[idx + 1].field_3329:
                            mem[_181 + 32] = 256 * dragonInfo[idx + 1].field_3336
                        else:
                            mem[0] = sha3(idx + 1, 19) + 13
                            mem[_181 + 32] = dragonInfo[idx + 1][13].field_0
                            t = _181 + 32
                            u = sha3(sha3(idx + 1, 19) + 13)
                            while _181 + dragonInfo[idx + 1].field_3329 > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                mem[_161 + 448] = _181
            mem[_161 + 480] = dragonInfo[idx + 1].field_3584
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _161
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _139 = mem[64]
        mem[mem[64]] = 32
        _140 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _140:
            mem[t] = u + -_139 - 64
            _228 = mem[s]
            mem[u] = mem[mem[s]]
            mem[u + 32] = mem[_228 + 32]
            mem[u + 64] = mem[_228 + 64]
            mem[u + 96] = mem[_228 + 127 len 1]
            mem[u + 128] = mem[_228 + 128]
            mem[u + 160] = mem[_228 + 160]
            mem[u + 192] = mem[_228 + 192]
            mem[u + 224] = mem[_228 + 224]
            mem[u + 256] = mem[_228 + 256]
            mem[u + 288] = mem[_228 + 288]
            mem[u + 320] = mem[_228 + 320]
            mem[u + 352] = mem[_228 + 364 len 20]
            mem[u + 384] = bool(mem[_228 + 384])
            mem[u + 416] = mem[_228 + 416]
            _248 = mem[_228 + 448]
            mem[u + 448] = 512
            _249 = mem[_248]
            mem[u + 512] = mem[_248]
            v = 0
            while v < _249:
                mem[v + u + 544] = mem[v + _248 + 32]
                v = v + 32
                continue 
            if ceil32(_249) > _249:
                mem[_249 + u + 544] = 0
            mem[u + 480] = mem[_228 + 480]
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_249) + u + 544
            continue 
    else:
        mem[64] = (32 * s) + 640
        mem[(32 * s) + 128] = 0
        mem[(32 * s) + 160] = 0
        mem[(32 * s) + 192] = 0
        mem[(32 * s) + 224] = 0
        mem[(32 * s) + 256] = 0
        mem[(32 * s) + 288] = 0
        mem[(32 * s) + 320] = 0
        mem[(32 * s) + 352] = 0
        mem[(32 * s) + 384] = 0
        mem[(32 * s) + 416] = 0
        mem[(32 * s) + 448] = 0
        mem[(32 * s) + 480] = 0
        mem[(32 * s) + 512] = 0
        mem[(32 * s) + 544] = 0
        mem[(32 * s) + 576] = 96
        mem[(32 * s) + 608] = 0
        mem[var12001] = (32 * s) + 128
        t = var12001
        idx = var12002
        while idx - 1:
            mem[64] = mem[64] + 512
            mem[(32 * s) + 128] = 0
            mem[(32 * s) + 160] = 0
            mem[(32 * s) + 192] = 0
            mem[(32 * s) + 224] = 0
            mem[(32 * s) + 256] = 0
            mem[(32 * s) + 288] = 0
            mem[(32 * s) + 320] = 0
            mem[(32 * s) + 352] = 0
            mem[(32 * s) + 384] = 0
            mem[(32 * s) + 416] = 0
            mem[(32 * s) + 448] = 0
            mem[(32 * s) + 480] = 0
            mem[(32 * s) + 512] = 0
            mem[(32 * s) + 544] = 0
            mem[(32 * s) + 576] = 96
            mem[(32 * s) + 608] = 0
            mem[t + 32] = (32 * s) + 128
            t = t + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0
        while idx < stor8:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 19
            if dragonInfo[idx + 1].field_2816 != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 19
            _321 = mem[64]
            mem[64] = mem[64] + 512
            mem[_321] = dragonInfo[idx + 1].field_0
            mem[_321 + 32] = dragonInfo[idx + 1].field_256
            mem[_321 + 64] = dragonInfo[idx + 1].field_512
            mem[_321 + 96] = dragonInfo[idx + 1].field_768
            mem[_321 + 128] = dragonInfo[idx + 1].field_1024
            mem[_321 + 160] = dragonInfo[idx + 1].field_1280
            mem[_321 + 192] = dragonInfo[idx + 1].field_1536
            mem[_321 + 224] = dragonInfo[idx + 1].field_1792
            mem[_321 + 256] = dragonInfo[idx + 1].field_2048
            mem[_321 + 288] = dragonInfo[idx + 1].field_2304
            mem[_321 + 320] = dragonInfo[idx + 1].field_2560
            mem[_321 + 352] = dragonInfo[idx + 1].field_2816
            mem[_321 + 384] = bool(dragonInfo[idx + 1].field_2976)
            mem[_321 + 416] = dragonInfo[idx + 1].field_3072
            if dragonInfo[idx + 1].field_3328:
                if dragonInfo[idx + 1].field_3328 == uint255(dragonInfo[idx + 1].field_3328) * 0.5 < 32:
                    revert with 0, 34
                _324 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(dragonInfo[idx + 1].field_3328) * 0.5) + 32
                mem[_324] = uint255(dragonInfo[idx + 1].field_3328) * 0.5
                if dragonInfo[idx + 1].field_3328:
                    if dragonInfo[idx + 1].field_3328 == uint255(dragonInfo[idx + 1].field_3328) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, dragonInfo[idx + 1].field_3328):
                        if 31 >= uint255(dragonInfo[idx + 1].field_3328) * 0.5:
                            mem[_324 + 32] = 256 * dragonInfo[idx + 1].field_3336
                        else:
                            mem[0] = sha3(idx + 1, 19) + 13
                            mem[_324 + 32] = dragonInfo[idx + 1][13].field_0
                            t = _324 + 32
                            u = sha3(sha3(idx + 1, 19) + 13)
                            while _324 + (uint255(dragonInfo[idx + 1].field_3328) * 0.5) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                else:
                    if dragonInfo[idx + 1].field_3328 == dragonInfo[idx + 1].field_3329 < 32:
                        revert with 0, 34
                    if dragonInfo[idx + 1].field_3329:
                        if 31 >= dragonInfo[idx + 1].field_3329:
                            mem[_324 + 32] = 256 * dragonInfo[idx + 1].field_3336
                        else:
                            mem[0] = sha3(idx + 1, 19) + 13
                            mem[_324 + 32] = dragonInfo[idx + 1][13].field_0
                            t = _324 + 32
                            u = sha3(sha3(idx + 1, 19) + 13)
                            while _324 + dragonInfo[idx + 1].field_3329 > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                mem[_321 + 448] = _324
            else:
                if dragonInfo[idx + 1].field_3328 == dragonInfo[idx + 1].field_3329 < 32:
                    revert with 0, 34
                _325 = mem[64]
                mem[64] = mem[64] + ceil32(dragonInfo[idx + 1].field_3329) + 32
                mem[_325] = dragonInfo[idx + 1].field_3329
                if dragonInfo[idx + 1].field_3328:
                    if dragonInfo[idx + 1].field_3328 == uint255(dragonInfo[idx + 1].field_3328) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, dragonInfo[idx + 1].field_3328):
                        if 31 >= uint255(dragonInfo[idx + 1].field_3328) * 0.5:
                            mem[_325 + 32] = 256 * dragonInfo[idx + 1].field_3336
                        else:
                            mem[0] = sha3(idx + 1, 19) + 13
                            mem[_325 + 32] = dragonInfo[idx + 1][13].field_0
                            t = _325 + 32
                            u = sha3(sha3(idx + 1, 19) + 13)
                            while _325 + (uint255(dragonInfo[idx + 1].field_3328) * 0.5) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                else:
                    if dragonInfo[idx + 1].field_3328 == dragonInfo[idx + 1].field_3329 < 32:
                        revert with 0, 34
                    if dragonInfo[idx + 1].field_3329:
                        if 31 >= dragonInfo[idx + 1].field_3329:
                            mem[_325 + 32] = 256 * dragonInfo[idx + 1].field_3336
                        else:
                            mem[0] = sha3(idx + 1, 19) + 13
                            mem[_325 + 32] = dragonInfo[idx + 1][13].field_0
                            t = _325 + 32
                            u = sha3(sha3(idx + 1, 19) + 13)
                            while _325 + dragonInfo[idx + 1].field_3329 > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                mem[_321 + 448] = _325
            mem[_321 + 480] = dragonInfo[idx + 1].field_3584
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _321
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _298 = mem[64]
        mem[mem[64]] = 32
        _299 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _299:
            mem[t] = u + -_298 - 64
            _344 = mem[s]
            mem[u] = mem[mem[s]]
            mem[u + 32] = mem[_344 + 32]
            mem[u + 64] = mem[_344 + 64]
            mem[u + 96] = mem[_344 + 127 len 1]
            mem[u + 128] = mem[_344 + 128]
            mem[u + 160] = mem[_344 + 160]
            mem[u + 192] = mem[_344 + 192]
            mem[u + 224] = mem[_344 + 224]
            mem[u + 256] = mem[_344 + 256]
            mem[u + 288] = mem[_344 + 288]
            mem[u + 320] = mem[_344 + 320]
            mem[u + 352] = mem[_344 + 364 len 20]
            mem[u + 384] = bool(mem[_344 + 384])
            mem[u + 416] = mem[_344 + 416]
            _364 = mem[_344 + 448]
            mem[u + 448] = 512
            _365 = mem[_364]
            mem[u + 512] = mem[_364]
            v = 0
            while v < _365:
                mem[v + u + 544] = mem[v + _364 + 32]
                v = v + 32
                continue 
            if ceil32(_365) > _365:
                mem[_365 + u + 544] = 0
            mem[u + 480] = mem[_344 + 480]
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_365) + u + 544
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_472d4583(?) {
    require calldata.size - 4 >= 384
    require arg11 == uint8(arg11)
    require arg12 == address(arg12)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not dragonInfo[arg1].field_2976:
        revert with 0, 'Dragon is not exists'
    if arg3 < 1:
        if dragonInfo[arg1].field_3328:
            if dragonInfo[arg1].field_3328 == uint255(dragonInfo[arg1].field_3328) * 0.5 < 32:
                revert with 0, 34
            dragonInfo[arg1].field_3328 = 0
            dragonInfo[arg1].field_3329 = 6
            dragonInfo[arg1].field_3536 = 80626724456263
            idx = 0
            while (uint255(dragonInfo[arg1].field_3328) * 0.5) + 31 / 32 > idx:
                dragonInfo[arg1][idx + 13].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if dragonInfo[arg1].field_3328 == dragonInfo[arg1].field_3329 < 32:
                revert with 0, 34
            dragonInfo[arg1].field_3328 = 0
            dragonInfo[arg1].field_3329 = 6
            dragonInfo[arg1].field_3536 = 80626724456263
            idx = 0
            while dragonInfo[arg1].field_3329 + 31 / 32 > idx:
                dragonInfo[arg1][idx + 13].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if arg3 > 5:
            if dragonInfo[arg1].field_3328:
                if dragonInfo[arg1].field_3328 == uint255(dragonInfo[arg1].field_3328) * 0.5 < 32:
                    revert with 0, 34
                dragonInfo[arg1].field_3328 = 0
                dragonInfo[arg1].field_3329 = 6
                dragonInfo[arg1].field_3536 = 80626724456263
                idx = 0
                while (uint255(dragonInfo[arg1].field_3328) * 0.5) + 31 / 32 > idx:
                    dragonInfo[arg1][idx + 13].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if dragonInfo[arg1].field_3328 == dragonInfo[arg1].field_3329 < 32:
                    revert with 0, 34
                dragonInfo[arg1].field_3328 = 0
                dragonInfo[arg1].field_3329 = 6
                dragonInfo[arg1].field_3536 = 80626724456263
                idx = 0
                while dragonInfo[arg1].field_3329 + 31 / 32 > idx:
                    dragonInfo[arg1][idx + 13].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if not stor20[arg3].field_0:
                if stor20[arg3].field_0 == stor20[arg3].field_1 < 32:
                    revert with 0, 34
                if stor20[arg3].field_0:
                    if stor20[arg3].field_0 == uint255(stor20[arg3].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor20[arg3].field_0):
                        if 31 >= uint255(stor20[arg3].field_0) * 0.5:
                            mem[192] = 256 * stor20[arg3].field_8
                        else:
                            mem[192] = stor20[arg3].field_0
                            idx = 192
                            s = 0
                            while (uint255(stor20[arg3].field_0) * 0.5) + 160 > idx:
                                mem[idx + 32] = stor20[arg3][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if stor20[arg3].field_0 == stor20[arg3].field_1 < 32:
                        revert with 0, 34
                    if stor20[arg3].field_1:
                        if 31 >= stor20[arg3].field_1:
                            mem[192] = 256 * stor20[arg3].field_8
                        else:
                            mem[192] = stor20[arg3].field_0
                            idx = 192
                            s = 0
                            while stor20[arg3].field_1 + 160 > idx:
                                mem[idx + 32] = stor20[arg3][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                if dragonInfo[arg1].field_3328:
                    if dragonInfo[arg1].field_3328 == uint255(dragonInfo[arg1].field_3328) * 0.5 < 32:
                        revert with 0, 34
                    if stor20[arg3].field_1:
                        dragonInfo[arg1][13][].field_0 = Array(len=stor20[arg3].field_1, data=mem[192 len stor20[arg3].field_1])
                    else:
                        dragonInfo[arg1].field_3328 = 0
                        idx = 0
                        while (uint255(dragonInfo[arg1].field_3328) * 0.5) + 31 / 32 > idx:
                            dragonInfo[arg1][idx + 13].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if dragonInfo[arg1].field_3328 == dragonInfo[arg1].field_3329 < 32:
                        revert with 0, 34
                    if stor20[arg3].field_1:
                        dragonInfo[arg1][13][].field_0 = Array(len=stor20[arg3].field_1, data=mem[192 len stor20[arg3].field_1])
                    else:
                        dragonInfo[arg1].field_3328 = 0
                        idx = 0
                        while dragonInfo[arg1].field_3329 + 31 / 32 > idx:
                            dragonInfo[arg1][idx + 13].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                if stor20[arg3].field_0 == uint255(stor20[arg3].field_0) * 0.5 < 32:
                    revert with 0, 34
                if stor20[arg3].field_0:
                    if stor20[arg3].field_0 == uint255(stor20[arg3].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor20[arg3].field_0):
                        if dragonInfo[arg1].field_3328:
                            if dragonInfo[arg1].field_3328 == uint255(dragonInfo[arg1].field_3328) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor20[arg3].field_0) * 0.5:
                                dragonInfo[arg1].field_3328 = 0
                                idx = 0
                                while (uint255(dragonInfo[arg1].field_3328) * 0.5) + 31 / 32 > idx:
                                    dragonInfo[arg1][idx + 13].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor20[arg3].field_0) * 0.5:
                                    dragonInfo[arg1].field_3328 = Mask(254, 1, stor20[arg3].field_0) + 1
                                    if not Mask(256, -1, stor20[arg3].field_0):
                                        idx = 0
                                        while (uint255(dragonInfo[arg1].field_3328) * 0.5) + 31 / 32 > idx:
                                            dragonInfo[arg1][idx + 13].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 192
                                        while (uint255(stor20[arg3].field_0) * 0.5) + 192 > idx:
                                            dragonInfo[arg1][s + 13].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor20[arg3].field_0) * 0.5) + 31) >> 5
                                        while (uint255(dragonInfo[arg1].field_3328) * 0.5) + 31 / 32 > idx:
                                            dragonInfo[arg1][idx + 13].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    dragonInfo[arg1].field_3328 = 0
                                    dragonInfo[arg1].field_3329 = stor20[arg3].field_1
                                    dragonInfo[arg1].field_3336 = mem[192 len 31]
                                    idx = 0
                                    while (uint255(dragonInfo[arg1].field_3328) * 0.5) + 31 / 32 > idx:
                                        dragonInfo[arg1][idx + 13].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if dragonInfo[arg1].field_3328 == dragonInfo[arg1].field_3329 < 32:
                                revert with 0, 34
                            if not uint255(stor20[arg3].field_0) * 0.5:
                                dragonInfo[arg1].field_3328 = 0
                                idx = 0
                                while dragonInfo[arg1].field_3329 + 31 / 32 > idx:
                                    dragonInfo[arg1][idx + 13].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor20[arg3].field_0) * 0.5:
                                    dragonInfo[arg1].field_3328 = Mask(254, 1, stor20[arg3].field_0) + 1
                                    if not Mask(256, -1, stor20[arg3].field_0):
                                        idx = 0
                                        while dragonInfo[arg1].field_3329 + 31 / 32 > idx:
                                            dragonInfo[arg1][idx + 13].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 192
                                        while (uint255(stor20[arg3].field_0) * 0.5) + 192 > idx:
                                            dragonInfo[arg1][s + 13].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor20[arg3].field_0) * 0.5) + 31) >> 5
                                        while dragonInfo[arg1].field_3329 + 31 / 32 > idx:
                                            dragonInfo[arg1][idx + 13].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    dragonInfo[arg1].field_3328 = 0
                                    dragonInfo[arg1].field_3329 = stor20[arg3].field_1
                                    dragonInfo[arg1].field_3336 = mem[192 len 31]
                                    idx = 0
                                    while dragonInfo[arg1].field_3329 + 31 / 32 > idx:
                                        dragonInfo[arg1][idx + 13].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        if 31 >= uint255(stor20[arg3].field_0) * 0.5:
                            mem[192] = 256 * stor20[arg3].field_8
                            if dragonInfo[arg1].field_3328:
                                if dragonInfo[arg1].field_3328 == uint255(dragonInfo[arg1].field_3328) * 0.5 < 32:
                                    revert with 0, 34
                                if not uint255(stor20[arg3].field_0) * 0.5:
                                    dragonInfo[arg1].field_3328 = 0
                                    idx = 0
                                    while (uint255(dragonInfo[arg1].field_3328) * 0.5) + 31 / 32 > idx:
                                        dragonInfo[arg1][idx + 13].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor20[arg3].field_0) * 0.5:
                                        dragonInfo[arg1].field_3328 = Mask(254, 1, stor20[arg3].field_0) + 1
                                        if not Mask(256, -1, stor20[arg3].field_0):
                                            idx = 0
                                            while (uint255(dragonInfo[arg1].field_3328) * 0.5) + 31 / 32 > idx:
                                                dragonInfo[arg1][idx + 13].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = 192
                                            while (uint255(stor20[arg3].field_0) * 0.5) + 192 > idx:
                                                dragonInfo[arg1][s + 13].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor20[arg3].field_0) * 0.5) + 31) >> 5
                                            while (uint255(dragonInfo[arg1].field_3328) * 0.5) + 31 / 32 > idx:
                                                dragonInfo[arg1][idx + 13].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        dragonInfo[arg1].field_3328 = 0
                                        dragonInfo[arg1].field_3329 = stor20[arg3].field_1
                                        dragonInfo[arg1].field_3336 = stor20[arg3].field_8
                                        idx = 0
                                        while (uint255(dragonInfo[arg1].field_3328) * 0.5) + 31 / 32 > idx:
                                            dragonInfo[arg1][idx + 13].field_0 = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                if dragonInfo[arg1].field_3328 == dragonInfo[arg1].field_3329 < 32:
                                    revert with 0, 34
                                if not uint255(stor20[arg3].field_0) * 0.5:
                                    dragonInfo[arg1].field_3328 = 0
                                    idx = 0
                                    while dragonInfo[arg1].field_3329 + 31 / 32 > idx:
                                        dragonInfo[arg1][idx + 13].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor20[arg3].field_0) * 0.5:
                                        dragonInfo[arg1].field_3328 = Mask(254, 1, stor20[arg3].field_0) + 1
                                        if not Mask(256, -1, stor20[arg3].field_0):
                                            idx = 0
                                            while dragonInfo[arg1].field_3329 + 31 / 32 > idx:
                                                dragonInfo[arg1][idx + 13].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = 192
                                            while (uint255(stor20[arg3].field_0) * 0.5) + 192 > idx:
                                                dragonInfo[arg1][s + 13].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor20[arg3].field_0) * 0.5) + 31) >> 5
                                            while dragonInfo[arg1].field_3329 + 31 / 32 > idx:
                                                dragonInfo[arg1][idx + 13].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        dragonInfo[arg1].field_3328 = 0
                                        dragonInfo[arg1].field_3329 = stor20[arg3].field_1
                                        dragonInfo[arg1].field_3336 = stor20[arg3].field_8
                                        idx = 0
                                        while dragonInfo[arg1].field_3329 + 31 / 32 > idx:
                                            dragonInfo[arg1][idx + 13].field_0 = 0
                                            idx = idx + 1
                                            continue 
                        else:
                            mem[192] = stor20[arg3].field_0
                            idx = 192
                            s = 0
                            while (uint255(stor20[arg3].field_0) * 0.5) + 160 > idx:
                                mem[idx + 32] = stor20[arg3][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if dragonInfo[arg1].field_3328:
                                if dragonInfo[arg1].field_3328 == uint255(dragonInfo[arg1].field_3328) * 0.5 < 32:
                                    revert with 0, 34
                                if not uint255(stor20[arg3].field_0) * 0.5:
                                    dragonInfo[arg1].field_3328 = 0
                                    idx = 0
                                    while (uint255(dragonInfo[arg1].field_3328) * 0.5) + 31 / 32 > idx:
                                        dragonInfo[arg1][idx + 13].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor20[arg3].field_0) * 0.5:
                                        dragonInfo[arg1].field_3328 = Mask(254, 1, stor20[arg3].field_0) + 1
                                        if not Mask(256, -1, stor20[arg3].field_0):
                                            idx = 0
                                            while (uint255(dragonInfo[arg1].field_3328) * 0.5) + 31 / 32 > idx:
                                                dragonInfo[arg1][idx + 13].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = 192
                                            while (uint255(stor20[arg3].field_0) * 0.5) + 192 > idx:
                                                dragonInfo[arg1][s + 13].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor20[arg3].field_0) * 0.5) + 31) >> 5
                                            while (uint255(dragonInfo[arg1].field_3328) * 0.5) + 31 / 32 > idx:
                                                dragonInfo[arg1][idx + 13].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        dragonInfo[arg1].field_3328 = 0
                                        dragonInfo[arg1].field_3329 = stor20[arg3].field_1
                                        dragonInfo[arg1].field_3336 = mem[192 len 31]
                                        idx = 0
                                        while (uint255(dragonInfo[arg1].field_3328) * 0.5) + 31 / 32 > idx:
                                            dragonInfo[arg1][idx + 13].field_0 = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                if dragonInfo[arg1].field_3328 == dragonInfo[arg1].field_3329 < 32:
                                    revert with 0, 34
                                if not uint255(stor20[arg3].field_0) * 0.5:
                                    dragonInfo[arg1].field_3328 = 0
                                    idx = 0
                                    while dragonInfo[arg1].field_3329 + 31 / 32 > idx:
                                        dragonInfo[arg1][idx + 13].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor20[arg3].field_0) * 0.5:
                                        dragonInfo[arg1].field_3328 = Mask(254, 1, stor20[arg3].field_0) + 1
                                        if not Mask(256, -1, stor20[arg3].field_0):
                                            idx = 0
                                            while dragonInfo[arg1].field_3329 + 31 / 32 > idx:
                                                dragonInfo[arg1][idx + 13].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = 192
                                            while (uint255(stor20[arg3].field_0) * 0.5) + 192 > idx:
                                                dragonInfo[arg1][s + 13].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor20[arg3].field_0) * 0.5) + 31) >> 5
                                            while dragonInfo[arg1].field_3329 + 31 / 32 > idx:
                                                dragonInfo[arg1][idx + 13].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        dragonInfo[arg1].field_3328 = 0
                                        dragonInfo[arg1].field_3329 = stor20[arg3].field_1
                                        dragonInfo[arg1].field_3336 = mem[192 len 31]
                                        idx = 0
                                        while dragonInfo[arg1].field_3329 + 31 / 32 > idx:
                                            dragonInfo[arg1][idx + 13].field_0 = 0
                                            idx = idx + 1
                                            continue 
                else:
                    if stor20[arg3].field_0 == stor20[arg3].field_1 < 32:
                        revert with 0, 34
                    if not stor20[arg3].field_1:
                        if dragonInfo[arg1].field_3328:
                            if dragonInfo[arg1].field_3328 == uint255(dragonInfo[arg1].field_3328) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor20[arg3].field_0) * 0.5:
                                dragonInfo[arg1].field_3328 = 0
                                idx = 0
                                while (uint255(dragonInfo[arg1].field_3328) * 0.5) + 31 / 32 > idx:
                                    dragonInfo[arg1][idx + 13].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor20[arg3].field_0) * 0.5:
                                    dragonInfo[arg1].field_3328 = Mask(254, 1, stor20[arg3].field_0) + 1
                                    if not Mask(256, -1, stor20[arg3].field_0):
                                        idx = 0
                                        while (uint255(dragonInfo[arg1].field_3328) * 0.5) + 31 / 32 > idx:
                                            dragonInfo[arg1][idx + 13].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 192
                                        while (uint255(stor20[arg3].field_0) * 0.5) + 192 > idx:
                                            dragonInfo[arg1][s + 13].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor20[arg3].field_0) * 0.5) + 31) >> 5
                                        while (uint255(dragonInfo[arg1].field_3328) * 0.5) + 31 / 32 > idx:
                                            dragonInfo[arg1][idx + 13].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    dragonInfo[arg1].field_3328 = 0
                                    dragonInfo[arg1].field_3329 = stor20[arg3].field_1
                                    dragonInfo[arg1].field_3336 = mem[192 len 31]
                                    idx = 0
                                    while (uint255(dragonInfo[arg1].field_3328) * 0.5) + 31 / 32 > idx:
                                        dragonInfo[arg1][idx + 13].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if dragonInfo[arg1].field_3328 == dragonInfo[arg1].field_3329 < 32:
                                revert with 0, 34
                            if not uint255(stor20[arg3].field_0) * 0.5:
                                dragonInfo[arg1].field_3328 = 0
                                idx = 0
                                while dragonInfo[arg1].field_3329 + 31 / 32 > idx:
                                    dragonInfo[arg1][idx + 13].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor20[arg3].field_0) * 0.5:
                                    dragonInfo[arg1].field_3328 = Mask(254, 1, stor20[arg3].field_0) + 1
                                    if not Mask(256, -1, stor20[arg3].field_0):
                                        idx = 0
                                        while dragonInfo[arg1].field_3329 + 31 / 32 > idx:
                                            dragonInfo[arg1][idx + 13].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 192
                                        while (uint255(stor20[arg3].field_0) * 0.5) + 192 > idx:
                                            dragonInfo[arg1][s + 13].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor20[arg3].field_0) * 0.5) + 31) >> 5
                                        while dragonInfo[arg1].field_3329 + 31 / 32 > idx:
                                            dragonInfo[arg1][idx + 13].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    dragonInfo[arg1].field_3328 = 0
                                    dragonInfo[arg1].field_3329 = stor20[arg3].field_1
                                    dragonInfo[arg1].field_3336 = mem[192 len 31]
                                    idx = 0
                                    while dragonInfo[arg1].field_3329 + 31 / 32 > idx:
                                        dragonInfo[arg1][idx + 13].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        if 31 >= stor20[arg3].field_1:
                            mem[192] = 256 * stor20[arg3].field_8
                            if dragonInfo[arg1].field_3328:
                                if dragonInfo[arg1].field_3328 == uint255(dragonInfo[arg1].field_3328) * 0.5 < 32:
                                    revert with 0, 34
                                if not uint255(stor20[arg3].field_0) * 0.5:
                                    dragonInfo[arg1].field_3328 = 0
                                    idx = 0
                                    while (uint255(dragonInfo[arg1].field_3328) * 0.5) + 31 / 32 > idx:
                                        dragonInfo[arg1][idx + 13].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor20[arg3].field_0) * 0.5:
                                        dragonInfo[arg1].field_3328 = Mask(254, 1, stor20[arg3].field_0) + 1
                                        if not Mask(256, -1, stor20[arg3].field_0):
                                            idx = 0
                                            while (uint255(dragonInfo[arg1].field_3328) * 0.5) + 31 / 32 > idx:
                                                dragonInfo[arg1][idx + 13].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = 192
                                            while (uint255(stor20[arg3].field_0) * 0.5) + 192 > idx:
                                                dragonInfo[arg1][s + 13].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor20[arg3].field_0) * 0.5) + 31) >> 5
                                            while (uint255(dragonInfo[arg1].field_3328) * 0.5) + 31 / 32 > idx:
                                                dragonInfo[arg1][idx + 13].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        dragonInfo[arg1].field_3328 = 0
                                        dragonInfo[arg1].field_3329 = stor20[arg3].field_1
                                        dragonInfo[arg1].field_3336 = stor20[arg3].field_8
                                        idx = 0
                                        while (uint255(dragonInfo[arg1].field_3328) * 0.5) + 31 / 32 > idx:
                                            dragonInfo[arg1][idx + 13].field_0 = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                if dragonInfo[arg1].field_3328 == dragonInfo[arg1].field_3329 < 32:
                                    revert with 0, 34
                                if not uint255(stor20[arg3].field_0) * 0.5:
                                    dragonInfo[arg1].field_3328 = 0
                                    idx = 0
                                    while dragonInfo[arg1].field_3329 + 31 / 32 > idx:
                                        dragonInfo[arg1][idx + 13].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor20[arg3].field_0) * 0.5:
                                        dragonInfo[arg1].field_3328 = Mask(254, 1, stor20[arg3].field_0) + 1
                                        if not Mask(256, -1, stor20[arg3].field_0):
                                            idx = 0
                                            while dragonInfo[arg1].field_3329 + 31 / 32 > idx:
                                                dragonInfo[arg1][idx + 13].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = 192
                                            while (uint255(stor20[arg3].field_0) * 0.5) + 192 > idx:
                                                dragonInfo[arg1][s + 13].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor20[arg3].field_0) * 0.5) + 31) >> 5
                                            while dragonInfo[arg1].field_3329 + 31 / 32 > idx:
                                                dragonInfo[arg1][idx + 13].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        dragonInfo[arg1].field_3328 = 0
                                        dragonInfo[arg1].field_3329 = stor20[arg3].field_1
                                        dragonInfo[arg1].field_3336 = stor20[arg3].field_8
                                        idx = 0
                                        while dragonInfo[arg1].field_3329 + 31 / 32 > idx:
                                            dragonInfo[arg1][idx + 13].field_0 = 0
                                            idx = idx + 1
                                            continue 
                        else:
                            mem[192] = stor20[arg3].field_0
                            idx = 192
                            s = 0
                            while stor20[arg3].field_1 + 160 > idx:
                                mem[idx + 32] = stor20[arg3][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if dragonInfo[arg1].field_3328:
                                if dragonInfo[arg1].field_3328 == uint255(dragonInfo[arg1].field_3328) * 0.5 < 32:
                                    revert with 0, 34
                                if not uint255(stor20[arg3].field_0) * 0.5:
                                    dragonInfo[arg1].field_3328 = 0
                                    idx = 0
                                    while (uint255(dragonInfo[arg1].field_3328) * 0.5) + 31 / 32 > idx:
                                        dragonInfo[arg1][idx + 13].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor20[arg3].field_0) * 0.5:
                                        dragonInfo[arg1].field_3328 = Mask(254, 1, stor20[arg3].field_0) + 1
                                        if not Mask(256, -1, stor20[arg3].field_0):
                                            idx = 0
                                            while (uint255(dragonInfo[arg1].field_3328) * 0.5) + 31 / 32 > idx:
                                                dragonInfo[arg1][idx + 13].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = 192
                                            while (uint255(stor20[arg3].field_0) * 0.5) + 192 > idx:
                                                dragonInfo[arg1][s + 13].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor20[arg3].field_0) * 0.5) + 31) >> 5
                                            while (uint255(dragonInfo[arg1].field_3328) * 0.5) + 31 / 32 > idx:
                                                dragonInfo[arg1][idx + 13].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        dragonInfo[arg1].field_3328 = 0
                                        dragonInfo[arg1].field_3329 = stor20[arg3].field_1
                                        dragonInfo[arg1].field_3336 = mem[192 len 31]
                                        idx = 0
                                        while (uint255(dragonInfo[arg1].field_3328) * 0.5) + 31 / 32 > idx:
                                            dragonInfo[arg1][idx + 13].field_0 = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                if dragonInfo[arg1].field_3328 == dragonInfo[arg1].field_3329 < 32:
                                    revert with 0, 34
                                if not uint255(stor20[arg3].field_0) * 0.5:
                                    dragonInfo[arg1].field_3328 = 0
                                    idx = 0
                                    while dragonInfo[arg1].field_3329 + 31 / 32 > idx:
                                        dragonInfo[arg1][idx + 13].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor20[arg3].field_0) * 0.5:
                                        dragonInfo[arg1].field_3328 = Mask(254, 1, stor20[arg3].field_0) + 1
                                        if not Mask(256, -1, stor20[arg3].field_0):
                                            idx = 0
                                            while dragonInfo[arg1].field_3329 + 31 / 32 > idx:
                                                dragonInfo[arg1][idx + 13].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = 192
                                            while (uint255(stor20[arg3].field_0) * 0.5) + 192 > idx:
                                                dragonInfo[arg1][s + 13].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor20[arg3].field_0) * 0.5) + 31) >> 5
                                            while dragonInfo[arg1].field_3329 + 31 / 32 > idx:
                                                dragonInfo[arg1][idx + 13].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        dragonInfo[arg1].field_3328 = 0
                                        dragonInfo[arg1].field_3329 = stor20[arg3].field_1
                                        dragonInfo[arg1].field_3336 = mem[192 len 31]
                                        idx = 0
                                        while dragonInfo[arg1].field_3329 + 31 / 32 > idx:
                                            dragonInfo[arg1][idx + 13].field_0 = 0
                                            idx = idx + 1
                                            continue 
    dragonInfo[arg1].field_0 = arg2
    dragonInfo[arg1].field_256 = arg3
    dragonInfo[arg1].field_512 = arg3
    dragonInfo[arg1].field_1024 = 0
    dragonInfo[arg1].field_1280 = arg4
    dragonInfo[arg1].field_1536 = arg5
    dragonInfo[arg1].field_1792 = arg6
    dragonInfo[arg1].field_2048 = arg7
    dragonInfo[arg1].field_2304 = arg8
    dragonInfo[arg1].field_2560 = arg9
    dragonInfo[arg1].field_3584 = arg10
    dragonInfo[arg1].field_768 = uint8(arg11)
}



}
