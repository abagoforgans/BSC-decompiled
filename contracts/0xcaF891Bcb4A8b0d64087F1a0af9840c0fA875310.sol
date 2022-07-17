contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint8 stor1;
array of struct stor2;
mapping of uint256 totalSupply;
address owner;
address controllerAddress;
array of struct stor6;
array of struct stor7;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
}

function owner() payable {
    return owner
}

function totalSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalSupply[arg1]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor1[address(arg1)][address(arg2)])
}

function controller() payable {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function exists(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (totalSupply[arg1] > 0)
}

function setController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only owner'
    controllerAddress = arg1
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: setting approval status for self'
    stor1[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0xd9b67a2600000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0xe89341c00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function burn(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg1 != msg.sender:
        if not stor1[address(arg1)][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: caller is not owner nor approved'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
    if balanceOf[arg2][address(arg1)] < arg3:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[arg2][address(arg1)] -= arg3
    emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
    if totalSupply[arg2] < arg3:
        revert with 'NH{q', 17
    totalSupply[arg2] -= arg3
}

function setURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if controllerAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Only controllers'
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor2[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor2.length = 0
            idx = 0
            while stor2.length.field_1 + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor2[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor2.length = 0
            idx = 0
            while stor2.length.field_1 + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg5.length)) + 97 > test266151307() or ceil32(ceil32(arg5.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg5 + arg5.length + 36 <= calldata.size
    if arg1 != msg.sender:
        if not stor1[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    if balanceOf[arg3][address(arg1)] < arg4:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[arg3][address(arg1)] -= arg4
    if balanceOf[arg3][address(arg2)] > -arg4 - 1:
        revert with 'NH{q', 17
    balanceOf[arg3][address(arg2)] += arg4
    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
    if ext_code.size(arg2) > 0:
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

function mint(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
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
    if controllerAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Only controllers'
    if not arg1:
        revert with 0, 'ERC1155: mint to the zero address'
    if balanceOf[arg2][address(arg1)] > -arg3 - 1:
        revert with 'NH{q', 17
    balanceOf[arg2][address(arg1)] += arg3
    emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, arg2, arg3, 160, arg4.length, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 1) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    if totalSupply[arg2] > -arg3 - 1:
        revert with 'NH{q', 17
    totalSupply[arg2] += arg3
}

function balanceOfBatch(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + floor32(arg2.length) + 98 > test266151307() or floor32(arg2.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = floor32(arg1.length) + 129
    while idx < arg2.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg1.length != arg2.length:
        revert with 0, 'ERC1155: accounts and ids length mismatch'
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + floor32(arg2.length) + 98] = arg1.length
    if arg1.length:
        mem[floor32(arg1.length) + floor32(arg2.length) + 130 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        if idx >= arg2.length:
            revert with 'NH{q', 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC1155: balance query for the zero address'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(mem[(32 * idx) + floor32(arg1.length) + 129], 0)
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(arg1.length) + floor32(arg2.length) + 130] = balanceOf[mem[(32 * idx) + floor32(arg1.length) + 129]][address(mem[(32 * idx) + 128])]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=arg1.length, data=mem[floor32(arg1.length) + floor32(arg2.length) + 130 len 32 * arg1.length])
}

function name() payable {
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

function symbol() payable {
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor7.length):
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)])
                mem[128] = 256 * stor7.length.field_8
        else:
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)])
                mem[128] = 256 * stor7.length.field_8
        mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
        if ceil32(stor7.length.field_1) > stor7.length.field_1:
            mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
    if bool(stor7.length) == stor7.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    else:
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
    if ceil32(stor7.length.field_1) > stor7.length.field_1:
        mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
    return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
}

function safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + 97 > test266151307() or floor32(arg3.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + floor32(arg4.length) + 98 > test266151307() or floor32(arg4.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(arg3.length) + 97] = arg4.length
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = floor32(arg3.length) + 129
    while idx < arg4.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99 > test266151307() or ceil32(ceil32(arg5.length)) + 99 < 98:
        revert with 'NH{q', 65
    mem[floor32(arg3.length) + floor32(arg4.length) + 98] = arg5.length
    require arg5 + arg5.length + 36 <= calldata.size
    mem[floor32(arg3.length) + floor32(arg4.length) + 130 len arg5.length] = arg5[all]
    mem[floor32(arg3.length) + floor32(arg4.length) + arg5.length + 130] = 0
    if arg1 == msg.sender:
        if arg3.length != arg4.length:
            revert with 0, 'ERC1155: ids and amounts length mismatch'
        if not arg2:
            revert with 0, 'ERC1155: transfer to the zero address'
        idx = 0
        while idx < arg3.length:
            if idx >= arg3.length:
                revert with 'NH{q', 50
            if idx >= arg4.length:
                revert with 'NH{q', 50
            if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + floor32(arg3.length) + 129]:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + floor32(arg3.length) + 129]
            mem[0] = arg2
            mem[32] = sha3(mem[(32 * idx) + 128], 0)
            if balanceOf[mem[(32 * idx) + 128]][address(arg2)] > -mem[(32 * idx) + floor32(arg3.length) + 129] - 1:
                revert with 'NH{q', 17
            balanceOf[mem[(32 * idx) + 128]][address(arg2)] += mem[(32 * idx) + floor32(arg3.length) + 129]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 163] = arg3.length
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 131] = (32 * arg3.length) + 96
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[floor32(arg3.length) + 129 len 32 * arg4.length]
        emit TransferBatch(Array(len=arg3.length, data=mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 195 len (32 * arg3.length) + (32 * arg4.length) + 32]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
        if ext_code.size(arg2) <= 0:
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[floor32(arg3.length) + 129 len 32 * arg4.length]
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
        if ceil32(arg5.length) <= arg5.length:
            require ext_code.size(arg2)
            call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 295 len (32 * arg3.length) + (32 * arg4.length) + 32], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307() or floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99:
                revert with 'NH{q', 65
            mem[64] = floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            if not floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
                mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _1245 = floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1257 = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 36] = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 68 len ceil32(_1257)] = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_1257)]
            if ceil32(_1257) <= _1257:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_1257) + 32]
            mem[mem[64] + _1257 + 68] = 0
            revert with memory
              from mem[64]
               len _1245 + ceil32(_1257) + -mem[64] + 68
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
        require ext_code.size(arg2)
        call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), Array(len=arg3.length, data=mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 295 len (32 * arg3.length) + (32 * arg4.length) + 32], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307() or floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99:
            revert with 'NH{q', 65
        mem[64] = floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        if not floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
            mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _1250 = floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1264 = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 36] = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 68 len ceil32(_1264)] = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_1264)]
        if ceil32(_1264) <= _1264:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_1264) + 32]
        mem[mem[64] + _1264 + 68] = 0
        revert with memory
          from mem[64]
           len _1250 + ceil32(_1264) + -mem[64] + 68
    mem[0] = msg.sender
    if not stor1[address(arg1)][address(msg.sender)]:
        revert with 0, 'ERC1155: transfer caller is not owner nor approved'
    if arg3.length != arg4.length:
        revert with 0, 'ERC1155: ids and amounts length mismatch'
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    idx = 0
    while idx < arg3.length:
        if idx >= arg3.length:
            revert with 'NH{q', 50
        if idx >= arg4.length:
            revert with 'NH{q', 50
        if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + floor32(arg3.length) + 129]:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + floor32(arg3.length) + 129]
        mem[0] = arg2
        mem[32] = sha3(mem[(32 * idx) + 128], 0)
        if balanceOf[mem[(32 * idx) + 128]][address(arg2)] > -mem[(32 * idx) + floor32(arg3.length) + 129] - 1:
            revert with 'NH{q', 17
        balanceOf[mem[(32 * idx) + 128]][address(arg2)] += mem[(32 * idx) + floor32(arg3.length) + 129]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 64
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 163] = arg3.length
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 195 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 131] = (32 * arg3.length) + 96
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[floor32(arg3.length) + 129 len 32 * arg4.length]
    emit TransferBatch(Array(len=arg3.length, data=mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 195 len (32 * arg3.length) + (32 * arg4.length) + 32]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
    if ext_code.size(arg2) <= 0:
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 103] = msg.sender
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 135] = arg1
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 167] = 160
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 263] = arg3.length
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 295 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 199] = (32 * arg3.length) + 192
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 295] = arg4.length
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 327 len 32 * arg4.length] = mem[floor32(arg3.length) + 129 len 32 * arg4.length]
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 231] = (32 * arg3.length) + (32 * arg4.length) + 224
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 327] = arg5.length
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
    if ceil32(arg5.length) <= arg5.length:
        require ext_code.size(arg2)
        call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), Array(len=arg3.length, data=mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 295 len (32 * arg3.length) + (32 * arg4.length) + 32], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307() or floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99:
            revert with 'NH{q', 65
        mem[64] = floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        if not floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
            mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _1247 = floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1260 = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 36] = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 68 len ceil32(_1260)] = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_1260)]
        if ceil32(_1260) <= _1260:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_1260) + 32]
        mem[mem[64] + _1260 + 68] = 0
        revert with memory
          from mem[64]
           len _1247 + ceil32(_1260) + -mem[64] + 68
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
    require ext_code.size(arg2)
    call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), Array(len=arg3.length, data=mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 295 len (32 * arg3.length) + (32 * arg4.length) + 32], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    if return_data.size <= 3:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if return_data.size < 68:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307() or floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99:
        revert with 'NH{q', 65
    mem[64] = floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
    if not floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99:
        mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
    _1252 = floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _1267 = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
    mem[mem[64] + 36] = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
    mem[mem[64] + 68 len ceil32(_1267)] = mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_1267)]
    if ceil32(_1267) <= _1267:
        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_1267) + 32]
    mem[mem[64] + _1267 + 68] = 0
    revert with memory
      from mem[64]
       len _1252 + ceil32(_1267) + -mem[64] + 68
}

function uri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 >= stor2.length.field_1:
                    mem[128] = 256 * stor2.length.field_8
                else:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
            if stor2.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = '0'
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 225] = 32
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 257] = mem[ceil32(stor2.length.field_1) + 192]
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 289 len ceil32(mem[ceil32(stor2.length.field_1) + 192])] = mem[ceil32(stor2.length.field_1) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor2.length.field_1) + 192]) > mem[ceil32(stor2.length.field_1) + 192]:
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 192] + 289] = 0
                return Array(len=mem[ceil32(stor2.length.field_1) + 192], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 289 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]), 
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
            mem[ceil32(stor2.length.field_1) + 128] = s
            if s:
                mem[ceil32(stor2.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            if ceil32(stor2.length.field_1) > stor2.length.field_1:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 32
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor2.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor2.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + mem[ceil32(stor2.length.field_1) + ceil32(s) + 160] + 256] = 0
            return Array(len=mem[ceil32(stor2.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor2.length.field_1) + ceil32(s) + 160])]), 
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor2.length.field_1:
            if stor2.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = '0'
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 225] = 32
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 257] = mem[ceil32(stor2.length.field_1) + 192]
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 289 len ceil32(mem[ceil32(stor2.length.field_1) + 192])] = mem[ceil32(stor2.length.field_1) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor2.length.field_1) + 192]) > mem[ceil32(stor2.length.field_1) + 192]:
                    mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 192] + 289] = 0
                return Array(len=mem[ceil32(stor2.length.field_1) + 192], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 289 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]), 
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
            mem[ceil32(stor2.length.field_1) + 128] = s
            if s:
                mem[ceil32(stor2.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            if ceil32(stor2.length.field_1) > stor2.length.field_1:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 32
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor2.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor2.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + mem[ceil32(stor2.length.field_1) + ceil32(s) + 160] + 256] = 0
            return Array(len=mem[ceil32(stor2.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor2.length.field_1) + ceil32(s) + 160])]), 
        if 31 >= stor2.length.field_1:
            mem[128] = 256 * stor2.length.field_8
        else:
            mem[128] = uint256(stor2.field_0)
            idx = 128
            s = 0
            while stor2.length.field_1 + 96 > idx:
                mem[idx + 32] = stor2[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        if stor2.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = '0'
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 225] = 32
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 257] = mem[ceil32(stor2.length.field_1) + 192]
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 289 len ceil32(mem[ceil32(stor2.length.field_1) + 192])] = mem[ceil32(stor2.length.field_1) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor2.length.field_1) + 192]) > mem[ceil32(stor2.length.field_1) + 192]:
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 192] + 289] = 0
            return Array(len=mem[ceil32(stor2.length.field_1) + 192], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 289 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]), 
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
        mem[ceil32(stor2.length.field_1) + 128] = s
        if s:
            mem[ceil32(stor2.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) > stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 32
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor2.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor2.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]:
            return Array(len=mem[ceil32(stor2.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor2.length.field_1) + ceil32(s) + 160])]), 
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + mem[ceil32(stor2.length.field_1) + ceil32(s) + 160] + 256] = 0
        return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]) + 32], 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    mem[96] = stor2.length.field_1
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor2.length.field_1:
            if stor2.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = '0'
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 225] = 32
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 257] = mem[ceil32(stor2.length.field_1) + 192]
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 289 len ceil32(mem[ceil32(stor2.length.field_1) + 192])] = mem[ceil32(stor2.length.field_1) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor2.length.field_1) + 192]) <= mem[ceil32(stor2.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor2.length.field_1) + 192], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 289 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]), 
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 192] + 289] = 0
                return 32, mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 257 len ceil32(mem[ceil32(stor2.length.field_1) + 192]) + 32], 
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
            mem[ceil32(stor2.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                    mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                        _3683 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_3683)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3683)]
                        if ceil32(_3683) > _3683:
                            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3683 + 256] = 0
                        return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_3683) + 32], 
                    _3715 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_3715)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3715)]
                    if ceil32(_3715) > _3715:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3715 + 256] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_3715) + 32], 
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                    _3684 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_3684)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3684)]
                    if ceil32(_3684) > _3684:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3684 + 256] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_3684) + 32], 
                _3716 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_3716)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3716)]
                if ceil32(_3716) > _3716:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3716 + 256] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_3716) + 32], 
            mem[ceil32(stor2.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                    _3685 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_3685)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3685)]
                    if ceil32(_3685) > _3685:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3685 + 256] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_3685) + 32], 
                _3717 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_3717)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3717)]
                if ceil32(_3717) > _3717:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3717 + 256] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_3717) + 32], 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
            mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                _3686 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_3686)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3686)]
                if ceil32(_3686) > _3686:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3686 + 256] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_3686) + 32], 
            _3718 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_3718)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3718)]
            if ceil32(_3718) > _3718:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3718 + 256] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_3718) + 32], 
        if 31 >= stor2.length.field_1:
            mem[128] = 256 * stor2.length.field_8
            if stor2.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = '0'
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 225] = 32
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 257] = mem[ceil32(stor2.length.field_1) + 192]
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 289 len ceil32(mem[ceil32(stor2.length.field_1) + 192])] = mem[ceil32(stor2.length.field_1) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor2.length.field_1) + 192]) <= mem[ceil32(stor2.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor2.length.field_1) + 192], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 289 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]), 
                mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 192] + 289] = 0
                return 32, mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 257 len ceil32(mem[ceil32(stor2.length.field_1) + 192]) + 32], 
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
            mem[ceil32(stor2.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
                if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                    mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                        _3687 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_3687)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3687)]
                        if ceil32(_3687) > _3687:
                            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3687 + 256] = 0
                        return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_3687) + 32], 
                    _3719 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_3719)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3719)]
                    if ceil32(_3719) > _3719:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3719 + 256] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_3719) + 32], 
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                    _3688 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_3688)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3688)]
                    if ceil32(_3688) > _3688:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3688 + 256] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_3688) + 32], 
                _3720 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_3720)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3720)]
                if ceil32(_3720) > _3720:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3720 + 256] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_3720) + 32], 
            mem[ceil32(stor2.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                    _3689 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_3689)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3689)]
                    if ceil32(_3689) > _3689:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3689 + 256] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_3689) + 32], 
                _3721 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_3721)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3721)]
                if ceil32(_3721) > _3721:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3721 + 256] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_3721) + 32], 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
            mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                _3690 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_3690)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3690)]
                if ceil32(_3690) > _3690:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3690 + 256] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_3690) + 32], 
            _3722 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_3722)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3722)]
            if ceil32(_3722) > _3722:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3722 + 256] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_3722) + 32], 
        mem[0] = 2
        mem[128] = uint256(stor2.field_0)
        idx = 128
        s = 0
        while stor2.length.field_1 + 96 > idx:
            mem[idx + 32] = stor2[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor2.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = '0'
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 225] = 32
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 257] = mem[ceil32(stor2.length.field_1) + 192]
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 289 len ceil32(mem[ceil32(stor2.length.field_1) + 192])] = mem[ceil32(stor2.length.field_1) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor2.length.field_1) + 192]) <= mem[ceil32(stor2.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor2.length.field_1) + 192], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 289 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]), 
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 192] + 289] = 0
            return 32, mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 257 len ceil32(mem[ceil32(stor2.length.field_1) + 192]) + 32], 
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
        mem[ceil32(stor2.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                    _4411 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_4411)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4411)]
                    if ceil32(_4411) > _4411:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4411 + 256] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_4411) + 32], 
                _4427 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_4427)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4427)]
                if ceil32(_4427) > _4427:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4427 + 256] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_4427) + 32], 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
            mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                _4412 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_4412)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4412)]
                if ceil32(_4412) > _4412:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4412 + 256] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_4412) + 32], 
            _4428 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_4428)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4428)]
            if ceil32(_4428) > _4428:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4428 + 256] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_4428) + 32], 
        mem[ceil32(stor2.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) <= stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
            mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                _4413 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_4413)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4413)]
                if ceil32(_4413) > _4413:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4413 + 256] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_4413) + 32], 
            _4429 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_4429)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4429)]
            if ceil32(_4429) > _4429:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4429 + 256] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_4429) + 32], 
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
        mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
            _4414 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_4414)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4414)]
            if ceil32(_4414) > _4414:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4414 + 256] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_4414) + 32], 
        _4430 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_4430)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4430)]
        if ceil32(_4430) > _4430:
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4430 + 256] = 0
        return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_4430) + 32], 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    if not stor2.length.field_1:
        if stor2.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = '0'
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 225] = 32
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 257] = mem[ceil32(stor2.length.field_1) + 192]
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 289 len ceil32(mem[ceil32(stor2.length.field_1) + 192])] = mem[ceil32(stor2.length.field_1) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor2.length.field_1) + 192]) <= mem[ceil32(stor2.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor2.length.field_1) + 192], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 289 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]), 
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 192] + 289] = 0
            return 32, mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 257 len ceil32(mem[ceil32(stor2.length.field_1) + 192]) + 32], 
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
        mem[ceil32(stor2.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                    _3691 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_3691)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3691)]
                    if ceil32(_3691) > _3691:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3691 + 256] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_3691) + 32], 
                _3723 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_3723)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3723)]
                if ceil32(_3723) > _3723:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3723 + 256] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_3723) + 32], 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
            mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                _3692 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_3692)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3692)]
                if ceil32(_3692) > _3692:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3692 + 256] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_3692) + 32], 
            _3724 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_3724)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3724)]
            if ceil32(_3724) > _3724:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3724 + 256] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_3724) + 32], 
        mem[ceil32(stor2.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) <= stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
            mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                _3693 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_3693)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3693)]
                if ceil32(_3693) > _3693:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3693 + 256] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_3693) + 32], 
            _3725 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_3725)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3725)]
            if ceil32(_3725) > _3725:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3725 + 256] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_3725) + 32], 
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
        mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
            _3694 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_3694)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3694)]
            if ceil32(_3694) > _3694:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3694 + 256] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_3694) + 32], 
        _3726 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_3726)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3726)]
        if ceil32(_3726) > _3726:
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3726 + 256] = 0
        return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_3726) + 32], 
    if 31 >= stor2.length.field_1:
        mem[128] = 256 * stor2.length.field_8
        if stor2.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = '0'
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 225] = 32
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 257] = mem[ceil32(stor2.length.field_1) + 192]
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 289 len ceil32(mem[ceil32(stor2.length.field_1) + 192])] = mem[ceil32(stor2.length.field_1) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor2.length.field_1) + 192]) <= mem[ceil32(stor2.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor2.length.field_1) + 192], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 289 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]), 
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 192] + 289] = 0
            return 32, mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 257 len ceil32(mem[ceil32(stor2.length.field_1) + 192]) + 32], 
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
        mem[ceil32(stor2.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
            if ceil32(stor2.length.field_1) <= stor2.length.field_1:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
                mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                    _3695 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_3695)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3695)]
                    if ceil32(_3695) > _3695:
                        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3695 + 256] = 0
                    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_3695) + 32], 
                _3727 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_3727)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3727)]
                if ceil32(_3727) > _3727:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3727 + 256] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_3727) + 32], 
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
            mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                _3696 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_3696)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3696)]
                if ceil32(_3696) > _3696:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3696 + 256] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_3696) + 32], 
            _3728 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_3728)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3728)]
            if ceil32(_3728) > _3728:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3728 + 256] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_3728) + 32], 
        mem[ceil32(stor2.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) <= stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
            mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                _3697 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_3697)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3697)]
                if ceil32(_3697) > _3697:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3697 + 256] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_3697) + 32], 
            _3729 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_3729)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3729)]
            if ceil32(_3729) > _3729:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3729 + 256] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_3729) + 32], 
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
        mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
            _3698 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_3698)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3698)]
            if ceil32(_3698) > _3698:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3698 + 256] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_3698) + 32], 
        _3730 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_3730)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_3730)]
        if ceil32(_3730) > _3730:
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _3730 + 256] = 0
        return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_3730) + 32], 
    mem[0] = 2
    mem[128] = uint256(stor2.field_0)
    idx = 128
    s = 0
    while stor2.length.field_1 + 96 > idx:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor2.length.field_1 <= 0:
        return ''
    if not arg1:
        mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = '0'
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 225] = 32
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 257] = mem[ceil32(stor2.length.field_1) + 192]
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 289 len ceil32(mem[ceil32(stor2.length.field_1) + 192])] = mem[ceil32(stor2.length.field_1) + 224 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]
        if ceil32(mem[ceil32(stor2.length.field_1) + 192]) <= mem[ceil32(stor2.length.field_1) + 192]:
            return Array(len=mem[ceil32(stor2.length.field_1) + 192], data=mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 289 len ceil32(mem[ceil32(stor2.length.field_1) + 192])]), 
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 192] + 289] = 0
        return 32, mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 257 len ceil32(mem[ceil32(stor2.length.field_1) + 192]) + 32], 
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
    mem[ceil32(stor2.length.field_1) + 128] = s
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) <= stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
            mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
                _4415 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_4415)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4415)]
                if ceil32(_4415) > _4415:
                    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4415 + 256] = 0
                return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_4415) + 32], 
            _4431 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_4431)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4431)]
            if ceil32(_4431) > _4431:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4431 + 256] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_4431) + 32], 
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
        mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
            _4416 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_4416)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4416)]
            if ceil32(_4416) > _4416:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4416 + 256] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_4416) + 32], 
        _4432 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_4432)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4432)]
        if ceil32(_4432) > _4432:
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4432 + 256] = 0
        return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_4432) + 32], 
    mem[ceil32(stor2.length.field_1) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[ceil32(stor2.length.field_1) + 128]:
            revert with 'NH{q', 50
        mem[t + ceil32(stor2.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) <= stor2.length.field_1:
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
        mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
            _4417 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_4417)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4417)]
            if ceil32(_4417) > _4417:
                mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4417 + 256] = 0
            return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_4417) + 32], 
        _4433 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_4433)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4433)]
        if ceil32(_4433) > _4433:
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4433 + 256] = 0
        return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_4433) + 32], 
    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192] = 0
    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + 192 len ceil32(mem[ceil32(stor2.length.field_1) + 128])] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(mem[ceil32(stor2.length.field_1) + 128])]
    mem[64] = ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192
    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 192] = 32
    if ceil32(mem[ceil32(stor2.length.field_1) + 128]) <= mem[ceil32(stor2.length.field_1) + 128]:
        _4418 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_4418)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4418)]
        if ceil32(_4418) > _4418:
            mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4418 + 256] = 0
        return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_4418) + 32], 
    _4434 = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 160]
    mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 256 len ceil32(_4434)] = mem[ceil32(stor2.length.field_1) + ceil32(s) + 192 len ceil32(_4434)]
    if ceil32(_4434) > _4434:
        mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + _4434 + 256] = 0
    return 32, mem[ceil32(stor2.length.field_1) + ceil32(s) + stor2.length.field_1 + mem[ceil32(stor2.length.field_1) + 128] + 224 len ceil32(_4434) + 32], 
}



}
