contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
array of struct stor1;
array of struct stor2;
mapping of struct stor3;
mapping of uint128 balanceOf;
mapping of address approved;
mapping of uint8 stor6;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if totalSupply <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721A: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() payable {
    return totalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721A: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor6[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= totalSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721A: global index out of bounds'
    return arg1
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if totalSupply <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    return ''
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721A: approve to caller'
    stor6[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if totalSupply <= arg1:
        revert with 0, 'ERC721A: owner query for nonexistent token'
    if stor3[var17001].field_0:
        return stor3[var17001].field_0
    if not var21001:
        revert with 0, 17
    if stor3[var27001].field_0:
        return stor3[var27001].field_0
    if not var31001:
        revert with 0, 17
    if stor3[var37001].field_0:
        return stor3[var37001].field_0
    if not var41001:
        revert with 0, 17
    if stor3[var47001].field_0:
        return stor3[var47001].field_0
    if not var51001:
        revert with 0, 17
    # nil
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721A: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721A: owner index out of bounds'
    idx = 0
    s = 0
    t = 0
    while idx < totalSupply:
        mem[0] = idx
        mem[32] = 3
        _17 = mem[64]
        mem[64] = mem[64] + 64
        mem[_17] = stor3[idx].field_0
        mem[_17 + 32] = stor3[idx].field_160
        if not stor3[idx].field_0:
            if address(s) != arg1:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                t = t
                continue 
            if t == arg2:
                return idx
            if t == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            t = t + 1
            continue 
        if stor3[idx].field_0 != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = stor3[idx].field_0
            t = t
            continue 
        if t == arg2:
            return idx
        if t == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = stor3[idx].field_0
        t = t + 1
        continue 
    revert with 0, 'ERC721A: unable to get token of owner by index'
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if totalSupply <= arg2:
        revert with 0, 'ERC721A: owner query for nonexistent token'
    if stor3[var21001].field_0:
        if arg1 == stor3[var21001].field_0:
            revert with 0, 'ERC721A: approval to current owner'
        if stor3[var21001].field_0 != msg.sender:
            if not stor6[stor3[var21001].field_0][address(msg.sender)]:
                revert with 0, 'ERC721A: approve caller is not owner nor approved for all'
        approved[arg2] = arg1
        emit Approval(stor3[var21001].field_0, arg1, arg2);
    if not var25001:
        revert with 0, 17
    if stor3[var31001].field_0:
        if arg1 == stor3[var31001].field_0:
            revert with 0, 'ERC721A: approval to current owner'
        if stor3[var31001].field_0 != msg.sender:
            if not stor6[stor3[var31001].field_0][address(msg.sender)]:
                revert with 0, 'ERC721A: approve caller is not owner nor approved for all'
        approved[arg2] = arg1
        emit Approval(stor3[var31001].field_0, arg1, arg2);
    if not var35001:
        revert with 0, 17
    if stor3[var41001].field_0:
        if arg1 == stor3[var41001].field_0:
            revert with 0, 'ERC721A: approval to current owner'
        if stor3[var41001].field_0 != msg.sender:
            if not stor6[stor3[var41001].field_0][address(msg.sender)]:
                revert with 0, 'ERC721A: approve caller is not owner nor approved for all'
        approved[arg2] = arg1
        emit Approval(stor3[var41001].field_0, arg1, arg2);
    if not var45001:
        revert with 0, 17
    if not stor3[var51001].field_0:
        if not var55001:
            revert with 0, 17
        # nil
    else:
        if arg1 == stor3[var51001].field_0:
            revert with 0, 'ERC721A: approval to current owner'
        if stor3[var51001].field_0 != msg.sender:
            if not stor6[stor3[var51001].field_0][address(msg.sender)]:
                revert with 0, 'ERC721A: approve caller is not owner nor approved for all'
        approved[arg2] = arg1
        emit Approval(stor3[var51001].field_0, arg1, arg2);
}

function name() payable {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if bool(stor1.length):
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
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
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
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[stor1.length.field_1 + ceil32(stor1.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 0, 34
    if bool(stor1.length):
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

function symbol() payable {
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 0, 34
        if bool(stor2.length):
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
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
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
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) > stor2.length.field_1:
            mem[stor2.length.field_1 + ceil32(stor2.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 0, 34
    if bool(stor2.length):
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

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if totalSupply <= arg3:
        revert with 0, 'ERC721A: owner query for nonexistent token'
    if stor3[var24001].field_0:
        if stor3[var24001].field_0 != msg.sender:
            if totalSupply <= arg3:
                revert with 0, 'ERC721A: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
                if not stor6[stor3[var24001].field_0][address(msg.sender)]:
                    revert with 0, 'ERC721A: transfer caller is not owner nor approved'
        if stor3[var24001].field_0 != arg1:
            revert with 0, 'ERC721A: transfer from incorrect owner'
        if not arg2:
            revert with 0, 'ERC721A: transfer to the zero address'
        approved[arg3] = 0
        emit Approval(stor3[var24001].field_0, 0, arg3);
        balanceOf[address(arg1)] = uint128(balanceOf[address(arg1)] - 1)
        balanceOf[arg2] = uint128(balanceOf[arg2] + 1)
        stor3[arg3].field_0 = arg2
        stor3[arg3].field_160 = uint64(block.timestamp)
        if 1 > !arg3:
            revert with 0, 17
        if not stor3[arg3 + 1].field_0:
            if totalSupply > arg3 + 1:
                stor3[arg3 + 1].field_0 = stor3[var24001].field_0
                stor3[arg3 + 1].field_160 = stor3[var24001].field_160
        emit Transfer(arg1, arg2, arg3);
    if not var28001:
        revert with 0, 17
    if stor3[var34001].field_0:
        if stor3[var34001].field_0 != msg.sender:
            if totalSupply <= arg3:
                revert with 0, 'ERC721A: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
                if not stor6[stor3[var34001].field_0][address(msg.sender)]:
                    revert with 0, 'ERC721A: transfer caller is not owner nor approved'
        if stor3[var34001].field_0 != arg1:
            revert with 0, 'ERC721A: transfer from incorrect owner'
        if not arg2:
            revert with 0, 'ERC721A: transfer to the zero address'
        approved[arg3] = 0
        emit Approval(stor3[var34001].field_0, 0, arg3);
        balanceOf[address(arg1)] = uint128(balanceOf[address(arg1)] - 1)
        balanceOf[arg2] = uint128(balanceOf[arg2] + 1)
        stor3[arg3].field_0 = arg2
        stor3[arg3].field_160 = uint64(block.timestamp)
        if 1 > !arg3:
            revert with 0, 17
        if not stor3[arg3 + 1].field_0:
            if totalSupply > arg3 + 1:
                stor3[arg3 + 1].field_0 = stor3[var34001].field_0
                stor3[arg3 + 1].field_160 = stor3[var34001].field_160
        emit Transfer(arg1, arg2, arg3);
    if not var38001:
        revert with 0, 17
    if stor3[var44001].field_0:
        if stor3[var44001].field_0 != msg.sender:
            if totalSupply <= arg3:
                revert with 0, 'ERC721A: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
                if not stor6[stor3[var44001].field_0][address(msg.sender)]:
                    revert with 0, 'ERC721A: transfer caller is not owner nor approved'
        if stor3[var44001].field_0 != arg1:
            revert with 0, 'ERC721A: transfer from incorrect owner'
        if not arg2:
            revert with 0, 'ERC721A: transfer to the zero address'
        approved[arg3] = 0
        emit Approval(stor3[var44001].field_0, 0, arg3);
        balanceOf[address(arg1)] = uint128(balanceOf[address(arg1)] - 1)
        balanceOf[arg2] = uint128(balanceOf[arg2] + 1)
        stor3[arg3].field_0 = arg2
        stor3[arg3].field_160 = uint64(block.timestamp)
        if 1 > !arg3:
            revert with 0, 17
        if not stor3[arg3 + 1].field_0:
            if totalSupply > arg3 + 1:
                stor3[arg3 + 1].field_0 = stor3[var44001].field_0
                stor3[arg3 + 1].field_160 = stor3[var44001].field_160
        emit Transfer(arg1, arg2, arg3);
    if not var48001:
        revert with 0, 17
    if not stor3[var54001].field_0:
        if not var58001:
            revert with 0, 17
        # nil
    else:
        if stor3[var54001].field_0 != msg.sender:
            if totalSupply <= arg3:
                revert with 0, 'ERC721A: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
                if not stor6[stor3[var54001].field_0][address(msg.sender)]:
                    revert with 0, 'ERC721A: transfer caller is not owner nor approved'
        if stor3[var54001].field_0 != arg1:
            revert with 0, 'ERC721A: transfer from incorrect owner'
        if not arg2:
            revert with 0, 'ERC721A: transfer to the zero address'
        approved[arg3] = 0
        emit Approval(stor3[var54001].field_0, 0, arg3);
        balanceOf[address(arg1)] = uint128(balanceOf[address(arg1)] - 1)
        balanceOf[arg2] = uint128(balanceOf[arg2] + 1)
        stor3[arg3].field_0 = arg2
        stor3[arg3].field_160 = uint64(block.timestamp)
        if 1 > !arg3:
            revert with 0, 17
        if not stor3[arg3 + 1].field_0:
            if totalSupply > arg3 + 1:
                stor3[arg3 + 1].field_0 = stor3[var54001].field_0
                stor3[arg3 + 1].field_160 = stor3[var54001].field_160
        emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if totalSupply <= arg3:
        revert with 0, 'ERC721A: owner query for nonexistent token'
    if stor3[var25001].field_0:
        if stor3[var25001].field_0 != msg.sender:
            if totalSupply <= arg3:
                revert with 0, 'ERC721A: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
                if not stor6[stor3[var25001].field_0][address(msg.sender)]:
                    revert with 0, 'ERC721A: transfer caller is not owner nor approved'
        if stor3[var25001].field_0 != arg1:
            revert with 0, 'ERC721A: transfer from incorrect owner'
        if not arg2:
            revert with 0, 'ERC721A: transfer to the zero address'
        approved[arg3] = 0
        emit Approval(stor3[var25001].field_0, 0, arg3);
        balanceOf[address(arg1)] = uint128(balanceOf[address(arg1)] - 1)
        balanceOf[arg2] = uint128(balanceOf[arg2] + 1)
        stor3[arg3].field_0 = arg2
        stor3[arg3].field_160 = uint64(block.timestamp)
        if 1 > !arg3:
            revert with 0, 17
        if not stor3[arg3 + 1].field_0:
            if totalSupply > arg3 + 1:
                stor3[arg3 + 1].field_0 = stor3[var25001].field_0
                stor3[arg3 + 1].field_160 = stor3[var25001].field_160
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2):
            require ext_code.size(arg2)
            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, 128, 0
            if not ext_call.success:
                if not return_data.size:
                    revert with 0, 'ERC721A: transfer to non ERC721Receiver implementer'
                if not return_data.size:
                    revert with 0, 'ERC721A: transfer to non ERC721Receiver implementer'
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721A: transfer to non ERC721Receiver implementer'
    if not var29001:
        revert with 0, 17
    if stor3[var35001].field_0:
        if stor3[var35001].field_0 != msg.sender:
            if totalSupply <= arg3:
                revert with 0, 'ERC721A: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
                if not stor6[stor3[var35001].field_0][address(msg.sender)]:
                    revert with 0, 'ERC721A: transfer caller is not owner nor approved'
        if stor3[var35001].field_0 != arg1:
            revert with 0, 'ERC721A: transfer from incorrect owner'
        if not arg2:
            revert with 0, 'ERC721A: transfer to the zero address'
        approved[arg3] = 0
        emit Approval(stor3[var35001].field_0, 0, arg3);
        balanceOf[address(arg1)] = uint128(balanceOf[address(arg1)] - 1)
        balanceOf[arg2] = uint128(balanceOf[arg2] + 1)
        stor3[arg3].field_0 = arg2
        stor3[arg3].field_160 = uint64(block.timestamp)
        if 1 > !arg3:
            revert with 0, 17
        if not stor3[arg3 + 1].field_0:
            if totalSupply > arg3 + 1:
                stor3[arg3 + 1].field_0 = stor3[var35001].field_0
                stor3[arg3 + 1].field_160 = stor3[var35001].field_160
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2):
            require ext_code.size(arg2)
            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, 128, 0
            if not ext_call.success:
                if not return_data.size:
                    revert with 0, 'ERC721A: transfer to non ERC721Receiver implementer'
                if not return_data.size:
                    revert with 0, 'ERC721A: transfer to non ERC721Receiver implementer'
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721A: transfer to non ERC721Receiver implementer'
    if not var39001:
        revert with 0, 17
    if stor3[var45001].field_0:
        if stor3[var45001].field_0 != msg.sender:
            if totalSupply <= arg3:
                revert with 0, 'ERC721A: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
                if not stor6[stor3[var45001].field_0][address(msg.sender)]:
                    revert with 0, 'ERC721A: transfer caller is not owner nor approved'
        if stor3[var45001].field_0 != arg1:
            revert with 0, 'ERC721A: transfer from incorrect owner'
        if not arg2:
            revert with 0, 'ERC721A: transfer to the zero address'
        approved[arg3] = 0
        emit Approval(stor3[var45001].field_0, 0, arg3);
        balanceOf[address(arg1)] = uint128(balanceOf[address(arg1)] - 1)
        balanceOf[arg2] = uint128(balanceOf[arg2] + 1)
        stor3[arg3].field_0 = arg2
        stor3[arg3].field_160 = uint64(block.timestamp)
        if 1 > !arg3:
            revert with 0, 17
        if not stor3[arg3 + 1].field_0:
            if totalSupply > arg3 + 1:
                stor3[arg3 + 1].field_0 = stor3[var45001].field_0
                stor3[arg3 + 1].field_160 = stor3[var45001].field_160
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2):
            require ext_code.size(arg2)
            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, 128, 0
            if not ext_call.success:
                if not return_data.size:
                    revert with 0, 'ERC721A: transfer to non ERC721Receiver implementer'
                if not return_data.size:
                    revert with 0, 'ERC721A: transfer to non ERC721Receiver implementer'
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721A: transfer to non ERC721Receiver implementer'
    if not var49001:
        revert with 0, 17
    if not stor3[var55001].field_0:
        if not var59001:
            revert with 0, 17
        # nil
    else:
        if stor3[var55001].field_0 != msg.sender:
            if totalSupply <= arg3:
                revert with 0, 'ERC721A: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
                if not stor6[stor3[var55001].field_0][address(msg.sender)]:
                    revert with 0, 'ERC721A: transfer caller is not owner nor approved'
        if stor3[var55001].field_0 != arg1:
            revert with 0, 'ERC721A: transfer from incorrect owner'
        if not arg2:
            revert with 0, 'ERC721A: transfer to the zero address'
        approved[arg3] = 0
        emit Approval(stor3[var55001].field_0, 0, arg3);
        balanceOf[address(arg1)] = uint128(balanceOf[address(arg1)] - 1)
        balanceOf[arg2] = uint128(balanceOf[arg2] + 1)
        stor3[arg3].field_0 = arg2
        stor3[arg3].field_160 = uint64(block.timestamp)
        if 1 > !arg3:
            revert with 0, 17
        if not stor3[arg3 + 1].field_0:
            if totalSupply > arg3 + 1:
                stor3[arg3 + 1].field_0 = stor3[var55001].field_0
                stor3[arg3 + 1].field_160 = stor3[var55001].field_160
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2):
            require ext_code.size(arg2)
            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, 128, 0
            if not ext_call.success:
                if not return_data.size:
                    revert with 0, 'ERC721A: transfer to non ERC721Receiver implementer'
                if not return_data.size:
                    revert with 0, 'ERC721A: transfer to non ERC721Receiver implementer'
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721A: transfer to non ERC721Receiver implementer'
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
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
    if totalSupply <= arg3:
        revert with 0, 'ERC721A: owner query for nonexistent token'
    if stor3[var29001].field_0:
        if stor3[var29001].field_0 != msg.sender:
            if totalSupply <= arg3:
                revert with 0, 'ERC721A: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
                if not stor6[stor3[var29001].field_0][address(msg.sender)]:
                    revert with 0, 'ERC721A: transfer caller is not owner nor approved'
        if stor3[var29001].field_0 != arg1:
            revert with 0, 'ERC721A: transfer from incorrect owner'
        if not arg2:
            revert with 0, 'ERC721A: transfer to the zero address'
        approved[arg3] = 0
        emit Approval(stor3[var29001].field_0, 0, arg3);
        balanceOf[address(arg1)] = uint128(balanceOf[address(arg1)] - 1)
        balanceOf[arg2] = uint128(balanceOf[arg2] + 1)
        stor3[arg3].field_0 = arg2
        stor3[arg3].field_160 = uint64(block.timestamp)
        if 1 > !arg3:
            revert with 0, 17
        if not stor3[arg3 + 1].field_0:
            if totalSupply > arg3 + 1:
                stor3[arg3 + 1].field_0 = stor3[var29001].field_0
                stor3[arg3 + 1].field_160 = stor3[var29001].field_160
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2):
            require ext_code.size(arg2)
            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
            if not ext_call.success:
                if not return_data.size:
                    if not arg4.length:
                        revert with 0, 'ERC721A: transfer to non ERC721Receiver implementer'
                    revert with arg4[all]
                if not return_data.size:
                    revert with 0, 'ERC721A: transfer to non ERC721Receiver implementer'
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721A: transfer to non ERC721Receiver implementer'
    if not var33001:
        revert with 0, 17
    if stor3[var39001].field_0:
        if stor3[var39001].field_0 != msg.sender:
            if totalSupply <= arg3:
                revert with 0, 'ERC721A: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
                if not stor6[stor3[var39001].field_0][address(msg.sender)]:
                    revert with 0, 'ERC721A: transfer caller is not owner nor approved'
        if stor3[var39001].field_0 != arg1:
            revert with 0, 'ERC721A: transfer from incorrect owner'
        if not arg2:
            revert with 0, 'ERC721A: transfer to the zero address'
        approved[arg3] = 0
        emit Approval(stor3[var39001].field_0, 0, arg3);
        balanceOf[address(arg1)] = uint128(balanceOf[address(arg1)] - 1)
        balanceOf[arg2] = uint128(balanceOf[arg2] + 1)
        stor3[arg3].field_0 = arg2
        stor3[arg3].field_160 = uint64(block.timestamp)
        if 1 > !arg3:
            revert with 0, 17
        if not stor3[arg3 + 1].field_0:
            if totalSupply > arg3 + 1:
                stor3[arg3 + 1].field_0 = stor3[var39001].field_0
                stor3[arg3 + 1].field_160 = stor3[var39001].field_160
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2):
            require ext_code.size(arg2)
            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
            if not ext_call.success:
                if not return_data.size:
                    if not arg4.length:
                        revert with 0, 'ERC721A: transfer to non ERC721Receiver implementer'
                    revert with arg4[all]
                if not return_data.size:
                    revert with 0, 'ERC721A: transfer to non ERC721Receiver implementer'
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721A: transfer to non ERC721Receiver implementer'
    if not var43001:
        revert with 0, 17
    if stor3[var49001].field_0:
        if stor3[var49001].field_0 != msg.sender:
            if totalSupply <= arg3:
                revert with 0, 'ERC721A: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
                if not stor6[stor3[var49001].field_0][address(msg.sender)]:
                    revert with 0, 'ERC721A: transfer caller is not owner nor approved'
        if stor3[var49001].field_0 != arg1:
            revert with 0, 'ERC721A: transfer from incorrect owner'
        if not arg2:
            revert with 0, 'ERC721A: transfer to the zero address'
        approved[arg3] = 0
        emit Approval(stor3[var49001].field_0, 0, arg3);
        balanceOf[address(arg1)] = uint128(balanceOf[address(arg1)] - 1)
        balanceOf[arg2] = uint128(balanceOf[arg2] + 1)
        stor3[arg3].field_0 = arg2
        stor3[arg3].field_160 = uint64(block.timestamp)
        if 1 > !arg3:
            revert with 0, 17
        if not stor3[arg3 + 1].field_0:
            if totalSupply > arg3 + 1:
                stor3[arg3 + 1].field_0 = stor3[var49001].field_0
                stor3[arg3 + 1].field_160 = stor3[var49001].field_160
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2):
            require ext_code.size(arg2)
            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
            if not ext_call.success:
                if not return_data.size:
                    if not arg4.length:
                        revert with 0, 'ERC721A: transfer to non ERC721Receiver implementer'
                    revert with arg4[all]
                if not return_data.size:
                    revert with 0, 'ERC721A: transfer to non ERC721Receiver implementer'
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721A: transfer to non ERC721Receiver implementer'
    if not var53001:
        revert with 0, 17
    if not stor3[var59001].field_0:
        if not var63001:
            revert with 0, 17
        # nil
    else:
        if stor3[var59001].field_0 != msg.sender:
            if totalSupply <= arg3:
                revert with 0, 'ERC721A: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
                if not stor6[stor3[var59001].field_0][address(msg.sender)]:
                    revert with 0, 'ERC721A: transfer caller is not owner nor approved'
        if stor3[var59001].field_0 != arg1:
            revert with 0, 'ERC721A: transfer from incorrect owner'
        if not arg2:
            revert with 0, 'ERC721A: transfer to the zero address'
        approved[arg3] = 0
        emit Approval(stor3[var59001].field_0, 0, arg3);
        balanceOf[address(arg1)] = uint128(balanceOf[address(arg1)] - 1)
        balanceOf[arg2] = uint128(balanceOf[arg2] + 1)
        stor3[arg3].field_0 = arg2
        stor3[arg3].field_160 = uint64(block.timestamp)
        if 1 > !arg3:
            revert with 0, 17
        if not stor3[arg3 + 1].field_0:
            if totalSupply > arg3 + 1:
                stor3[arg3 + 1].field_0 = stor3[var59001].field_0
                stor3[arg3 + 1].field_160 = stor3[var59001].field_160
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2):
            require ext_code.size(arg2)
            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
            if not ext_call.success:
                if not return_data.size:
                    if not arg4.length:
                        revert with 0, 'ERC721A: transfer to non ERC721Receiver implementer'
                    revert with arg4[all]
                if not return_data.size:
                    revert with 0, 'ERC721A: transfer to non ERC721Receiver implementer'
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721A: transfer to non ERC721Receiver implementer'
}



}
