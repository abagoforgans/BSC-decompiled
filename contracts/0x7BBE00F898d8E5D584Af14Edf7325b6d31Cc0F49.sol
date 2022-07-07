contract main {




// =====================  Runtime code  =====================


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
address owner;
uint256 maxSupply;
uint256 totalSupply;
array of struct stor9;
uint8 sub_02799200;
uint256 stor10;
mapping of uint8 stor11;
uint8 stor12;
uint8 stor12; offset 8
uint8 sub_703dbb40; offset 16
uint256 stor12; offset 16
uint256 stor12; offset 8
uint256 stor12;
uint256 stor13;
array of uint256 stor14;
mapping of struct stor16;
mapping of uint256 stor17;
mapping of uint8 stor18;
address sub_07344580Address;

function sub_02799200(?) payable {
    if uint8(sub_02799200) >= 4:
        revert with 0, 33
    return uint8(sub_02799200)
}

function sub_07344580(?) payable {
    return sub_07344580Address
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() payable {
    return totalSupply
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function sub_703dbb40(?) payable {
    return bool(sub_703dbb40)
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

function maxSupply() payable {
    return maxSupply
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function sub_27539bd7(?) payable {
    return stor14.length, stor15.length, 0, 0, 0, 0
}

function isContract(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(ext_code.size(arg1))
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_3a669913(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_07344580Address = address(arg1)
}

function setMaxSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if sub_07344580Address != msg.sender:
            revert with 0, 'only owner or collaborator'
    maxSupply = arg1
}

function sub_74140a4d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        if sub_07344580Address != msg.sender:
            revert with 0, 'only owner or collaborator'
    Mask(248, 0, stor12.field_8) = Mask(248, 0, bool(arg1))
}

function sub_a42b6fa8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        if sub_07344580Address != msg.sender:
            revert with 0, 'only owner or collaborator'
    Mask(240, 0, stor12.field_16) = Mask(240, 0, bool(arg1))
}

function sub_654a2e11(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        if sub_07344580Address != msg.sender:
            revert with 0, 'only owner or collaborator'
    stor11[address(arg1)] = uint8(bool(arg2))
}

function sub_66cd27f4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        if sub_07344580Address != msg.sender:
            revert with 0, 'only owner or collaborator'
    stor18[address(arg1)] = uint8(bool(arg2))
}

function sub_d2c9c725(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 4
    if owner != msg.sender:
        if sub_07344580Address != msg.sender:
            revert with 0, 'only owner or collaborator'
    if arg1 > 3:
        revert with 0, 33
    uint256(stor10) = arg1 or Mask(248, 8, uint256(stor10))
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_b23283a6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 2
    if owner != msg.sender:
        if sub_07344580Address != msg.sender:
            revert with 0, 'only owner or collaborator'
    if arg1 > 1:
        revert with 0, 33
    uint256(stor12.field_0) = arg1 or Mask(248, 8, uint256(stor12.field_0))
}

function rescueETH(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if sub_07344580Address != msg.sender:
            revert with 0, 'only owner or collaborator'
    call arg1 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'transfer eth failed'
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
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_8072252b(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    idx = 0
    while idx < arg3:
        if arg2 > !idx:
            revert with 0, 17
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        mem[132] = this.address
        mem[164] = arg2 + idx
        require ext_code.size(address(arg1))
        call address(arg1).0x42842e0e with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2 + idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function safeMint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor18[msg.sender]:
        revert with 0, 'only authorities'
    if not stor14.length:
        revert with 0, 'no nft in box, can't mint'
    if arg2 > stor13:
        revert with 0, 'tokenId upper supply'
    if arg2 > maxSupply:
        revert with 0, 'tokenId upper max limit'
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[arg2]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    ownerOf[arg2] = arg1
    emit Transfer(0, arg1, arg2);
    if totalSupply == -1:
        revert with 0, 17
    totalSupply++
    return 1
}

function rescueERC20(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        if sub_07344580Address != msg.sender:
            revert with 0, 'only owner or collaborator'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approve(address arg1, uint256 arg2) payable {
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

function setBaseURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        if sub_07344580Address != msg.sender:
            revert with 0, 'only owner or collaborator'
    if bool(stor9.length):
        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor9[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor9.length = 0
            idx = 0
            while (uint255(stor9.length) * 0.5) + 31 / 32 > idx:
                stor9[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor9[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor9.length = 0
            idx = 0
            while stor9.length.field_1 + 31 / 32 > idx:
                stor9[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function rescueERC1155(address arg1, uint256[] arg2, uint256[] arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 == arg4
    if owner != msg.sender:
        if sub_07344580Address != msg.sender:
            revert with 0, 'only owner or collaborator'
    idx = 0
    while idx < arg2.length:
        if idx >= arg3.length:
            revert with 0, 50
        mem[96] = 0xf242432a00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = arg4
        mem[164] = cd[((32 * idx) + arg2 + 36)]
        mem[196] = cd[((32 * idx) + arg3 + 36)]
        mem[228] = 160
        mem[260] = 0
        require ext_code.size(arg1)
        call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args address(this.address), address(arg4), cd[((32 * idx) + arg2 + 36)], cd[((32 * idx) + arg3 + 36)], 160, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
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
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.0x150b7a02 with:
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

function sub_112562a3(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'len not math'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _39 = mem[(32 * idx) + 128]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        _41 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 102] = msg.sender
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 134] = this.address
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 166] = _41
        require ext_code.size(address(_39))
        call address(_39).0x42842e0e with:
             gas gas_remaining wei
            args msg.sender, this.address, _41
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if maxSupply < stor14.length:
        revert with 0, 'deposit max limit'
    if uint8(sub_02799200) > 3:
        revert with 0, 33
    if uint8(sub_02799200) == 3:
        revert with 0, 'deposit not enable'
    if uint8(sub_02799200) > 3:
        revert with 0, 33
    if uint8(sub_02799200) == 1:
        if not stor11[address(msg.sender)]:
            revert with 0, 'only wl nft address'
    else:
        if uint8(sub_02799200) > 3:
            revert with 0, 33
        if uint8(sub_02799200) == 2:
            if not stor18[address(arg2)]:
                revert with 0, 'only wl depositor'
            if not stor11[address(msg.sender)]:
                revert with 0, 'only wl nft address'
    require ext_code.size(msg.sender)
    staticcall msg.sender.0x6352211e with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'token owner is not this contract'
    if not stor17[address(msg.sender)][arg3]:
        if stor13 == -1:
            revert with 0, 17
        stor13++
        stor17[address(msg.sender)][arg3] = stor13 + 1
        stor16[stor13 + 1].field_0 = arg3
        stor16[stor13 + 1].field_256 = 0
        stor16[stor13 + 1].field_352 = uint64(msg.sender)
        stor16[stor13 + 1].field_416 = 0
        stor14.length++
        stor14[stor14.length] = stor13 + 1
    else:
        if stor16[stor17[address(msg.sender)][arg3]].field_416:
            if stor13 == -1:
                revert with 0, 17
            stor13++
            stor17[address(msg.sender)][arg3] = stor13 + 1
            stor16[stor13 + 1].field_0 = arg3
            stor16[stor13 + 1].field_256 = 0
            stor16[stor13 + 1].field_352 = uint64(msg.sender)
            stor16[stor13 + 1].field_416 = 0
            stor14.length++
            stor14[stor14.length] = stor13 + 1
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_d4aa1c70(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg4 == address(arg4)
    if owner != msg.sender:
        if sub_07344580Address != msg.sender:
            revert with 0, 'only owner or collaborator'
    idx = 0
    while idx < arg3:
        if arg2 > !idx:
            revert with 0, 17
        mem[96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = address(arg4)
        mem[164] = arg2 + idx
        require ext_code.size(address(arg1))
        call address(arg1).0x23b872dd with:
             gas gas_remaining wei
            args this.address, address(arg4), arg2 + idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = arg2 + idx
        mem[32] = sha3(address(arg1), 17)
        if stor17[address(arg1)][arg2 + idx]:
            s = arg5
            while s < stor14.length:
                mem[0] = 14
                if stor14[s] != stor17[address(arg1)][arg2 + idx]:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                if stor14.length < 1:
                    revert with 0, 17
                if stor14.length - 1 >= stor14.length:
                    revert with 0, 50
                if s >= stor14.length:
                    revert with 0, 50
                stor14[s] = stor14[stor14.length]
                if stor14.length < 1:
                    revert with 0, 17
                if stor14.length - 1 >= stor14.length:
                    revert with 0, 50
                stor14[stor14.length] = 0
                if not stor14.length:
                    revert with 0, 49
                stor14[stor14.length] = 0
                stor14.length--
                stor16[stor17[address(arg1)][arg2 + idx]].field_0 = 0
                stor16[stor17[address(arg1)][arg2 + idx]].field_256 = 0
                mem[0] = arg2 + idx
                mem[32] = sha3(address(arg1), 17)
                stor17[address(arg1)][arg2 + idx] = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            stor16[stor17[address(arg1)][arg2 + idx]].field_0 = 0
            stor16[stor17[address(arg1)][arg2 + idx]].field_256 = 0
            mem[0] = arg2 + idx
            mem[32] = sha3(address(arg1), 17)
            stor17[address(arg1)][arg2 + idx] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
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
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.0x150b7a02 with:
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

function sub_c668f051(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == address(cd[68])
    if owner != msg.sender:
        if sub_07344580Address != msg.sender:
            revert with 0, 'only owner or collaborator'
    idx = 0
    while idx < ('cd', 36).length:
        mem[96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = address(cd[68])
        mem[164] = cd[((32 * idx) + cd[36] + 36)]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0x23b872dd with:
             gas gas_remaining wei
            args this.address, address(cd[68]), cd[((32 * idx) + cd[36] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = cd[((32 * idx) + cd[36] + 36)]
        mem[32] = sha3(address(cd[4]), 17)
        if stor17[address(cd[4])][cd[((32 * idx) + cd[36] + 36)]]:
            s = cd[100]
            while s < stor14.length:
                mem[0] = 14
                if stor14[s] != stor17[address(cd[4])][cd[((32 * idx) + cd[36] + 36)]]:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                if stor14.length < 1:
                    revert with 0, 17
                if stor14.length - 1 >= stor14.length:
                    revert with 0, 50
                if s >= stor14.length:
                    revert with 0, 50
                stor14[s] = stor14[stor14.length]
                if stor14.length < 1:
                    revert with 0, 17
                if stor14.length - 1 >= stor14.length:
                    revert with 0, 50
                stor14[stor14.length] = 0
                if not stor14.length:
                    revert with 0, 49
                stor14[stor14.length] = 0
                stor14.length--
                stor16[stor17[address(cd[4])][cd[((32 * idx) + cd[36] + 36)]]].field_0 = 0
                stor16[stor17[address(cd[4])][cd[((32 * idx) + cd[36] + 36)]]].field_256 = 0
                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                mem[32] = sha3(address(cd[4]), 17)
                stor17[address(cd[4])][cd[((32 * idx) + cd[36] + 36)]] = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            stor16[stor17[address(cd[4])][cd[((32 * idx) + cd[36] + 36)]]].field_0 = 0
            stor16[stor17[address(cd[4])][cd[((32 * idx) + cd[36] + 36)]]].field_256 = 0
            mem[0] = cd[((32 * idx) + cd[36] + 36)]
            mem[32] = sha3(address(cd[4]), 17)
            stor17[address(cd[4])][cd[((32 * idx) + cd[36] + 36)]] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function name() payable {
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
            mem[ceil32(uint255(stor0.length) * 0.5) + (uint255(stor0.length) * 0.5) + 192] = 0
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
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() payable {
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
            mem[ceil32(uint255(stor1.length) * 0.5) + (uint255(stor1.length) * 0.5) + 192] = 0
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
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function baseURI() payable {
    if bool(stor9.length):
        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor9.length):
            if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor9.length):
                if 31 < uint255(stor9.length) * 0.5:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor9.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length), data=mem[128 len ceil32(uint255(stor9.length) * 0.5)])
                mem[128] = 256 * stor9.length.field_8
        else:
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 0, 34
            if stor9.length.field_1:
                if 31 < stor9.length.field_1:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while stor9.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length), data=mem[128 len ceil32(uint255(stor9.length) * 0.5)])
                mem[128] = 256 * stor9.length.field_8
        mem[ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(uint255(stor9.length) * 0.5)] = mem[128 len ceil32(uint255(stor9.length) * 0.5)]
        if ceil32(uint255(stor9.length) * 0.5) > uint255(stor9.length) * 0.5:
            mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor9.length), data=mem[128 len ceil32(uint255(stor9.length) * 0.5)], mem[(2 * ceil32(uint255(stor9.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor9.length) * 0.5)]), 
    if bool(stor9.length) == stor9.length.field_1 < 32:
        revert with 0, 34
    if bool(stor9.length):
        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor9.length):
            if 31 < uint255(stor9.length) * 0.5:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while (uint255(stor9.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
            mem[128] = 256 * stor9.length.field_8
    else:
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 0, 34
        if stor9.length.field_1:
            if 31 < stor9.length.field_1:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while stor9.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
            mem[128] = 256 * stor9.length.field_8
    mem[ceil32(stor9.length.field_1) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
    if ceil32(stor9.length.field_1) > stor9.length.field_1:
        mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 192] = 0
    return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)], mem[(2 * ceil32(stor9.length.field_1)) + 192 len 2 * ceil32(stor9.length.field_1)]), 
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor9.length):
        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor9.length):
            if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor9.length):
                if 31 < uint255(stor9.length) * 0.5:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor9.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length), data=mem[128 len ceil32(uint255(stor9.length) * 0.5)])
                mem[128] = 256 * stor9.length.field_8
        else:
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 0, 34
            if stor9.length.field_1:
                if 31 < stor9.length.field_1:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while stor9.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length), data=mem[128 len ceil32(uint255(stor9.length) * 0.5)])
                mem[128] = 256 * stor9.length.field_8
        mem[ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(uint255(stor9.length) * 0.5)] = mem[128 len ceil32(uint255(stor9.length) * 0.5)]
        if ceil32(uint255(stor9.length) * 0.5) > uint255(stor9.length) * 0.5:
            mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor9.length), data=mem[128 len ceil32(uint255(stor9.length) * 0.5)], mem[(2 * ceil32(uint255(stor9.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor9.length) * 0.5)]), 
    if bool(stor9.length) == stor9.length.field_1 < 32:
        revert with 0, 34
    if bool(stor9.length):
        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor9.length):
            if 31 < uint255(stor9.length) * 0.5:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while (uint255(stor9.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
            mem[128] = 256 * stor9.length.field_8
    else:
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 0, 34
        if stor9.length.field_1:
            if 31 < stor9.length.field_1:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while stor9.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
            mem[128] = 256 * stor9.length.field_8
    mem[ceil32(stor9.length.field_1) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
    if ceil32(stor9.length.field_1) > stor9.length.field_1:
        mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 192] = 0
    return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)], mem[(2 * ceil32(stor9.length.field_1)) + 192 len 2 * ceil32(stor9.length.field_1)]), 
}

function sub_5eb8ba4a(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 4).length > 200:
        revert with 0, 'array len 200 limit'
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        if not uint8(stor12.field_8):
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 32
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = ('cd', 4).length
            idx = 0
            s = ceil32(32 * ('cd', 4).length) + 129
            t = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 193
            while idx < mem[ceil32(32 * ('cd', 4).length) + 97]:
                _97 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_97 + 44 len 20]
                mem[t + 64] = bool(mem[_97 + 64])
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len ceil32(32 * ('cd', 4).length) + (129 * ('cd', 4).length) + -mem[64] + 193
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 16
            _103 = sha3(mem[(32 * idx) + 128], 16)
            _104 = mem[64]
            mem[64] = mem[64] + 96
            mem[_104] = stor16[mem[(32 * idx) + 128]].field_0
            mem[_104 + 32] = stor1[_103].field_0
            mem[_104 + 64] = bool(stor1[_103].field_160)
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _104
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _107 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        s = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        while ('cd', 4).length < _107:
            _134 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_134 + 44 len 20]
            mem[t + 64] = bool(mem[_134 + 64])
            s = ('cd', 4).length + 1
            s = s + 32
            t = t + 96
            continue 
    else:
        mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 225
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 0
        mem[ceil32(32 * ('cd', 4).length) + 129] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
        s = ceil32(32 * ('cd', 4).length) + 129
        idx = ('cd', 4).length
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 0
            mem[s + 32] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
            s = s + 32
            idx = idx - 1
            continue 
        if not uint8(stor12.field_8):
            _109 = mem[64]
            mem[mem[64]] = 32
            _115 = mem[ceil32(32 * ('cd', 4).length) + 97]
            mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
            idx = 0
            s = ceil32(32 * ('cd', 4).length) + 129
            t = mem[64] + 64
            while idx < _115:
                _139 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_139 + 44 len 20]
                mem[t + 64] = bool(mem[_139 + 64])
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _109 + (96 * _115) + -mem[64] + 64
        _133 = mem[96]
        idx = 0
        while idx < _133:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 16
            _146 = sha3(mem[(32 * idx) + 128], 16)
            _147 = mem[64]
            mem[64] = mem[64] + 96
            mem[_147] = stor16[mem[(32 * idx) + 128]].field_0
            mem[_147 + 32] = stor1[_146].field_0
            mem[_147 + 64] = bool(stor1[_146].field_160)
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _147
            if idx == -1:
                revert with 0, 17
            _133 = mem[96]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _150 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        s = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        while _133 < _150:
            _156 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_156 + 44 len 20]
            mem[t + 64] = bool(mem[_156 + 64])
            s = _133 + 1
            s = s + 32
            t = t + 96
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_6ece00e8(?) payable {
    require calldata.size - 4 >= 96
    if arg3 > 300:
        revert with 0, 'num 300 limit'
    mem[96] = arg3
    mem[64] = (32 * arg3) + 128
    if not arg3:
        if not uint8(stor12.field_8):
            mem[(32 * arg3) + 128] = 32
            mem[(32 * arg3) + 160] = arg3
            mem[(32 * arg3) + 192 len 32 * arg3] = mem[128 len 32 * arg3]
            return memory
              from (32 * arg3) + 128
               len (96 * arg3) + 64
        if arg1:
            if arg2 >= stor15.length:
                mem[(32 * arg3) + 128] = 32
                mem[(32 * arg3) + 160] = arg3
                mem[(32 * arg3) + 192 len 32 * arg3] = mem[128 len 32 * arg3]
                return memory
                  from (32 * arg3) + 128
                   len (96 * arg3) + 64
            if arg2 > !arg3:
                revert with 0, 17
            if arg2 + arg3 <= stor15.length:
                idx = 0
                while idx < arg3:
                    if idx > !arg2:
                        revert with 0, 17
                    if idx + arg2 >= stor15.length:
                        revert with 0, 50
                    mem[0] = 15
                    if idx >= arg3:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('name', 'stor15', 15) + idx + arg2]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                return Array(len=arg3, data=mem[128 len 32 * arg3])
            if stor15.length < arg2:
                revert with 0, 17
            idx = 0
            while idx < stor15.length - arg2:
                if idx > !arg2:
                    revert with 0, 17
                if idx + arg2 >= stor15.length:
                    revert with 0, 50
                mem[0] = 15
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor[('name', 'stor15', 15) + idx + arg2]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[(32 * arg3) + 128] = 32
            mem[(32 * arg3) + 160] = mem[96]
            mem[(32 * arg3) + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            return 32, mem[(32 * arg3) + 160 len (32 * mem[96]) + 32]
        if arg2 >= stor14.length:
            mem[(32 * arg3) + 128] = 32
            mem[(32 * arg3) + 160] = arg3
            mem[(32 * arg3) + 192 len 32 * arg3] = mem[128 len 32 * arg3]
            return memory
              from (32 * arg3) + 128
               len (96 * arg3) + 64
        if arg2 > !arg3:
            revert with 0, 17
        if arg2 + arg3 <= stor14.length:
            idx = 0
            while idx < arg3:
                if idx > !arg2:
                    revert with 0, 17
                if idx + arg2 >= stor14.length:
                    revert with 0, 50
                mem[0] = 14
                if idx >= arg3:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor[('name', 'stor14', 14) + idx + arg2]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[(32 * arg3) + 128] = 32
            mem[(32 * arg3) + 160] = arg3
            s = 0
            s = mem[64] + 64
            t = 128
            while arg3 < arg3:
                mem[s] = mem[t]
                s = arg3 + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            if stor14.length < arg2:
                revert with 0, 17
            idx = 0
            while idx < stor14.length - arg2:
                if idx > !arg2:
                    revert with 0, 17
                if idx + arg2 >= stor14.length:
                    revert with 0, 50
                mem[0] = 14
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor[('name', 'stor14', 14) + idx + arg2]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[(32 * arg3) + 128] = 32
            _117 = mem[96]
            mem[(32 * arg3) + 160] = mem[96]
            s = 0
            s = mem[64] + 64
            t = 128
            while stor14.length - arg2 < _117:
                mem[s] = mem[t]
                s = stor14.length + -arg2 + 1
                s = s + 32
                t = t + 32
                continue 
    else:
        mem[128 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
        if not uint8(stor12.field_8):
            mem[(32 * arg3) + 128] = 32
            mem[(32 * arg3) + 160] = arg3
            mem[(32 * arg3) + 192 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
            return memory
              from (32 * arg3) + 128
               len (96 * arg3) + 64
        if arg1:
            if arg2 >= stor15.length:
                mem[(32 * arg3) + 128] = 32
                mem[(32 * arg3) + 160] = arg3
                mem[(32 * arg3) + 192 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
                return memory
                  from (32 * arg3) + 128
                   len (96 * arg3) + 64
            if arg2 > !arg3:
                revert with 0, 17
            if arg2 + arg3 <= stor15.length:
                idx = 0
                while idx < arg3:
                    if idx > !arg2:
                        revert with 0, 17
                    if idx + arg2 >= stor15.length:
                        revert with 0, 50
                    mem[0] = 15
                    if idx >= arg3:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('name', 'stor15', 15) + idx + arg2]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                return Array(len=arg3, data=mem[128 len 32 * arg3])
            if stor15.length < arg2:
                revert with 0, 17
            idx = 0
            while idx < stor15.length - arg2:
                if idx > !arg2:
                    revert with 0, 17
                if idx + arg2 >= stor15.length:
                    revert with 0, 50
                mem[0] = 15
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor[('name', 'stor15', 15) + idx + arg2]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[(32 * arg3) + 128] = 32
            mem[(32 * arg3) + 160] = mem[96]
            mem[(32 * arg3) + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            return 32, mem[(32 * arg3) + 160 len (32 * mem[96]) + 32]
        if arg2 >= stor14.length:
            mem[(32 * arg3) + 128] = 32
            mem[(32 * arg3) + 160] = arg3
            mem[(32 * arg3) + 192 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
            return memory
              from (32 * arg3) + 128
               len (96 * arg3) + 64
        if arg2 > !arg3:
            revert with 0, 17
        if arg2 + arg3 <= stor14.length:
            idx = 0
            while idx < arg3:
                if idx > !arg2:
                    revert with 0, 17
                if idx + arg2 >= stor14.length:
                    revert with 0, 50
                mem[0] = 14
                if idx >= arg3:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor[('name', 'stor14', 14) + idx + arg2]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[(32 * arg3) + 128] = 32
            mem[(32 * arg3) + 160] = arg3
            s = 0
            s = mem[64] + 64
            t = 128
            while arg3 < arg3:
                mem[s] = mem[t]
                s = arg3 + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            if stor14.length < arg2:
                revert with 0, 17
            idx = 0
            while idx < stor14.length - arg2:
                if idx > !arg2:
                    revert with 0, 17
                if idx + arg2 >= stor14.length:
                    revert with 0, 50
                mem[0] = 14
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor[('name', 'stor14', 14) + idx + arg2]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[(32 * arg3) + 128] = 32
            _119 = mem[96]
            mem[(32 * arg3) + 160] = mem[96]
            s = 0
            s = mem[64] + 64
            t = 128
            while stor14.length - arg2 < _119:
                mem[s] = mem[t]
                s = stor14.length + -arg2 + 1
                s = s + 32
                t = t + 32
                continue 
    return memory
      from mem[64]
       len s - mem[64]
}

function sub_7327b48d(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 18
    if not stor18[msg.sender]:
        revert with 0, 'only authorities'
    if not ext_code.size(msg.sender):
        if not stor14.length:
            revert with 0, 'nft in box empty'
        if block.timestamp > !msg.sender:
            revert with 0, 17
        if block.timestamp + msg.sender > !stor14.length:
            revert with 0, 17
        if uint8(stor12.field_0) > 1:
            revert with 0, 33
        if uint8(stor12.field_0):
            if uint8(stor12.field_0) > 1:
                revert with 0, 33
            if not stor14.length:
                revert with 0, 18
            if block.timestamp + msg.sender + stor14.length % stor14.length >= stor14.length:
                revert with 0, 50
            stor16[stor14[block.timestamp + msg.sender + stor14.length % stor14.length]].field_416 = 1
            if stor14.length < 1:
                revert with 0, 17
            if stor14.length - 1 >= stor14.length:
                revert with 0, 50
            if block.timestamp + msg.sender + stor14.length % stor14.length >= stor14.length:
                revert with 0, 50
            stor14[block.timestamp + msg.sender + stor14.length % stor14.length] = stor14[stor14.length]
            if stor14.length < 1:
                revert with 0, 17
            if stor14.length - 1 >= stor14.length:
                revert with 0, 50
            stor14[stor14.length] = 0
            if not stor14.length:
                revert with 0, 49
            stor14[stor14.length] = 0
            stor14.length--
            stor15.length++
            stor15[stor15.length] = stor14[block.timestamp + msg.sender + stor14.length % stor14.length]
            if not ownerOf[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
            require ext_code.size(stor16[stor14[block.timestamp + msg.sender + stor14.length % stor14.length]].field_256)
            call stor16[stor14[block.timestamp + msg.sender + stor14.length % stor14.length]].field_256.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), ownerOf[arg1], stor16[stor14[block.timestamp + msg.sender + stor14.length % stor14.length]].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not ownerOf[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
            approved[arg1] = 0
            if not ownerOf[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        else:
            if 2 > !(block.timestamp + msg.sender + stor14.length % 5):
                revert with 0, 17
            idx = 0
            s = block.timestamp + msg.sender + stor14.length
            while idx < (block.timestamp + msg.sender + stor14.length % 5) + 2:
                if block.number < idx:
                    revert with 0, 17
                if block.number - idx < 1:
                    revert with 0, 17
                mem[mem[64] + 32] = block.hash(block.number + -idx - 1)
                _123 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                if bool(sha3(mem[_123 + 32 len mem[_123]])):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if not idx:
                    if s > -2:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                if idx > 255:
                    revert with 0, 17
                if s > !(1 << idx):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (1 << idx)
                continue 
            if not stor14.length:
                revert with 0, 18
            if s % stor14.length >= stor14.length:
                revert with 0, 50
            stor16[stor14[s % stor14.length]].field_416 = 1
            if stor14.length < 1:
                revert with 0, 17
            if stor14.length - 1 >= stor14.length:
                revert with 0, 50
            if s % stor14.length >= stor14.length:
                revert with 0, 50
            stor14[s % stor14.length] = stor14[stor14.length]
            if stor14.length < 1:
                revert with 0, 17
            if stor14.length - 1 >= stor14.length:
                revert with 0, 50
            stor14[stor14.length] = 0
            if not stor14.length:
                revert with 0, 49
            stor14[stor14.length] = 0
            stor14.length--
            stor15.length++
            stor15[stor15.length] = stor14[s % stor14.length]
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            require ext_code.size(stor16[stor14[s % stor14.length]].field_256)
            call stor16[stor14[s % stor14.length]].field_256.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), ownerOf[arg1], stor16[stor14[s % stor14.length]].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            approved[arg1] = 0
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: owner query for nonexistent token'
    else:
        if not sub_703dbb40:
            revert with 0, 'open from contract not allowed'
        if not stor14.length:
            revert with 0, 'nft in box empty'
        if block.timestamp > !msg.sender:
            revert with 0, 17
        if block.timestamp + msg.sender > !stor14.length:
            revert with 0, 17
        if uint8(stor12.field_0) > 1:
            revert with 0, 33
        if uint8(stor12.field_0):
            if uint8(stor12.field_0) > 1:
                revert with 0, 33
            if not stor14.length:
                revert with 0, 18
            if block.timestamp + msg.sender + stor14.length % stor14.length >= stor14.length:
                revert with 0, 50
            stor16[stor14[block.timestamp + msg.sender + stor14.length % stor14.length]].field_416 = 1
            if stor14.length < 1:
                revert with 0, 17
            if stor14.length - 1 >= stor14.length:
                revert with 0, 50
            if block.timestamp + msg.sender + stor14.length % stor14.length >= stor14.length:
                revert with 0, 50
            stor14[block.timestamp + msg.sender + stor14.length % stor14.length] = stor14[stor14.length]
            if stor14.length < 1:
                revert with 0, 17
            if stor14.length - 1 >= stor14.length:
                revert with 0, 50
            stor14[stor14.length] = 0
            if not stor14.length:
                revert with 0, 49
            stor14[stor14.length] = 0
            stor14.length--
            stor15.length++
            stor15[stor15.length] = stor14[block.timestamp + msg.sender + stor14.length % stor14.length]
            if not ownerOf[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
            require ext_code.size(stor16[stor14[block.timestamp + msg.sender + stor14.length % stor14.length]].field_256)
            call stor16[stor14[block.timestamp + msg.sender + stor14.length % stor14.length]].field_256.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), ownerOf[arg1], stor16[stor14[block.timestamp + msg.sender + stor14.length % stor14.length]].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not ownerOf[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
            approved[arg1] = 0
            if not ownerOf[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        else:
            if 2 > !(block.timestamp + msg.sender + stor14.length % 5):
                revert with 0, 17
            idx = 0
            s = block.timestamp + msg.sender + stor14.length
            while idx < (block.timestamp + msg.sender + stor14.length % 5) + 2:
                if block.number < idx:
                    revert with 0, 17
                if block.number - idx < 1:
                    revert with 0, 17
                mem[mem[64] + 32] = block.hash(block.number + -idx - 1)
                _127 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                if bool(sha3(mem[_127 + 32 len mem[_127]])):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if not idx:
                    if s > -2:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                if idx > 255:
                    revert with 0, 17
                if s > !(1 << idx):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (1 << idx)
                continue 
            if not stor14.length:
                revert with 0, 18
            if s % stor14.length >= stor14.length:
                revert with 0, 50
            stor16[stor14[s % stor14.length]].field_416 = 1
            if stor14.length < 1:
                revert with 0, 17
            if stor14.length - 1 >= stor14.length:
                revert with 0, 50
            if s % stor14.length >= stor14.length:
                revert with 0, 50
            stor14[s % stor14.length] = stor14[stor14.length]
            if stor14.length < 1:
                revert with 0, 17
            if stor14.length - 1 >= stor14.length:
                revert with 0, 50
            stor14[stor14.length] = 0
            if not stor14.length:
                revert with 0, 49
            stor14[stor14.length] = 0
            stor14.length--
            stor15.length++
            stor15[stor15.length] = stor14[s % stor14.length]
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            require ext_code.size(stor16[stor14[s % stor14.length]].field_256)
            call stor16[stor14[s % stor14.length]].field_256.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), ownerOf[arg1], stor16[stor14[s % stor14.length]].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            approved[arg1] = 0
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: owner query for nonexistent token'
    ('bool', ('stor', ('map', ('param', 'arg1'), ('name', 'ownerOf', 2))))
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor2[arg1]] < 1:
        revert with 0, 17
    balanceOf[stor2[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
    return 1
}

function sub_a7b379c1(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if msg.sender == owner:
        idx = 0
        while idx < arg3:
            if arg2 > !idx:
                revert with 0, 17
            if maxSupply < stor14.length:
                revert with 0, 'deposit max limit'
            if uint8(sub_02799200) > 3:
                revert with 0, 33
            if uint8(sub_02799200) == 3:
                revert with 0, 'deposit not enable'
            if uint8(sub_02799200) > 3:
                revert with 0, 33
            if uint8(sub_02799200) == 1:
                mem[0] = address(arg1)
                mem[32] = 11
                if not stor11[address(arg1)]:
                    revert with 0, 'only wl nft address'
                mem[mem[64] + 4] = arg2 + idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x6352211e with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _200 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_200] == mem[_200 + 12 len 20]
                if mem[_200 + 12 len 20] != this.address:
                    revert with 0, 'token owner is not this contract'
                mem[0] = arg2 + idx
                mem[32] = sha3(address(arg1), 17)
                if not stor17[address(arg1)][arg2 + idx]:
                    _241 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_241 + 64] = 0
                    mem[_241 + 32] = address(arg1)
                    mem[_241] = arg2 + idx
                    if stor13 == -1:
                        revert with 0, 17
                    stor13++
                    stor17[address(arg1)][arg2 + idx] = stor13 + 1
                    mem[32] = 16
                    stor16[stor13 + 1].field_0 = arg2 + idx
                    stor16[stor13 + 1].field_256 = 0
                    stor16[stor13 + 1].field_352 = uint64(arg1)
                    stor16[stor13 + 1].field_416 = 0
                    stor14.length++
                    mem[0] = 14
                    stor14[stor14.length] = stor13 + 1
                else:
                    mem[0] = stor17[address(arg1)][arg2 + idx]
                    mem[32] = 16
                    if stor16[stor17[address(arg1)][arg2 + idx]].field_416:
                        _250 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_250 + 64] = 0
                        mem[_250 + 32] = address(arg1)
                        mem[_250] = arg2 + idx
                        if stor13 == -1:
                            revert with 0, 17
                        stor13++
                        stor17[address(arg1)][arg2 + idx] = stor13 + 1
                        mem[32] = 16
                        stor16[stor13 + 1].field_0 = arg2 + idx
                        stor16[stor13 + 1].field_256 = 0
                        stor16[stor13 + 1].field_352 = uint64(arg1)
                        stor16[stor13 + 1].field_416 = 0
                        stor14.length++
                        mem[0] = 14
                        stor14[stor14.length] = stor13 + 1
            else:
                if uint8(sub_02799200) > 3:
                    revert with 0, 33
                if uint8(sub_02799200) != 2:
                    mem[mem[64] + 4] = arg2 + idx
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0x6352211e with:
                            gas gas_remaining wei
                           args (arg2 + idx)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _195 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_195] == mem[_195 + 12 len 20]
                    if mem[_195 + 12 len 20] != this.address:
                        revert with 0, 'token owner is not this contract'
                    mem[0] = arg2 + idx
                    mem[32] = sha3(address(arg1), 17)
                    if not stor17[address(arg1)][arg2 + idx]:
                        _237 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_237 + 64] = 0
                        mem[_237 + 32] = address(arg1)
                        mem[_237] = arg2 + idx
                        if stor13 == -1:
                            revert with 0, 17
                        stor13++
                        stor17[address(arg1)][arg2 + idx] = stor13 + 1
                        mem[32] = 16
                        stor16[stor13 + 1].field_0 = arg2 + idx
                        stor16[stor13 + 1].field_256 = 0
                        stor16[stor13 + 1].field_352 = uint64(arg1)
                        stor16[stor13 + 1].field_416 = 0
                        stor14.length++
                        mem[0] = 14
                        stor14[stor14.length] = stor13 + 1
                    else:
                        mem[0] = stor17[address(arg1)][arg2 + idx]
                        mem[32] = 16
                        if stor16[stor17[address(arg1)][arg2 + idx]].field_416:
                            _247 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_247 + 64] = 0
                            mem[_247 + 32] = address(arg1)
                            mem[_247] = arg2 + idx
                            if stor13 == -1:
                                revert with 0, 17
                            stor13++
                            stor17[address(arg1)][arg2 + idx] = stor13 + 1
                            mem[32] = 16
                            stor16[stor13 + 1].field_0 = arg2 + idx
                            stor16[stor13 + 1].field_256 = 0
                            stor16[stor13 + 1].field_352 = uint64(arg1)
                            stor16[stor13 + 1].field_416 = 0
                            stor14.length++
                            mem[0] = 14
                            stor14[stor14.length] = stor13 + 1
                else:
                    if not stor18[address(msg.sender)]:
                        revert with 0, 'only wl depositor'
                    mem[0] = address(arg1)
                    mem[32] = 11
                    if not stor11[address(arg1)]:
                        revert with 0, 'only wl nft address'
                    mem[mem[64] + 4] = arg2 + idx
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0x6352211e with:
                            gas gas_remaining wei
                           args (arg2 + idx)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _210 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_210] == mem[_210 + 12 len 20]
                    if mem[_210 + 12 len 20] != this.address:
                        revert with 0, 'token owner is not this contract'
                    mem[0] = arg2 + idx
                    mem[32] = sha3(address(arg1), 17)
                    if not stor17[address(arg1)][arg2 + idx]:
                        _255 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_255 + 64] = 0
                        mem[_255 + 32] = address(arg1)
                        mem[_255] = arg2 + idx
                        if stor13 == -1:
                            revert with 0, 17
                        stor13++
                        stor17[address(arg1)][arg2 + idx] = stor13 + 1
                        mem[32] = 16
                        stor16[stor13 + 1].field_0 = arg2 + idx
                        stor16[stor13 + 1].field_256 = 0
                        stor16[stor13 + 1].field_352 = uint64(arg1)
                        stor16[stor13 + 1].field_416 = 0
                        stor14.length++
                        mem[0] = 14
                        stor14[stor14.length] = stor13 + 1
                    else:
                        mem[0] = stor17[address(arg1)][arg2 + idx]
                        mem[32] = 16
                        if stor16[stor17[address(arg1)][arg2 + idx]].field_416:
                            _257 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_257 + 64] = 0
                            mem[_257 + 32] = address(arg1)
                            mem[_257] = arg2 + idx
                            if stor13 == -1:
                                revert with 0, 17
                            stor13++
                            stor17[address(arg1)][arg2 + idx] = stor13 + 1
                            mem[32] = 16
                            stor16[stor13 + 1].field_0 = arg2 + idx
                            stor16[stor13 + 1].field_256 = 0
                            stor16[stor13 + 1].field_352 = uint64(arg1)
                            stor16[stor13 + 1].field_416 = 0
                            stor14.length++
                            mem[0] = 14
                            stor14[stor14.length] = stor13 + 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if sub_07344580Address != msg.sender:
            revert with 0, 'only owner or collaborator'
        idx = 0
        while idx < arg3:
            if arg2 > !idx:
                revert with 0, 17
            if maxSupply < stor14.length:
                revert with 0, 'deposit max limit'
            if uint8(sub_02799200) > 3:
                revert with 0, 33
            if uint8(sub_02799200) == 3:
                revert with 0, 'deposit not enable'
            if uint8(sub_02799200) > 3:
                revert with 0, 33
            if uint8(sub_02799200) == 1:
                mem[0] = address(arg1)
                mem[32] = 11
                if not stor11[address(arg1)]:
                    revert with 0, 'only wl nft address'
                mem[mem[64] + 4] = arg2 + idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x6352211e with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _206 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_206] == mem[_206 + 12 len 20]
                if mem[_206 + 12 len 20] != this.address:
                    revert with 0, 'token owner is not this contract'
                mem[0] = arg2 + idx
                mem[32] = sha3(address(arg1), 17)
                if not stor17[address(arg1)][arg2 + idx]:
                    _246 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_246 + 64] = 0
                    mem[_246 + 32] = address(arg1)
                    mem[_246] = arg2 + idx
                    if stor13 == -1:
                        revert with 0, 17
                    stor13++
                    stor17[address(arg1)][arg2 + idx] = stor13 + 1
                    mem[32] = 16
                    stor16[stor13 + 1].field_0 = arg2 + idx
                    stor16[stor13 + 1].field_256 = 0
                    stor16[stor13 + 1].field_352 = uint64(arg1)
                    stor16[stor13 + 1].field_416 = 0
                    stor14.length++
                    mem[0] = 14
                    stor14[stor14.length] = stor13 + 1
                else:
                    mem[0] = stor17[address(arg1)][arg2 + idx]
                    mem[32] = 16
                    if stor16[stor17[address(arg1)][arg2 + idx]].field_416:
                        _254 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_254 + 64] = 0
                        mem[_254 + 32] = address(arg1)
                        mem[_254] = arg2 + idx
                        if stor13 == -1:
                            revert with 0, 17
                        stor13++
                        stor17[address(arg1)][arg2 + idx] = stor13 + 1
                        mem[32] = 16
                        stor16[stor13 + 1].field_0 = arg2 + idx
                        stor16[stor13 + 1].field_256 = 0
                        stor16[stor13 + 1].field_352 = uint64(arg1)
                        stor16[stor13 + 1].field_416 = 0
                        stor14.length++
                        mem[0] = 14
                        stor14[stor14.length] = stor13 + 1
            else:
                if uint8(sub_02799200) > 3:
                    revert with 0, 33
                if uint8(sub_02799200) != 2:
                    mem[mem[64] + 4] = arg2 + idx
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0x6352211e with:
                            gas gas_remaining wei
                           args (arg2 + idx)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _201 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_201] == mem[_201 + 12 len 20]
                    if mem[_201 + 12 len 20] != this.address:
                        revert with 0, 'token owner is not this contract'
                    mem[0] = arg2 + idx
                    mem[32] = sha3(address(arg1), 17)
                    if not stor17[address(arg1)][arg2 + idx]:
                        _242 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_242 + 64] = 0
                        mem[_242 + 32] = address(arg1)
                        mem[_242] = arg2 + idx
                        if stor13 == -1:
                            revert with 0, 17
                        stor13++
                        stor17[address(arg1)][arg2 + idx] = stor13 + 1
                        mem[32] = 16
                        stor16[stor13 + 1].field_0 = arg2 + idx
                        stor16[stor13 + 1].field_256 = 0
                        stor16[stor13 + 1].field_352 = uint64(arg1)
                        stor16[stor13 + 1].field_416 = 0
                        stor14.length++
                        mem[0] = 14
                        stor14[stor14.length] = stor13 + 1
                    else:
                        mem[0] = stor17[address(arg1)][arg2 + idx]
                        mem[32] = 16
                        if stor16[stor17[address(arg1)][arg2 + idx]].field_416:
                            _251 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_251 + 64] = 0
                            mem[_251 + 32] = address(arg1)
                            mem[_251] = arg2 + idx
                            if stor13 == -1:
                                revert with 0, 17
                            stor13++
                            stor17[address(arg1)][arg2 + idx] = stor13 + 1
                            mem[32] = 16
                            stor16[stor13 + 1].field_0 = arg2 + idx
                            stor16[stor13 + 1].field_256 = 0
                            stor16[stor13 + 1].field_352 = uint64(arg1)
                            stor16[stor13 + 1].field_416 = 0
                            stor14.length++
                            mem[0] = 14
                            stor14[stor14.length] = stor13 + 1
                else:
                    if not stor18[address(msg.sender)]:
                        revert with 0, 'only wl depositor'
                    mem[0] = address(arg1)
                    mem[32] = 11
                    if not stor11[address(arg1)]:
                        revert with 0, 'only wl nft address'
                    mem[mem[64] + 4] = arg2 + idx
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0x6352211e with:
                            gas gas_remaining wei
                           args (arg2 + idx)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _213 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_213] == mem[_213 + 12 len 20]
                    if mem[_213 + 12 len 20] != this.address:
                        revert with 0, 'token owner is not this contract'
                    mem[0] = arg2 + idx
                    mem[32] = sha3(address(arg1), 17)
                    if not stor17[address(arg1)][arg2 + idx]:
                        _256 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_256 + 64] = 0
                        mem[_256 + 32] = address(arg1)
                        mem[_256] = arg2 + idx
                        if stor13 == -1:
                            revert with 0, 17
                        stor13++
                        stor17[address(arg1)][arg2 + idx] = stor13 + 1
                        mem[32] = 16
                        stor16[stor13 + 1].field_0 = arg2 + idx
                        stor16[stor13 + 1].field_256 = 0
                        stor16[stor13 + 1].field_352 = uint64(arg1)
                        stor16[stor13 + 1].field_416 = 0
                        stor14.length++
                        mem[0] = 14
                        stor14[stor14.length] = stor13 + 1
                    else:
                        mem[0] = stor17[address(arg1)][arg2 + idx]
                        mem[32] = 16
                        if stor16[stor17[address(arg1)][arg2 + idx]].field_416:
                            _258 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_258 + 64] = 0
                            mem[_258 + 32] = address(arg1)
                            mem[_258] = arg2 + idx
                            if stor13 == -1:
                                revert with 0, 17
                            stor13++
                            stor17[address(arg1)][arg2 + idx] = stor13 + 1
                            mem[32] = 16
                            stor16[stor13 + 1].field_0 = arg2 + idx
                            stor16[stor13 + 1].field_256 = 0
                            stor16[stor13 + 1].field_352 = uint64(arg1)
                            stor16[stor13 + 1].field_416 = 0
                            stor14.length++
                            mem[0] = 14
                            stor14[stor14.length] = stor13 + 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_16314b1a(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if msg.sender == owner:
        if ('cd', 4).length != ('cd', 36).length:
            revert with 0, 'len not math'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _560 = mem[(32 * idx) + 128]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            _564 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
            if maxSupply < stor14.length:
                revert with 0, 'deposit max limit'
            if uint8(sub_02799200) > 3:
                revert with 0, 33
            if uint8(sub_02799200) == 3:
                revert with 0, 'deposit not enable'
            if uint8(sub_02799200) > 3:
                revert with 0, 33
            if uint8(sub_02799200) == 1:
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 11
                if not stor11[mem[(32 * idx) + 140 len 20]]:
                    revert with 0, 'only wl nft address'
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                require ext_code.size(address(_560))
                staticcall address(_560).0x6352211e with:
                        gas gas_remaining wei
                       args _564
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _599 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_599] == mem[_599 + 12 len 20]
                if mem[_599 + 12 len 20] != this.address:
                    revert with 0, 'token owner is not this contract'
                mem[0] = _564
                mem[32] = sha3(address(_560), 17)
                if not stor17[address(_560)][_564]:
                    _640 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_640 + 64] = 0
                    mem[_640 + 32] = address(_560)
                    mem[_640] = _564
                    if stor13 == -1:
                        revert with 0, 17
                    stor13++
                    stor17[address(_560)][_564] = stor13 + 1
                    mem[32] = 16
                    stor16[stor13 + 1].field_0 = _564
                    stor16[stor13 + 1].field_256 = 0
                    stor16[stor13 + 1].field_352 = uint64(_560)
                    stor16[stor13 + 1].field_416 = 0
                    stor14.length++
                    mem[0] = 14
                    stor14[stor14.length] = stor13 + 1
                else:
                    mem[0] = stor17[address(_560)][_564]
                    mem[32] = 16
                    if stor16[stor17[address(_560)][_564]].field_416:
                        _649 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_649 + 64] = 0
                        mem[_649 + 32] = address(_560)
                        mem[_649] = _564
                        if stor13 == -1:
                            revert with 0, 17
                        stor13++
                        stor17[address(_560)][_564] = stor13 + 1
                        mem[32] = 16
                        stor16[stor13 + 1].field_0 = _564
                        stor16[stor13 + 1].field_256 = 0
                        stor16[stor13 + 1].field_352 = uint64(_560)
                        stor16[stor13 + 1].field_416 = 0
                        stor14.length++
                        mem[0] = 14
                        stor14[stor14.length] = stor13 + 1
            else:
                if uint8(sub_02799200) > 3:
                    revert with 0, 33
                if uint8(sub_02799200) != 2:
                    mem[mem[64] + 4] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                    require ext_code.size(address(_560))
                    staticcall address(_560).0x6352211e with:
                            gas gas_remaining wei
                           args _564
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _594 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_594] == mem[_594 + 12 len 20]
                    if mem[_594 + 12 len 20] != this.address:
                        revert with 0, 'token owner is not this contract'
                    mem[0] = _564
                    mem[32] = sha3(address(_560), 17)
                    if not stor17[address(_560)][_564]:
                        _636 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_636 + 64] = 0
                        mem[_636 + 32] = address(_560)
                        mem[_636] = _564
                        if stor13 == -1:
                            revert with 0, 17
                        stor13++
                        stor17[address(_560)][_564] = stor13 + 1
                        mem[32] = 16
                        stor16[stor13 + 1].field_0 = _564
                        stor16[stor13 + 1].field_256 = 0
                        stor16[stor13 + 1].field_352 = uint64(_560)
                        stor16[stor13 + 1].field_416 = 0
                        stor14.length++
                        mem[0] = 14
                        stor14[stor14.length] = stor13 + 1
                    else:
                        mem[0] = stor17[address(_560)][_564]
                        mem[32] = 16
                        if stor16[stor17[address(_560)][_564]].field_416:
                            _646 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_646 + 64] = 0
                            mem[_646 + 32] = address(_560)
                            mem[_646] = _564
                            if stor13 == -1:
                                revert with 0, 17
                            stor13++
                            stor17[address(_560)][_564] = stor13 + 1
                            mem[32] = 16
                            stor16[stor13 + 1].field_0 = _564
                            stor16[stor13 + 1].field_256 = 0
                            stor16[stor13 + 1].field_352 = uint64(_560)
                            stor16[stor13 + 1].field_416 = 0
                            stor14.length++
                            mem[0] = 14
                            stor14[stor14.length] = stor13 + 1
                else:
                    if not stor18[address(msg.sender)]:
                        revert with 0, 'only wl depositor'
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 11
                    if not stor11[address(mem[(32 * idx) + 128])]:
                        revert with 0, 'only wl nft address'
                    mem[mem[64] + 4] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                    require ext_code.size(address(_560))
                    staticcall address(_560).0x6352211e with:
                            gas gas_remaining wei
                           args _564
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _609 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_609] == mem[_609 + 12 len 20]
                    if mem[_609 + 12 len 20] != this.address:
                        revert with 0, 'token owner is not this contract'
                    mem[0] = _564
                    mem[32] = sha3(address(_560), 17)
                    if not stor17[address(_560)][_564]:
                        _654 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_654 + 64] = 0
                        mem[_654 + 32] = address(_560)
                        mem[_654] = _564
                        if stor13 == -1:
                            revert with 0, 17
                        stor13++
                        stor17[address(_560)][_564] = stor13 + 1
                        mem[32] = 16
                        stor16[stor13 + 1].field_0 = _564
                        stor16[stor13 + 1].field_256 = 0
                        stor16[stor13 + 1].field_352 = uint64(_560)
                        stor16[stor13 + 1].field_416 = 0
                        stor14.length++
                        mem[0] = 14
                        stor14[stor14.length] = stor13 + 1
                    else:
                        mem[0] = stor17[address(_560)][_564]
                        mem[32] = 16
                        if stor16[stor17[address(_560)][_564]].field_416:
                            _656 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_656 + 64] = 0
                            mem[_656 + 32] = address(_560)
                            mem[_656] = _564
                            if stor13 == -1:
                                revert with 0, 17
                            stor13++
                            stor17[address(_560)][_564] = stor13 + 1
                            mem[32] = 16
                            stor16[stor13 + 1].field_0 = _564
                            stor16[stor13 + 1].field_256 = 0
                            stor16[stor13 + 1].field_352 = uint64(_560)
                            stor16[stor13 + 1].field_416 = 0
                            stor14.length++
                            mem[0] = 14
                            stor14[stor14.length] = stor13 + 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if sub_07344580Address != msg.sender:
            revert with 0, 'only owner or collaborator'
        if ('cd', 4).length != ('cd', 36).length:
            revert with 0, 'len not math'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _562 = mem[(32 * idx) + 128]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            _565 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
            if maxSupply < stor14.length:
                revert with 0, 'deposit max limit'
            if uint8(sub_02799200) > 3:
                revert with 0, 33
            if uint8(sub_02799200) == 3:
                revert with 0, 'deposit not enable'
            if uint8(sub_02799200) > 3:
                revert with 0, 33
            if uint8(sub_02799200) == 1:
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 11
                if not stor11[mem[(32 * idx) + 140 len 20]]:
                    revert with 0, 'only wl nft address'
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                require ext_code.size(address(_562))
                staticcall address(_562).0x6352211e with:
                        gas gas_remaining wei
                       args _565
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _605 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_605] == mem[_605 + 12 len 20]
                if mem[_605 + 12 len 20] != this.address:
                    revert with 0, 'token owner is not this contract'
                mem[0] = _565
                mem[32] = sha3(address(_562), 17)
                if not stor17[address(_562)][_565]:
                    _645 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_645 + 64] = 0
                    mem[_645 + 32] = address(_562)
                    mem[_645] = _565
                    if stor13 == -1:
                        revert with 0, 17
                    stor13++
                    stor17[address(_562)][_565] = stor13 + 1
                    mem[32] = 16
                    stor16[stor13 + 1].field_0 = _565
                    stor16[stor13 + 1].field_256 = 0
                    stor16[stor13 + 1].field_352 = uint64(_562)
                    stor16[stor13 + 1].field_416 = 0
                    stor14.length++
                    mem[0] = 14
                    stor14[stor14.length] = stor13 + 1
                else:
                    mem[0] = stor17[address(_562)][_565]
                    mem[32] = 16
                    if stor16[stor17[address(_562)][_565]].field_416:
                        _653 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_653 + 64] = 0
                        mem[_653 + 32] = address(_562)
                        mem[_653] = _565
                        if stor13 == -1:
                            revert with 0, 17
                        stor13++
                        stor17[address(_562)][_565] = stor13 + 1
                        mem[32] = 16
                        stor16[stor13 + 1].field_0 = _565
                        stor16[stor13 + 1].field_256 = 0
                        stor16[stor13 + 1].field_352 = uint64(_562)
                        stor16[stor13 + 1].field_416 = 0
                        stor14.length++
                        mem[0] = 14
                        stor14[stor14.length] = stor13 + 1
            else:
                if uint8(sub_02799200) > 3:
                    revert with 0, 33
                if uint8(sub_02799200) != 2:
                    mem[mem[64] + 4] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                    require ext_code.size(address(_562))
                    staticcall address(_562).0x6352211e with:
                            gas gas_remaining wei
                           args _565
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _600 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_600] == mem[_600 + 12 len 20]
                    if mem[_600 + 12 len 20] != this.address:
                        revert with 0, 'token owner is not this contract'
                    mem[0] = _565
                    mem[32] = sha3(address(_562), 17)
                    if not stor17[address(_562)][_565]:
                        _641 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_641 + 64] = 0
                        mem[_641 + 32] = address(_562)
                        mem[_641] = _565
                        if stor13 == -1:
                            revert with 0, 17
                        stor13++
                        stor17[address(_562)][_565] = stor13 + 1
                        mem[32] = 16
                        stor16[stor13 + 1].field_0 = _565
                        stor16[stor13 + 1].field_256 = 0
                        stor16[stor13 + 1].field_352 = uint64(_562)
                        stor16[stor13 + 1].field_416 = 0
                        stor14.length++
                        mem[0] = 14
                        stor14[stor14.length] = stor13 + 1
                    else:
                        mem[0] = stor17[address(_562)][_565]
                        mem[32] = 16
                        if stor16[stor17[address(_562)][_565]].field_416:
                            _650 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_650 + 64] = 0
                            mem[_650 + 32] = address(_562)
                            mem[_650] = _565
                            if stor13 == -1:
                                revert with 0, 17
                            stor13++
                            stor17[address(_562)][_565] = stor13 + 1
                            mem[32] = 16
                            stor16[stor13 + 1].field_0 = _565
                            stor16[stor13 + 1].field_256 = 0
                            stor16[stor13 + 1].field_352 = uint64(_562)
                            stor16[stor13 + 1].field_416 = 0
                            stor14.length++
                            mem[0] = 14
                            stor14[stor14.length] = stor13 + 1
                else:
                    if not stor18[address(msg.sender)]:
                        revert with 0, 'only wl depositor'
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 11
                    if not stor11[address(mem[(32 * idx) + 128])]:
                        revert with 0, 'only wl nft address'
                    mem[mem[64] + 4] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                    require ext_code.size(address(_562))
                    staticcall address(_562).0x6352211e with:
                            gas gas_remaining wei
                           args _565
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _612 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_612] == mem[_612 + 12 len 20]
                    if mem[_612 + 12 len 20] != this.address:
                        revert with 0, 'token owner is not this contract'
                    mem[0] = _565
                    mem[32] = sha3(address(_562), 17)
                    if not stor17[address(_562)][_565]:
                        _655 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_655 + 64] = 0
                        mem[_655 + 32] = address(_562)
                        mem[_655] = _565
                        if stor13 == -1:
                            revert with 0, 17
                        stor13++
                        stor17[address(_562)][_565] = stor13 + 1
                        mem[32] = 16
                        stor16[stor13 + 1].field_0 = _565
                        stor16[stor13 + 1].field_256 = 0
                        stor16[stor13 + 1].field_352 = uint64(_562)
                        stor16[stor13 + 1].field_416 = 0
                        stor14.length++
                        mem[0] = 14
                        stor14[stor14.length] = stor13 + 1
                    else:
                        mem[0] = stor17[address(_562)][_565]
                        mem[32] = 16
                        if stor16[stor17[address(_562)][_565]].field_416:
                            _657 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_657 + 64] = 0
                            mem[_657 + 32] = address(_562)
                            mem[_657] = _565
                            if stor13 == -1:
                                revert with 0, 17
                            stor13++
                            stor17[address(_562)][_565] = stor13 + 1
                            mem[32] = 16
                            stor16[stor13 + 1].field_0 = _565
                            stor16[stor13 + 1].field_256 = 0
                            stor16[stor13 + 1].field_352 = uint64(_562)
                            stor16[stor13 + 1].field_416 = 0
                            stor14.length++
                            mem[0] = 14
                            stor14[stor14.length] = stor13 + 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
