contract main {




// =====================  Runtime code  =====================


const sub_1329ebac(?) = (8760 * 24 * 3600)


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of struct stor101;
array of struct stor102;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor106;
address owner;
uint256 sub_277a5b8b;
mapping of struct gifts;
array of struct sub_fd2b2cb1;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_277a5b8b(?) payable {
    return sub_277a5b8b
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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

function gifts(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return gifts[arg1].field_0, gifts[arg1].field_256, gifts[arg1].field_512
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor106[address(arg1)][address(arg2)])
}

function sub_fd2b2cb1(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < sub_fd2b2cb1[arg1].field_0
    return sub_fd2b2cb1[arg1][arg2].field_0, sub_fd2b2cb1[arg1][arg2].field_256
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

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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

function sub_69cfd10f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    mem[0] = arg1
    mem[32] = 203
    mem[64] = (32 * sub_fd2b2cb1[arg1].field_0) + 128
    mem[96] = sub_fd2b2cb1[arg1].field_0
    s = 128
    idx = 0
    while idx < sub_fd2b2cb1[arg1].field_0:
        mem[0] = sha3(arg1, 203)
        _17 = mem[64]
        mem[64] = mem[64] + 64
        mem[_17] = sub_fd2b2cb1[arg1][idx].field_0
        mem[_17 + 32] = sub_fd2b2cb1[arg1][idx].field_256
        mem[s] = _17
        s = s + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < mem[96]:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + 128] + 12 len 20] != address(arg2):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[mem[64]] = mem[mem[(32 * idx) + 128] + 32]
        return memory
          from mem[64]
           len 32
    return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
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

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    mem[0] = arg1
    mem[32] = 202
    if not gifts[arg1].field_0:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
        return ''
    mem[96] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
    mem[100] = gifts[arg1].field_256
    staticcall gifts[arg1].field_0.0xc87b56dd with:
            gas gas_remaining wei
           args gifts[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _14 = mem[96 len 4], gifts[arg1].field_288
    require mem[96 len 4], gifts[arg1].field_288 <= test266151307()
    require mem[96 len 4], gifts[arg1].field_288 + 127 < return_data.size + 96
    _18 = mem[mem[96 len 4], gifts[arg1].field_288 + 96]
    if mem[mem[96 len 4], gifts[arg1].field_288 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], gifts[arg1].field_288 + 96])) + 97 > test266151307() or ceil32(ceil32(mem[mem[96 len 4], gifts[arg1].field_288 + 96])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], gifts[arg1].field_288 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _18
    require _14 + _18 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_18)] = mem[_14 + 128 len ceil32(_18)]
    if ceil32(_18) > _18:
        mem[ceil32(return_data.size) + _18 + 128] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _18
    mem[mem[64] + 64 len ceil32(_18)] = mem[ceil32(return_data.size) + 128 len ceil32(_18)]
    if ceil32(_18) > _18:
        mem[mem[64] + _18 + 64] = 0
    return Array(len=_18, data=mem[mem[64] + 64 len ceil32(_18)])
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
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

function initialize() payable {
    if uint8(stor0.field_8):
        if ext_code.size(this.address) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
        revert with 0, 'Initializable: contract is not initializing'
    if bool(stor101.length):
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 'NH{q', 34
        bool(stor101.length) = 0
        stor101.length.field_1 = 12
        stor101.length.field_8 = 'Gift packing' / 256
        idx = 0
        while stor101.length.field_1 + 31 / 32 > idx:
            stor101[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 'NH{q', 34
        bool(stor101.length) = 0
        stor101.length.field_1 = 12
        stor101.length.field_8 = 'Gift packing' / 256
        idx = 0
        while stor101.length.field_1 + 31 / 32 > idx:
            stor101[idx].field_0 = 0
            idx = idx + 1
            continue 
    if bool(stor102.length):
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 'NH{q', 34
        bool(stor102.length) = 0
        stor102.length.field_1 = 4
        stor102.length.field_8 = 'GIFT' / 256
        idx = 0
        while stor102.length.field_1 + 31 / 32 > idx:
            stor102[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 'NH{q', 34
        bool(stor102.length) = 0
        stor102.length.field_1 = 4
        stor102.length.field_8 = 'GIFT' / 256
        idx = 0
        while stor102.length.field_1 + 31 / 32 > idx:
            stor102[idx].field_0 = 0
            idx = idx + 1
            continue 
    if not uint8(stor0.field_8):
        revert with 0, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
}

function sub_2d15cadd(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if block.timestamp > -31536001:
        revert with 'NH{q', 17
    if arg3 > block.timestamp + (8760 * 24 * 3600):
        revert with 0, 'Too long lock time'
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_277a5b8b > -2:
        revert with 'NH{q', 17
    sub_277a5b8b++
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor201]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(msg.sender)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor201] = msg.sender
    emit Transfer(0, msg.sender, sub_277a5b8b);
    if ext_code.size(msg.sender) > 0:
        mem[292 len 0] = None
        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), 0, sub_277a5b8b, 128, 0
        if not ext_call.success:
            if not return_data.size:
                revert with ext_call.return_data[0], 
                            uint32(msg.sender),
                            0,
                            sub_277a5b8b,
                            128,
                            0,
                            mem[292 len 0x23b872dcffffffffffffffffffffffffffffffffffffffffffffffffffffff5c]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    gifts[stor201].field_0 = address(arg1)
    gifts[stor201].field_256 = arg2
    gifts[stor201].field_512 = arg3
    emit 0xb7a84fec: address(arg1), arg2, sub_277a5b8b
    return sub_277a5b8b
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
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

function name() payable {
    if bool(stor101.length):
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor101.length):
            if bool(stor101.length) == stor101.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor101.length.field_1), data=mem[128 len ceil32(stor101.length.field_1)])
                mem[128] = 256 * stor101.length.field_8
        else:
            if bool(stor101.length) == stor101.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor101.length.field_1), data=mem[128 len ceil32(stor101.length.field_1)])
                mem[128] = 256 * stor101.length.field_8
        mem[ceil32(stor101.length.field_1) + 192 len ceil32(stor101.length.field_1)] = mem[128 len ceil32(stor101.length.field_1)]
        if ceil32(stor101.length.field_1) > stor101.length.field_1:
            mem[ceil32(stor101.length.field_1) + stor101.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor101.length.field_1), data=mem[128 len ceil32(stor101.length.field_1)], mem[(2 * ceil32(stor101.length.field_1)) + 192 len 2 * ceil32(stor101.length.field_1)]), 
    if bool(stor101.length) == stor101.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor101.length):
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor101.length.field_1) + stor101.length.field_1 + 192] = 0
    return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)], mem[(2 * ceil32(stor101.length.field_1)) + 192 len 2 * ceil32(stor101.length.field_1)]), 
}

function symbol() payable {
    if bool(stor102.length):
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor102.length):
            if bool(stor102.length) == stor102.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor102.length.field_1), data=mem[128 len ceil32(stor102.length.field_1)])
                mem[128] = 256 * stor102.length.field_8
        else:
            if bool(stor102.length) == stor102.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor102.length.field_1), data=mem[128 len ceil32(stor102.length.field_1)])
                mem[128] = 256 * stor102.length.field_8
        mem[ceil32(stor102.length.field_1) + 192 len ceil32(stor102.length.field_1)] = mem[128 len ceil32(stor102.length.field_1)]
        if ceil32(stor102.length.field_1) > stor102.length.field_1:
            mem[ceil32(stor102.length.field_1) + stor102.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor102.length.field_1), data=mem[128 len ceil32(stor102.length.field_1)], mem[(2 * ceil32(stor102.length.field_1)) + 192 len 2 * ceil32(stor102.length.field_1)]), 
    if bool(stor102.length) == stor102.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor102.length):
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor102.length.field_1) + stor102.length.field_1 + 192] = 0
    return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)], mem[(2 * ceil32(stor102.length.field_1)) + 192 len 2 * ceil32(stor102.length.field_1)]), 
}

function sub_5f0f40f0(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can add fungible tokens!'
    mem[100] = msg.sender
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg3:
        revert with 0, 'Not enough erc20 tokens'
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    staticcall address(arg2).0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg3:
        revert with 0, 'Please approve first'
    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 164] = this.address
    mem[(2 * ceil32(return_data.size)) + 196] = arg3
    mem[(2 * ceil32(return_data.size)) + 96] = 100
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(2 * ceil32(return_data.size)) + 228] = 32
    mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(address(arg2)) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3, 0
    mem[(2 * ceil32(return_data.size)) + 392] = 0
    call address(arg2) with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] <= 0:
            mem[0] = arg1
            mem[32] = 203
            mem[64] = (2 * ceil32(return_data.size)) + (32 * sub_fd2b2cb1[arg1].field_0) + 324
            mem[(2 * ceil32(return_data.size)) + 292] = sub_fd2b2cb1[arg1].field_0
            s = (2 * ceil32(return_data.size)) + 324
            idx = 0
            while idx < sub_fd2b2cb1[arg1].field_0:
                mem[0] = sha3(arg1, 203)
                _579 = mem[64]
                mem[64] = mem[64] + 64
                mem[_579] = sub_fd2b2cb1[arg1][idx].field_0
                mem[_579 + 32] = sub_fd2b2cb1[arg1][idx].field_256
                mem[s] = _579
                s = s + 32
                idx = idx + 1
                continue 
        else:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[0] = arg1
            mem[32] = 203
            mem[64] = (2 * ceil32(return_data.size)) + (32 * sub_fd2b2cb1[arg1].field_0) + 324
            mem[(2 * ceil32(return_data.size)) + 292] = sub_fd2b2cb1[arg1].field_0
            s = (2 * ceil32(return_data.size)) + 324
            idx = 0
            while idx < sub_fd2b2cb1[arg1].field_0:
                mem[0] = sha3(arg1, 203)
                _581 = mem[64]
                mem[64] = mem[64] + 64
                mem[_581] = sub_fd2b2cb1[arg1][idx].field_0
                mem[_581 + 32] = sub_fd2b2cb1[arg1][idx].field_256
                mem[s] = _581
                s = s + 32
                idx = idx + 1
                continue 
        idx = 0
        while idx < mem[(2 * ceil32(return_data.size)) + 292]:
            if idx >= mem[(2 * ceil32(return_data.size)) + 292]:
                revert with 'NH{q', 50
            if mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 324] + 12 len 20] != address(arg2):
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if idx >= mem[(2 * ceil32(return_data.size)) + 292]:
                revert with 'NH{q', 50
            if mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 324] + 32] > 0:
                idx = 0
                while idx < sub_fd2b2cb1[arg1].field_0:
                    mem[0] = sha3(arg1, 203)
                    if sub_fd2b2cb1[arg1][idx].field_0 == address(arg2):
                        if idx >= sub_fd2b2cb1[arg1].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(arg1, 203)
                        if sub_fd2b2cb1[arg1][idx].field_256 > -arg3 - 1:
                            revert with 'NH{q', 17
                        sub_fd2b2cb1[arg1][idx].field_256 += arg3
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                sub_fd2b2cb1[arg1].field_0++
                sub_fd2b2cb1[arg1][sub_fd2b2cb1[arg1].field_0].field_0 = address(arg2)
                sub_fd2b2cb1[arg1][sub_fd2b2cb1[arg1].field_0].field_256 = arg3
            emit 0xb9893d3a: arg1, address(arg2)
    else:
        mem[(2 * ceil32(return_data.size)) + 292] = return_data.size
        mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            mem[0] = arg1
            mem[32] = 203
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * sub_fd2b2cb1[arg1].field_0) + 325
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = sub_fd2b2cb1[arg1].field_0
            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
            idx = 0
            while idx < sub_fd2b2cb1[arg1].field_0:
                mem[0] = sha3(arg1, 203)
                _584 = mem[64]
                mem[64] = mem[64] + 64
                mem[_584] = sub_fd2b2cb1[arg1][idx].field_0
                mem[_584 + 32] = sub_fd2b2cb1[arg1][idx].field_256
                mem[s] = _584
                s = s + 32
                idx = idx + 1
                continue 
        else:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
            if not mem[(2 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[0] = arg1
            mem[32] = 203
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * sub_fd2b2cb1[arg1].field_0) + 325
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = sub_fd2b2cb1[arg1].field_0
            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
            idx = 0
            while idx < sub_fd2b2cb1[arg1].field_0:
                mem[0] = sha3(arg1, 203)
                _586 = mem[64]
                mem[64] = mem[64] + 64
                mem[_586] = sub_fd2b2cb1[arg1][idx].field_0
                mem[_586 + 32] = sub_fd2b2cb1[arg1][idx].field_256
                mem[s] = _586
                s = s + 32
                idx = idx + 1
                continue 
        idx = 0
        while idx < mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
            if idx >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                revert with 'NH{q', 50
            if mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] + 12 len 20] != address(arg2):
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if idx >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                revert with 'NH{q', 50
            if mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] + 32] > 0:
                idx = 0
                while idx < sub_fd2b2cb1[arg1].field_0:
                    mem[0] = sha3(arg1, 203)
                    if sub_fd2b2cb1[arg1][idx].field_0 == address(arg2):
                        if idx >= sub_fd2b2cb1[arg1].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(arg1, 203)
                        if sub_fd2b2cb1[arg1][idx].field_256 > -arg3 - 1:
                            revert with 'NH{q', 17
                        sub_fd2b2cb1[arg1][idx].field_256 += arg3
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                sub_fd2b2cb1[arg1].field_0++
                sub_fd2b2cb1[arg1][sub_fd2b2cb1[arg1].field_0].field_0 = address(arg2)
                sub_fd2b2cb1[arg1][sub_fd2b2cb1[arg1].field_0].field_256 = arg3
            emit 0xb9893d3a: arg1, address(arg2)
    sub_fd2b2cb1[arg1].field_0++
    sub_fd2b2cb1[arg1][sub_fd2b2cb1[arg1].field_0].field_0 = address(arg2)
    sub_fd2b2cb1[arg1][sub_fd2b2cb1[arg1].field_0].field_256 = arg3
    emit 0xb9893d3a: arg1, address(arg2)
}

function unpack(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'Only owner can unwrap it!'
    mem[96] = gifts[arg1].field_0
    mem[128] = gifts[arg1].field_256
    mem[160] = gifts[arg1].field_512
    mem[64] = (32 * sub_fd2b2cb1[arg1].field_0) + 224
    mem[192] = sub_fd2b2cb1[arg1].field_0
    s = 224
    idx = 0
    while idx < sub_fd2b2cb1[arg1].field_0:
        mem[0] = sha3(arg1, 203)
        _260 = mem[64]
        mem[64] = mem[64] + 64
        mem[_260] = sub_fd2b2cb1[arg1][idx].field_0
        mem[_260 + 32] = sub_fd2b2cb1[arg1][idx].field_256
        mem[s] = _260
        s = s + 32
        idx = idx + 1
        continue 
    if not mem[160]:
        if mem[192] <= 0:
            _263 = mem[96]
            _264 = mem[128]
            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = msg.sender
            require ext_code.size(address(_263))
            call address(_263).0x42842e0e with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, _264
        else:
            mem[0] = arg1
            mem[32] = 203
            idx = 0
            while idx < sub_fd2b2cb1[arg1].field_0:
                mem[0] = sha3(arg1, 203)
                _516 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = sub_fd2b2cb1[arg1][idx].field_256
                _518 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_518 + 32] = mem[_518 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                mem[64] = _516 + 164
                mem[_516 + 100] = 32
                mem[_516 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(sub_fd2b2cb1[arg1][idx].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _538 = mem[_518]
                s = 0
                while s < _538:
                    mem[_516 + s + 164] = mem[_518 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_538) > _538:
                    mem[_516 + _538 + 164] = 0
                call sub_fd2b2cb1[arg1][idx].field_0.mem[_516 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_516 + 168 len _538 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_516 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_516 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[_516 + idx + 232] = mem[_516 + idx + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_516 + 232]
                    if mem[96] > 0:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _516 + ceil32(return_data.size) + 165
                    mem[_516 + 164] = return_data.size
                    mem[_516 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_516 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_516 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[_516 + ceil32(return_data.size) + idx + 233] = mem[_516 + idx + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_516 + ceil32(return_data.size) + 233]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_516 + 196] == bool(mem[_516 + 196])
                        if not mem[_516 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if idx >= sub_fd2b2cb1[arg1].field_0:
                    revert with 'NH{q', 50
                emit 0xf75532f3: arg1, sub_fd2b2cb1[arg1][idx].field_0, sub_fd2b2cb1[arg1][idx].field_256
                mem[0] = sha3(arg1, 203)
                sub_fd2b2cb1[arg1][idx].field_256 = 0
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _508 = mem[96]
            _509 = mem[128]
            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = msg.sender
            require ext_code.size(address(_508))
            call address(_508).0x42842e0e with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, _509
    else:
        if mem[160] > block.timestamp:
            revert with 0, 'Gift still locked'
        if mem[192] <= 0:
            _269 = mem[96]
            _270 = mem[128]
            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = msg.sender
            require ext_code.size(address(_269))
            call address(_269).0x42842e0e with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, _270
        else:
            mem[0] = arg1
            mem[32] = 203
            idx = 0
            while idx < sub_fd2b2cb1[arg1].field_0:
                mem[0] = sha3(arg1, 203)
                _517 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = sub_fd2b2cb1[arg1][idx].field_256
                _520 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_520 + 32] = mem[_520 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                mem[64] = _517 + 164
                mem[_517 + 100] = 32
                mem[_517 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(sub_fd2b2cb1[arg1][idx].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _539 = mem[_520]
                s = 0
                while s < _539:
                    mem[_517 + s + 164] = mem[_520 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_539) > _539:
                    mem[_517 + _539 + 164] = 0
                call sub_fd2b2cb1[arg1][idx].field_0.mem[_517 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_517 + 168 len _539 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_517 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_517 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[_517 + idx + 232] = mem[_517 + idx + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_517 + 232]
                    if mem[96] > 0:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _517 + ceil32(return_data.size) + 165
                    mem[_517 + 164] = return_data.size
                    mem[_517 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_517 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_517 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[_517 + ceil32(return_data.size) + idx + 233] = mem[_517 + idx + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_517 + ceil32(return_data.size) + 233]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_517 + 196] == bool(mem[_517 + 196])
                        if not mem[_517 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if idx >= sub_fd2b2cb1[arg1].field_0:
                    revert with 'NH{q', 50
                emit 0xf75532f3: arg1, sub_fd2b2cb1[arg1][idx].field_0, sub_fd2b2cb1[arg1][idx].field_256
                mem[0] = sha3(arg1, 203)
                sub_fd2b2cb1[arg1][idx].field_256 = 0
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _512 = mem[96]
            _513 = mem[128]
            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = msg.sender
            require ext_code.size(address(_512))
            call address(_512).0x42842e0e with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, _513
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x16b581c4: mem[128], msg.sender
}



}
