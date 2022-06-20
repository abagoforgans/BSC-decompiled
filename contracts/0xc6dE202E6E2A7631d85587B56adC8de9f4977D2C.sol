contract main {




// =====================  Runtime code  =====================


#
#  - safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5)
#
address owner;
mapping of uint256 balanceOf;
mapping of uint8 stor2;
array of struct stor3;
uint256 nextTokenId;
array of struct sub_2ea8c8d2;
array of struct sub_fa74695e;
array of struct sub_c4e08e58;
mapping of uint256 multiplier;
mapping of uint256 sub_916dc85c;
mapping of uint256 sub_ff26c894;
mapping of uint8 stor11;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
}

function sub_2ea8c8d2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_2ea8c8d2.length
    return sub_2ea8c8d2[arg1].field_0
}

function sub_321e1637(?) payable {
    require calldata.size - 4 >= 32
    if not sub_916dc85c[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ElvantisPoolCards: Invalid Fee Discount Card Id!'
    return sub_916dc85c[arg1]
}

function exist(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function nextTokenId() payable {
    return nextTokenId
}

function owner() payable {
    return owner
}

function sub_916dc85c(?) payable {
    require calldata.size - 4 >= 32
    return sub_916dc85c[arg1]
}

function multipliers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return multiplier[arg1]
}

function getMultiplier(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not multiplier[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ElvantisPoolCards: Invalid Multiplier Card Id!'
    return multiplier[arg1]
}

function sub_c4e08e58(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_c4e08e58.length
    return sub_c4e08e58[arg1].field_0
}

function sub_d4c75485(?) payable {
    require calldata.size - 4 >= 32
    return sub_ff26c894[arg1]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor2[address(arg1)][address(arg2)])
}

function sub_fa74695e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_fa74695e.length
    return sub_fa74695e[arg1].field_0
}

function sub_ff26c894(?) payable {
    require calldata.size - 4 >= 32
    if not sub_ff26c894[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ElvantisPoolCards: Invalid Harvest Relief Card Id!'
    return sub_ff26c894[arg1]
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

function sub_e699b66f(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2ea8c8d2.length++
    stor36B6[stor5.length] = nextTokenId
    multiplier[stor4] = arg1
    emit 0x8a081dc2: nextTokenId
    stor11[stor4] = 1
    if nextTokenId == -1:
        revert with 0, 17
    nextTokenId++
}

function sub_02e4d432(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fa74695e.length++
    sub_fa74695e[sub_fa74695e.length].field_0 = nextTokenId
    sub_916dc85c[stor4] = arg1
    emit 0x6ae1ae77: nextTokenId
    stor11[stor4] = 1
    if nextTokenId == -1:
        revert with 0, 17
    nextTokenId++
}

function sub_c3f6b3ae(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c4e08e58.length++
    sub_c4e08e58[sub_c4e08e58.length].field_0 = nextTokenId
    sub_ff26c894[stor4] = arg1
    emit 0x32461759: nextTokenId
    stor11[stor4] = 1
    if nextTokenId == -1:
        revert with 0, 17
    nextTokenId++
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

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: setting approval status for self'
    stor2[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0xd9b67a2600000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0xe89341c00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function sub_61648705(?) payable {
    if sub_fa74695e.length:
        mem[128] = uint256(sub_fa74695e.field_0)
        idx = 128
        s = 0
        while (32 * sub_fa74695e.length) + 96 > idx:
            mem[idx + 32] = sub_fa74695e[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_fa74695e.length, data=mem[128 len 32 * sub_fa74695e.length])
    mem[(32 * sub_fa74695e.length) + 128] = 32
    mem[(32 * sub_fa74695e.length) + 160] = sub_fa74695e.length
    mem[(32 * sub_fa74695e.length) + 192 len 32 * sub_fa74695e.length] = mem[128 len 32 * sub_fa74695e.length]
    return memory
      from (32 * sub_fa74695e.length) + 128
       len (96 * sub_fa74695e.length) + 64
}

function sub_b4c673c9(?) payable {
    if sub_2ea8c8d2.length:
        mem[128] = uint256(sub_2ea8c8d2.field_0)
        if (32 * sub_2ea8c8d2.length) + 32 > 64:
            mem[160] = uint256(sub_2ea8c8d2.field_256)
            idx = 160
            s = 1
            while (32 * sub_2ea8c8d2.length) + 96 > idx:
                mem[idx + 32] = sub_2ea8c8d2[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * sub_2ea8c8d2.length) + 128] = 32
    mem[(32 * sub_2ea8c8d2.length) + 160] = sub_2ea8c8d2.length
    mem[(32 * sub_2ea8c8d2.length) + 192 len 32 * sub_2ea8c8d2.length] = mem[128 len 32 * sub_2ea8c8d2.length]
    return memory
      from (32 * sub_2ea8c8d2.length) + 128
       len (96 * sub_2ea8c8d2.length) + 64
}

function sub_d2bab371(?) payable {
    if sub_c4e08e58.length:
        mem[128] = uint256(sub_c4e08e58.field_0)
        if (32 * sub_c4e08e58.length) + 32 > 64:
            mem[160] = uint256(sub_c4e08e58.field_256)
            idx = 160
            s = 1
            while (32 * sub_c4e08e58.length) + 96 > idx:
                mem[idx + 32] = sub_c4e08e58[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * sub_c4e08e58.length) + 128] = 32
    mem[(32 * sub_c4e08e58.length) + 160] = sub_c4e08e58.length
    mem[(32 * sub_c4e08e58.length) + 192 len 32 * sub_c4e08e58.length] = mem[128 len 32 * sub_c4e08e58.length]
    return memory
      from (32 * sub_c4e08e58.length) + 128
       len (96 * sub_c4e08e58.length) + 64
}

function setURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor3[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor3.length = 0
            idx = 0
            while stor3.length.field_1 + 31 / 32 > idx:
                stor3[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor3[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor3.length = 0
            idx = 0
            while stor3.length.field_1 + 31 / 32 > idx:
                stor3[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function mint(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor11[arg2]:
        if arg2 != nextTokenId:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ElvantisPoolCards: Invalid Token ID!'
        stor11[arg2] = 1
        if nextTokenId == -1:
            revert with 0, 17
        nextTokenId++
    if not arg1:
        revert with 0, 'ERC1155: mint to the zero address'
    if balanceOf[arg2][address(arg1)] > !arg3:
        revert with 0, 17
    balanceOf[arg2][address(arg1)] += arg3
    emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
    if ext_code.size(arg1):
        require ext_code.size(arg1)
        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, arg2, arg3, 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(arg5.length) + 128 < 96 or ceil32(arg5.length) + 128 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    if arg1 != msg.sender:
        if not stor2[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    mem[ceil32(arg5.length) + 128] = 1
    if 0 >= Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]:
        revert with 0, 50
    if balanceOf[arg3][address(arg1)] < arg4:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[arg3][address(arg1)] -= arg4
    if balanceOf[arg3][arg2] > !arg4:
        revert with 0, 17
    balanceOf[arg3][arg2] += arg4
    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
}

function balanceOfBatch(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if (32 * arg1.length) + 128 < 96 or (32 * arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if (32 * arg2.length) + 160 < 128 or (32 * arg1.length) + (32 * arg2.length) + 160 > test266151307():
        revert with 0, 65
    mem[(32 * arg1.length) + 128] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    idx = 0
    s = arg2 + 36
    t = (32 * arg1.length) + 160
    while idx < arg2.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg1.length != arg2.length:
        revert with 0, 'ERC1155: accounts and ids length mismatch'
    if arg1.length > test266151307():
        revert with 0, 65
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        if idx >= arg2.length:
            revert with 0, 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC1155: balance query for the zero address'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(mem[(32 * idx) + (32 * arg1.length) + 160], 1)
        if idx >= arg1.length:
            revert with 0, 50
        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = balanceOf[mem[(32 * idx) + (32 * arg1.length) + 160]][address(mem[(32 * idx) + 128])]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + (32 * arg2.length) + 192] = 32
    mem[(64 * arg1.length) + (32 * arg2.length) + 224] = arg1.length
    mem[(64 * arg1.length) + (32 * arg2.length) + 256 len 32 * arg1.length] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length]
    return Array(len=arg1.length, data=mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length])
}

function uri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
        if ceil32(stor3.length.field_1) > stor3.length.field_1:
            mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}



}
