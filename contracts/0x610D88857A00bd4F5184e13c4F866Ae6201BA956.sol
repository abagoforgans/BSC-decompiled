contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - initialize()
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#  - giveaway(address arg1)
#
mapping of uint8 stor51;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor103;
mapping of address approved;
mapping of uint8 stor105;
array of uint256 name;
array of uint256 symbol;
array of struct stor108;
array of uint256 baseURI;
address adminAddress;
mapping of uint256 sub_000858b3;
array of address stor154;
mapping of uint8 stor155;
mapping of uint8 sub_e8b07dad;
uint256 sub_9ec8f463;
uint256 sub_a61cefb4;
uint256 sub_c4967f18;
uint256 sub_f3ffd9d5;

function sub_000858b3(?) payable {
    return sub_000858b3[3]
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor51[Mask(32, 224, arg1)])
}

function name() payable {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor103[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= tokenOfOwnerByIndex[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function rewarded(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor155[arg1])
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableMap: index out of bounds'
    return tokenByIndex[arg1].field_0
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor103[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    require stor103[arg1] - 1 < tokenByIndex.length
    return tokenByIndex[stor103[arg1] - 1].field_256
}

function baseURI() payable {
    return baseURI[0 len baseURI.length].field_0
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return tokenOfOwnerByIndex[address(arg1)]
}

function sub_8de4fcbb(?) payable {
    return sub_000858b3[0]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_9ec8f463(?) payable {
    return sub_9ec8f463
}

function sub_a61cefb4(?) payable {
    return sub_a61cefb4
}

function sub_bb7831c6(?) payable {
    return sub_000858b3[2]
}

function sub_bf61c13e(?) payable {
    return sub_000858b3[1]
}

function sub_c4967f18(?) payable {
    return sub_c4967f18
}

function sub_e8b07dad(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require sub_e8b07dad[arg1] < 4
    return sub_e8b07dad[arg1]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor105[address(arg1)][address(arg2)])
}

function sub_f3ffd9d5(?) payable {
    return sub_f3ffd9d5
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function sub_d0b8af6b(?) payable {
    return (sub_000858b3[0] + sub_000858b3[1] + sub_000858b3[2])
}

function setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'Admin required'
    adminAddress = arg1
}

function userReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require sub_e8b07dad[address(arg1)] <= 3
    return bool(stor155[address(arg1)]), sub_e8b07dad[address(arg1)]
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor105[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor103[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    require stor103[arg2] - 1 < tokenByIndex.length
    if arg1 == tokenByIndex[stor103[arg2] - 1].field_256:
        revert with 0, 'ERC721: approval to current owner'
    if tokenByIndex[stor103[arg2] - 1].field_256 != msg.sender:
        if not stor105[stor102[stor103[arg2] - 1].field_256][address(msg.sender)]:
            revert with 0, 'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not stor103[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    require stor103[arg2] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor103[arg2] - 1].field_256, arg1, arg2);
}

function sub_3fb98869(?) payable {
    require sub_000858b3[2] <= test266151307()
    mem[96] = sub_000858b3[2]
    mem[64] = (32 * sub_000858b3[2]) + 128
    if not sub_000858b3[2]:
        idx = 0
        while idx < mem[96]:
            mem[32] = 154
            if idx >= uint256(stor154[2]):
                revert with 0, 'EnumerableSet: index out of bounds'
            mem[0] = sha3(2, 154)
            require idx < mem[96]
            mem[(32 * idx) + 128] = address(stor154[2][idx])
            idx = idx + 1
            continue 
        mem[(32 * sub_000858b3[2]) + 128] = 32
        _27 = mem[96]
        mem[(32 * sub_000858b3[2]) + 160] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < mem[96]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (32 * sub_000858b3[2]) + (32 * _27) + -mem[64] + 192
    mem[128 len 32 * sub_000858b3[2]] = call.data[calldata.size len 32 * sub_000858b3[2]]
    idx = 0
    while idx < mem[96]:
        mem[32] = 154
        if idx >= uint256(stor154[2]):
            revert with 0, 'EnumerableSet: index out of bounds'
        mem[0] = sha3(2, 154)
        require idx < mem[96]
        mem[(32 * idx) + 128] = address(stor154[2][idx])
        idx = idx + 1
        continue 
    mem[(32 * sub_000858b3[2]) + 128] = 32
    _29 = mem[96]
    mem[(32 * sub_000858b3[2]) + 160] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < mem[96]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (32 * sub_000858b3[2]) + (32 * _29) + -mem[64] + 192
}

function sub_8f73514d(?) payable {
    require sub_000858b3[0] <= test266151307()
    mem[96] = sub_000858b3[0]
    mem[64] = (32 * sub_000858b3[0]) + 128
    if not sub_000858b3[0]:
        idx = 0
        while idx < mem[96]:
            mem[32] = 154
            if idx >= uint256(stor154[0]):
                revert with 0, 'EnumerableSet: index out of bounds'
            mem[0] = sha3(0, 154)
            require idx < mem[96]
            mem[(32 * idx) + 128] = address(stor154[0][idx])
            idx = idx + 1
            continue 
        mem[(32 * sub_000858b3[0]) + 128] = 32
        _27 = mem[96]
        mem[(32 * sub_000858b3[0]) + 160] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < mem[96]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (32 * sub_000858b3[0]) + (32 * _27) + -mem[64] + 192
    mem[128 len 32 * sub_000858b3[0]] = call.data[calldata.size len 32 * sub_000858b3[0]]
    idx = 0
    while idx < mem[96]:
        mem[32] = 154
        if idx >= uint256(stor154[0]):
            revert with 0, 'EnumerableSet: index out of bounds'
        mem[0] = sha3(0, 154)
        require idx < mem[96]
        mem[(32 * idx) + 128] = address(stor154[0][idx])
        idx = idx + 1
        continue 
    mem[(32 * sub_000858b3[0]) + 128] = 32
    _29 = mem[96]
    mem[(32 * sub_000858b3[0]) + 160] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < mem[96]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (32 * sub_000858b3[0]) + (32 * _29) + -mem[64] + 192
}

function sub_f4db1dbb(?) payable {
    require sub_000858b3[1] <= test266151307()
    mem[96] = sub_000858b3[1]
    mem[64] = (32 * sub_000858b3[1]) + 128
    if not sub_000858b3[1]:
        idx = 0
        while idx < mem[96]:
            mem[32] = 154
            if idx >= uint256(stor154[1]):
                revert with 0, 'EnumerableSet: index out of bounds'
            mem[0] = sha3(1, 154)
            require idx < mem[96]
            mem[(32 * idx) + 128] = address(stor154[1][idx])
            idx = idx + 1
            continue 
        mem[(32 * sub_000858b3[1]) + 128] = 32
        _27 = mem[96]
        mem[(32 * sub_000858b3[1]) + 160] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < mem[96]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (32 * sub_000858b3[1]) + (32 * _27) + -mem[64] + 192
    mem[128 len 32 * sub_000858b3[1]] = call.data[calldata.size len 32 * sub_000858b3[1]]
    idx = 0
    while idx < mem[96]:
        mem[32] = 154
        if idx >= uint256(stor154[1]):
            revert with 0, 'EnumerableSet: index out of bounds'
        mem[0] = sha3(1, 154)
        require idx < mem[96]
        mem[(32 * idx) + 128] = address(stor154[1][idx])
        idx = idx + 1
        continue 
    mem[(32 * sub_000858b3[1]) + 128] = 32
    _29 = mem[96]
    mem[(32 * sub_000858b3[1]) + 160] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < mem[96]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (32 * sub_000858b3[1]) + (32 * _29) + -mem[64] + 192
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not stor103[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not stor103[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    require stor103[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor103[arg3] - 1].field_256 != msg.sender:
        if not stor103[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor105[stor102[stor103[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not stor103[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    require stor103[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor103[arg3] - 1].field_256 != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not stor103[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[361 len 23] >> 72,
                    0
    require stor103[arg3] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor103[arg3] - 1].field_256, 0, arg3);
    if tokenOfOwnerByIndex[address(arg1)][1][arg3]:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)][1][arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        tokenOfOwnerByIndex[address(arg1)][1][tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]] = tokenOfOwnerByIndex[address(arg1)][1][arg3]
        require tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
        tokenOfOwnerByIndex[address(arg1)]--
        tokenOfOwnerByIndex[address(arg1)][1][arg3] = 0
    if not tokenOfOwnerByIndex[address(arg2)][1][arg3]:
        tokenOfOwnerByIndex[address(arg2)]++
        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
        tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
    if stor103[arg3]:
        require stor103[arg3] - 1 < tokenByIndex.length
        tokenByIndex[stor103[arg3] - 1].field_256 = arg2
        tokenByIndex[stor103[arg3] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        tokenByIndex[tokenByIndex.length].field_256 = arg2
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor103[arg3] = tokenByIndex.length
    emit Transfer(arg1, arg2, arg3);
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor103[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    mem[32] = 108
    mem[96] = stor108[arg1].length
    mem[128] = stor108[arg1].field_0
    idx = 128
    s = 0
    while stor108[arg1].length + 96 > idx:
        mem[idx + 32] = stor108[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not baseURI.length:
        return Array(len=stor108[arg1].length, data=mem[128 len ceil32(stor108[arg1].length)])
    if stor108[arg1].length:
        if not bool(baseURI.length):
            mem[ceil32(stor108[arg1].length) + 160] = Mask(248, 8, baseURI.length)
            mem[ceil32(stor108[arg1].length) + baseURI.length.field_1 + 160 len ceil32(stor108[arg1].length)] = mem[128 len ceil32(stor108[arg1].length)]
            mem[stor108[arg1].length + ceil32(stor108[arg1].length) + baseURI.length.field_1 + 160] = 32
            mem[stor108[arg1].length + ceil32(stor108[arg1].length) + baseURI.length.field_1 + 192] = mem[ceil32(stor108[arg1].length) + 128]
            mem[stor108[arg1].length + ceil32(stor108[arg1].length) + baseURI.length.field_1 + 224 len ceil32(mem[ceil32(stor108[arg1].length) + 128])] = mem[ceil32(stor108[arg1].length) + 160 len ceil32(mem[ceil32(stor108[arg1].length) + 128])]
            var39001 = ceil32(mem[ceil32(stor108[arg1].length) + 128])
            if ceil32(mem[ceil32(stor108[arg1].length) + 128]) > mem[ceil32(stor108[arg1].length) + 128]:
                mem[mem[ceil32(stor108[arg1].length) + 128] + stor108[arg1].length + ceil32(stor108[arg1].length) + baseURI.length.field_1 + 224] = 0
            return Array(len=mem[ceil32(stor108[arg1].length) + 128], data=mem[stor108[arg1].length + ceil32(stor108[arg1].length) + baseURI.length.field_1 + 224 len ceil32(mem[ceil32(stor108[arg1].length) + 128])]), 
        if bool(baseURI.length) != 1:
            mem[64] = stor108[arg1].length
            if ceil32(stor108[arg1].length) <= stor108[arg1].length:
                _875 = mem[ceil32(stor108[arg1].length) + 128]
                mem[stor108[arg1].length + 32] = mem[ceil32(stor108[arg1].length) + 128]
                mem[stor108[arg1].length + 64 len ceil32(mem[ceil32(stor108[arg1].length) + 128])] = mem[ceil32(stor108[arg1].length) + 160 len ceil32(mem[ceil32(stor108[arg1].length) + 128])]
                if ceil32(_875) > _875:
                    mem[_875 + stor108[arg1].length + 64] = 0
                return 32, mem[stor108[arg1].length + 32 len ceil32(_875) + 32]
            _876 = mem[ceil32(stor108[arg1].length) + 128]
            mem[stor108[arg1].length + 32] = mem[ceil32(stor108[arg1].length) + 128]
            mem[stor108[arg1].length + 64 len ceil32(mem[ceil32(stor108[arg1].length) + 128])] = mem[ceil32(stor108[arg1].length) + 160 len ceil32(mem[ceil32(stor108[arg1].length) + 128])]
            if ceil32(_876) > _876:
                mem[_876 + stor108[arg1].length + 64] = 0
            return 32, mem[stor108[arg1].length + 32 len ceil32(_876) + 32]
        idx = 0
        s = 0
        while idx < baseURI.length.field_1:
            mem[idx + ceil32(stor108[arg1].length) + 160] = baseURI[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor108[arg1].length) + baseURI.length.field_1 + 160 len ceil32(stor108[arg1].length)] = mem[128 len ceil32(stor108[arg1].length)]
        var32001 = ceil32(stor108[arg1].length)
        mem[stor108[arg1].length + ceil32(stor108[arg1].length) + baseURI.length.field_1 + 160] = 32
        mem[stor108[arg1].length + ceil32(stor108[arg1].length) + baseURI.length.field_1 + 192] = mem[ceil32(stor108[arg1].length) + 128]
        mem[stor108[arg1].length + ceil32(stor108[arg1].length) + baseURI.length.field_1 + 224 len ceil32(mem[ceil32(stor108[arg1].length) + 128])] = mem[ceil32(stor108[arg1].length) + 160 len ceil32(mem[ceil32(stor108[arg1].length) + 128])]
        if ceil32(mem[ceil32(stor108[arg1].length) + 128]) > mem[ceil32(stor108[arg1].length) + 128]:
            mem[mem[ceil32(stor108[arg1].length) + 128] + stor108[arg1].length + ceil32(stor108[arg1].length) + baseURI.length.field_1 + 224] = 0
        return Array(len=mem[ceil32(stor108[arg1].length) + 128], data=mem[stor108[arg1].length + ceil32(stor108[arg1].length) + baseURI.length.field_1 + 224 len ceil32(mem[ceil32(stor108[arg1].length) + 128])]), 
    if not arg1:
        mem[ceil32(stor108[arg1].length) + 128] = 1
        mem[ceil32(stor108[arg1].length) + 160] = 0x3000000000000000000000000000000000000000000000000000000000000000
        if not bool(baseURI.length):
            mem[ceil32(stor108[arg1].length) + 224] = Mask(248, 8, baseURI.length)
            mem[ceil32(stor108[arg1].length) + baseURI.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            var32001 = 32
            mem[ceil32(stor108[arg1].length) + baseURI.length.field_1 + 225] = 32
            mem[ceil32(stor108[arg1].length) + baseURI.length.field_1 + 257] = mem[ceil32(stor108[arg1].length) + 192]
            mem[ceil32(stor108[arg1].length) + baseURI.length.field_1 + 289 len ceil32(mem[ceil32(stor108[arg1].length) + 192])] = mem[ceil32(stor108[arg1].length) + 224 len ceil32(mem[ceil32(stor108[arg1].length) + 192])]
            if ceil32(mem[ceil32(stor108[arg1].length) + 192]) > mem[ceil32(stor108[arg1].length) + 192]:
                mem[mem[ceil32(stor108[arg1].length) + 192] + ceil32(stor108[arg1].length) + baseURI.length.field_1 + 289] = 0
            return Array(len=mem[ceil32(stor108[arg1].length) + 192], data=mem[ceil32(stor108[arg1].length) + baseURI.length.field_1 + 289 len ceil32(mem[ceil32(stor108[arg1].length) + 192])]), 
        if bool(baseURI.length) == 1:
            idx = 0
            s = 0
            while idx < baseURI.length.field_1:
                mem[idx + ceil32(stor108[arg1].length) + 224] = baseURI[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(stor108[arg1].length) + baseURI.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor108[arg1].length) + baseURI.length.field_1 + 225] = 32
            mem[ceil32(stor108[arg1].length) + baseURI.length.field_1 + 257] = mem[ceil32(stor108[arg1].length) + 192]
            mem[ceil32(stor108[arg1].length) + baseURI.length.field_1 + 289 len ceil32(mem[ceil32(stor108[arg1].length) + 192])] = mem[ceil32(stor108[arg1].length) + 224 len ceil32(mem[ceil32(stor108[arg1].length) + 192])]
            if ceil32(mem[ceil32(stor108[arg1].length) + 192]) > mem[ceil32(stor108[arg1].length) + 192]:
                mem[mem[ceil32(stor108[arg1].length) + 192] + ceil32(stor108[arg1].length) + baseURI.length.field_1 + 289] = 0
            return Array(len=mem[ceil32(stor108[arg1].length) + 192], data=mem[ceil32(stor108[arg1].length) + baseURI.length.field_1 + 289 len ceil32(mem[ceil32(stor108[arg1].length) + 192])]), 
        var33001 = 32
        mem[64] = 1
        _860 = mem[ceil32(stor108[arg1].length) + 192]
        mem[33] = mem[ceil32(stor108[arg1].length) + 192]
        mem[65 len ceil32(mem[ceil32(stor108[arg1].length) + 192])] = mem[ceil32(stor108[arg1].length) + 224 len ceil32(mem[ceil32(stor108[arg1].length) + 192])]
        if ceil32(_860) > _860:
            mem[_860 + 65] = 0
        return memory
          from mem[64]
           len ceil32(_860) + -mem[64] + 65
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[ceil32(stor108[arg1].length) + 128] = s
    if not s:
        t = s - 1
        idx = arg1
        while idx:
            require t < s
            mem[t + ceil32(stor108[arg1].length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        if not bool(baseURI.length):
            mem[ceil32(stor108[arg1].length) + ceil32(s) + 192] = Mask(248, 8, baseURI.length)
            mem[ceil32(stor108[arg1].length) + ceil32(s) + baseURI.length.field_1 + 192 len ceil32(s)] = mem[ceil32(stor108[arg1].length) + 160 len ceil32(s)]
            var39001 = ceil32(s)
            mem[s + ceil32(stor108[arg1].length) + ceil32(s) + baseURI.length.field_1 + 192] = 32
            mem[s + ceil32(stor108[arg1].length) + ceil32(s) + baseURI.length.field_1 + 224] = mem[ceil32(stor108[arg1].length) + ceil32(s) + 160]
            mem[s + ceil32(stor108[arg1].length) + ceil32(s) + baseURI.length.field_1 + 256 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor108[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160]) <= mem[ceil32(stor108[arg1].length) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor108[arg1].length) + ceil32(s) + 160], data=mem[s + ceil32(stor108[arg1].length) + ceil32(s) + baseURI.length.field_1 + 256 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160])]), 
            mem[mem[ceil32(stor108[arg1].length) + ceil32(s) + 160] + s + ceil32(stor108[arg1].length) + ceil32(s) + baseURI.length.field_1 + 256] = 0
            return 32, mem[s + ceil32(stor108[arg1].length) + ceil32(s) + baseURI.length.field_1 + 224 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160]) + 32], 
        if bool(baseURI.length) != 1:
            mem[64] = s
            if ceil32(s) <= s:
                _1623 = mem[ceil32(stor108[arg1].length) + ceil32(s) + 160]
                mem[s + 32] = mem[ceil32(stor108[arg1].length) + ceil32(s) + 160]
                mem[s + 64 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor108[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160])]
                if ceil32(_1623) > _1623:
                    mem[_1623 + s + 64] = 0
                return 32, mem[s + 32 len ceil32(_1623) + 32]
            _1624 = mem[ceil32(stor108[arg1].length) + ceil32(s) + 160]
            mem[s + 32] = mem[ceil32(stor108[arg1].length) + ceil32(s) + 160]
            mem[s + 64 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor108[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160])]
            if ceil32(_1624) > _1624:
                mem[_1624 + s + 64] = 0
            return 32, mem[s + 32 len ceil32(_1624) + 32]
    else:
        mem[ceil32(stor108[arg1].length) + 160 len s] = call.data[calldata.size len s]
        t = s - 1
        idx = arg1
        while idx:
            require t < s
            mem[t + ceil32(stor108[arg1].length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        if not bool(baseURI.length):
            mem[ceil32(stor108[arg1].length) + ceil32(s) + 192] = Mask(248, 8, baseURI.length)
            mem[ceil32(stor108[arg1].length) + ceil32(s) + baseURI.length.field_1 + 192 len ceil32(s)] = mem[ceil32(stor108[arg1].length) + 160 len ceil32(s)]
            mem[s + ceil32(stor108[arg1].length) + ceil32(s) + baseURI.length.field_1 + 192] = 32
            mem[s + ceil32(stor108[arg1].length) + ceil32(s) + baseURI.length.field_1 + 224] = mem[ceil32(stor108[arg1].length) + ceil32(s) + 160]
            mem[s + ceil32(stor108[arg1].length) + ceil32(s) + baseURI.length.field_1 + 256 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor108[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160]) <= mem[ceil32(stor108[arg1].length) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor108[arg1].length) + ceil32(s) + 160], data=mem[s + ceil32(stor108[arg1].length) + ceil32(s) + baseURI.length.field_1 + 256 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160])]), 
            mem[mem[ceil32(stor108[arg1].length) + ceil32(s) + 160] + s + ceil32(stor108[arg1].length) + ceil32(s) + baseURI.length.field_1 + 256] = 0
            return 32, mem[s + ceil32(stor108[arg1].length) + ceil32(s) + baseURI.length.field_1 + 224 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160]) + 32], 
        if bool(baseURI.length) != 1:
            mem[64] = s
            if ceil32(s) <= s:
                _1627 = mem[ceil32(stor108[arg1].length) + ceil32(s) + 160]
                mem[s + 32] = mem[ceil32(stor108[arg1].length) + ceil32(s) + 160]
                mem[s + 64 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor108[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160])]
                if ceil32(_1627) > _1627:
                    mem[_1627 + s + 64] = 0
                return 32, mem[s + 32 len ceil32(_1627) + 32]
            _1628 = mem[ceil32(stor108[arg1].length) + ceil32(s) + 160]
            mem[s + 32] = mem[ceil32(stor108[arg1].length) + ceil32(s) + 160]
            mem[s + 64 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor108[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160])]
            if ceil32(_1628) > _1628:
                mem[_1628 + s + 64] = 0
            return 32, mem[s + 32 len ceil32(_1628) + 32]
    ('eq', ('type', 1, ('stor', ('length', ('name', 'baseURI', 109)))), 1)
    idx = 0
    t = 0
    while idx < baseURI.length.field_1:
        mem[idx + ceil32(stor108[arg1].length) + ceil32(s) + 192] = baseURI[t].field_0
        idx = idx + 32
        t = t + 1
        continue 
    mem[ceil32(stor108[arg1].length) + ceil32(s) + baseURI.length.field_1 + 192 len ceil32(s)] = mem[ceil32(stor108[arg1].length) + 160 len ceil32(s)]
    mem[s + ceil32(stor108[arg1].length) + ceil32(s) + baseURI.length.field_1 + 192] = 32
    mem[s + ceil32(stor108[arg1].length) + ceil32(s) + baseURI.length.field_1 + 224] = mem[ceil32(stor108[arg1].length) + ceil32(s) + 160]
    mem[s + ceil32(stor108[arg1].length) + ceil32(s) + baseURI.length.field_1 + 256 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor108[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160])]
    if ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160]) <= mem[ceil32(stor108[arg1].length) + ceil32(s) + 160]:
        return Array(len=mem[ceil32(stor108[arg1].length) + ceil32(s) + 160], data=mem[s + ceil32(stor108[arg1].length) + ceil32(s) + baseURI.length.field_1 + 256 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160])]), 
    mem[mem[ceil32(stor108[arg1].length) + ceil32(s) + 160] + s + ceil32(stor108[arg1].length) + ceil32(s) + baseURI.length.field_1 + 256] = 0
    return 32, mem[s + ceil32(stor108[arg1].length) + ceil32(s) + baseURI.length.field_1 + 224 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160]) + 32], 
}



}
