contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
mapping of uint8 stor0;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor3;
mapping of address approved;
mapping of uint8 stor5;
array of uint256 name;
array of uint256 symbol;
array of struct stor8;
array of uint256 baseURI;
uint256 stor10;
array of struct lotteryInfo;
mapping of uint256 lotteryAmount;
mapping of uint256 sub_69744459;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() payable {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function issueIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return sub_69744459[arg1]
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

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableMap: index out of bounds'
    return tokenByIndex[arg1].field_0
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    require stor3[arg1] - 1 < tokenByIndex.length
    return tokenByIndex[stor3[arg1] - 1].field_256
}

function lotteryInfo(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < lotteryInfo[arg1].field_0
    return lotteryInfo[arg1][arg2].field_0
}

function sub_69744459(?) payable {
    require calldata.size - 4 >= 32
    return sub_69744459[arg1]
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

function symbol() payable {
    return symbol[0 len symbol.length]
}

function lotteryAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return lotteryAmount[arg1]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function getLotteryAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return lotteryAmount[arg1]
}

function _fallback() payable {
    revert
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_b0d36340(?) payable {
    require calldata.size - 4 >= 32
    if lotteryInfo[arg1].field_0:
        mem[128] = lotteryInfo[arg1].field_0
        idx = 128
        s = 0
        while (32 * lotteryInfo[arg1].field_0) + 96 > idx:
            mem[idx + 32] = lotteryInfo[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=lotteryInfo[arg1].field_0, data=mem[128 len 32 * lotteryInfo[arg1].field_0])
    mem[(32 * lotteryInfo[arg1].field_0) + 128] = 32
    mem[(32 * lotteryInfo[arg1].field_0) + 160] = lotteryInfo[arg1].field_0
    mem[(32 * lotteryInfo[arg1].field_0) + 192 len 32 * lotteryInfo[arg1].field_0] = mem[128 len 32 * lotteryInfo[arg1].field_0]
    return memory
      from (32 * lotteryInfo[arg1].field_0) + 128
       len (96 * lotteryInfo[arg1].field_0) + 64
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor3[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    require stor3[arg2] - 1 < tokenByIndex.length
    if arg1 == tokenByIndex[stor3[arg2] - 1].field_256:
        revert with 0, 'ERC721: approval to current owner'
    if tokenByIndex[stor3[arg2] - 1].field_256 != msg.sender:
        if not stor5[stor2[stor3[arg2] - 1].field_256][address(msg.sender)]:
            revert with 0, 'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not stor3[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    require stor3[arg2] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor3[arg2] - 1].field_256, arg1, arg2);
}

function sub_c23e5494(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    stor10++
    if not address(cd[4]):
        revert with 0, 'ERC721: mint to the zero address'
    if stor3[stor10]:
        revert with 0, 'ERC721: token already minted'
    if not tokenOfOwnerByIndex[address(cd[4])][1][stor10]:
        tokenOfOwnerByIndex[address(cd[4])]++
        tokenOfOwnerByIndex[address(cd[4])][tokenOfOwnerByIndex[address(cd[4])]] = stor10
        tokenOfOwnerByIndex[address(cd[4])][1][stor10] = tokenOfOwnerByIndex[address(cd[4])]
    if stor3[stor10]:
        require stor3[stor10] - 1 < tokenByIndex.length
        tokenByIndex[stor3[stor10] - 1].field_256 = address(cd[4])
        tokenByIndex[stor3[stor10] - 1].field_416 = 0
    else:
        mem[(32 * ('cd', 36).length) + 128] = stor10
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = stor10
        tokenByIndex[tokenByIndex.length].field_256 = address(cd[4])
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor3[stor10] = tokenByIndex.length
    emit Transfer(0, address(cd[4]), stor10);
    lotteryInfo[stor10].field_0 = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while lotteryInfo[stor10].field_0 > idx:
            lotteryInfo[stor10][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 36).length) + 128 > idx:
            lotteryInfo[stor10][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while lotteryInfo[stor10].field_0 > idx:
            lotteryInfo[stor10][idx].field_0 = 0
            idx = idx + 1
            continue 
    lotteryAmount[stor10] = cd[68]
    sub_69744459[stor10] = cd[100]
    return stor10
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not stor3[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    require stor3[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[arg3] - 1].field_256 != msg.sender:
        if not stor3[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[stor3[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    require stor3[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[arg3] - 1].field_256 != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[361 len 23] >> 72,
                    0
    require stor3[arg3] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor3[arg3] - 1].field_256, 0, arg3);
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
    if stor3[arg3]:
        require stor3[arg3] - 1 < tokenByIndex.length
        tokenByIndex[stor3[arg3] - 1].field_256 = arg2
        tokenByIndex[stor3[arg3] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        tokenByIndex[tokenByIndex.length].field_256 = arg2
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor3[arg3] = tokenByIndex.length
    emit Transfer(arg1, arg2, arg3);
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    mem[32] = 8
    mem[96] = stor8[arg1].length
    mem[128] = stor8[arg1].field_0
    idx = 128
    s = 0
    while stor8[arg1].length + 96 > idx:
        mem[idx + 32] = stor8[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not baseURI.length:
        return Array(len=stor8[arg1].length, data=mem[128 len ceil32(stor8[arg1].length)])
    if stor8[arg1].length:
        if not bool(baseURI.length):
            mem[ceil32(stor8[arg1].length) + 160] = Mask(248, 8, baseURI.length)
            mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 + 160 len ceil32(stor8[arg1].length)] = mem[128 len ceil32(stor8[arg1].length)]
            mem[stor8[arg1].length + ceil32(stor8[arg1].length) + baseURI.length.field_1 + 160] = 32
            mem[stor8[arg1].length + ceil32(stor8[arg1].length) + baseURI.length.field_1 + 192] = mem[ceil32(stor8[arg1].length) + 128]
            mem[stor8[arg1].length + ceil32(stor8[arg1].length) + baseURI.length.field_1 + 224 len ceil32(mem[ceil32(stor8[arg1].length) + 128])] = mem[ceil32(stor8[arg1].length) + 160 len ceil32(mem[ceil32(stor8[arg1].length) + 128])]
            var39001 = ceil32(mem[ceil32(stor8[arg1].length) + 128])
            if ceil32(mem[ceil32(stor8[arg1].length) + 128]) <= mem[ceil32(stor8[arg1].length) + 128]:
                return Array(len=mem[ceil32(stor8[arg1].length) + 128], data=mem[stor8[arg1].length + ceil32(stor8[arg1].length) + baseURI.length.field_1 + 224 len ceil32(mem[ceil32(stor8[arg1].length) + 128])]), 
            mem[mem[ceil32(stor8[arg1].length) + 128] + stor8[arg1].length + ceil32(stor8[arg1].length) + baseURI.length.field_1 + 224] = 0
            return 32, mem[stor8[arg1].length + ceil32(stor8[arg1].length) + baseURI.length.field_1 + 192 len ceil32(mem[ceil32(stor8[arg1].length) + 128]) + 32], 
        if bool(baseURI.length) != 1:
            mem[64] = stor8[arg1].length
            if ceil32(stor8[arg1].length) <= stor8[arg1].length:
                _875 = mem[ceil32(stor8[arg1].length) + 128]
                mem[stor8[arg1].length + 32] = mem[ceil32(stor8[arg1].length) + 128]
                mem[stor8[arg1].length + 64 len ceil32(mem[ceil32(stor8[arg1].length) + 128])] = mem[ceil32(stor8[arg1].length) + 160 len ceil32(mem[ceil32(stor8[arg1].length) + 128])]
                if ceil32(_875) > _875:
                    mem[_875 + stor8[arg1].length + 64] = 0
                return 32, mem[stor8[arg1].length + 32 len ceil32(_875) + 32]
            _876 = mem[ceil32(stor8[arg1].length) + 128]
            mem[stor8[arg1].length + 32] = mem[ceil32(stor8[arg1].length) + 128]
            mem[stor8[arg1].length + 64 len ceil32(mem[ceil32(stor8[arg1].length) + 128])] = mem[ceil32(stor8[arg1].length) + 160 len ceil32(mem[ceil32(stor8[arg1].length) + 128])]
            if ceil32(_876) > _876:
                mem[_876 + stor8[arg1].length + 64] = 0
            return 32, mem[stor8[arg1].length + 32 len ceil32(_876) + 32]
        idx = 0
        s = 0
        while idx < baseURI.length.field_1:
            mem[idx + ceil32(stor8[arg1].length) + 160] = baseURI[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 + 160 len ceil32(stor8[arg1].length)] = mem[128 len ceil32(stor8[arg1].length)]
        var32001 = ceil32(stor8[arg1].length)
        mem[stor8[arg1].length + ceil32(stor8[arg1].length) + baseURI.length.field_1 + 160] = 32
        mem[stor8[arg1].length + ceil32(stor8[arg1].length) + baseURI.length.field_1 + 192] = mem[ceil32(stor8[arg1].length) + 128]
        mem[stor8[arg1].length + ceil32(stor8[arg1].length) + baseURI.length.field_1 + 224 len ceil32(mem[ceil32(stor8[arg1].length) + 128])] = mem[ceil32(stor8[arg1].length) + 160 len ceil32(mem[ceil32(stor8[arg1].length) + 128])]
        if ceil32(mem[ceil32(stor8[arg1].length) + 128]) <= mem[ceil32(stor8[arg1].length) + 128]:
            return Array(len=mem[ceil32(stor8[arg1].length) + 128], data=mem[stor8[arg1].length + ceil32(stor8[arg1].length) + baseURI.length.field_1 + 224 len ceil32(mem[ceil32(stor8[arg1].length) + 128])]), 
        mem[mem[ceil32(stor8[arg1].length) + 128] + stor8[arg1].length + ceil32(stor8[arg1].length) + baseURI.length.field_1 + 224] = 0
        return 32, mem[stor8[arg1].length + ceil32(stor8[arg1].length) + baseURI.length.field_1 + 192 len ceil32(mem[ceil32(stor8[arg1].length) + 128]) + 32], 
    if not arg1:
        mem[ceil32(stor8[arg1].length) + 128] = 1
        mem[ceil32(stor8[arg1].length) + 160] = 0x3000000000000000000000000000000000000000000000000000000000000000
        if not bool(baseURI.length):
            mem[ceil32(stor8[arg1].length) + 224] = Mask(248, 8, baseURI.length)
            mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            var32001 = 32
            mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 + 225] = 32
            mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 + 257] = mem[ceil32(stor8[arg1].length) + 192]
            mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 + 289 len ceil32(mem[ceil32(stor8[arg1].length) + 192])] = mem[ceil32(stor8[arg1].length) + 224 len ceil32(mem[ceil32(stor8[arg1].length) + 192])]
            if ceil32(mem[ceil32(stor8[arg1].length) + 192]) > mem[ceil32(stor8[arg1].length) + 192]:
                mem[mem[ceil32(stor8[arg1].length) + 192] + ceil32(stor8[arg1].length) + baseURI.length.field_1 + 289] = 0
            return Array(len=mem[ceil32(stor8[arg1].length) + 192], data=mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 + 289 len ceil32(mem[ceil32(stor8[arg1].length) + 192])]), 
        if bool(baseURI.length) == 1:
            idx = 0
            s = 0
            while idx < baseURI.length.field_1:
                mem[idx + ceil32(stor8[arg1].length) + 224] = baseURI[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 + 225] = 32
            mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 + 257] = mem[ceil32(stor8[arg1].length) + 192]
            mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 + 289 len ceil32(mem[ceil32(stor8[arg1].length) + 192])] = mem[ceil32(stor8[arg1].length) + 224 len ceil32(mem[ceil32(stor8[arg1].length) + 192])]
            if ceil32(mem[ceil32(stor8[arg1].length) + 192]) > mem[ceil32(stor8[arg1].length) + 192]:
                mem[mem[ceil32(stor8[arg1].length) + 192] + ceil32(stor8[arg1].length) + baseURI.length.field_1 + 289] = 0
            return Array(len=mem[ceil32(stor8[arg1].length) + 192], data=mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 + 289 len ceil32(mem[ceil32(stor8[arg1].length) + 192])]), 
        var33001 = 32
        mem[64] = 1
        _860 = mem[ceil32(stor8[arg1].length) + 192]
        mem[33] = mem[ceil32(stor8[arg1].length) + 192]
        mem[65 len ceil32(mem[ceil32(stor8[arg1].length) + 192])] = mem[ceil32(stor8[arg1].length) + 224 len ceil32(mem[ceil32(stor8[arg1].length) + 192])]
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
    mem[ceil32(stor8[arg1].length) + 128] = s
    if not s:
        t = s - 1
        idx = arg1
        while idx:
            require t < s
            mem[t + ceil32(stor8[arg1].length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        if not bool(baseURI.length):
            mem[ceil32(stor8[arg1].length) + ceil32(s) + 192] = Mask(248, 8, baseURI.length)
            mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 + 192 len ceil32(s)] = mem[ceil32(stor8[arg1].length) + 160 len ceil32(s)]
            var39001 = ceil32(s)
            mem[s + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 + 192] = 32
            mem[s + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 + 224] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
            mem[s + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]) > mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]:
                mem[mem[ceil32(stor8[arg1].length) + ceil32(s) + 160] + s + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 + 256] = 0
            return Array(len=mem[ceil32(stor8[arg1].length) + ceil32(s) + 160], data=mem[s + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]), 
        if bool(baseURI.length) != 1:
            mem[64] = s
            if ceil32(s) <= s:
                _1623 = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
                mem[s + 32] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
                mem[s + 64 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]
                if ceil32(_1623) > _1623:
                    mem[_1623 + s + 64] = 0
                return 32, mem[s + 32 len ceil32(_1623) + 32]
            _1624 = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
            mem[s + 32] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
            mem[s + 64 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]
            if ceil32(_1624) > _1624:
                mem[_1624 + s + 64] = 0
            return 32, mem[s + 32 len ceil32(_1624) + 32]
    else:
        mem[ceil32(stor8[arg1].length) + 160 len s] = call.data[calldata.size len s]
        t = s - 1
        idx = arg1
        while idx:
            require t < s
            mem[t + ceil32(stor8[arg1].length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        if not bool(baseURI.length):
            mem[ceil32(stor8[arg1].length) + ceil32(s) + 192] = Mask(248, 8, baseURI.length)
            mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 + 192 len ceil32(s)] = mem[ceil32(stor8[arg1].length) + 160 len ceil32(s)]
            mem[s + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 + 192] = 32
            mem[s + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 + 224] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
            mem[s + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]) > mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]:
                mem[mem[ceil32(stor8[arg1].length) + ceil32(s) + 160] + s + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 + 256] = 0
            return Array(len=mem[ceil32(stor8[arg1].length) + ceil32(s) + 160], data=mem[s + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]), 
        if bool(baseURI.length) != 1:
            mem[64] = s
            if ceil32(s) <= s:
                _1627 = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
                mem[s + 32] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
                mem[s + 64 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]
                if ceil32(_1627) > _1627:
                    mem[_1627 + s + 64] = 0
                return 32, mem[s + 32 len ceil32(_1627) + 32]
            _1628 = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
            mem[s + 32] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
            mem[s + 64 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]
            if ceil32(_1628) > _1628:
                mem[_1628 + s + 64] = 0
            return 32, mem[s + 32 len ceil32(_1628) + 32]
    ('eq', ('type', 1, ('stor', ('length', ('name', 'baseURI', 9)))), 1)
    idx = 0
    t = 0
    while idx < baseURI.length.field_1:
        mem[idx + ceil32(stor8[arg1].length) + ceil32(s) + 192] = baseURI[t].field_0
        idx = idx + 32
        t = t + 1
        continue 
    mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 + 192 len ceil32(s)] = mem[ceil32(stor8[arg1].length) + 160 len ceil32(s)]
    mem[s + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 + 192] = 32
    mem[s + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 + 224] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
    mem[s + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]
    if ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]) > mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]:
        mem[mem[ceil32(stor8[arg1].length) + ceil32(s) + 160] + s + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 + 256] = 0
    return Array(len=mem[ceil32(stor8[arg1].length) + ceil32(s) + 160], data=mem[s + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]), 
}



}
