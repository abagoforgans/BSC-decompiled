contract main {




// =====================  Runtime code  =====================


#
#  - safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5)
#
const name = 'CryptoPredatorPhNft', 0

const symbol = 'CPPHL', 0


mapping of uint256 balanceOf;
mapping of uint8 stor1;
array of struct stor2;
address owner;
array of struct stor4;
mapping of struct stor5;

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

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor1[address(arg1)][address(arg2)])
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
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor4[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor4.length = 0
            idx = 0
            while stor4.length.field_1 + 31 / 32 > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor4[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor4.length = 0
            idx = 0
            while stor4.length.field_1 + 31 / 32 > idx:
                stor4[idx].field_0 = 0
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

function sub_c1341c4f(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + ceil32(ceil32(arg5.length)) + 98 > test266151307() or ceil32(ceil32(arg5.length)) + 98 < 97:
        revert with 'NH{q', 65
    require arg5 + arg5.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'ERC1155: mint to the zero address'
    if balanceOf[arg2][address(arg1)] > -arg3 - 1:
        revert with 'NH{q', 17
    balanceOf[arg2][address(arg1)] += arg3
    emit TransferSingle(arg2, arg3, msg.sender, 0, address(arg1));
    if ext_code.size(address(arg1)) > 0:
        require ext_code.size(address(arg1))
        call address(arg1).onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, arg2, arg3, 160, arg4.length, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, arg5.length) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    if stor5[arg2].field_0:
        if stor5[arg2].field_0 == stor5[arg2].field_1 < 32:
            revert with 'NH{q', 34
        if arg5.length:
            stor5[arg2][].field_0 = Array(len=arg5.length, data=arg5[all])
        else:
            stor5[arg2].field_0 = 0
            idx = 0
            while stor5[arg2].field_1 + 31 / 32 > idx:
                stor5[arg2][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor5[arg2].field_0 == stor5[arg2].field_1 < 32:
            revert with 'NH{q', 34
        if arg5.length:
            stor5[arg2][].field_0 = Array(len=arg5.length, data=arg5[all])
        else:
            stor5[arg2].field_0 = 0
            idx = 0
            while stor5[arg2].field_1 + 31 / 32 > idx:
                stor5[arg2][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_69a72327(?) payable {
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor4.length):
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
        if ceil32(stor4.length.field_1) > stor4.length.field_1:
            mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
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
                revert with 'NH{q', 34
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
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
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
            revert with 'NH{q', 34
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
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function _tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5[arg1].field_0:
        if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor5[arg1].field_0:
            if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor5[arg1].field_1:
                if 31 < stor5[arg1].field_1:
                    idx = 128
                    s = 0
                    while stor5[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor5[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor5[arg1].field_1:
                if 31 < stor5[arg1].field_1:
                    idx = 128
                    s = 0
                    while stor5[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor5[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if bool(stor4.length):
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
            if bool(stor4.length):
                if bool(stor4.length) == stor4.length.field_1 < 32:
                    revert with 'NH{q', 34
                if stor4.length.field_1:
                    if 31 < stor4.length.field_1:
                        idx = ceil32(stor5[arg1].field_1) + 160
                        s = 0
                        while ceil32(stor5[arg1].field_1) + stor4.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor4[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if bool(stor4.length) == stor4.length.field_1 < 32:
                    revert with 'NH{q', 34
                if stor4.length.field_1:
                    if 31 < stor4.length.field_1:
                        idx = ceil32(stor5[arg1].field_1) + 160
                        s = 0
                        while ceil32(stor5[arg1].field_1) + stor4.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor4[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            if stor4.length.field_1 > -stor5[arg1].field_1 - 1:
                revert with 'NH{q', 17
            if stor4.length.field_1 + stor5[arg1].field_1 > test266151307():
                revert with 'NH{q', 65
            if stor4.length.field_1 + stor5[arg1].field_1:
                mem[ceil32(stor5[arg1].field_1) + ceil32(stor4.length.field_1) + 192 len stor4.length.field_1 + stor5[arg1].field_1] = call.data[calldata.size len stor4.length.field_1 + stor5[arg1].field_1]
            idx = 0
            s = 0
            while idx < stor4.length.field_1:
                if idx >= stor4.length.field_1:
                    revert with 'NH{q', 50
                if s == -1:
                    revert with 'NH{q', 17
                if s >= stor4.length.field_1 + stor5[arg1].field_1:
                    revert with 'NH{q', 50
                mem[s + ceil32(stor5[arg1].field_1) + ceil32(stor4.length.field_1) + 192 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + 1
                continue 
            idx = 0
            s = stor4.length.field_1
            while idx < stor5[arg1].field_1:
                if idx >= stor5[arg1].field_1:
                    revert with 'NH{q', 50
                if s == -1:
                    revert with 'NH{q', 17
                if s >= stor4.length.field_1 + stor5[arg1].field_1:
                    revert with 'NH{q', 50
                mem[s + ceil32(stor5[arg1].field_1) + ceil32(stor4.length.field_1) + 192 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + 1
                continue 
            mem[ceil32(stor5[arg1].field_1) + ceil32(stor4.length.field_1) + floor32(stor4.length.field_1 + stor5[arg1].field_1 + 31) + 192] = 32
            s = 0
            while stor5[arg1].field_1 < stor4.length.field_1 + stor5[arg1].field_1:
                mem[ceil32(stor5[arg1].field_1) + ceil32(stor4.length.field_1) + floor32(stor4.length.field_1 + stor5[arg1].field_1 + 31) + stor5[arg1].field_1 + 256] = mem[ceil32(stor5[arg1].field_1) + ceil32(stor4.length.field_1) + stor5[arg1].field_1 + 192]
                s = stor5[arg1].field_1 + 32
                continue 
            if stor5[arg1].field_1 > stor4.length.field_1 + stor5[arg1].field_1:
                mem[ceil32(stor5[arg1].field_1) + ceil32(stor4.length.field_1) + floor32(stor4.length.field_1 + stor5[arg1].field_1 + 31) + stor4.length.field_1 + stor5[arg1].field_1 + 256] = 0
            return Array(len=stor4.length.field_1 + stor5[arg1].field_1, data=mem[ceil32(stor5[arg1].field_1) + ceil32(stor4.length.field_1) + floor32(stor4.length.field_1 + stor5[arg1].field_1 + 31) + 256 len 3 * floor32(stor4.length.field_1 + stor5[arg1].field_1 + 31)]), 
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor4.length):
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    idx = ceil32(stor5[arg1].field_1) + 160
                    s = 0
                    while ceil32(stor5[arg1].field_1) + stor4.length.field_1 + 128 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    idx = ceil32(stor5[arg1].field_1) + 160
                    s = 0
                    while ceil32(stor5[arg1].field_1) + stor4.length.field_1 + 128 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor4.length.field_1 > -stor5[arg1].field_1 - 1:
            revert with 'NH{q', 17
        if stor4.length.field_1 + stor5[arg1].field_1 > test266151307():
            revert with 'NH{q', 65
        if stor4.length.field_1 + stor5[arg1].field_1:
            mem[ceil32(stor5[arg1].field_1) + ceil32(stor4.length.field_1) + 192 len stor4.length.field_1 + stor5[arg1].field_1] = call.data[calldata.size len stor4.length.field_1 + stor5[arg1].field_1]
        idx = 0
        s = 0
        while idx < stor4.length.field_1:
            if idx >= stor4.length.field_1:
                revert with 'NH{q', 50
            if s == -1:
                revert with 'NH{q', 17
            if s >= stor4.length.field_1 + stor5[arg1].field_1:
                revert with 'NH{q', 50
            mem[s + ceil32(stor5[arg1].field_1) + ceil32(stor4.length.field_1) + 192 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = stor4.length.field_1
        while idx < stor5[arg1].field_1:
            if idx >= stor5[arg1].field_1:
                revert with 'NH{q', 50
            if s == -1:
                revert with 'NH{q', 17
            if s >= stor4.length.field_1 + stor5[arg1].field_1:
                revert with 'NH{q', 50
            mem[s + ceil32(stor5[arg1].field_1) + ceil32(stor4.length.field_1) + 192 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        mem[ceil32(stor5[arg1].field_1) + ceil32(stor4.length.field_1) + floor32(stor4.length.field_1 + stor5[arg1].field_1 + 31) + 192] = 32
        s = 0
        while stor5[arg1].field_1 < stor4.length.field_1 + stor5[arg1].field_1:
            mem[ceil32(stor5[arg1].field_1) + ceil32(stor4.length.field_1) + floor32(stor4.length.field_1 + stor5[arg1].field_1 + 31) + stor5[arg1].field_1 + 256] = mem[ceil32(stor5[arg1].field_1) + ceil32(stor4.length.field_1) + stor5[arg1].field_1 + 192]
            s = stor5[arg1].field_1 + 32
            continue 
        if stor5[arg1].field_1 > stor4.length.field_1 + stor5[arg1].field_1:
            mem[ceil32(stor5[arg1].field_1) + ceil32(stor4.length.field_1) + floor32(stor4.length.field_1 + stor5[arg1].field_1 + 31) + stor4.length.field_1 + stor5[arg1].field_1 + 256] = 0
        return Array(len=stor4.length.field_1 + stor5[arg1].field_1, data=mem[ceil32(stor5[arg1].field_1) + ceil32(stor4.length.field_1) + floor32(stor4.length.field_1 + stor5[arg1].field_1 + 31) + 256 len 3 * floor32(stor4.length.field_1 + stor5[arg1].field_1 + 31)]), 
    if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor5[arg1].field_0:
        if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor5[arg1].field_1:
            if 31 < stor5[arg1].field_1:
                idx = 128
                s = 0
                while stor5[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor5[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor5[arg1].field_1:
            if 31 < stor5[arg1].field_1:
                idx = 128
                s = 0
                while stor5[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor5[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor4.length):
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    idx = ceil32(stor5[arg1].field_1) + 160
                    s = 0
                    while ceil32(stor5[arg1].field_1) + stor4.length.field_1 + 128 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    idx = ceil32(stor5[arg1].field_1) + 160
                    s = 0
                    while ceil32(stor5[arg1].field_1) + stor4.length.field_1 + 128 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor4.length.field_1 > -stor5[arg1].field_1 - 1:
            revert with 'NH{q', 17
        if stor4.length.field_1 + stor5[arg1].field_1 > test266151307():
            revert with 'NH{q', 65
        if stor4.length.field_1 + stor5[arg1].field_1:
            mem[ceil32(stor5[arg1].field_1) + ceil32(stor4.length.field_1) + 192 len stor4.length.field_1 + stor5[arg1].field_1] = call.data[calldata.size len stor4.length.field_1 + stor5[arg1].field_1]
        idx = 0
        s = 0
        while idx < stor4.length.field_1:
            if idx >= stor4.length.field_1:
                revert with 'NH{q', 50
            if s == -1:
                revert with 'NH{q', 17
            if s >= stor4.length.field_1 + stor5[arg1].field_1:
                revert with 'NH{q', 50
            mem[s + ceil32(stor5[arg1].field_1) + ceil32(stor4.length.field_1) + 192 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = stor4.length.field_1
        while idx < stor5[arg1].field_1:
            if idx >= stor5[arg1].field_1:
                revert with 'NH{q', 50
            if s == -1:
                revert with 'NH{q', 17
            if s >= stor4.length.field_1 + stor5[arg1].field_1:
                revert with 'NH{q', 50
            mem[s + ceil32(stor5[arg1].field_1) + ceil32(stor4.length.field_1) + 192 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        mem[ceil32(stor5[arg1].field_1) + ceil32(stor4.length.field_1) + floor32(stor4.length.field_1 + stor5[arg1].field_1 + 31) + 192] = 32
        s = 0
        while stor5[arg1].field_1 < stor4.length.field_1 + stor5[arg1].field_1:
            mem[ceil32(stor5[arg1].field_1) + ceil32(stor4.length.field_1) + floor32(stor4.length.field_1 + stor5[arg1].field_1 + 31) + stor5[arg1].field_1 + 256] = mem[ceil32(stor5[arg1].field_1) + ceil32(stor4.length.field_1) + stor5[arg1].field_1 + 192]
            s = stor5[arg1].field_1 + 32
            continue 
        if stor5[arg1].field_1 > stor4.length.field_1 + stor5[arg1].field_1:
            mem[ceil32(stor5[arg1].field_1) + ceil32(stor4.length.field_1) + floor32(stor4.length.field_1 + stor5[arg1].field_1 + 31) + stor4.length.field_1 + stor5[arg1].field_1 + 256] = 0
        return Array(len=stor4.length.field_1 + stor5[arg1].field_1, data=mem[ceil32(stor5[arg1].field_1) + ceil32(stor4.length.field_1) + floor32(stor4.length.field_1 + stor5[arg1].field_1 + 31) + 256 len 3 * floor32(stor4.length.field_1 + stor5[arg1].field_1 + 31)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                idx = ceil32(stor5[arg1].field_1) + 160
                s = 0
                while ceil32(stor5[arg1].field_1) + stor4.length.field_1 + 128 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                idx = ceil32(stor5[arg1].field_1) + 160
                s = 0
                while ceil32(stor5[arg1].field_1) + stor4.length.field_1 + 128 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if stor4.length.field_1 > -stor5[arg1].field_1 - 1:
        revert with 'NH{q', 17
    if stor4.length.field_1 + stor5[arg1].field_1 > test266151307():
        revert with 'NH{q', 65
    if stor4.length.field_1 + stor5[arg1].field_1:
        mem[ceil32(stor5[arg1].field_1) + ceil32(stor4.length.field_1) + 192 len stor4.length.field_1 + stor5[arg1].field_1] = call.data[calldata.size len stor4.length.field_1 + stor5[arg1].field_1]
    idx = 0
    s = 0
    while idx < stor4.length.field_1:
        if idx >= stor4.length.field_1:
            revert with 'NH{q', 50
        if s == -1:
            revert with 'NH{q', 17
        if s >= stor4.length.field_1 + stor5[arg1].field_1:
            revert with 'NH{q', 50
        mem[s + ceil32(stor5[arg1].field_1) + ceil32(stor4.length.field_1) + 192 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = stor4.length.field_1
    while idx < stor5[arg1].field_1:
        if idx >= stor5[arg1].field_1:
            revert with 'NH{q', 50
        if s == -1:
            revert with 'NH{q', 17
        if s >= stor4.length.field_1 + stor5[arg1].field_1:
            revert with 'NH{q', 50
        mem[s + ceil32(stor5[arg1].field_1) + ceil32(stor4.length.field_1) + 192 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    mem[ceil32(stor5[arg1].field_1) + ceil32(stor4.length.field_1) + floor32(stor4.length.field_1 + stor5[arg1].field_1 + 31) + 192] = 32
    s = 0
    while stor5[arg1].field_1 < stor4.length.field_1 + stor5[arg1].field_1:
        mem[ceil32(stor5[arg1].field_1) + ceil32(stor4.length.field_1) + floor32(stor4.length.field_1 + stor5[arg1].field_1 + 31) + stor5[arg1].field_1 + 256] = mem[ceil32(stor5[arg1].field_1) + ceil32(stor4.length.field_1) + stor5[arg1].field_1 + 192]
        s = stor5[arg1].field_1 + 32
        continue 
    if stor5[arg1].field_1 > stor4.length.field_1 + stor5[arg1].field_1:
        mem[ceil32(stor5[arg1].field_1) + ceil32(stor4.length.field_1) + floor32(stor4.length.field_1 + stor5[arg1].field_1 + 31) + stor4.length.field_1 + stor5[arg1].field_1 + 256] = 0
    return Array(len=stor4.length.field_1 + stor5[arg1].field_1, data=mem[ceil32(stor5[arg1].field_1) + ceil32(stor4.length.field_1) + floor32(stor4.length.field_1 + stor5[arg1].field_1 + 31) + 256 len 3 * floor32(stor4.length.field_1 + stor5[arg1].field_1 + 31)]), 
}



}
