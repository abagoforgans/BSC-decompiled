contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
mapping of uint8 stor0;
mapping of address creator;
mapping of uint256 royaltyFee;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
array of struct stor5;
mapping of struct stor6;
array of struct stor7;
mapping of uint256 stor8;
array of struct stor9;
array of struct stor10;
uint256 stor11;
address owner;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor8[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ERC1155Metadata: balance query for nonexistent token'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor0[Mask(32, 224, arg1)])
}

function owner() payable {
    return owner
}

function royaltyFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return royaltyFee[arg1]
}

function getCreator(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return creator[arg1]
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

function ownerTransfership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    return 1
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: setting approval status for self'
    stor4[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function burn(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor8[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155Metadata: burn query for nonexistent token'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
    if arg2 > balanceOf[arg1][address(msg.sender)]:
        revert with 0, 
                    32,
                    49,
                    0x724552435f686f6c646572546f6b656e73313135353a206275726e20616d6f756e7420657863656564732062616c616e63, mem[337 len 15] >> 136,
                    0
    if balanceOf[arg1][address(msg.sender)] < arg2:
        revert with 'NH{q', 17
    balanceOf[arg1][address(msg.sender)] -= arg2
    emit TransferSingle(arg1, arg2, msg.sender, msg.sender, 0);
}

function setBaseURI(string arg1) payable {
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
    emit tokenBaseURI(Array(len=arg1.length, data=arg1[all]));
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
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    if arg1 != msg.sender:
        if not stor4[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
    if arg4 > balanceOf[arg3][address(arg1)]:
        revert with 0, 
                    32,
                    42,
                    0x65455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665, mem[ceil32(ceil32(arg5.length)) + 299 len 22] >> 80,
                    0
    if balanceOf[arg3][address(arg1)] < arg4:
        revert with 'NH{q', 17
    balanceOf[arg3][address(arg1)] -= arg4
    if balanceOf[arg3][address(arg2)] > -arg4 - 1:
        revert with 'NH{q', 17
    if balanceOf[arg3][address(arg2)] + arg4 < balanceOf[arg3][address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
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
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC1155: batch balance query for the zero address'
        if idx >= arg2.length:
            revert with 'NH{q', 50
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(mem[(32 * idx) + floor32(arg1.length) + 129], 3)
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(arg1.length) + floor32(arg2.length) + 130] = balanceOf[mem[(32 * idx) + floor32(arg1.length) + 129]][mem[(32 * idx) + 140 len 20]]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=arg1.length, data=mem[floor32(arg1.length) + floor32(arg2.length) + 130 len 32 * arg1.length])
}

function mint(string arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    require arg3 == arg3
    require calldata.size - 100 >= 96
    if not bool(ceil32(ceil32(arg1.length)) + 193 <= test266151307()):
        revert with 'NH{q', 65
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg4) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * arg1.length) - 256)), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if owner != address(signer):
        revert with 0, 'Owner sign verification failed'
    if stor8[stor11]:
        revert with 0, 'ERC1155: token already minted'
    if not arg2:
        revert with 0, 'Supply should be positive'
    if arg1.length <= 0:
        revert with 0, 'uri should be set'
    creator[stor11] = msg.sender
    if stor8[stor11]:
        if stor8[stor11] < 1:
            revert with 'NH{q', 17
        if stor8[stor11] - 1 >= stor7.length:
            revert with 'NH{q', 50
        stor7[stor8[stor11] - 1].field_256 = msg.sender
        stor7[stor8[stor11] - 1].field_416 = 0
    else:
        stor7.length++
        stor7[stor7.length].field_0 = stor11
        stor7[stor7.length].field_256 = msg.sender
        stor7[stor7.length].field_416 = 0
        stor8[stor11] = stor7.length
    royaltyFee[stor11] = arg3
    balanceOf[stor11][address(msg.sender)] = arg2
    if stor6[stor11].field_0:
        if stor6[stor11].field_0 == stor6[stor11].field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor6[stor11][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor6[stor11].field_0 = 0
            idx = 0
            while stor6[stor11].field_1 + 31 / 32 > idx:
                stor6[stor11][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor6[stor11].field_0 == stor6[stor11].field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor6[stor11][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor6[stor11].field_0 = 0
            idx = 0
            while stor6[stor11].field_1 + 31 / 32 > idx:
                stor6[stor11][idx].field_0 = 0
                idx = idx + 1
                continue 
    emit TransferSingle(stor11, arg2, msg.sender, 0, msg.sender);
    emit URI(Array(len=arg1.length, data=arg1[all]), stor11);
    if stor11 > -2:
        revert with 'NH{q', 17
    stor11++
}

function burnBatch(uint256[] arg1, uint256[] arg2) payable {
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
        require cd[s] == cd[s]
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
    if not msg.sender:
        revert with 0, 'ERC1155: burn from the zero address'
    if arg1.length != arg2.length:
        revert with 0, 'ERC1155: ids and amounts length mismatch'
    mem[64] = floor32(arg1.length) + floor32(arg2.length) + 130
    mem[floor32(arg1.length) + floor32(arg2.length) + 98] = 0
    idx = 0
    while idx < arg1.length:
        if idx >= mem[floor32(arg1.length) + 97]:
            revert with 'NH{q', 50
        _97 = mem[(32 * idx) + floor32(arg1.length) + 129]
        _98 = mem[64]
        mem[64] = mem[64] + 96
        mem[_98] = 36
        mem[_98 + 32 len 36] = 0xfe455243313135353a206275726e20616d6f756e7420657863656564732062616c616e63
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[32] = sha3(mem[(32 * idx) + 128], 3)
        if _97 <= balanceOf[mem[(32 * idx) + 128]][address(msg.sender)]:
            if balanceOf[mem[(32 * idx) + 128]][address(msg.sender)] < _97:
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = msg.sender
            mem[32] = sha3(mem[(32 * idx) + 128], 3)
            balanceOf[mem[(32 * idx) + 128]][address(msg.sender)] -= _97
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _104 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 36
        idx = 0
        while idx < 36:
            mem[_104 + idx + 68] = mem[_98 + idx + 32]
            idx = idx + 32
            continue 
        mem[_104 + 104] = 0
        revert with memory
          from mem[64]
           len _104 + -mem[64] + 132
    _95 = mem[64]
    mem[mem[64]] = 64
    _103 = mem[96]
    mem[mem[64] + 64] = mem[96]
    mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    _119 = mem[floor32(arg1.length) + 97]
    mem[_95 + (32 * mem[96]) + 96] = mem[floor32(arg1.length) + 97]
    mem[_95 + (32 * _103) + 128 len 32 * _119] = mem[floor32(arg1.length) + 129 len 32 * _119]
    emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                       mem[mem[64] len _95 + (32 * _103) + (32 * _119) + -mem[64] + 128],
                       msg.sender,
                       msg.sender,
                       0,
}

function name() payable {
    if bool(stor9.length):
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor9.length):
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)])
                mem[128] = 256 * stor9.length.field_8
        else:
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)])
                mem[128] = 256 * stor9.length.field_8
        mem[ceil32(stor9.length.field_1) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
        if ceil32(stor9.length.field_1) > stor9.length.field_1:
            mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)], mem[(2 * ceil32(stor9.length.field_1)) + 192 len 2 * ceil32(stor9.length.field_1)]), 
    if bool(stor9.length) == stor9.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor9.length):
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 'NH{q', 34
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

function tokenURIPrefix() payable {
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
    if bool(stor10.length):
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor10.length):
            if bool(stor10.length) == stor10.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor10.length.field_1:
                if 31 < stor10.length.field_1:
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while stor10.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10.length.field_1), data=mem[128 len ceil32(stor10.length.field_1)])
                mem[128] = 256 * stor10.length.field_8
        else:
            if bool(stor10.length) == stor10.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor10.length.field_1:
                if 31 < stor10.length.field_1:
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while stor10.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10.length.field_1), data=mem[128 len ceil32(stor10.length.field_1)])
                mem[128] = 256 * stor10.length.field_8
        mem[ceil32(stor10.length.field_1) + 192 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
        if ceil32(stor10.length.field_1) > stor10.length.field_1:
            mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor10.length.field_1), data=mem[128 len ceil32(stor10.length.field_1)], mem[(2 * ceil32(stor10.length.field_1)) + 192 len 2 * ceil32(stor10.length.field_1)]), 
    if bool(stor10.length) == stor10.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor10.length):
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor10.length.field_1:
            if 31 < stor10.length.field_1:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while stor10.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)])
            mem[128] = 256 * stor10.length.field_8
    else:
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor10.length.field_1:
            if 31 < stor10.length.field_1:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while stor10.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)])
            mem[128] = 256 * stor10.length.field_8
    mem[ceil32(stor10.length.field_1) + 192 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
    if ceil32(stor10.length.field_1) > stor10.length.field_1:
        mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 192] = 0
    return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)], mem[(2 * ceil32(stor10.length.field_1)) + 192 len 2 * ceil32(stor10.length.field_1)]), 
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
    mem[64] = floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99
    mem[floor32(arg3.length) + floor32(arg4.length) + 98] = arg5.length
    require arg5 + arg5.length + 36 <= calldata.size
    mem[floor32(arg3.length) + floor32(arg4.length) + 130 len arg5.length] = arg5[all]
    mem[floor32(arg3.length) + floor32(arg4.length) + arg5.length + 130] = 0
    if arg3.length != arg4.length:
        revert with 0, 'ERC1155: ids and amounts length mismatch'
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    if arg1 == msg.sender:
        idx = 0
        while idx < arg3.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _544 = mem[(32 * idx) + 128]
            if idx >= mem[floor32(arg3.length) + 97]:
                revert with 'NH{q', 50
            _548 = mem[(32 * idx) + floor32(arg3.length) + 129]
            _549 = mem[64]
            mem[64] = mem[64] + 96
            mem[_549] = 42
            mem[_549 + 32 len 42] = 0x65455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
            mem[32] = sha3(_544, 3)
            if _548 > balanceOf[_544][address(arg1)]:
                _558 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 42
                idx = 0
                while idx < 42:
                    mem[_558 + idx + 68] = mem[_549 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_558 + 110] = 0
                revert with memory
                  from mem[64]
                   len _558 + -mem[64] + 132
            if balanceOf[_544][address(arg1)] < _548:
                revert with 'NH{q', 17
            balanceOf[_544][address(arg1)] -= _548
            if balanceOf[_544][address(arg2)] > -_548 - 1:
                revert with 'NH{q', 17
            if balanceOf[_544][address(arg2)] + _548 < balanceOf[_544][address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = arg2
            mem[32] = sha3(_544, 3)
            balanceOf[_544][address(arg2)] += _548
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _540 = mem[64]
        mem[mem[64]] = 64
        _556 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        var122001 = mem[96]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _722 = mem[floor32(arg3.length) + 97]
        mem[_540 + (32 * mem[96]) + 96] = mem[floor32(arg3.length) + 97]
        mem[_540 + (32 * _556) + 128 len 32 * _722] = mem[floor32(arg3.length) + 129 len 32 * _722]
        emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                           mem[mem[64] len _540 + (32 * _556) + (32 * _722) + -mem[64] + 128],
                           msg.sender,
                           arg1,
                           arg2,
        if ext_code.size(arg2) <= 0:
        mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = 160
        _864 = mem[96]
        mem[mem[64] + 164] = mem[96]
        mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 100] = (32 * mem[96]) + 192
        _990 = mem[floor32(arg3.length) + 97]
        mem[mem[64] + (32 * mem[96]) + 196] = mem[floor32(arg3.length) + 97]
        mem[mem[64] + (32 * mem[96]) + 228 len 32 * _990] = mem[floor32(arg3.length) + 129 len 32 * _990]
        mem[mem[64] + 132] = (32 * mem[96]) + (32 * _990) + 224
        _1112 = mem[floor32(arg3.length) + floor32(arg4.length) + 98]
        mem[mem[64] + (32 * mem[96]) + (32 * _990) + 228] = mem[floor32(arg3.length) + floor32(arg4.length) + 98]
        mem[mem[64] + (32 * _864) + (32 * _990) + 260 len ceil32(_1112)] = mem[floor32(arg3.length) + floor32(arg4.length) + 130 len ceil32(_1112)]
        if ceil32(_1112) <= _1112:
            require ext_code.size(arg2)
            call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _864) + (32 * _990) + 224, mem[mem[64] + 164 len (32 * _864) + (32 * _990) + ceil32(_1112) + 96]
            mem[mem[64]] = ext_call.return_data[0]
            if ext_call.success:
                _1234 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1234] == Mask(32, 224, mem[_1234])
                if Mask(32, 224, mem[_1234]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            _1254 = mem[64]
            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
            if not _1254 + ext_call.return_data[0]:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            _1300 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1312 = mem[_1254 + ext_call.return_data[0]]
            mem[mem[64] + 36] = mem[_1254 + ext_call.return_data[0]]
            mem[mem[64] + 68 len ceil32(_1312)] = mem[_1254 + ext_call.return_data[0] + 32 len ceil32(_1312)]
            if ceil32(_1312) <= _1312:
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_1312) + 32]
            mem[mem[64] + _1312 + 68] = 0
            revert with memory
              from mem[64]
               len _1300 + ceil32(_1312) + -mem[64] + 68
        mem[mem[64] + (32 * _864) + (32 * _990) + _1112 + 260] = 0
        require ext_code.size(arg2)
        call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _864) + (32 * _990) + 224, mem[mem[64] + 164 len (32 * _864) + (32 * _990) + ceil32(_1112) + 96]
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            _1236 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1236] == Mask(32, 224, mem[_1236])
            if Mask(32, 224, mem[_1236]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        _1257 = mem[64]
        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[mem[64] + ext_call.return_data[0]] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
        if not _1257 + ext_call.return_data[0]:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1319 = mem[_1257 + ext_call.return_data[0]]
        mem[mem[64] + 36] = mem[_1257 + ext_call.return_data[0]]
        mem[mem[64] + 68 len ceil32(_1319)] = mem[_1257 + ext_call.return_data[0] + 32 len ceil32(_1319)]
        if ceil32(_1319) > _1319:
            mem[mem[64] + _1319 + 68] = 0
        revert with 0, 32, mem[mem[64] + 36 len ceil32(_1319) + 32]
    mem[0] = msg.sender
    mem[32] = sha3(address(arg1), 4)
    if not stor4[address(arg1)][address(msg.sender)]:
        revert with 0, 'ERC1155: transfer caller is not owner nor approved'
    idx = 0
    while idx < arg3.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _546 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(arg3.length) + 97]:
            revert with 'NH{q', 50
        _552 = mem[(32 * idx) + floor32(arg3.length) + 129]
        _553 = mem[64]
        mem[64] = mem[64] + 96
        mem[_553] = 42
        mem[_553 + 32 len 42] = 0x65455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
        mem[32] = sha3(_546, 3)
        if _552 > balanceOf[_546][address(arg1)]:
            _559 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 42
            idx = 0
            while idx < 42:
                mem[_559 + idx + 68] = mem[_553 + idx + 32]
                idx = idx + 32
                continue 
            mem[_559 + 110] = 0
            revert with memory
              from mem[64]
               len _559 + -mem[64] + 132
        if balanceOf[_546][address(arg1)] < _552:
            revert with 'NH{q', 17
        balanceOf[_546][address(arg1)] -= _552
        if balanceOf[_546][address(arg2)] > -_552 - 1:
            revert with 'NH{q', 17
        if balanceOf[_546][address(arg2)] + _552 < balanceOf[_546][address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = arg2
        mem[32] = sha3(_546, 3)
        balanceOf[_546][address(arg2)] += _552
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _542 = mem[64]
    mem[mem[64]] = 64
    _557 = mem[96]
    mem[mem[64] + 64] = mem[96]
    mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    _723 = mem[floor32(arg3.length) + 97]
    mem[_542 + (32 * mem[96]) + 96] = mem[floor32(arg3.length) + 97]
    mem[_542 + (32 * _557) + 128 len 32 * _723] = mem[floor32(arg3.length) + 129 len 32 * _723]
    emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                       mem[mem[64] len _542 + (32 * _557) + (32 * _723) + -mem[64] + 128],
                       msg.sender,
                       arg1,
                       arg2,
    if ext_code.size(arg2) <= 0:
    mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = arg1
    mem[mem[64] + 68] = 160
    _865 = mem[96]
    mem[mem[64] + 164] = mem[96]
    mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 100] = (32 * mem[96]) + 192
    _991 = mem[floor32(arg3.length) + 97]
    mem[mem[64] + (32 * mem[96]) + 196] = mem[floor32(arg3.length) + 97]
    mem[mem[64] + (32 * mem[96]) + 228 len 32 * _991] = mem[floor32(arg3.length) + 129 len 32 * _991]
    mem[mem[64] + 132] = (32 * mem[96]) + (32 * _991) + 224
    _1113 = mem[floor32(arg3.length) + floor32(arg4.length) + 98]
    mem[mem[64] + (32 * mem[96]) + (32 * _991) + 228] = mem[floor32(arg3.length) + floor32(arg4.length) + 98]
    mem[mem[64] + (32 * _865) + (32 * _991) + 260 len ceil32(_1113)] = mem[floor32(arg3.length) + floor32(arg4.length) + 130 len ceil32(_1113)]
    if ceil32(_1113) <= _1113:
        require ext_code.size(arg2)
        call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), 160, mem[mem[64] + 100 len (32 * _865) + (32 * _991) + ceil32(_1113) + 160]
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            _1235 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1235] == Mask(32, 224, mem[_1235])
            if Mask(32, 224, mem[_1235]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        _1255 = mem[64]
        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[mem[64] + ext_call.return_data[0]] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
        if not _1255 + ext_call.return_data[0]:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        _1302 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1315 = mem[_1255 + ext_call.return_data[0]]
        mem[mem[64] + 36] = mem[_1255 + ext_call.return_data[0]]
        mem[mem[64] + 68 len ceil32(_1315)] = mem[_1255 + ext_call.return_data[0] + 32 len ceil32(_1315)]
        if ceil32(_1315) <= _1315:
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_1315) + 32]
        mem[mem[64] + _1315 + 68] = 0
        revert with memory
          from mem[64]
           len _1302 + ceil32(_1315) + -mem[64] + 68
    mem[mem[64] + (32 * _865) + (32 * _991) + _1113 + 260] = 0
    require ext_code.size(arg2)
    call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), 160, mem[mem[64] + 100 len (32 * _865) + (32 * _991) + ceil32(_1113) + 160]
    mem[mem[64]] = ext_call.return_data[0]
    if ext_call.success:
        _1237 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1237] == Mask(32, 224, mem[_1237])
        if Mask(32, 224, mem[_1237]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    if return_data.size <= 3:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if return_data.size < 68:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    _1259 = mem[64]
    mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[mem[64] + ext_call.return_data[0]] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
    if not _1259 + ext_call.return_data[0]:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    _1307 = mem[64]
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _1322 = mem[_1259 + ext_call.return_data[0]]
    mem[mem[64] + 36] = mem[_1259 + ext_call.return_data[0]]
    mem[mem[64] + 68 len ceil32(_1322)] = mem[_1259 + ext_call.return_data[0] + 32 len ceil32(_1322)]
    if ceil32(_1322) <= _1322:
        revert with 0, 32, mem[mem[64] + 36 len ceil32(_1322) + 32]
    mem[mem[64] + _1322 + 68] = 0
    revert with memory
      from mem[64]
       len _1307 + ceil32(_1322) + -mem[64] + 68
}



}
