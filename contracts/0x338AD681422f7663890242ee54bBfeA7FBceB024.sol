contract main {




// =====================  Runtime code  =====================


#
#  - sub_b538e3cb(?)
#
array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of struct stor6;
address _adminAddress;
address sub_4bd7c01cAddress;
address sub_7e988953Address;
uint256 _tokenIds;
mapping of struct sub_033ee83b;
mapping of struct stor12;
mapping of struct stor13;
uint256 stor72C6;
uint256 stor72C6;
uint256 stor72C6;
uint256 stor72C6;
uint256 stor72C6;
uint256 storD421;
uint256 storD421;

function _admin() payable {
    return _adminAddress
}

function sub_033ee83b(?) payable {
    require calldata.size - 4 >= 32
    return sub_033ee83b[arg1].field_0, 
           sub_033ee83b[arg1].field_256,
           sub_033ee83b[arg1].field_512,
           sub_033ee83b[arg1].field_768,
           sub_033ee83b[arg1].field_1024,
           sub_033ee83b[arg1].field_1280
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_4bd7c01c(?) payable {
    return sub_4bd7c01cAddress
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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

function sub_7e988953(?) payable {
    return sub_7e988953Address
}

function _tokenIds() payable {
    return _tokenIds
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

function sub_47091d4a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _adminAddress != msg.sender:
        revert with 0, 'not admin'
    if not address(arg1):
        revert with 0, 'Zero address'
    sub_7e988953Address = address(arg1)
}

function sub_59d2f54f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _adminAddress != msg.sender:
        revert with 0, 'not admin'
    if not address(arg1):
        revert with 0, 'Zero address'
    sub_4bd7c01cAddress = address(arg1)
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _adminAddress != msg.sender:
        revert with 0, 'not admin'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The new owner cannot be a null address'
    _adminAddress = arg1
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

function sub_461f8194(?) payable {
    require calldata.size - 4 >= 32
    if stor13[arg1].field_768:
        if stor13[arg1].field_768 == uint255(stor13[arg1].field_768) * 0.5 < 32:
            revert with 0, 34
        if stor13[arg1].field_768:
            if stor13[arg1].field_768 == uint255(stor13[arg1].field_768) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor13[arg1].field_768):
                if 31 >= uint255(stor13[arg1].field_768) * 0.5:
                    mem[128] = 256 * stor13[arg1].field_776
                else:
                    mem[128] = stor13[arg1][3].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor13[arg1].field_768) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor13[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor13[arg1].field_768 == stor13[arg1].field_769 < 32:
                revert with 0, 34
            if stor13[arg1].field_769:
                if 31 >= stor13[arg1].field_769:
                    mem[128] = 256 * stor13[arg1].field_776
                else:
                    mem[128] = stor13[arg1][3].field_0
                    idx = 128
                    s = 0
                    while stor13[arg1].field_769 + 96 > idx:
                        mem[idx + 32] = stor13[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor13[arg1].field_0, 
               stor13[arg1].field_256,
               stor13[arg1].field_512,
               Array(len=2 * Mask(256, -1, stor13[arg1].field_768), data=mem[128 len ceil32(uint255(stor13[arg1].field_768) * 0.5)])
    if stor13[arg1].field_768 == stor13[arg1].field_769 < 32:
        revert with 0, 34
    if stor13[arg1].field_768:
        if stor13[arg1].field_768 == uint255(stor13[arg1].field_768) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor13[arg1].field_768):
            if 31 >= uint255(stor13[arg1].field_768) * 0.5:
                mem[128] = 256 * stor13[arg1].field_776
            else:
                mem[128] = stor13[arg1][3].field_0
                idx = 128
                s = 0
                while (uint255(stor13[arg1].field_768) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor13[arg1][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor13[arg1].field_768 == stor13[arg1].field_769 < 32:
            revert with 0, 34
        if stor13[arg1].field_769:
            if 31 >= stor13[arg1].field_769:
                mem[128] = 256 * stor13[arg1].field_776
            else:
                mem[128] = stor13[arg1][3].field_0
                idx = 128
                s = 0
                while stor13[arg1].field_769 + 96 > idx:
                    mem[idx + 32] = stor13[arg1][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor13[arg1].field_0, 
           stor13[arg1].field_256,
           stor13[arg1].field_512,
           Array(len=stor13[arg1].field_768, data=mem[128 len ceil32(stor13[arg1].field_769)])
}

function sub_afe7aac7(?) payable {
    require calldata.size - 4 >= 32
    if stor12[arg1].field_768:
        if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
            revert with 0, 34
        if stor12[arg1].field_768:
            if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor12[arg1].field_768):
                if 31 >= uint255(stor12[arg1].field_768) * 0.5:
                    mem[128] = 256 * stor12[arg1].field_776
                else:
                    mem[128] = stor12[arg1][3].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor12[arg1].field_768) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor12[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                revert with 0, 34
            if stor12[arg1].field_769:
                if 31 >= stor12[arg1].field_769:
                    mem[128] = 256 * stor12[arg1].field_776
                else:
                    mem[128] = stor12[arg1][3].field_0
                    idx = 128
                    s = 0
                    while stor12[arg1].field_769 + 96 > idx:
                        mem[idx + 32] = stor12[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor12[arg1].field_0, 
               stor12[arg1].field_256,
               stor12[arg1].field_512,
               Array(len=2 * Mask(256, -1, stor12[arg1].field_768), data=mem[128 len ceil32(uint255(stor12[arg1].field_768) * 0.5)])
    if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
        revert with 0, 34
    if stor12[arg1].field_768:
        if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor12[arg1].field_768):
            if 31 >= uint255(stor12[arg1].field_768) * 0.5:
                mem[128] = 256 * stor12[arg1].field_776
            else:
                mem[128] = stor12[arg1][3].field_0
                idx = 128
                s = 0
                while (uint255(stor12[arg1].field_768) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor12[arg1][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
            revert with 0, 34
        if stor12[arg1].field_769:
            if 31 >= stor12[arg1].field_769:
                mem[128] = 256 * stor12[arg1].field_776
            else:
                mem[128] = stor12[arg1][3].field_0
                idx = 128
                s = 0
                while stor12[arg1].field_769 + 96 > idx:
                    mem[idx + 32] = stor12[arg1][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor12[arg1].field_0, 
           stor12[arg1].field_256,
           stor12[arg1].field_512,
           Array(len=stor12[arg1].field_768, data=mem[128 len ceil32(stor12[arg1].field_769)])
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
            mem[(uint255(stor0.length) * 0.5) + ceil32(uint255(stor0.length) * 0.5) + 192] = 0
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
        mem[stor0.length.field_1 + ceil32(stor0.length.field_1) + 192] = 0
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

function sub_919b18a1(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == address(arg2)
    if sub_4bd7c01cAddress != msg.sender:
        revert with 0, 'not permited core addres'
    if 1 > !storD421:
        revert with 0, 17
    require storD421 + 1 <= storD421
    if address(arg2) == 0x2865ed62413af78c06c1b8bb39172cd95f1a058c:
        revert with 0, 'You are banned'
    _tokenIds++
    if not address(arg2):
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor10]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[stor10] = address(arg2)
    emit Transfer(0, address(arg2), _tokenIds);
    if not ownerOf[stor10]:
        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
    if stor6[stor10].field_0:
        if stor6[stor10].field_0 == uint255(stor6[stor10].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor6[stor10][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor6[stor10].field_0 = 0
            idx = 0
            while (uint255(stor6[stor10].field_0) * 0.5) + 31 / 32 > idx:
                stor6[stor10][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor6[stor10].field_0 == stor6[stor10].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor6[stor10][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor6[stor10].field_0 = 0
            idx = 0
            while stor6[stor10].field_1 + 31 / 32 > idx:
                stor6[stor10][idx].field_0 = 0
                idx = idx + 1
                continue 
    stor13[stor10].field_0 = _tokenIds
    stor13[stor10].field_256 = arg3
    stor13[stor10].field_512 = arg4
    if stor13[stor10].field_768:
        if stor13[stor10].field_768 == uint255(stor13[stor10].field_768) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor13[stor10][3][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor13[stor10].field_768 = 0
            idx = 0
            while (uint255(stor13[stor10].field_768) * 0.5) + 31 / 32 > idx:
                stor13[stor10][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor13[stor10].field_768 == stor13[stor10].field_769 < 32:
            revert with 0, 34
        if arg1.length:
            stor13[stor10][3][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor13[stor10].field_768 = 0
            idx = 0
            while stor13[stor10].field_769 + 31 / 32 > idx:
                stor13[stor10][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
    if 1 > !storD421:
        revert with 0, 17
    storD421++
    if arg3 == 1:
        if 1 > !sub_033ee83b[1].field_0:
            revert with 0, 17
        sub_033ee83b[1].field_0++
    else:
        if 2 == arg3:
            if 1 > !stor72C6:
                revert with 0, 17
            stor72C6++
        else:
            if 3 == arg3:
                if 1 > !stor72C6:
                    revert with 0, 17
                stor72C6++
            else:
                if 4 == arg3:
                    if 1 > !stor72C6:
                        revert with 0, 17
                    stor72C6++
                else:
                    if 5 == arg3:
                        if 1 > !stor72C6:
                            revert with 0, 17
                        stor72C6++
                    else:
                        if 6 == arg3:
                            if 1 > !stor72C6:
                                revert with 0, 17
                            stor72C6++
    emit 0xb2914923: address(arg2), arg3, arg4
    return _tokenIds
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721URIStorage: URI query for nonexistent token'
    if stor6[arg1].field_0:
        if stor6[arg1].field_0 == uint255(stor6[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor6[arg1].field_0:
            if stor6[arg1].field_0 == uint255(stor6[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor6[arg1].field_0):
                if 31 < uint255(stor6[arg1].field_0) * 0.5:
                    mem[128] = stor6[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor6[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor6[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6[arg1].field_0), data=mem[128 len ceil32(uint255(stor6[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor6[arg1].field_8
        else:
            if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
                revert with 0, 34
            if stor6[arg1].field_1:
                if 31 < stor6[arg1].field_1:
                    mem[128] = stor6[arg1].field_0
                    idx = 128
                    s = 0
                    while stor6[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor6[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6[arg1].field_0), data=mem[128 len ceil32(uint255(stor6[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor6[arg1].field_8
        mem[ceil32(uint255(stor6[arg1].field_0) * 0.5) + 224 len ceil32(uint255(stor6[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor6[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor6[arg1].field_0) * 0.5) > uint255(stor6[arg1].field_0) * 0.5:
            mem[(uint255(stor6[arg1].field_0) * 0.5) + ceil32(uint255(stor6[arg1].field_0) * 0.5) + 224] = 0
        return Array(len=2 * Mask(256, -1, stor6[arg1].field_0), data=mem[128 len ceil32(uint255(stor6[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor6[arg1].field_0) * 0.5)) + 224 len 2 * ceil32(uint255(stor6[arg1].field_0) * 0.5)]), 
    if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
        revert with 0, 34
    if stor6[arg1].field_0:
        if stor6[arg1].field_0 == uint255(stor6[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor6[arg1].field_0):
            if 31 < uint255(stor6[arg1].field_0) * 0.5:
                mem[128] = stor6[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor6[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor6[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6[arg1].field_0, data=mem[128 len ceil32(stor6[arg1].field_1)])
            mem[128] = 256 * stor6[arg1].field_8
    else:
        if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
            revert with 0, 34
        if stor6[arg1].field_1:
            if 31 < stor6[arg1].field_1:
                mem[128] = stor6[arg1].field_0
                idx = 128
                s = 0
                while stor6[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor6[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6[arg1].field_0, data=mem[128 len ceil32(stor6[arg1].field_1)])
            mem[128] = 256 * stor6[arg1].field_8
    mem[ceil32(stor6[arg1].field_1) + 224 len ceil32(stor6[arg1].field_1)] = mem[128 len ceil32(stor6[arg1].field_1)]
    if ceil32(stor6[arg1].field_1) > stor6[arg1].field_1:
        mem[stor6[arg1].field_1 + ceil32(stor6[arg1].field_1) + 224] = 0
    return Array(len=stor6[arg1].field_0, data=mem[128 len ceil32(stor6[arg1].field_1)], mem[(2 * ceil32(stor6[arg1].field_1)) + 224 len 2 * ceil32(stor6[arg1].field_1)]), 
}

function sub_13008f27(?) payable {
    require calldata.size - 4 >= 160
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg5 == address(arg5)
    if sub_7e988953Address != msg.sender:
        revert with 0, 'not permited address'
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != address(arg5):
        revert with 0, 'not owner'
    if arg3 != stor13[arg1].field_512:
        revert with 0, 'not same race'
    if arg2 == stor13[arg1].field_256:
        revert with 0, 'not same rare'
    mem[ceil32(ceil32(arg4.length)) + 129 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    mem[ceil32(ceil32(arg4.length)) + 97] = arg4.length
    if ceil32(arg4.length) <= arg4.length:
        _1185 = sha3(mem[ceil32(ceil32(arg4.length)) + 129 len arg4.length])
        if stor13[arg1].field_768:
            if stor13[arg1].field_768 == uint255(stor13[arg1].field_768) * 0.5 < 32:
                revert with 0, 34
            if not stor13[arg1].field_768:
                mem[arg4.length + ceil32(ceil32(arg4.length)) + 161] = Mask(248, 8, stor13[arg1].field_768)
                if sha3(mem[arg4.length + ceil32(ceil32(arg4.length)) + 161 len uint255(stor13[arg1].field_768) * 0.5]) == _1185:
                    revert with 0, 'not same uri'
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                if stor6[arg1].field_0:
                    if stor6[arg1].field_0 == uint255(stor6[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if arg4.length:
                        stor6[arg1][].field_0 = Array(len=arg4.length, data=arg4[all])
                    else:
                        stor6[arg1].field_0 = 0
                        idx = 0
                        while (uint255(stor6[arg1].field_0) * 0.5) + 31 / 32 > idx:
                            stor6[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
                        revert with 0, 34
                    if arg4.length:
                        stor6[arg1][].field_0 = Array(len=arg4.length, data=arg4[all])
                    else:
                        stor6[arg1].field_0 = 0
                        idx = 0
                        while stor6[arg1].field_1 + 31 / 32 > idx:
                            stor6[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                stor13[arg1].field_256 = arg2
                stor13[arg1].field_512 = arg3
                emit 0x3a241afa: arg1, arg2, arg3, Array(len=arg4.length, data=arg4[all]), address(arg5)
                return 1
            if stor13[arg1].field_768 == 1:
                idx = 0
                s = 0
                while idx < uint255(stor13[arg1].field_768) * 0.5:
                    mem[idx + arg4.length + ceil32(ceil32(arg4.length)) + 161] = stor13[arg1][s + 3].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if sha3(mem[arg4.length + ceil32(ceil32(arg4.length)) + 161 len uint255(stor13[arg1].field_768) * 0.5]) == _1185:
                    revert with 0, 'not same uri'
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                if stor6[arg1].field_0:
                    if stor6[arg1].field_0 == uint255(stor6[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if arg4.length:
                        stor6[arg1][].field_0 = Array(len=arg4.length, data=arg4[all])
                    else:
                        stor6[arg1].field_0 = 0
                        idx = 0
                        while (uint255(stor6[arg1].field_0) * 0.5) + 31 / 32 > idx:
                            stor6[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
                        revert with 0, 34
                    if arg4.length:
                        stor6[arg1][].field_0 = Array(len=arg4.length, data=arg4[all])
                    else:
                        stor6[arg1].field_0 = 0
                        idx = 0
                        while stor6[arg1].field_1 + 31 / 32 > idx:
                            stor6[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                stor13[arg1].field_256 = arg2
                stor13[arg1].field_512 = arg3
                emit 0x3a241afa: arg1, arg2, arg3, Array(len=arg4.length, data=arg4[all]), address(arg5)
                return 1
        else:
            if stor13[arg1].field_768 == stor13[arg1].field_769 < 32:
                revert with 0, 34
            if not stor13[arg1].field_768:
                mem[arg4.length + ceil32(ceil32(arg4.length)) + 161] = Mask(248, 8, stor13[arg1].field_768)
                if sha3(mem[arg4.length + ceil32(ceil32(arg4.length)) + 161 len stor13[arg1].field_769]) == _1185:
                    revert with 0, 'not same uri'
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                if stor6[arg1].field_0:
                    if stor6[arg1].field_0 == uint255(stor6[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if arg4.length:
                        stor6[arg1][].field_0 = Array(len=arg4.length, data=arg4[all])
                    else:
                        stor6[arg1].field_0 = 0
                        idx = 0
                        while (uint255(stor6[arg1].field_0) * 0.5) + 31 / 32 > idx:
                            stor6[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
                        revert with 0, 34
                    if arg4.length:
                        stor6[arg1][].field_0 = Array(len=arg4.length, data=arg4[all])
                    else:
                        stor6[arg1].field_0 = 0
                        idx = 0
                        while stor6[arg1].field_1 + 31 / 32 > idx:
                            stor6[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                stor13[arg1].field_256 = arg2
                stor13[arg1].field_512 = arg3
                emit 0x3a241afa: arg1, arg2, arg3, Array(len=arg4.length, data=arg4[all]), address(arg5)
                return 1
            if stor13[arg1].field_768 == 1:
                idx = 0
                s = 0
                while idx < stor13[arg1].field_769:
                    mem[idx + arg4.length + ceil32(ceil32(arg4.length)) + 161] = stor13[arg1][s + 3].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if sha3(mem[arg4.length + ceil32(ceil32(arg4.length)) + 161 len stor13[arg1].field_769]) == _1185:
                    revert with 0, 'not same uri'
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                if stor6[arg1].field_0:
                    if stor6[arg1].field_0 == uint255(stor6[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if arg4.length:
                        stor6[arg1][].field_0 = Array(len=arg4.length, data=arg4[all])
                    else:
                        stor6[arg1].field_0 = 0
                        idx = 0
                        while (uint255(stor6[arg1].field_0) * 0.5) + 31 / 32 > idx:
                            stor6[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
                        revert with 0, 34
                    if arg4.length:
                        stor6[arg1][].field_0 = Array(len=arg4.length, data=arg4[all])
                    else:
                        stor6[arg1].field_0 = 0
                        idx = 0
                        while stor6[arg1].field_1 + 31 / 32 > idx:
                            stor6[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                stor13[arg1].field_256 = arg2
                stor13[arg1].field_512 = arg3
                emit 0x3a241afa: arg1, arg2, arg3, Array(len=arg4.length, data=arg4[all]), address(arg5)
                return 1
        ('iszero', ('eq', ('field', 768, ('stor', ('map', ('param', 'arg1'), ('name', 'stor13', 13)))), 1))
        mem[arg4.length + ceil32(ceil32(arg4.length)) + 129] = -arg4.length + -ceil32(ceil32(arg4.length)) - 161
        if sha3(mem[arg4.length + ceil32(ceil32(arg4.length)) + 161 len -arg4.length + -ceil32(ceil32(arg4.length)) - 161]) == _1185:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '', 0, uint32('not same uri')
    else:
        _1189 = sha3(mem[ceil32(ceil32(arg4.length)) + 129 len arg4.length])
        if stor13[arg1].field_768:
            if stor13[arg1].field_768 == uint255(stor13[arg1].field_768) * 0.5 < 32:
                revert with 0, 34
            if not stor13[arg1].field_768:
                mem[arg4.length + ceil32(ceil32(arg4.length)) + 161] = Mask(248, 8, stor13[arg1].field_768)
                if sha3(mem[arg4.length + ceil32(ceil32(arg4.length)) + 161 len uint255(stor13[arg1].field_768) * 0.5]) == _1189:
                    revert with 0, 'not same uri'
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                if stor6[arg1].field_0:
                    if stor6[arg1].field_0 == uint255(stor6[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if arg4.length:
                        stor6[arg1][].field_0 = Array(len=arg4.length, data=arg4[all])
                    else:
                        stor6[arg1].field_0 = 0
                        idx = 0
                        while (uint255(stor6[arg1].field_0) * 0.5) + 31 / 32 > idx:
                            stor6[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
                        revert with 0, 34
                    if arg4.length:
                        stor6[arg1][].field_0 = Array(len=arg4.length, data=arg4[all])
                    else:
                        stor6[arg1].field_0 = 0
                        idx = 0
                        while stor6[arg1].field_1 + 31 / 32 > idx:
                            stor6[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                stor13[arg1].field_256 = arg2
                stor13[arg1].field_512 = arg3
                emit 0x3a241afa: arg1, arg2, arg3, Array(len=arg4.length, data=arg4[all]), address(arg5)
                return 1
            if stor13[arg1].field_768 == 1:
                idx = 0
                s = 0
                while idx < uint255(stor13[arg1].field_768) * 0.5:
                    mem[idx + arg4.length + ceil32(ceil32(arg4.length)) + 161] = stor13[arg1][s + 3].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if sha3(mem[arg4.length + ceil32(ceil32(arg4.length)) + 161 len uint255(stor13[arg1].field_768) * 0.5]) == _1189:
                    revert with 0, 'not same uri'
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                if stor6[arg1].field_0:
                    if stor6[arg1].field_0 == uint255(stor6[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if arg4.length:
                        stor6[arg1][].field_0 = Array(len=arg4.length, data=arg4[all])
                    else:
                        stor6[arg1].field_0 = 0
                        idx = 0
                        while (uint255(stor6[arg1].field_0) * 0.5) + 31 / 32 > idx:
                            stor6[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
                        revert with 0, 34
                    if arg4.length:
                        stor6[arg1][].field_0 = Array(len=arg4.length, data=arg4[all])
                    else:
                        stor6[arg1].field_0 = 0
                        idx = 0
                        while stor6[arg1].field_1 + 31 / 32 > idx:
                            stor6[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                stor13[arg1].field_256 = arg2
                stor13[arg1].field_512 = arg3
                emit 0x3a241afa: arg1, arg2, arg3, Array(len=arg4.length, data=arg4[all]), address(arg5)
                return 1
        else:
            if stor13[arg1].field_768 == stor13[arg1].field_769 < 32:
                revert with 0, 34
            if not stor13[arg1].field_768:
                mem[arg4.length + ceil32(ceil32(arg4.length)) + 161] = Mask(248, 8, stor13[arg1].field_768)
                if sha3(mem[arg4.length + ceil32(ceil32(arg4.length)) + 161 len stor13[arg1].field_769]) == _1189:
                    revert with 0, 'not same uri'
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                if stor6[arg1].field_0:
                    if stor6[arg1].field_0 == uint255(stor6[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if arg4.length:
                        stor6[arg1][].field_0 = Array(len=arg4.length, data=arg4[all])
                    else:
                        stor6[arg1].field_0 = 0
                        idx = 0
                        while (uint255(stor6[arg1].field_0) * 0.5) + 31 / 32 > idx:
                            stor6[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
                        revert with 0, 34
                    if arg4.length:
                        stor6[arg1][].field_0 = Array(len=arg4.length, data=arg4[all])
                    else:
                        stor6[arg1].field_0 = 0
                        idx = 0
                        while stor6[arg1].field_1 + 31 / 32 > idx:
                            stor6[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                stor13[arg1].field_256 = arg2
                stor13[arg1].field_512 = arg3
                emit 0x3a241afa: arg1, arg2, arg3, Array(len=arg4.length, data=arg4[all]), address(arg5)
                return 1
            if stor13[arg1].field_768 == 1:
                idx = 0
                s = 0
                while idx < stor13[arg1].field_769:
                    mem[idx + arg4.length + ceil32(ceil32(arg4.length)) + 161] = stor13[arg1][s + 3].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if sha3(mem[arg4.length + ceil32(ceil32(arg4.length)) + 161 len stor13[arg1].field_769]) == _1189:
                    revert with 0, 'not same uri'
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                if stor6[arg1].field_0:
                    if stor6[arg1].field_0 == uint255(stor6[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if arg4.length:
                        stor6[arg1][].field_0 = Array(len=arg4.length, data=arg4[all])
                    else:
                        stor6[arg1].field_0 = 0
                        idx = 0
                        while (uint255(stor6[arg1].field_0) * 0.5) + 31 / 32 > idx:
                            stor6[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
                        revert with 0, 34
                    if arg4.length:
                        stor6[arg1][].field_0 = Array(len=arg4.length, data=arg4[all])
                    else:
                        stor6[arg1].field_0 = 0
                        idx = 0
                        while stor6[arg1].field_1 + 31 / 32 > idx:
                            stor6[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                stor13[arg1].field_256 = arg2
                stor13[arg1].field_512 = arg3
                emit 0x3a241afa: arg1, arg2, arg3, Array(len=arg4.length, data=arg4[all]), address(arg5)
                return 1
        ('iszero', ('eq', ('field', 768, ('stor', ('map', ('param', 'arg1'), ('name', 'stor13', 13)))), 1))
        mem[arg4.length + ceil32(ceil32(arg4.length)) + 129] = -arg4.length + -ceil32(ceil32(arg4.length)) - 161
        if sha3(mem[arg4.length + ceil32(ceil32(arg4.length)) + 161 len -arg4.length + -ceil32(ceil32(arg4.length)) - 161]) == _1189:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '', 0, uint32('not same uri')
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    2,
                    0,
                    uint32('ERC721URIStorage: URI set of non'),
                    0x6578697374656e7420746f6b656e000000000000000000000000000000000000
    if stor6[arg1].field_0:
        if stor6[arg1].field_0 == uint255(stor6[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg4.length:
            stor6[arg1][].field_0 = Array(len=arg4.length, data=arg4[all])
        else:
            stor6[arg1].field_0 = 0
            idx = 0
            while (uint255(stor6[arg1].field_0) * 0.5) + 31 / 32 > idx:
                stor6[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
            revert with 0, 34
        if arg4.length:
            stor6[arg1][].field_0 = Array(len=arg4.length, data=arg4[all])
        else:
            stor6[arg1].field_0 = 0
            idx = 0
            while stor6[arg1].field_1 + 31 / 32 > idx:
                stor6[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    stor13[arg1].field_256 = arg2
    stor13[arg1].field_512 = arg3
    mem[192 len 160] = mem[128], 160, mem[192 len 96]
    emit 0x3a241afa: arg1, 13, 0, 160, address(arg5), 160, mem[192 len 160]
    return 1, None
}



}
