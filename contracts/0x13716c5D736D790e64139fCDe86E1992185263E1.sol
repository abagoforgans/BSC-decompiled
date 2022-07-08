contract main {




// =====================  Runtime code  =====================


#
#  - safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5)
#
const sub_9257b8f4(?) = 1800


mapping of uint256 balanceOf;
mapping of uint8 stor1;
uint256 mintedCount;
address owner;
array of uint256 stor5;

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

function mintedCount() payable {
    return mintedCount
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor1[address(arg1)][address(arg2)])
}

function getMintedCount() payable {
    return mintedCount
}

function _fallback() payable {
    revert
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

function sub_ee972974(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < mintedCount:
        if not address(arg1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
        mem[0] = address(arg1)
        mem[32] = sha3(idx, 0)
        if balanceOf[idx][address(arg1)] > 0:
            return 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0
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
        revert with 0, 'Cannot change URI'
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor5[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor5.length = 0
            idx = 0
            while stor5.length.field_1 + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor5[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor5.length = 0
            idx = 0
            while stor5.length.field_1 + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_edc9a430(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    s = 0
    while idx < 1800:
        if not address(arg1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
        mem[0] = address(arg1)
        mem[32] = sha3(idx, 0)
        if balanceOf[idx][address(arg1)] < 1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    if s:
        mem[128 len 32 * s] = call.data[calldata.size len 32 * s]
    idx = 0
    t = 0
    while idx < 1800:
        if not address(arg1):
            revert with 0, 'ERC1155: balance query for the zero address'
        mem[0] = address(arg1)
        mem[32] = sha3(idx, 0)
        if balanceOf[idx][address(arg1)] < 1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            t = t
            continue 
        if t == -1:
            revert with 'NH{q', 17
        if t >= s:
            revert with 'NH{q', 50
        mem[(32 * t) + 128] = idx
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        t = t + 1
        continue 
    return Array(len=s, data=mem[128 len 32 * s])
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

function mintSupply() payable {
    if owner != msg.sender:
        revert with 0, 'Cannot mint NFTs'
    if mintedCount >= 1800:
        revert with 0, 'Minting limit Reached'
    if mintedCount > -41:
        revert with 'NH{q', 17
    if var126002 >= mintedCount + 40:
        if mintedCount > -41:
            revert with 'NH{q', 17
        mintedCount += 40
    mem[64] = 128
    mem[96] = 0
    s = 96
    t = var128001
    u = var128001
    while msg.sender:
        _709 = mem[64]
        mem[mem[64]] = 1
        mem[64] = mem[64] + 64
        if 0 >= mem[_709]:
            revert with 'NH{q', 50
        mem[_709 + 32] = t
        mem[_709 + 64] = 1
        mem[64] = _709 + 128
        mem[_709 + 96] = 1
        mem[0] = msg.sender
        mem[32] = sha3(t, 0)
        if balanceOf[t][address(msg.sender)] > -2:
            revert with 'NH{q', 17
        balanceOf[t][address(msg.sender)]++
        mem[_709 + 160] = 1
        emit TransferSingle(t, 1, msg.sender, 0, msg.sender);
        if ext_code.size(msg.sender) <= 0:
            if u == -1:
                revert with 'NH{q', 17
            if mintedCount > -41:
                revert with 'NH{q', 17
            if u + 1 >= mintedCount + 40:
                if mintedCount > -41:
                    revert with 'NH{q', 17
                mintedCount += 40
            mem[64] = _709 + 160
            mem[_709 + 128] = 0
            s = _709 + 128
            t = u + 1
            u = u + 1
            continue 
        mem[_709 + 128] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
        mem[_709 + 132] = msg.sender
        mem[_709 + 164] = 0
        mem[_709 + 196] = t
        mem[_709 + 228] = 1
        mem[_709 + 260] = 160
        _720 = mem[s]
        mem[_709 + 292] = mem[s]
        idx = 0
        while idx < _720:
            mem[_709 + idx + 324] = mem[s + idx + 32]
            idx = idx + 32
            continue 
        if ceil32(_720) > _720:
            mem[_709 + _720 + 324] = 0
        require ext_code.size(msg.sender)
        call msg.sender.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, t, 1, 160, mem[_709 + 292 len ceil32(_720) + 32]
        mem[_709 + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if u == -1:
            revert with 'NH{q', 17
        if mintedCount > -41:
            revert with 'NH{q', 17
        if u + 1 >= mintedCount + 40:
            if mintedCount > -41:
                revert with 'NH{q', 17
            mintedCount += 40
        mem[64] = _709 + ceil32(return_data.size) + 160
        mem[_709 + ceil32(return_data.size) + 128] = 0
        s = _709 + ceil32(return_data.size) + 128
        t = u + 1
        u = u + 1
        continue 
    revert with 0, 'ERC1155: mint to the zero address'
}

function uri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        mem[96] = 1
        mem[128] = '0'
        if bool(stor5.length):
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor5.length):
                mem[192] = Mask(248, 8, stor5.length)
            else:
                if bool(stor5.length) != 1:
                    mem[64] = 6
                    _121 = mem[160]
                    mem[38] = mem[160]
                    mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_121) > _121:
                        mem[_121 + 70] = 0
                    return memory
                      from mem[64]
                       len ceil32(_121) + -mem[64] + 70
                idx = 0
                s = 0
                while idx < stor5.length.field_1:
                    mem[idx + 192] = stor5[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor5.length.field_1 + 192] = '0'
            mem[stor5.length.field_1 + 193] = '.json'
            mem[stor5.length.field_1 + 198] = 32
            mem[stor5.length.field_1 + 230] = mem[160]
            mem[stor5.length.field_1 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[stor5.length.field_1 + mem[160] + 262] = 0
            return Array(len=mem[160], data=mem[stor5.length.field_1 + 262 len ceil32(mem[160])])
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor5.length):
            mem[192] = Mask(248, 8, stor5.length)
        else:
            if bool(stor5.length) != 1:
                mem[64] = 6
                _123 = mem[160]
                mem[38] = mem[160]
                mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_123) > _123:
                    mem[_123 + 70] = 0
                return memory
                  from mem[64]
                   len ceil32(_123) + -mem[64] + 70
            idx = 0
            s = 0
            while idx < stor5.length.field_1:
                mem[idx + 192] = stor5[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[stor5.length.field_1 + 192] = '0'
        mem[stor5.length.field_1 + 193] = '.json'
        mem[stor5.length.field_1 + 198] = 32
        mem[stor5.length.field_1 + 230] = mem[160]
        mem[stor5.length.field_1 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[stor5.length.field_1 + mem[160] + 262] = 0
        return Array(len=mem[160], data=mem[stor5.length.field_1 + 262 len ceil32(mem[160])])
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
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _356 = mem[64]
        if bool(stor5.length):
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor5.length):
                mem[mem[64] + 32] = Mask(248, 8, stor5.length)
                _388 = mem[96]
                mem[mem[64] + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[64] + stor5.length.field_1 + mem[96] + 32] = '.json'
                if ceil32(mem[96]) <= mem[96]:
                    _596 = mem[64]
                    mem[64] = _356 + stor5.length.field_1 + _388 + 37
                    mem[_356 + stor5.length.field_1 + _388 + 37] = 32
                    _632 = mem[_596]
                    mem[_356 + stor5.length.field_1 + _388 + 69] = mem[_596]
                    mem[_356 + stor5.length.field_1 + _388 + 101 len ceil32(_632)] = mem[_596 + 32 len ceil32(_632)]
                    if ceil32(_632) > _632:
                        mem[_356 + stor5.length.field_1 + _388 + _632 + 101] = 0
                    return 32, mem[_356 + stor5.length.field_1 + _388 + 69 len ceil32(_632) + 32]
                _609 = mem[64]
                mem[64] = _356 + stor5.length.field_1 + _388 + 37
                mem[_356 + stor5.length.field_1 + _388 + 37] = 32
                _640 = mem[_609]
                mem[_356 + stor5.length.field_1 + _388 + 69] = mem[_609]
                mem[_356 + stor5.length.field_1 + _388 + 101 len ceil32(_640)] = mem[_609 + 32 len ceil32(_640)]
                if ceil32(_640) > _640:
                    mem[_356 + stor5.length.field_1 + _388 + _640 + 101] = 0
                return 32, mem[_356 + stor5.length.field_1 + _388 + 69 len ceil32(_640) + 32]
            if bool(stor5.length) != 1:
                _392 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_392] = '.json'
                if ceil32(_392) <= _392:
                    _598 = mem[64]
                    mem[64] = _392 + 5
                    mem[_392 + 5] = 32
                    _633 = mem[_598]
                    mem[_392 + 37] = mem[_598]
                    mem[_392 + 69 len ceil32(_633)] = mem[_598 + 32 len ceil32(_633)]
                    if ceil32(_633) > _633:
                        mem[_392 + _633 + 69] = 0
                    return 32, mem[_392 + 37 len ceil32(_633) + 32]
                _611 = mem[64]
                mem[64] = _392 + 5
                mem[_392 + 5] = 32
                _641 = mem[_611]
                mem[_392 + 37] = mem[_611]
                mem[_392 + 69 len ceil32(_641)] = mem[_611 + 32 len ceil32(_641)]
                if ceil32(_641) > _641:
                    mem[_392 + _641 + 69] = 0
                return 32, mem[_392 + 37 len ceil32(_641) + 32]
            mem[0] = 5
            idx = 0
            s = 0
            while idx < stor5.length.field_1:
                mem[_356 + idx + 32] = stor5[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _584 = mem[96]
            mem[_356 + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_356 + stor5.length.field_1 + _584 + 32] = '.json'
            if ceil32(_584) <= _584:
                _796 = mem[64]
                mem[64] = _356 + stor5.length.field_1 + _584 + 37
                mem[_356 + stor5.length.field_1 + _584 + 37] = 32
                _812 = mem[_796]
                mem[_356 + stor5.length.field_1 + _584 + 69] = mem[_796]
                mem[_356 + stor5.length.field_1 + _584 + 101 len ceil32(_812)] = mem[_796 + 32 len ceil32(_812)]
                if ceil32(_812) > _812:
                    mem[_356 + stor5.length.field_1 + _584 + _812 + 101] = 0
                return 32, mem[_356 + stor5.length.field_1 + _584 + 69 len ceil32(_812) + 32]
            _801 = mem[64]
            mem[64] = _356 + stor5.length.field_1 + _584 + 37
            mem[_356 + stor5.length.field_1 + _584 + 37] = 32
            _816 = mem[_801]
            mem[_356 + stor5.length.field_1 + _584 + 69] = mem[_801]
            mem[_356 + stor5.length.field_1 + _584 + 101 len ceil32(_816)] = mem[_801 + 32 len ceil32(_816)]
            if ceil32(_816) > _816:
                mem[_356 + stor5.length.field_1 + _584 + _816 + 101] = 0
            return 32, mem[_356 + stor5.length.field_1 + _584 + 69 len ceil32(_816) + 32]
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor5.length):
            mem[mem[64] + 32] = Mask(248, 8, stor5.length)
            _393 = mem[96]
            mem[mem[64] + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_356 + stor5.length.field_1 + _393 + 32] = '.json'
            if ceil32(_393) <= _393:
                _599 = mem[64]
                mem[64] = _356 + stor5.length.field_1 + _393 + 37
                mem[_356 + stor5.length.field_1 + _393 + 37] = 32
                _634 = mem[_599]
                mem[_356 + stor5.length.field_1 + _393 + 69] = mem[_599]
                mem[_356 + stor5.length.field_1 + _393 + 101 len ceil32(_634)] = mem[_599 + 32 len ceil32(_634)]
                if ceil32(_634) > _634:
                    mem[_356 + stor5.length.field_1 + _393 + _634 + 101] = 0
                return 32, mem[_356 + stor5.length.field_1 + _393 + 69 len ceil32(_634) + 32]
            _613 = mem[64]
            mem[64] = _356 + stor5.length.field_1 + _393 + 37
            mem[_356 + stor5.length.field_1 + _393 + 37] = 32
            _642 = mem[_613]
            mem[_356 + stor5.length.field_1 + _393 + 69] = mem[_613]
            mem[_356 + stor5.length.field_1 + _393 + 101 len ceil32(_642)] = mem[_613 + 32 len ceil32(_642)]
            if ceil32(_642) > _642:
                mem[_356 + stor5.length.field_1 + _393 + _642 + 101] = 0
            return 32, mem[_356 + stor5.length.field_1 + _393 + 69 len ceil32(_642) + 32]
        if bool(stor5.length) != 1:
            _396 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_396] = '.json'
            if ceil32(_396) <= _396:
                _601 = mem[64]
                mem[64] = _396 + 5
                mem[_396 + 5] = 32
                _635 = mem[_601]
                mem[_396 + 37] = mem[_601]
                mem[_396 + 69 len ceil32(_635)] = mem[_601 + 32 len ceil32(_635)]
                if ceil32(_635) > _635:
                    mem[_396 + _635 + 69] = 0
                return 32, mem[_396 + 37 len ceil32(_635) + 32]
            _615 = mem[64]
            mem[64] = _396 + 5
            mem[_396 + 5] = 32
            _643 = mem[_615]
            mem[_396 + 37] = mem[_615]
            mem[_396 + 69 len ceil32(_643)] = mem[_615 + 32 len ceil32(_643)]
            if ceil32(_643) > _643:
                mem[_396 + _643 + 69] = 0
            return 32, mem[_396 + 37 len ceil32(_643) + 32]
        mem[0] = 5
        idx = 0
        s = 0
        while idx < stor5.length.field_1:
            mem[_356 + idx + 32] = stor5[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _585 = mem[96]
        mem[_356 + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_356 + stor5.length.field_1 + _585 + 32] = '.json'
        if ceil32(_585) <= _585:
            _797 = mem[64]
            mem[64] = _356 + stor5.length.field_1 + _585 + 37
            mem[_356 + stor5.length.field_1 + _585 + 37] = 32
            _813 = mem[_797]
            mem[_356 + stor5.length.field_1 + _585 + 69] = mem[_797]
            mem[_356 + stor5.length.field_1 + _585 + 101 len ceil32(_813)] = mem[_797 + 32 len ceil32(_813)]
            if ceil32(_813) > _813:
                mem[_356 + stor5.length.field_1 + _585 + _813 + 101] = 0
            return 32, mem[_356 + stor5.length.field_1 + _585 + 69 len ceil32(_813) + 32]
        _803 = mem[64]
        mem[64] = _356 + stor5.length.field_1 + _585 + 37
        mem[_356 + stor5.length.field_1 + _585 + 37] = 32
        _817 = mem[_803]
        mem[_356 + stor5.length.field_1 + _585 + 69] = mem[_803]
        mem[_356 + stor5.length.field_1 + _585 + 101 len ceil32(_817)] = mem[_803 + 32 len ceil32(_817)]
        if ceil32(_817) > _817:
            mem[_356 + stor5.length.field_1 + _585 + _817 + 101] = 0
        return 32, mem[_356 + stor5.length.field_1 + _585 + 69 len ceil32(_817) + 32]
    mem[128 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[96]:
            revert with 'NH{q', 50
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _357 = mem[64]
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor5.length):
            mem[mem[64] + 32] = Mask(248, 8, stor5.length)
            _389 = mem[96]
            mem[mem[64] + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[64] + stor5.length.field_1 + mem[96] + 32] = '.json'
            if ceil32(mem[96]) <= mem[96]:
                _602 = mem[64]
                mem[64] = _357 + stor5.length.field_1 + _389 + 37
                mem[_357 + stor5.length.field_1 + _389 + 37] = 32
                _636 = mem[_602]
                mem[_357 + stor5.length.field_1 + _389 + 69] = mem[_602]
                mem[_357 + stor5.length.field_1 + _389 + 101 len ceil32(_636)] = mem[_602 + 32 len ceil32(_636)]
                if ceil32(_636) > _636:
                    mem[_357 + stor5.length.field_1 + _389 + _636 + 101] = 0
                return 32, mem[_357 + stor5.length.field_1 + _389 + 69 len ceil32(_636) + 32]
            _617 = mem[64]
            mem[64] = _357 + stor5.length.field_1 + _389 + 37
            mem[_357 + stor5.length.field_1 + _389 + 37] = 32
            _644 = mem[_617]
            mem[_357 + stor5.length.field_1 + _389 + 69] = mem[_617]
            mem[_357 + stor5.length.field_1 + _389 + 101 len ceil32(_644)] = mem[_617 + 32 len ceil32(_644)]
            if ceil32(_644) > _644:
                mem[_357 + stor5.length.field_1 + _389 + _644 + 101] = 0
            return 32, mem[_357 + stor5.length.field_1 + _389 + 69 len ceil32(_644) + 32]
        if bool(stor5.length) != 1:
            _394 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_394] = '.json'
            if ceil32(_394) <= _394:
                _604 = mem[64]
                mem[64] = _394 + 5
                mem[_394 + 5] = 32
                _637 = mem[_604]
                mem[_394 + 37] = mem[_604]
                mem[_394 + 69 len ceil32(_637)] = mem[_604 + 32 len ceil32(_637)]
                if ceil32(_637) > _637:
                    mem[_394 + _637 + 69] = 0
                return 32, mem[_394 + 37 len ceil32(_637) + 32]
            _619 = mem[64]
            mem[64] = _394 + 5
            mem[_394 + 5] = 32
            _645 = mem[_619]
            mem[_394 + 37] = mem[_619]
            mem[_394 + 69 len ceil32(_645)] = mem[_619 + 32 len ceil32(_645)]
            if ceil32(_645) > _645:
                mem[_394 + _645 + 69] = 0
            return 32, mem[_394 + 37 len ceil32(_645) + 32]
        mem[0] = 5
        idx = 0
        s = 0
        while idx < stor5.length.field_1:
            mem[_357 + idx + 32] = stor5[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _586 = mem[96]
        mem[_357 + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_357 + stor5.length.field_1 + _586 + 32] = '.json'
        if ceil32(_586) <= _586:
            _798 = mem[64]
            mem[64] = _357 + stor5.length.field_1 + _586 + 37
            mem[_357 + stor5.length.field_1 + _586 + 37] = 32
            _814 = mem[_798]
            mem[_357 + stor5.length.field_1 + _586 + 69] = mem[_798]
            mem[_357 + stor5.length.field_1 + _586 + 101 len ceil32(_814)] = mem[_798 + 32 len ceil32(_814)]
            if ceil32(_814) > _814:
                mem[_357 + stor5.length.field_1 + _586 + _814 + 101] = 0
            return 32, mem[_357 + stor5.length.field_1 + _586 + 69 len ceil32(_814) + 32]
        _805 = mem[64]
        mem[64] = _357 + stor5.length.field_1 + _586 + 37
        mem[_357 + stor5.length.field_1 + _586 + 37] = 32
        _818 = mem[_805]
        mem[_357 + stor5.length.field_1 + _586 + 69] = mem[_805]
        mem[_357 + stor5.length.field_1 + _586 + 101 len ceil32(_818)] = mem[_805 + 32 len ceil32(_818)]
        if ceil32(_818) > _818:
            mem[_357 + stor5.length.field_1 + _586 + _818 + 101] = 0
        return 32, mem[_357 + stor5.length.field_1 + _586 + 69 len ceil32(_818) + 32]
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 'NH{q', 34
    if not bool(stor5.length):
        mem[mem[64] + 32] = Mask(248, 8, stor5.length)
        _395 = mem[96]
        mem[mem[64] + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_357 + stor5.length.field_1 + _395 + 32] = '.json'
        if ceil32(_395) <= _395:
            _605 = mem[64]
            mem[64] = _357 + stor5.length.field_1 + _395 + 37
            mem[_357 + stor5.length.field_1 + _395 + 37] = 32
            _638 = mem[_605]
            mem[_357 + stor5.length.field_1 + _395 + 69] = mem[_605]
            mem[_357 + stor5.length.field_1 + _395 + 101 len ceil32(_638)] = mem[_605 + 32 len ceil32(_638)]
            if ceil32(_638) > _638:
                mem[_357 + stor5.length.field_1 + _395 + _638 + 101] = 0
            return 32, mem[_357 + stor5.length.field_1 + _395 + 69 len ceil32(_638) + 32]
        _621 = mem[64]
        mem[64] = _357 + stor5.length.field_1 + _395 + 37
        mem[_357 + stor5.length.field_1 + _395 + 37] = 32
        _646 = mem[_621]
        mem[_357 + stor5.length.field_1 + _395 + 69] = mem[_621]
        mem[_357 + stor5.length.field_1 + _395 + 101 len ceil32(_646)] = mem[_621 + 32 len ceil32(_646)]
        if ceil32(_646) > _646:
            mem[_357 + stor5.length.field_1 + _395 + _646 + 101] = 0
        return 32, mem[_357 + stor5.length.field_1 + _395 + 69 len ceil32(_646) + 32]
    if bool(stor5.length) != 1:
        _397 = mem[96]
        mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_397] = '.json'
        if ceil32(_397) <= _397:
            _607 = mem[64]
            mem[64] = _397 + 5
            mem[_397 + 5] = 32
            _639 = mem[_607]
            mem[_397 + 37] = mem[_607]
            mem[_397 + 69 len ceil32(_639)] = mem[_607 + 32 len ceil32(_639)]
            if ceil32(_639) > _639:
                mem[_397 + _639 + 69] = 0
            return 32, mem[_397 + 37 len ceil32(_639) + 32]
        _623 = mem[64]
        mem[64] = _397 + 5
        mem[_397 + 5] = 32
        _647 = mem[_623]
        mem[_397 + 37] = mem[_623]
        mem[_397 + 69 len ceil32(_647)] = mem[_623 + 32 len ceil32(_647)]
        if ceil32(_647) > _647:
            mem[_397 + _647 + 69] = 0
        return 32, mem[_397 + 37 len ceil32(_647) + 32]
    mem[0] = 5
    idx = 0
    s = 0
    while idx < stor5.length.field_1:
        mem[_357 + idx + 32] = stor5[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    _587 = mem[96]
    mem[_357 + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    mem[_357 + stor5.length.field_1 + _587 + 32] = '.json'
    if ceil32(_587) <= _587:
        _799 = mem[64]
        mem[64] = _357 + stor5.length.field_1 + _587 + 37
        mem[_357 + stor5.length.field_1 + _587 + 37] = 32
        _815 = mem[_799]
        mem[_357 + stor5.length.field_1 + _587 + 69] = mem[_799]
        mem[_357 + stor5.length.field_1 + _587 + 101 len ceil32(_815)] = mem[_799 + 32 len ceil32(_815)]
        if ceil32(_815) > _815:
            mem[_357 + stor5.length.field_1 + _587 + _815 + 101] = 0
        return 32, mem[_357 + stor5.length.field_1 + _587 + 69 len ceil32(_815) + 32]
    _807 = mem[64]
    mem[64] = _357 + stor5.length.field_1 + _587 + 37
    mem[_357 + stor5.length.field_1 + _587 + 37] = 32
    _819 = mem[_807]
    mem[_357 + stor5.length.field_1 + _587 + 69] = mem[_807]
    mem[_357 + stor5.length.field_1 + _587 + 101 len ceil32(_819)] = mem[_807 + 32 len ceil32(_819)]
    if ceil32(_819) > _819:
        mem[_357 + stor5.length.field_1 + _587 + _819 + 101] = 0
    return 32, mem[_357 + stor5.length.field_1 + _587 + 69 len ceil32(_819) + 32]
}



}
