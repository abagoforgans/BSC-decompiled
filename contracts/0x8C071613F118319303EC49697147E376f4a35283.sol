contract main {




// =====================  Runtime code  =====================


const CANNOT_TRANSFER_TO_ZERO_ADDRESS = '018002', 0

const NOT_CURRENT_OWNER = '018001', 0


mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
array of struct stor5;
array of struct stor6;
mapping of struct stor7;
address owner;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor0[Mask(32, 224, arg1)])
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0, '003002', 0
    return approved[arg1]
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0, '003002', 0
    return ownerOf[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, '003001', 0
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor4[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    stor4[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '018001', 0
    if not arg1:
        revert with 0, '018002', 0
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if ownerOf[arg2] != msg.sender:
        if not stor4[stor1[arg2]][address(msg.sender)]:
            revert with 0, '003003', 0
    if not ownerOf[arg2]:
        revert with 0, '003002', 0
    if arg1 == ownerOf[arg2]:
        revert with 0, '003008', 0
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][address(msg.sender)]:
                revert with 0, '003004', 0
    if not ownerOf[arg3]:
        revert with 0, '003002', 0
    if ownerOf[arg3] != arg1:
        revert with 0, '003007', 0
    if not arg2:
        revert with 0, '003001', 0
    approved[arg3] = 0
    if ownerOf[arg3] != ownerOf[arg3]:
        revert with 0, '003007', 0
    if balanceOf[stor1[arg3]] < 1:
        revert with 'NH{q', 17
    balanceOf[stor1[arg3]]--
    ownerOf[arg3] = 0
    if ownerOf[arg3]:
        revert with 0, '003006', 0
    ownerOf[arg3] = arg2
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    emit Transfer(ownerOf[arg3], arg2, arg3);
}

function mint(address arg1, uint256 arg2, string arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '018001', 0
    if not arg1:
        revert with 0, '003001', 0
    if ownerOf[arg2]:
        revert with 0, '003006', 0
    if ownerOf[arg2]:
        revert with 0, '003006', 0
    ownerOf[arg2] = arg1
    if balanceOf[address(arg1)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]++
    emit Transfer(0, arg1, arg2);
    if not ownerOf[arg2]:
        revert with 0, '003002', 0
    if stor7[arg2].field_0:
        if stor7[arg2].field_0 == stor7[arg2].field_1 < 32:
            revert with 'NH{q', 34
        if arg3.length:
            stor7[arg2][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor7[arg2].field_0 = 0
            idx = 0
            while stor7[arg2].field_1 + 31 / 32 > idx:
                stor7[arg2][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor7[arg2].field_0 == stor7[arg2].field_1 < 32:
            revert with 'NH{q', 34
        if arg3.length:
            stor7[arg2][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor7[arg2].field_0 = 0
            idx = 0
            while stor7[arg2].field_1 + 31 / 32 > idx:
                stor7[arg2][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][address(msg.sender)]:
                revert with 0, '003004', 0
    if not ownerOf[arg3]:
        revert with 0, '003002', 0
    if ownerOf[arg3] != arg1:
        revert with 0, '003007', 0
    if not arg2:
        revert with 0, '003001', 0
    approved[arg3] = 0
    if ownerOf[arg3] != ownerOf[arg3]:
        revert with 0, '003007', 0
    if balanceOf[stor1[arg3]] < 1:
        revert with 'NH{q', 17
    balanceOf[stor1[arg3]]--
    ownerOf[arg3] = 0
    if ownerOf[arg3]:
        revert with 0, '003006', 0
    ownerOf[arg3] = arg2
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    emit Transfer(ownerOf[arg3], arg2, arg3);
    if ext_code.hash(arg2):
        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            require ext_code.size(arg2)
            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, '003005', 0
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][address(msg.sender)]:
                revert with 0, '003004', 0
    if not ownerOf[arg3]:
        revert with 0, '003002', 0
    if ownerOf[arg3] != arg1:
        revert with 0, '003007', 0
    if not arg2:
        revert with 0, '003001', 0
    approved[arg3] = 0
    if ownerOf[arg3] != ownerOf[arg3]:
        revert with 0, '003007', 0
    if balanceOf[stor1[arg3]] < 1:
        revert with 'NH{q', 17
    balanceOf[stor1[arg3]]--
    ownerOf[arg3] = 0
    if ownerOf[arg3]:
        revert with 0, '003006', 0
    ownerOf[arg3] = arg2
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    emit Transfer(ownerOf[arg3], arg2, arg3);
    if ext_code.hash(arg2):
        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            require ext_code.size(arg2)
            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, '003005', 0
}

function name() payable {
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor5.length):
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
        if ceil32(stor5.length.field_1) > stor5.length.field_1:
            mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function symbol() payable {
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor6.length):
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        else:
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
        if ceil32(stor6.length.field_1) > stor6.length.field_1:
            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
    if bool(stor6.length) == stor6.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
    if ceil32(stor6.length.field_1) > stor6.length.field_1:
        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
    return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0, '003002', 0
    if stor7[arg1].field_0:
        if stor7[arg1].field_0 == stor7[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor7[arg1].field_0:
            if stor7[arg1].field_0 == stor7[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor7[arg1].field_1:
                if 31 < stor7[arg1].field_1:
                    mem[192] = stor7[arg1].field_0
                    idx = 192
                    s = 0
                    while stor7[arg1].field_1 + 160 > idx:
                        mem[idx + 32] = stor7[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7[arg1].field_1), data=mem[192 len ceil32(stor7[arg1].field_1)])
                mem[192] = 256 * stor7[arg1].field_8
        else:
            if stor7[arg1].field_0 == stor7[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor7[arg1].field_1:
                if 31 < stor7[arg1].field_1:
                    mem[192] = stor7[arg1].field_0
                    idx = 192
                    s = 0
                    while stor7[arg1].field_1 + 160 > idx:
                        mem[idx + 32] = stor7[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7[arg1].field_1), data=mem[192 len ceil32(stor7[arg1].field_1)])
                mem[192] = 256 * stor7[arg1].field_8
        mem[ceil32(stor7[arg1].field_1) + 256 len ceil32(stor7[arg1].field_1)] = mem[192 len ceil32(stor7[arg1].field_1)]
        if ceil32(stor7[arg1].field_1) > stor7[arg1].field_1:
            mem[ceil32(stor7[arg1].field_1) + stor7[arg1].field_1 + 256] = 0
        return Array(len=2 * Mask(256, -1, stor7[arg1].field_1), data=mem[192 len ceil32(stor7[arg1].field_1)], mem[(2 * ceil32(stor7[arg1].field_1)) + 256 len 2 * ceil32(stor7[arg1].field_1)]), 
    if stor7[arg1].field_0 == stor7[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor7[arg1].field_0:
        if stor7[arg1].field_0 == stor7[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor7[arg1].field_1:
            if 31 < stor7[arg1].field_1:
                mem[192] = stor7[arg1].field_0
                idx = 192
                s = 0
                while stor7[arg1].field_1 + 160 > idx:
                    mem[idx + 32] = stor7[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7[arg1].field_0, data=mem[192 len ceil32(stor7[arg1].field_1)])
            mem[192] = 256 * stor7[arg1].field_8
    else:
        if stor7[arg1].field_0 == stor7[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor7[arg1].field_1:
            if 31 < stor7[arg1].field_1:
                mem[192] = stor7[arg1].field_0
                idx = 192
                s = 0
                while stor7[arg1].field_1 + 160 > idx:
                    mem[idx + 32] = stor7[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7[arg1].field_0, data=mem[192 len ceil32(stor7[arg1].field_1)])
            mem[192] = 256 * stor7[arg1].field_8
    mem[ceil32(stor7[arg1].field_1) + 256 len ceil32(stor7[arg1].field_1)] = mem[192 len ceil32(stor7[arg1].field_1)]
    if ceil32(stor7[arg1].field_1) > stor7[arg1].field_1:
        mem[ceil32(stor7[arg1].field_1) + stor7[arg1].field_1 + 256] = 0
    return Array(len=stor7[arg1].field_0, data=mem[192 len ceil32(stor7[arg1].field_1)], mem[(2 * ceil32(stor7[arg1].field_1)) + 256 len 2 * ceil32(stor7[arg1].field_1)]), 
}



}
