contract main {




// =====================  Runtime code  =====================


#
#  - uri(uint256 arg1)
#  - safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5)
#
mapping of uint256 balanceOf;
mapping of uint8 stor1;
array of uint256 stor2;
uint8 paused; offset 160
uint128 stor3; offset 160
address owner;
mapping of uint256 totalSupply;
mapping of struct stor5;
mapping of uint256 balanceOf;
array of struct stor7;
array of struct stor8;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
}

function paused() payable {
    return bool(paused)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' balance query for the zero address'
    return balanceOf[address(arg1)]
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

function _fallback() payable {
    revert
}

function exists(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (totalSupply[arg1] > 0)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    stor3 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    stor3 = 0
    emit Unpaused(msg.sender);
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

function setURI(string arg1) payable {
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

function setTokenURI(uint256 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor5[arg1].field_0:
        if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor5[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor5[arg1].field_0 = 0
            idx = 0
            while stor5[arg1].field_1 + 31 / 32 > idx:
                stor5[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor5[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor5[arg1].field_0 = 0
            idx = 0
            while stor5[arg1].field_1 + 31 / 32 > idx:
                stor5[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
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
    mem[128] = arg2
    mem[160] = 1
    mem[192] = arg3
    mem[224] = 0
    if paused:
        revert with 0, 'Pausable: paused'
    if not arg1:
        idx = 0
        while idx < 1:
            if idx >= 1:
                revert with 'NH{q', 50
            if idx >= 1:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 4
            if totalSupply[mem[(32 * idx) + 128]] > -mem[(32 * idx) + 192] - 1:
                revert with 'NH{q', 17
            totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + 192]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    idx = 0
    while idx < 1:
        if idx >= 1:
            revert with 'NH{q', 50
        if idx >= 1:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 4
        if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
            revert with 'NH{q', 17
        totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if arg1:
        idx = 0
        while idx < 1:
            if idx >= 1:
                revert with 'NH{q', 50
            if not arg1:
                revert with 0, 'ERC1155: balance query for the zero address'
            mem[0] = arg1
            mem[32] = sha3(mem[(32 * idx) + 128], 0)
            if idx >= 1:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 192] == balanceOf[mem[(32 * idx) + 128]][address(arg1)]:
                if idx >= 1:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + 192]:
                    mem[0] = arg1
                    mem[32] = 6
                    if balanceOf[address(arg1)] < 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)]--
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    if balanceOf[arg2][address(arg1)] < arg3:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[arg2][address(arg1)] -= arg3
    emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
}

function mint(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ERC1155: mint to the zero address'
    mem[160] = arg2
    mem[192] = 1
    mem[224] = arg3
    if paused:
        revert with 0, 'Pausable: paused'
    idx = 0
    while idx < 1:
        if idx >= 1:
            revert with 'NH{q', 50
        if idx >= 1:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 160]
        mem[32] = 4
        if totalSupply[mem[(32 * idx) + 160]] > -mem[(32 * idx) + 224] - 1:
            revert with 'NH{q', 17
        totalSupply[mem[(32 * idx) + 160]] += mem[(32 * idx) + 224]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if not arg1:
        idx = 0
        while idx < 1:
            if idx >= 1:
                revert with 'NH{q', 50
            if idx >= 1:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 160]
            mem[32] = 4
            if totalSupply[mem[(32 * idx) + 160]] < mem[(32 * idx) + 224]:
                revert with 'NH{q', 17
            totalSupply[mem[(32 * idx) + 160]] -= mem[(32 * idx) + 224]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    if arg1:
        idx = 0
        while idx < 1:
            if idx >= 1:
                revert with 'NH{q', 50
            if not arg1:
                revert with 0, 'ERC1155: balance query for the zero address'
            mem[0] = arg1
            mem[32] = sha3(mem[(32 * idx) + 160], 0)
            if not balanceOf[mem[(32 * idx) + 160]][address(arg1)]:
                if idx >= 1:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + 224]:
                    mem[0] = arg1
                    mem[32] = 6
                    if balanceOf[address(arg1)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)]++
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    if balanceOf[arg2][address(arg1)] > -arg3 - 1:
        revert with 'NH{q', 17
    balanceOf[arg2][address(arg1)] += arg3
    emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
    if ext_code.size(arg1) > 0:
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

function name() payable {
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

function symbol() payable {
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor8.length):
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor8.length.field_1:
                if 31 < stor8.length.field_1:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)])
                mem[128] = 256 * stor8.length.field_8
        else:
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor8.length.field_1:
                if 31 < stor8.length.field_1:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)])
                mem[128] = 256 * stor8.length.field_8
        mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
        if ceil32(stor8.length.field_1) > stor8.length.field_1:
            mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
    if bool(stor8.length) == stor8.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor8.length.field_1:
            if 31 < stor8.length.field_1:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    else:
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor8.length.field_1:
            if 31 < stor8.length.field_1:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
    if ceil32(stor8.length.field_1) > stor8.length.field_1:
        mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
    return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
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
    mem[ceil32(ceil32(arg5.length)) + 129] = arg3
    mem[ceil32(ceil32(arg5.length)) + 161] = 1
    mem[ceil32(ceil32(arg5.length)) + 193] = arg4
    if paused:
        revert with 0, 'Pausable: paused'
    if not arg1:
        idx = 0
        while idx < 1:
            if idx >= 1:
                revert with 'NH{q', 50
            if idx >= 1:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
            mem[32] = 4
            if totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] > -mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193] - 1:
                revert with 'NH{q', 17
            totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] += mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    if not arg2:
        idx = 0
        while idx < 1:
            if idx >= 1:
                revert with 'NH{q', 50
            if idx >= 1:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
            mem[32] = 4
            if totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] < mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                revert with 'NH{q', 17
            totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] -= mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    if arg1 != arg2:
        if arg1:
            idx = 0
            while idx < 1:
                if idx >= 1:
                    revert with 'NH{q', 50
                if not arg1:
                    revert with 0, 'ERC1155: balance query for the zero address'
                mem[0] = arg1
                mem[32] = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 0)
                if idx >= 1:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193] == balanceOf[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg1)]:
                    if idx >= 1:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                        mem[0] = arg1
                        mem[32] = 6
                        if balanceOf[address(arg1)] < 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)]--
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    if arg2 != arg1:
        if arg2:
            idx = 0
            while idx < 1:
                if idx >= 1:
                    revert with 'NH{q', 50
                if not arg2:
                    revert with 0, 'ERC1155: balance query for the zero address'
                mem[0] = arg2
                mem[32] = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 0)
                if not balanceOf[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg2)]:
                    if idx >= 1:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                        mem[0] = arg2
                        mem[32] = 6
                        if balanceOf[address(arg2)] > -2:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)]++
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
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

function burnBatch(address arg1, uint256[] arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + 97 > test266151307() or floor32(arg2.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + floor32(arg3.length) + 98 > test266151307() or floor32(arg3.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(arg2.length) + 97] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = floor32(arg2.length) + 129
    while idx < arg3.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg1 == msg.sender:
        if not arg1:
            revert with 0, 'ERC1155: burn from the zero address'
        if arg2.length != arg3.length:
            revert with 0, 'ERC1155: ids and amounts length mismatch'
        mem[floor32(arg2.length) + floor32(arg3.length) + 98] = 0
        if paused:
            revert with 0, 'Pausable: paused'
        if arg1:
            idx = 0
            while idx < arg2.length:
                if idx >= arg3.length:
                    revert with 'NH{q', 50
                if idx >= arg2.length:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 4
                if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + floor32(arg2.length) + 129]:
                    revert with 'NH{q', 17
                totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + floor32(arg2.length) + 129]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not arg1:
                idx = 0
                while idx < arg2.length:
                    if idx >= arg2.length:
                        revert with 'NH{q', 50
                    if idx >= arg3.length:
                        revert with 'NH{q', 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + floor32(arg2.length) + 129]:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + floor32(arg2.length) + 129]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[floor32(arg2.length) + floor32(arg3.length) + 130] = 64
                mem[floor32(arg2.length) + floor32(arg3.length) + 194] = arg2.length
                mem[floor32(arg2.length) + floor32(arg3.length) + 226 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
                if 0 == arg1:
                    var108001 = arg2.length
                else:
                    var109001 = arg2.length
            else:
                idx = 0
                while idx < arg2.length:
                    if idx >= arg2.length:
                        revert with 'NH{q', 50
                    if not arg1:
                        revert with 0, 'ERC1155: balance query for the zero address'
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    if idx >= arg3.length:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + floor32(arg2.length) + 129] == balanceOf[mem[(32 * idx) + 128]][address(arg1)]:
                        if idx >= arg3.length:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + floor32(arg2.length) + 129]:
                            mem[0] = arg1
                            mem[32] = 6
                            if balanceOf[address(arg1)] < 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)]--
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < arg2.length:
                    if idx >= arg2.length:
                        revert with 'NH{q', 50
                    if idx >= arg3.length:
                        revert with 'NH{q', 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + floor32(arg2.length) + 129]:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + floor32(arg2.length) + 129]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[floor32(arg2.length) + floor32(arg3.length) + 130] = 64
                mem[floor32(arg2.length) + floor32(arg3.length) + 194] = arg2.length
                mem[floor32(arg2.length) + floor32(arg3.length) + 226 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
                if 0 == arg1:
                    var113001 = arg2.length
                else:
                    var114001 = arg2.length
        else:
            idx = 0
            while idx < arg2.length:
                if idx >= arg3.length:
                    revert with 'NH{q', 50
                if idx >= arg2.length:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 4
                if totalSupply[mem[(32 * idx) + 128]] > -mem[(32 * idx) + floor32(arg2.length) + 129] - 1:
                    revert with 'NH{q', 17
                totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + floor32(arg2.length) + 129]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < arg2.length:
                if idx >= arg3.length:
                    revert with 'NH{q', 50
                if idx >= arg2.length:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 4
                if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + floor32(arg2.length) + 129]:
                    revert with 'NH{q', 17
                totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + floor32(arg2.length) + 129]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not arg1:
                idx = 0
                while idx < arg2.length:
                    if idx >= arg2.length:
                        revert with 'NH{q', 50
                    if idx >= arg3.length:
                        revert with 'NH{q', 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + floor32(arg2.length) + 129]:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + floor32(arg2.length) + 129]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[floor32(arg2.length) + floor32(arg3.length) + 130] = 64
                mem[floor32(arg2.length) + floor32(arg3.length) + 194] = arg2.length
                mem[floor32(arg2.length) + floor32(arg3.length) + 226 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
                if 0 == arg1:
                    var112001 = arg2.length
                else:
                    var113001 = arg2.length
            else:
                idx = 0
                while idx < arg2.length:
                    if idx >= arg2.length:
                        revert with 'NH{q', 50
                    if not arg1:
                        revert with 0, 'ERC1155: balance query for the zero address'
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    if idx >= arg3.length:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + floor32(arg2.length) + 129] == balanceOf[mem[(32 * idx) + 128]][address(arg1)]:
                        if idx >= arg3.length:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + floor32(arg2.length) + 129]:
                            mem[0] = arg1
                            mem[32] = 6
                            if balanceOf[address(arg1)] < 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)]--
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < arg2.length:
                    if idx >= arg2.length:
                        revert with 'NH{q', 50
                    if idx >= arg3.length:
                        revert with 'NH{q', 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + floor32(arg2.length) + 129]:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + floor32(arg2.length) + 129]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[floor32(arg2.length) + floor32(arg3.length) + 130] = 64
                mem[floor32(arg2.length) + floor32(arg3.length) + 194] = arg2.length
                mem[floor32(arg2.length) + floor32(arg3.length) + 226 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
                if 0 == arg1:
                else:
                    var118001 = arg2.length
    else:
        if not stor1[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
        if not arg1:
            revert with 0, 'ERC1155: burn from the zero address'
        if arg2.length != arg3.length:
            revert with 0, 'ERC1155: ids and amounts length mismatch'
        mem[floor32(arg2.length) + floor32(arg3.length) + 98] = 0
        if paused:
            revert with 0, 'Pausable: paused'
        if arg1:
            idx = 0
            while idx < arg2.length:
                if idx >= arg3.length:
                    revert with 'NH{q', 50
                if idx >= arg2.length:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 4
                if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + floor32(arg2.length) + 129]:
                    revert with 'NH{q', 17
                totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + floor32(arg2.length) + 129]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not arg1:
                idx = 0
                while idx < arg2.length:
                    if idx >= arg2.length:
                        revert with 'NH{q', 50
                    if idx >= arg3.length:
                        revert with 'NH{q', 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + floor32(arg2.length) + 129]:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + floor32(arg2.length) + 129]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[floor32(arg2.length) + floor32(arg3.length) + 130] = 64
                mem[floor32(arg2.length) + floor32(arg3.length) + 194] = arg2.length
                mem[floor32(arg2.length) + floor32(arg3.length) + 226 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
                if 0 == arg1:
                    var113001 = arg2.length
                else:
                    var114001 = arg2.length
            else:
                idx = 0
                while idx < arg2.length:
                    if idx >= arg2.length:
                        revert with 'NH{q', 50
                    if not arg1:
                        revert with 0, 'ERC1155: balance query for the zero address'
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    if idx >= arg3.length:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + floor32(arg2.length) + 129] == balanceOf[mem[(32 * idx) + 128]][address(arg1)]:
                        if idx >= arg3.length:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + floor32(arg2.length) + 129]:
                            mem[0] = arg1
                            mem[32] = 6
                            if balanceOf[address(arg1)] < 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)]--
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < arg2.length:
                    if idx >= arg2.length:
                        revert with 'NH{q', 50
                    if idx >= arg3.length:
                        revert with 'NH{q', 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + floor32(arg2.length) + 129]:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + floor32(arg2.length) + 129]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[floor32(arg2.length) + floor32(arg3.length) + 130] = 64
                mem[floor32(arg2.length) + floor32(arg3.length) + 194] = arg2.length
                mem[floor32(arg2.length) + floor32(arg3.length) + 226 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
                if arg1 != 0:
                else:
                    var118001 = arg2.length
        else:
            idx = 0
            while idx < arg2.length:
                if idx >= arg3.length:
                    revert with 'NH{q', 50
                if idx >= arg2.length:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 4
                if totalSupply[mem[(32 * idx) + 128]] > -mem[(32 * idx) + floor32(arg2.length) + 129] - 1:
                    revert with 'NH{q', 17
                totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + floor32(arg2.length) + 129]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < arg2.length:
                if idx >= arg3.length:
                    revert with 'NH{q', 50
                if idx >= arg2.length:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 4
                if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + floor32(arg2.length) + 129]:
                    revert with 'NH{q', 17
                totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + floor32(arg2.length) + 129]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not arg1:
                idx = 0
                while idx < arg2.length:
                    if idx >= arg2.length:
                        revert with 'NH{q', 50
                    if idx >= arg3.length:
                        revert with 'NH{q', 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + floor32(arg2.length) + 129]:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + floor32(arg2.length) + 129]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[floor32(arg2.length) + floor32(arg3.length) + 130] = 64
                mem[floor32(arg2.length) + floor32(arg3.length) + 194] = arg2.length
                mem[floor32(arg2.length) + floor32(arg3.length) + 226 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
                if 0 == arg1:
                else:
                    var118001 = arg2.length
            else:
                idx = 0
                while idx < arg2.length:
                    if idx >= arg2.length:
                        revert with 'NH{q', 50
                    if not arg1:
                        revert with 0, 'ERC1155: balance query for the zero address'
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    if idx >= arg3.length:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + floor32(arg2.length) + 129] == balanceOf[mem[(32 * idx) + 128]][address(arg1)]:
                        if idx >= arg3.length:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + floor32(arg2.length) + 129]:
                            mem[0] = arg1
                            mem[32] = 6
                            if balanceOf[address(arg1)] < 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)]--
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < arg2.length:
                    if idx >= arg2.length:
                        revert with 'NH{q', 50
                    if idx >= arg3.length:
                        revert with 'NH{q', 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + floor32(arg2.length) + 129]:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + floor32(arg2.length) + 129]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[floor32(arg2.length) + floor32(arg3.length) + 130] = 64
                mem[floor32(arg2.length) + floor32(arg3.length) + 194] = arg2.length
                mem[floor32(arg2.length) + floor32(arg3.length) + 226 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
    mem[floor32(arg2.length) + floor32(arg3.length) + 162] = (32 * arg2.length) + 96
    mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 226] = arg3.length
    mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 258 len 32 * arg3.length] = mem[floor32(arg2.length) + 129 len 32 * arg3.length]
    emit TransferBatch(Array(len=arg2.length, data=mem[floor32(arg2.length) + floor32(arg3.length) + 226 len (32 * arg2.length) + (32 * arg3.length) + 32]), (32 * arg2.length) + 96, msg.sender, arg1, 0);
}

function mintBatch(address arg1, uint256[] arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + 97 > test266151307() or floor32(arg2.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + floor32(arg3.length) + 98 > test266151307() or floor32(arg3.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(arg2.length) + 97] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = floor32(arg2.length) + 129
    while idx < arg3.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[floor32(arg2.length) + floor32(arg3.length) + 98] = 0
    if not arg1:
        revert with 0, 'ERC1155: mint to the zero address'
    if arg2.length != arg3.length:
        revert with 0, 'ERC1155: ids and amounts length mismatch'
    if paused:
        revert with 0, 'Pausable: paused'
    idx = 0
    while idx < arg2.length:
        if idx >= arg3.length:
            revert with 'NH{q', 50
        if idx >= arg2.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 4
        if totalSupply[mem[(32 * idx) + 128]] > -mem[(32 * idx) + floor32(arg2.length) + 129] - 1:
            revert with 'NH{q', 17
        totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + floor32(arg2.length) + 129]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if arg1:
        if 0 == arg1:
            if not arg1:
                idx = 0
                while idx < arg2.length:
                    if idx >= arg3.length:
                        revert with 'NH{q', 50
                    if idx >= arg2.length:
                        revert with 'NH{q', 50
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] > -mem[(32 * idx) + floor32(arg2.length) + 129] - 1:
                        revert with 'NH{q', 17
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] += mem[(32 * idx) + floor32(arg2.length) + 129]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[floor32(arg2.length) + floor32(arg3.length) + 130] = 64
                mem[floor32(arg2.length) + floor32(arg3.length) + 194] = arg2.length
                mem[floor32(arg2.length) + floor32(arg3.length) + 226 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
                var109001 = arg2.length
                mem[floor32(arg2.length) + floor32(arg3.length) + 162] = (32 * arg2.length) + 96
                mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 226] = arg3.length
                mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 258 len 32 * arg3.length] = mem[floor32(arg2.length) + 129 len 32 * arg3.length]
                emit TransferBatch(Array(len=arg2.length, data=mem[floor32(arg2.length) + floor32(arg3.length) + 226 len (32 * arg2.length) + (32 * arg3.length) + 32]), (32 * arg2.length) + 96, msg.sender, 0, arg1);
                if ext_code.size(arg1) <= 0:
                mem[floor32(arg2.length) + floor32(arg3.length) + 130] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
                mem[floor32(arg2.length) + floor32(arg3.length) + 134] = msg.sender
                mem[floor32(arg2.length) + floor32(arg3.length) + 166] = 0
                mem[floor32(arg2.length) + floor32(arg3.length) + 198] = 160
                mem[floor32(arg2.length) + floor32(arg3.length) + 294] = arg2.length
                mem[floor32(arg2.length) + floor32(arg3.length) + 326 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
                mem[floor32(arg2.length) + floor32(arg3.length) + 230] = (32 * arg2.length) + 192
                mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 326] = arg3.length
                mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 358 len 32 * arg3.length] = mem[floor32(arg2.length) + 129 len 32 * arg3.length]
                mem[floor32(arg2.length) + floor32(arg3.length) + 262] = (32 * arg2.length) + (32 * arg3.length) + 224
                mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + (32 * arg3.length) + 358] = 0
                mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + (32 * arg3.length) + 390 len 0] = None
                require ext_code.size(arg1)
                call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, 0, 160, (32 * arg2.length) + 192, (32 * arg2.length) + (32 * arg3.length) + 224, arg2.length, mem[floor32(arg2.length) + floor32(arg3.length) + 326 len (32 * arg2.length) + (32 * arg3.length) + 32], 0
                mem[floor32(arg2.length) + floor32(arg3.length) + 130] = ext_call.return_data[0]
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
                mem[floor32(arg2.length) + floor32(arg3.length) + 130 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131 > test266151307() or floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131 < 130:
                    revert with 'NH{q', 65
                mem[64] = floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131
                if not floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130:
                    mem[floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                _5643 = floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131
                mem[floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _5685 = mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130]
                mem[mem[64] + 36] = mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130]
                mem[mem[64] + 68 len ceil32(_5685)] = mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 162 len ceil32(_5685)]
                if ceil32(_5685) <= _5685:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_5685) + 32]
                mem[mem[64] + _5685 + 68] = 0
                revert with memory
                  from mem[64]
                   len _5643 + ceil32(_5685) + -mem[64] + 68
            idx = 0
            while idx < arg2.length:
                if idx >= arg2.length:
                    revert with 'NH{q', 50
                if not arg1:
                    revert with 0, 'ERC1155: balance query for the zero address'
                mem[0] = arg1
                mem[32] = sha3(mem[(32 * idx) + 128], 0)
                if not balanceOf[mem[(32 * idx) + 128]][address(arg1)]:
                    if idx >= arg3.length:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + floor32(arg2.length) + 129]:
                        mem[0] = arg1
                        mem[32] = 6
                        if balanceOf[address(arg1)] > -2:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)]++
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < arg2.length:
                if idx >= arg3.length:
                    revert with 'NH{q', 50
                if idx >= arg2.length:
                    revert with 'NH{q', 50
                mem[0] = arg1
                mem[32] = sha3(mem[(32 * idx) + 128], 0)
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] > -mem[(32 * idx) + floor32(arg2.length) + 129] - 1:
                    revert with 'NH{q', 17
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] += mem[(32 * idx) + floor32(arg2.length) + 129]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            mem[floor32(arg2.length) + floor32(arg3.length) + 130] = 64
            mem[floor32(arg2.length) + floor32(arg3.length) + 194] = arg2.length
            mem[floor32(arg2.length) + floor32(arg3.length) + 226 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
            var114001 = arg2.length
            mem[floor32(arg2.length) + floor32(arg3.length) + 162] = (32 * arg2.length) + 96
            mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 226] = arg3.length
            mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 258 len 32 * arg3.length] = mem[floor32(arg2.length) + 129 len 32 * arg3.length]
            emit TransferBatch(Array(len=arg2.length, data=mem[floor32(arg2.length) + floor32(arg3.length) + 226 len (32 * arg2.length) + (32 * arg3.length) + 32]), (32 * arg2.length) + 96, msg.sender, 0, arg1);
            if ext_code.size(arg1) <= 0:
            mem[floor32(arg2.length) + floor32(arg3.length) + 130] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
            mem[floor32(arg2.length) + floor32(arg3.length) + 134] = msg.sender
            mem[floor32(arg2.length) + floor32(arg3.length) + 166] = 0
            mem[floor32(arg2.length) + floor32(arg3.length) + 198] = 160
            mem[floor32(arg2.length) + floor32(arg3.length) + 294] = arg2.length
            mem[floor32(arg2.length) + floor32(arg3.length) + 326 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
            mem[floor32(arg2.length) + floor32(arg3.length) + 230] = (32 * arg2.length) + 192
            mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 326] = arg3.length
            mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 358 len 32 * arg3.length] = mem[floor32(arg2.length) + 129 len 32 * arg3.length]
            mem[floor32(arg2.length) + floor32(arg3.length) + 262] = (32 * arg2.length) + (32 * arg3.length) + 224
            mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + (32 * arg3.length) + 358] = 0
            mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + (32 * arg3.length) + 390 len 0] = None
            require ext_code.size(arg1)
            call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, 0, 160, (32 * arg2.length) + 192, (32 * arg2.length) + (32 * arg3.length) + 224, arg2.length, mem[floor32(arg2.length) + floor32(arg3.length) + 326 len (32 * arg2.length) + (32 * arg3.length) + 32], 0
            mem[floor32(arg2.length) + floor32(arg3.length) + 130] = ext_call.return_data[0]
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
            mem[floor32(arg2.length) + floor32(arg3.length) + 130 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131 > test266151307() or floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131 < 130:
                revert with 'NH{q', 65
            mem[64] = floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131
            if not floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130:
                mem[floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _6135 = floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131
            mem[floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _6171 = mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130]
            mem[mem[64] + 36] = mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130]
            mem[mem[64] + 68 len ceil32(_6171)] = mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 162 len ceil32(_6171)]
            if ceil32(_6171) <= _6171:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_6171) + 32]
            mem[mem[64] + _6171 + 68] = 0
            revert with memory
              from mem[64]
               len _6135 + ceil32(_6171) + -mem[64] + 68
        if not arg1:
            idx = 0
            while idx < arg2.length:
                if idx >= arg3.length:
                    revert with 'NH{q', 50
                if idx >= arg2.length:
                    revert with 'NH{q', 50
                mem[0] = arg1
                mem[32] = sha3(mem[(32 * idx) + 128], 0)
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] > -mem[(32 * idx) + floor32(arg2.length) + 129] - 1:
                    revert with 'NH{q', 17
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] += mem[(32 * idx) + floor32(arg2.length) + 129]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            mem[floor32(arg2.length) + floor32(arg3.length) + 130] = 64
            mem[floor32(arg2.length) + floor32(arg3.length) + 194] = arg2.length
            mem[floor32(arg2.length) + floor32(arg3.length) + 226 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
            var110001 = arg2.length
            mem[floor32(arg2.length) + floor32(arg3.length) + 162] = (32 * arg2.length) + 96
            mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 226] = arg3.length
            mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 258 len 32 * arg3.length] = mem[floor32(arg2.length) + 129 len 32 * arg3.length]
            emit TransferBatch(Array(len=arg2.length, data=mem[floor32(arg2.length) + floor32(arg3.length) + 226 len (32 * arg2.length) + (32 * arg3.length) + 32]), (32 * arg2.length) + 96, msg.sender, 0, arg1);
            if ext_code.size(arg1) <= 0:
            mem[floor32(arg2.length) + floor32(arg3.length) + 130] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
            mem[floor32(arg2.length) + floor32(arg3.length) + 134] = msg.sender
            mem[floor32(arg2.length) + floor32(arg3.length) + 166] = 0
            mem[floor32(arg2.length) + floor32(arg3.length) + 198] = 160
            mem[floor32(arg2.length) + floor32(arg3.length) + 294] = arg2.length
            mem[floor32(arg2.length) + floor32(arg3.length) + 326 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
            mem[floor32(arg2.length) + floor32(arg3.length) + 230] = (32 * arg2.length) + 192
            mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 326] = arg3.length
            mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 358 len 32 * arg3.length] = mem[floor32(arg2.length) + 129 len 32 * arg3.length]
            mem[floor32(arg2.length) + floor32(arg3.length) + 262] = (32 * arg2.length) + (32 * arg3.length) + 224
            mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + (32 * arg3.length) + 358] = 0
            mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + (32 * arg3.length) + 390 len 0] = None
            require ext_code.size(arg1)
            call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, 0, 160, (32 * arg2.length) + 192, (32 * arg2.length) + (32 * arg3.length) + 224, arg2.length, mem[floor32(arg2.length) + floor32(arg3.length) + 326 len (32 * arg2.length) + (32 * arg3.length) + 32], 0
            mem[floor32(arg2.length) + floor32(arg3.length) + 130] = ext_call.return_data[0]
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
            mem[floor32(arg2.length) + floor32(arg3.length) + 130 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131 > test266151307() or floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131 < 130:
                revert with 'NH{q', 65
            mem[64] = floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131
            if not floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130:
                mem[floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _5649 = floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131
            mem[floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _5690 = mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130]
            mem[mem[64] + 36] = mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130]
            mem[mem[64] + 68 len ceil32(_5690)] = mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 162 len ceil32(_5690)]
            if ceil32(_5690) <= _5690:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_5690) + 32]
            mem[mem[64] + _5690 + 68] = 0
            revert with memory
              from mem[64]
               len _5649 + ceil32(_5690) + -mem[64] + 68
        idx = 0
        while idx < arg2.length:
            if idx >= arg2.length:
                revert with 'NH{q', 50
            if not arg1:
                revert with 0, 'ERC1155: balance query for the zero address'
            mem[0] = arg1
            mem[32] = sha3(mem[(32 * idx) + 128], 0)
            if not balanceOf[mem[(32 * idx) + 128]][address(arg1)]:
                if idx >= arg3.length:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + floor32(arg2.length) + 129]:
                    mem[0] = arg1
                    mem[32] = 6
                    if balanceOf[address(arg1)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)]++
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg2.length:
            if idx >= arg3.length:
                revert with 'NH{q', 50
            if idx >= arg2.length:
                revert with 'NH{q', 50
            mem[0] = arg1
            mem[32] = sha3(mem[(32 * idx) + 128], 0)
            if balanceOf[mem[(32 * idx) + 128]][address(arg1)] > -mem[(32 * idx) + floor32(arg2.length) + 129] - 1:
                revert with 'NH{q', 17
            balanceOf[mem[(32 * idx) + 128]][address(arg1)] += mem[(32 * idx) + floor32(arg2.length) + 129]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[floor32(arg2.length) + floor32(arg3.length) + 130] = 64
        mem[floor32(arg2.length) + floor32(arg3.length) + 194] = arg2.length
        mem[floor32(arg2.length) + floor32(arg3.length) + 226 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
        var115001 = arg2.length
        mem[floor32(arg2.length) + floor32(arg3.length) + 162] = (32 * arg2.length) + 96
        mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 226] = arg3.length
        mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 258 len 32 * arg3.length] = mem[floor32(arg2.length) + 129 len 32 * arg3.length]
        emit TransferBatch(Array(len=arg2.length, data=mem[floor32(arg2.length) + floor32(arg3.length) + 226 len (32 * arg2.length) + (32 * arg3.length) + 32]), (32 * arg2.length) + 96, msg.sender, 0, arg1);
        if ext_code.size(arg1) <= 0:
        mem[floor32(arg2.length) + floor32(arg3.length) + 130] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[floor32(arg2.length) + floor32(arg3.length) + 134] = msg.sender
        mem[floor32(arg2.length) + floor32(arg3.length) + 166] = 0
        mem[floor32(arg2.length) + floor32(arg3.length) + 198] = 160
        mem[floor32(arg2.length) + floor32(arg3.length) + 294] = arg2.length
        mem[floor32(arg2.length) + floor32(arg3.length) + 326 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
        mem[floor32(arg2.length) + floor32(arg3.length) + 230] = (32 * arg2.length) + 192
        mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 326] = arg3.length
        mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 358 len 32 * arg3.length] = mem[floor32(arg2.length) + 129 len 32 * arg3.length]
        mem[floor32(arg2.length) + floor32(arg3.length) + 262] = (32 * arg2.length) + (32 * arg3.length) + 224
        mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + (32 * arg3.length) + 358] = 0
        mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + (32 * arg3.length) + 390 len 0] = None
        require ext_code.size(arg1)
        call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, 160, (32 * arg2.length) + 192, (32 * arg2.length) + (32 * arg3.length) + 224, arg2.length, mem[floor32(arg2.length) + floor32(arg3.length) + 326 len (32 * arg2.length) + (32 * arg3.length) + 32], 0
        mem[floor32(arg2.length) + floor32(arg3.length) + 130] = ext_call.return_data[0]
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
        mem[floor32(arg2.length) + floor32(arg3.length) + 130 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131 > test266151307() or floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131 < 130:
            revert with 'NH{q', 65
        mem[64] = floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131
        if not floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130:
            mem[floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _6137 = floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131
        mem[floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _6174 = mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130]
        mem[mem[64] + 36] = mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130]
        mem[mem[64] + 68 len ceil32(_6174)] = mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 162 len ceil32(_6174)]
        if ceil32(_6174) <= _6174:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_6174) + 32]
        mem[mem[64] + _6174 + 68] = 0
        revert with memory
          from mem[64]
           len _6137 + ceil32(_6174) + -mem[64] + 68
    idx = 0
    while idx < arg2.length:
        if idx >= arg3.length:
            revert with 'NH{q', 50
        if idx >= arg2.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 4
        if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + floor32(arg2.length) + 129]:
            revert with 'NH{q', 17
        totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + floor32(arg2.length) + 129]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 == arg1:
        if not arg1:
            idx = 0
            while idx < arg2.length:
                if idx >= arg3.length:
                    revert with 'NH{q', 50
                if idx >= arg2.length:
                    revert with 'NH{q', 50
                mem[0] = arg1
                mem[32] = sha3(mem[(32 * idx) + 128], 0)
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] > -mem[(32 * idx) + floor32(arg2.length) + 129] - 1:
                    revert with 'NH{q', 17
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] += mem[(32 * idx) + floor32(arg2.length) + 129]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            mem[floor32(arg2.length) + floor32(arg3.length) + 130] = 64
            mem[floor32(arg2.length) + floor32(arg3.length) + 194] = arg2.length
            mem[floor32(arg2.length) + floor32(arg3.length) + 226 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
            var113001 = arg2.length
            mem[floor32(arg2.length) + floor32(arg3.length) + 162] = (32 * arg2.length) + 96
            mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 226] = arg3.length
            mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 258 len 32 * arg3.length] = mem[floor32(arg2.length) + 129 len 32 * arg3.length]
            emit TransferBatch(Array(len=arg2.length, data=mem[floor32(arg2.length) + floor32(arg3.length) + 226 len (32 * arg2.length) + (32 * arg3.length) + 32]), (32 * arg2.length) + 96, msg.sender, 0, arg1);
            if ext_code.size(arg1) <= 0:
            mem[floor32(arg2.length) + floor32(arg3.length) + 130] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
            mem[floor32(arg2.length) + floor32(arg3.length) + 134] = msg.sender
            mem[floor32(arg2.length) + floor32(arg3.length) + 166] = 0
            mem[floor32(arg2.length) + floor32(arg3.length) + 198] = 160
            mem[floor32(arg2.length) + floor32(arg3.length) + 294] = arg2.length
            mem[floor32(arg2.length) + floor32(arg3.length) + 326 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
            mem[floor32(arg2.length) + floor32(arg3.length) + 230] = (32 * arg2.length) + 192
            mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 326] = arg3.length
            mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 358 len 32 * arg3.length] = mem[floor32(arg2.length) + 129 len 32 * arg3.length]
            mem[floor32(arg2.length) + floor32(arg3.length) + 262] = (32 * arg2.length) + (32 * arg3.length) + 224
            mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + (32 * arg3.length) + 358] = 0
            mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + (32 * arg3.length) + 390 len 0] = None
            require ext_code.size(arg1)
            call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, 0, 160, (32 * arg2.length) + 192, (32 * arg2.length) + (32 * arg3.length) + 224, arg2.length, mem[floor32(arg2.length) + floor32(arg3.length) + 326 len (32 * arg2.length) + (32 * arg3.length) + 32], 0
            mem[floor32(arg2.length) + floor32(arg3.length) + 130] = ext_call.return_data[0]
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
            mem[floor32(arg2.length) + floor32(arg3.length) + 130 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131 > test266151307() or floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131 < 130:
                revert with 'NH{q', 65
            mem[64] = floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131
            if not floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130:
                mem[floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _6139 = floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131
            mem[floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _6177 = mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130]
            mem[mem[64] + 36] = mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130]
            mem[mem[64] + 68 len ceil32(_6177)] = mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 162 len ceil32(_6177)]
            if ceil32(_6177) <= _6177:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_6177) + 32]
            mem[mem[64] + _6177 + 68] = 0
            revert with memory
              from mem[64]
               len _6139 + ceil32(_6177) + -mem[64] + 68
        idx = 0
        while idx < arg2.length:
            if idx >= arg2.length:
                revert with 'NH{q', 50
            if not arg1:
                revert with 0, 'ERC1155: balance query for the zero address'
            mem[0] = arg1
            mem[32] = sha3(mem[(32 * idx) + 128], 0)
            if not balanceOf[mem[(32 * idx) + 128]][address(arg1)]:
                if idx >= arg3.length:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + floor32(arg2.length) + 129]:
                    mem[0] = arg1
                    mem[32] = 6
                    if balanceOf[address(arg1)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)]++
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg2.length:
            if idx >= arg3.length:
                revert with 'NH{q', 50
            if idx >= arg2.length:
                revert with 'NH{q', 50
            mem[0] = arg1
            mem[32] = sha3(mem[(32 * idx) + 128], 0)
            if balanceOf[mem[(32 * idx) + 128]][address(arg1)] > -mem[(32 * idx) + floor32(arg2.length) + 129] - 1:
                revert with 'NH{q', 17
            balanceOf[mem[(32 * idx) + 128]][address(arg1)] += mem[(32 * idx) + floor32(arg2.length) + 129]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[floor32(arg2.length) + floor32(arg3.length) + 130] = 64
        mem[floor32(arg2.length) + floor32(arg3.length) + 194] = arg2.length
        mem[floor32(arg2.length) + floor32(arg3.length) + 226 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
        mem[floor32(arg2.length) + floor32(arg3.length) + 162] = (32 * arg2.length) + 96
        mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 226] = arg3.length
        mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 258 len 32 * arg3.length] = mem[floor32(arg2.length) + 129 len 32 * arg3.length]
        emit TransferBatch(Array(len=arg2.length, data=mem[floor32(arg2.length) + floor32(arg3.length) + 226 len (32 * arg2.length) + (32 * arg3.length) + 32]), (32 * arg2.length) + 96, msg.sender, 0, arg1);
        if ext_code.size(arg1) <= 0:
        mem[floor32(arg2.length) + floor32(arg3.length) + 130] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[floor32(arg2.length) + floor32(arg3.length) + 134] = msg.sender
        mem[floor32(arg2.length) + floor32(arg3.length) + 166] = 0
        mem[floor32(arg2.length) + floor32(arg3.length) + 198] = 160
        mem[floor32(arg2.length) + floor32(arg3.length) + 294] = arg2.length
        mem[floor32(arg2.length) + floor32(arg3.length) + 326 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
        mem[floor32(arg2.length) + floor32(arg3.length) + 230] = (32 * arg2.length) + 192
        mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 326] = arg3.length
        mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 358 len 32 * arg3.length] = mem[floor32(arg2.length) + 129 len 32 * arg3.length]
        mem[floor32(arg2.length) + floor32(arg3.length) + 262] = (32 * arg2.length) + (32 * arg3.length) + 224
        mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + (32 * arg3.length) + 358] = 0
        mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + (32 * arg3.length) + 390 len 0] = None
        require ext_code.size(arg1)
        call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, 160, (32 * arg2.length) + 192, (32 * arg2.length) + (32 * arg3.length) + 224, arg2.length, mem[floor32(arg2.length) + floor32(arg3.length) + 326 len (32 * arg2.length) + (32 * arg3.length) + 32], 0
        mem[floor32(arg2.length) + floor32(arg3.length) + 130] = ext_call.return_data[0]
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
        mem[floor32(arg2.length) + floor32(arg3.length) + 130 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131 > test266151307() or floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131 < 130:
            revert with 'NH{q', 65
        mem[64] = floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131
        if not floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130:
            mem[floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _6391 = floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131
        mem[floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _6403 = mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130]
        mem[mem[64] + 36] = mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130]
        mem[mem[64] + 68 len ceil32(_6403)] = mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 162 len ceil32(_6403)]
        if ceil32(_6403) <= _6403:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_6403) + 32]
        mem[mem[64] + _6403 + 68] = 0
        revert with memory
          from mem[64]
           len _6391 + ceil32(_6403) + -mem[64] + 68
    if not arg1:
        idx = 0
        while idx < arg2.length:
            if idx >= arg3.length:
                revert with 'NH{q', 50
            if idx >= arg2.length:
                revert with 'NH{q', 50
            mem[0] = arg1
            mem[32] = sha3(mem[(32 * idx) + 128], 0)
            if balanceOf[mem[(32 * idx) + 128]][address(arg1)] > -mem[(32 * idx) + floor32(arg2.length) + 129] - 1:
                revert with 'NH{q', 17
            balanceOf[mem[(32 * idx) + 128]][address(arg1)] += mem[(32 * idx) + floor32(arg2.length) + 129]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[floor32(arg2.length) + floor32(arg3.length) + 130] = 64
        mem[floor32(arg2.length) + floor32(arg3.length) + 194] = arg2.length
        mem[floor32(arg2.length) + floor32(arg3.length) + 226 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
        var114001 = arg2.length
        mem[floor32(arg2.length) + floor32(arg3.length) + 162] = (32 * arg2.length) + 96
        mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 226] = arg3.length
        mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 258 len 32 * arg3.length] = mem[floor32(arg2.length) + 129 len 32 * arg3.length]
        emit TransferBatch(Array(len=arg2.length, data=mem[floor32(arg2.length) + floor32(arg3.length) + 226 len (32 * arg2.length) + (32 * arg3.length) + 32]), (32 * arg2.length) + 96, msg.sender, 0, arg1);
        if ext_code.size(arg1) <= 0:
        mem[floor32(arg2.length) + floor32(arg3.length) + 130] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[floor32(arg2.length) + floor32(arg3.length) + 134] = msg.sender
        mem[floor32(arg2.length) + floor32(arg3.length) + 166] = 0
        mem[floor32(arg2.length) + floor32(arg3.length) + 198] = 160
        mem[floor32(arg2.length) + floor32(arg3.length) + 294] = arg2.length
        mem[floor32(arg2.length) + floor32(arg3.length) + 326 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
        mem[floor32(arg2.length) + floor32(arg3.length) + 230] = (32 * arg2.length) + 192
        mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 326] = arg3.length
        mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 358 len 32 * arg3.length] = mem[floor32(arg2.length) + 129 len 32 * arg3.length]
        mem[floor32(arg2.length) + floor32(arg3.length) + 262] = (32 * arg2.length) + (32 * arg3.length) + 224
        mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + (32 * arg3.length) + 358] = 0
        mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + (32 * arg3.length) + 390 len 0] = None
        require ext_code.size(arg1)
        call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, 160, (32 * arg2.length) + 192, (32 * arg2.length) + (32 * arg3.length) + 224, arg2.length, mem[floor32(arg2.length) + floor32(arg3.length) + 326 len (32 * arg2.length) + (32 * arg3.length) + 32], 0
        mem[floor32(arg2.length) + floor32(arg3.length) + 130] = ext_call.return_data[0]
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
        mem[floor32(arg2.length) + floor32(arg3.length) + 130 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131 > test266151307() or floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131 < 130:
            revert with 'NH{q', 65
        mem[64] = floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131
        if not floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130:
            mem[floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _6145 = floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131
        mem[floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _6182 = mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130]
        mem[mem[64] + 36] = mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130]
        mem[mem[64] + 68 len ceil32(_6182)] = mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 162 len ceil32(_6182)]
        if ceil32(_6182) <= _6182:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_6182) + 32]
        mem[mem[64] + _6182 + 68] = 0
        revert with memory
          from mem[64]
           len _6145 + ceil32(_6182) + -mem[64] + 68
    idx = 0
    while idx < arg2.length:
        if idx >= arg2.length:
            revert with 'NH{q', 50
        if not arg1:
            revert with 0, 'ERC1155: balance query for the zero address'
        mem[0] = arg1
        mem[32] = sha3(mem[(32 * idx) + 128], 0)
        if not balanceOf[mem[(32 * idx) + 128]][address(arg1)]:
            if idx >= arg3.length:
                revert with 'NH{q', 50
            if mem[(32 * idx) + floor32(arg2.length) + 129]:
                mem[0] = arg1
                mem[32] = 6
                if balanceOf[address(arg1)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)]++
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg2.length:
        if idx >= arg3.length:
            revert with 'NH{q', 50
        if idx >= arg2.length:
            revert with 'NH{q', 50
        mem[0] = arg1
        mem[32] = sha3(mem[(32 * idx) + 128], 0)
        if balanceOf[mem[(32 * idx) + 128]][address(arg1)] > -mem[(32 * idx) + floor32(arg2.length) + 129] - 1:
            revert with 'NH{q', 17
        balanceOf[mem[(32 * idx) + 128]][address(arg1)] += mem[(32 * idx) + floor32(arg2.length) + 129]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[floor32(arg2.length) + floor32(arg3.length) + 130] = 64
    mem[floor32(arg2.length) + floor32(arg3.length) + 194] = arg2.length
    mem[floor32(arg2.length) + floor32(arg3.length) + 226 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
    mem[floor32(arg2.length) + floor32(arg3.length) + 162] = (32 * arg2.length) + 96
    mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 226] = arg3.length
    mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 258 len 32 * arg3.length] = mem[floor32(arg2.length) + 129 len 32 * arg3.length]
    emit TransferBatch(Array(len=arg2.length, data=mem[floor32(arg2.length) + floor32(arg3.length) + 226 len (32 * arg2.length) + (32 * arg3.length) + 32]), (32 * arg2.length) + 96, msg.sender, 0, arg1);
    if ext_code.size(arg1) <= 0:
    mem[floor32(arg2.length) + floor32(arg3.length) + 130] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[floor32(arg2.length) + floor32(arg3.length) + 134] = msg.sender
    mem[floor32(arg2.length) + floor32(arg3.length) + 166] = 0
    mem[floor32(arg2.length) + floor32(arg3.length) + 198] = 160
    mem[floor32(arg2.length) + floor32(arg3.length) + 294] = arg2.length
    mem[floor32(arg2.length) + floor32(arg3.length) + 326 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
    mem[floor32(arg2.length) + floor32(arg3.length) + 230] = (32 * arg2.length) + 192
    mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 326] = arg3.length
    mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 358 len 32 * arg3.length] = mem[floor32(arg2.length) + 129 len 32 * arg3.length]
    mem[floor32(arg2.length) + floor32(arg3.length) + 262] = (32 * arg2.length) + (32 * arg3.length) + 224
    mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + (32 * arg3.length) + 358] = 0
    mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + (32 * arg3.length) + 390 len 0] = None
    require ext_code.size(arg1)
    call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, 0, 160, (32 * arg2.length) + 192, (32 * arg2.length) + (32 * arg3.length) + 224, arg2.length, mem[floor32(arg2.length) + floor32(arg3.length) + 326 len (32 * arg2.length) + (32 * arg3.length) + 32], 0
    mem[floor32(arg2.length) + floor32(arg3.length) + 130] = ext_call.return_data[0]
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
    mem[floor32(arg2.length) + floor32(arg3.length) + 130 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 32 > return_data.size - 4:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131 > test266151307() or floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131 < 130:
        revert with 'NH{q', 65
    mem[64] = floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131
    if not floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130:
        mem[floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
    _6393 = floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131
    mem[floor32(arg2.length) + floor32(arg3.length) + floor32(ext_call.return_data[0] + mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130] + 31) + 131] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _6406 = mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130]
    mem[mem[64] + 36] = mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 130]
    mem[mem[64] + 68 len ceil32(_6406)] = mem[floor32(arg2.length) + floor32(arg3.length) + ext_call.return_data[0] + 162 len ceil32(_6406)]
    if ceil32(_6406) <= _6406:
        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_6406) + 32]
    mem[mem[64] + _6406 + 68] = 0
    revert with memory
      from mem[64]
       len _6393 + ceil32(_6406) + -mem[64] + 68
}



}
