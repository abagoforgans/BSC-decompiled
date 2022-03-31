contract main {




// =====================  Runtime code  =====================


#
#  - mintKunNFT()
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#  - initialize(address arg1)
#
const qianTypeId = 13

const kunTypeId = 12

const nftType = 12


array of uint256 stor1;
mapping of uint8 stor51;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor103;
mapping of address approved;
mapping of uint8 stor105;
array of uint256 name;
array of uint256 symbol;
mapping of struct stor108;
array of uint256 baseURI;
uint256 stor151;
uint8 stor152;
address adminAddress; offset 8
address kunAddress;
array of uint256 stor154;
array of uint256 kunByUser;
array of uint256 qianByUser;
mapping of uint256 nftIdToTypeId;
mapping of uint256 typeCount;
array of uint256 sub_0aa73672;
uint256 kunCount;
array of uint256 stor162;
mapping of uint256 stor163;
uint256 basicMax;
uint256 kunMax;
uint256 qianMax;
uint256 basicMintCost;
uint256 qianMintCost;
array of struct stor10735371041283424250960263919943907779881675063291723489231782671997738003781;

function basicMax() payable {
    return basicMax
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

function sub_0aa73672(?) payable {
    return sub_0aa73672[arg1][0 len sub_0aa73672[arg1].length]
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

function basicMintCost() payable {
    return basicMintCost
}

function qianMax() payable {
    return qianMax
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableMap: index out of bounds'
    return tokenByIndex[arg1].field_0
}

function kunMax() payable {
    return kunMax
}

function typeCount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return typeCount[arg1]
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
    return address(tokenByIndex[stor103[arg1] - 1].field_256)
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

function kun() payable {
    return kunAddress
}

function getQianCount() payable {
    return stor162.length
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function getKunByUser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return kunByUser[address(arg1)]
}

function qianMintCost() payable {
    return qianMintCost
}

function getQianByUser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return qianByUser[address(arg1)]
}

function getKunCount() payable {
    return kunCount
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor105[address(arg1)][address(arg2)])
}

function nftIdToTypeId(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return nftIdToTypeId[arg1]
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function setKunMax(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'Admin required'
    kunMax = arg1
}

function setQianMax(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'Admin required'
    qianMax = arg1
}

function setBasicMax(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'Admin required'
    basicMax = arg1
}

function setQianMintCost(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'Admin required'
    qianMintCost = arg1
}

function setBasicMintCost(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'Admin required'
    basicMintCost = arg1
}

function setKun(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'Admin required'
    kunAddress = arg1
}

function getBasicCount() payable {
    idx = 0
    s = 0
    while idx < 12:
        mem[0] = idx
        mem[32] = 158
        idx = idx + 1
        s = typeCount[idx] + s
        continue 
    return (12 * stor[_2])
}

function getTypeCount() payable {
    mem[128 len 384] = call.data[calldata.size len 384]
    idx = 0
    while idx < 12:
        mem[0] = idx
        mem[32] = 158
        require idx < 12
        mem[(32 * idx) + 128] = typeCount[idx]
        idx = idx + 1
        continue 
    return Array(len=12, data=mem[128 len 384])
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

function allBasicCollected(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < 12:
        mem[0] = idx
        mem[32] = sha3(address(arg1), 154)
        if stor154[address(arg1)][idx]:
            idx = idx + 1
            continue 
        else:
            return 0
    return 1
}

function getBasicByUser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < 12:
        mem[0] = idx
        mem[32] = sha3(address(arg1), 154)
        require idx < 12
        mem[(32 * idx) + 128] = stor154[address(arg1)][idx]
        idx = idx + 1
        continue 
    mem[512] = 32
    mem[544] = 12
    return memory
      from 512
       len var17003 - 512
}

function getAvailableType(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    idx = arg1
    while idx < 12:
        mem[0] = idx
        mem[32] = 158
        if typeCount[idx] >= basicMax:
            idx = idx + 1
            continue 
        return 1, idx
    idx = 0
    while idx < arg1:
        mem[0] = idx
        mem[32] = 158
        if typeCount[idx] >= basicMax:
            idx = idx + 1
            continue 
        return 1, idx
    return 0
}

function sub_0385c0de(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require calldata.size >= arg2.length + arg2 + 36
    if adminAddress != msg.sender:
        revert with 0, 'Admin required'
    sub_0aa73672[arg1][] = Array(len=arg2.length, data=arg2[all])
}

function setBaseURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require calldata.size >= arg1.length + arg1 + 36
    if adminAddress != msg.sender:
        revert with 0, 'Admin required'
    baseURI[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function setTokenURI(uint256 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require calldata.size >= arg2.length + arg2 + 36
    if adminAddress != msg.sender:
        revert with 0, 'Admin required'
    if not stor103[arg1]:
        revert with 0, 'ERC721Metadata: URI set of nonexistent token'
    stor108[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
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
    if arg1 == address(tokenByIndex[stor103[arg2] - 1].field_256):
        revert with 0, 'ERC721: approval to current owner'
    if address(tokenByIndex[stor103[arg2] - 1].field_256) != msg.sender:
        if not stor105[address(stor102[stor103[arg2] - 1].field_256)][address(msg.sender)]:
            revert with 0, 'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not stor103[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    require stor103[arg2] - 1 < tokenByIndex.length
    emit Approval(address(tokenByIndex[stor103[arg2] - 1].field_256), arg1, arg2);
}

function sub_8cc6a88e(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if adminAddress != msg.sender:
        revert with 0, 'Admin required'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'Invalid input'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
        require idx < ('cd', 4).length
        mem[32] = 159
        mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 159)
        sub_0aa73672[cd[((32 * idx) + cd[4] + 36)]] = (2 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 1
        s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 159))
        t = cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68
        while cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 68 > t:
            stor[s] = cd[t]
            s = s + 1
            t = t + 32
            continue 
        t = s
        while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 159)) + (sub_0aa73672[cd[((32 * idx) + cd[4] + 36)]].length + 31 / 32) > t:
            stor[t] = 0
            t = t + 1
            continue 
        idx = idx + 1
        continue 
}

function sub_d9c72207(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if arg2 < 12:
        require stor154[address(arg1)][arg2] <= test266151307()
        mem[96] = stor154[address(arg1)][arg2]
        if stor154[address(arg1)][arg2]:
            mem[128 len 32 * stor154[address(arg1)][arg2]] = call.data[calldata.size len 32 * stor154[address(arg1)][arg2]]
        idx = 0
        while idx < mem[96]:
            mem[32] = sha3(address(arg1), 154)
            if idx >= stor154[address(arg1)][arg2]:
                revert with 0, 'EnumerableSet: index out of bounds'
            mem[0] = sha3(arg2, sha3(address(arg1), 154))
            require idx < mem[96]
            mem[(32 * idx) + 128] = stor154[address(arg1)][arg2][idx]
            idx = idx + 1
            continue 
        mem[(32 * stor154[address(arg1)][arg2]) + 128] = 32
        mem[(32 * stor154[address(arg1)][arg2]) + 160] = mem[96]
        mem[(32 * stor154[address(arg1)][arg2]) + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        return 32, mem[(32 * stor154[address(arg1)][arg2]) + 160 len (32 * mem[96]) + 32]
    if arg2 != 12:
        require qianByUser[address(arg1)] <= test266151307()
        mem[96] = qianByUser[address(arg1)]
        if qianByUser[address(arg1)]:
            mem[128 len 32 * qianByUser[address(arg1)]] = call.data[calldata.size len 32 * qianByUser[address(arg1)]]
        idx = 0
        while idx < mem[96]:
            mem[32] = 156
            if idx >= qianByUser[address(arg1)]:
                revert with 0, 'EnumerableSet: index out of bounds'
            mem[0] = sha3(address(arg1), 156)
            require idx < mem[96]
            mem[(32 * idx) + 128] = qianByUser[address(arg1)][idx]
            idx = idx + 1
            continue 
        mem[(32 * qianByUser[address(arg1)]) + 128] = 32
        mem[(32 * qianByUser[address(arg1)]) + 160] = mem[96]
        mem[(32 * qianByUser[address(arg1)]) + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        return 32, mem[(32 * qianByUser[address(arg1)]) + 160 len (32 * mem[96]) + 32]
    require kunByUser[address(arg1)] <= test266151307()
    mem[96] = kunByUser[address(arg1)]
    if kunByUser[address(arg1)]:
        mem[128 len 32 * kunByUser[address(arg1)]] = call.data[calldata.size len 32 * kunByUser[address(arg1)]]
    idx = 0
    while idx < mem[96]:
        mem[32] = 155
        if idx >= kunByUser[address(arg1)]:
            revert with 0, 'EnumerableSet: index out of bounds'
        mem[0] = sha3(address(arg1), 155)
        require idx < mem[96]
        mem[(32 * idx) + 128] = kunByUser[address(arg1)][idx]
        idx = idx + 1
        continue 
    mem[(32 * kunByUser[address(arg1)]) + 128] = 32
    mem[(32 * kunByUser[address(arg1)]) + 160] = mem[96]
    mem[(32 * kunByUser[address(arg1)]) + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[(32 * kunByUser[address(arg1)]) + 160 len (32 * mem[96]) + 32]
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
    if address(tokenByIndex[stor103[arg3] - 1].field_256) != msg.sender:
        if not stor103[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor105[address(stor102[stor103[arg3] - 1].field_256)][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not stor103[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    require stor103[arg3] - 1 < tokenByIndex.length
    if address(tokenByIndex[stor103[arg3] - 1].field_256) != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if arg1:
        if arg2:
            if nftIdToTypeId[arg3] < 12:
                if stor154[address(arg1)][stor157[arg3]][1][arg3]:
                    require stor154[address(arg1)][stor157[arg3]] - 1 < stor154[address(arg1)][stor157[arg3]]
                    require stor154[address(arg1)][stor157[arg3]][1][arg3] - 1 < stor154[address(arg1)][stor157[arg3]]
                    stor154[address(arg1)][stor157[arg3]][stor154[address(arg1)][stor157[arg3]][1][arg3]] = stor154[address(arg1)][stor157[arg3]][stor154[address(arg1)][stor157[arg3]]]
                    stor154[address(arg1)][stor157[arg3]][1][stor154[address(arg1)][stor157[arg3]][stor154[address(arg1)][stor157[arg3]]]] = stor154[address(arg1)][stor157[arg3]][1][arg3]
                    require stor154[address(arg1)][stor157[arg3]]
                    stor154[address(arg1)][stor157[arg3]][stor154[address(arg1)][stor157[arg3]]] = 0
                    stor154[address(arg1)][stor157[arg3]]--
                    stor154[address(arg1)][stor157[arg3]][1][arg3] = 0
                if not stor154[address(arg2)][stor157[arg3]][1][arg3]:
                    stor154[address(arg2)][stor157[arg3]]++
                    stor154[address(arg2)][stor157[arg3]][stor154[address(arg2)][stor157[arg3]]] = arg3
                    stor154[address(arg2)][stor157[arg3]][1][arg3] = stor154[address(arg2)][stor157[arg3]]
            else:
                if nftIdToTypeId[arg3] != 12:
                    if qianByUser[address(arg1)][1][arg3]:
                        require qianByUser[address(arg1)] - 1 < qianByUser[address(arg1)]
                        require qianByUser[address(arg1)][1][arg3] - 1 < qianByUser[address(arg1)]
                        qianByUser[address(arg1)][qianByUser[address(arg1)][1][arg3]] = qianByUser[address(arg1)][qianByUser[address(arg1)]]
                        qianByUser[address(arg1)][1][qianByUser[address(arg1)][qianByUser[address(arg1)]]] = qianByUser[address(arg1)][1][arg3]
                        require qianByUser[address(arg1)]
                        qianByUser[address(arg1)][qianByUser[address(arg1)]] = 0
                        qianByUser[address(arg1)]--
                        qianByUser[address(arg1)][1][arg3] = 0
                    if not qianByUser[address(arg2)][1][arg3]:
                        qianByUser[address(arg2)]++
                        qianByUser[address(arg2)][qianByUser[address(arg2)]] = arg3
                        qianByUser[address(arg2)][1][arg3] = qianByUser[address(arg2)]
                else:
                    if kunByUser[address(arg1)][1][arg3]:
                        require kunByUser[address(arg1)] - 1 < kunByUser[address(arg1)]
                        require kunByUser[address(arg1)][1][arg3] - 1 < kunByUser[address(arg1)]
                        kunByUser[address(arg1)][kunByUser[address(arg1)][1][arg3]] = kunByUser[address(arg1)][kunByUser[address(arg1)]]
                        kunByUser[address(arg1)][1][kunByUser[address(arg1)][kunByUser[address(arg1)]]] = kunByUser[address(arg1)][1][arg3]
                        require kunByUser[address(arg1)]
                        kunByUser[address(arg1)][kunByUser[address(arg1)]] = 0
                        kunByUser[address(arg1)]--
                        kunByUser[address(arg1)][1][arg3] = 0
                    if not kunByUser[address(arg2)][1][arg3]:
                        kunByUser[address(arg2)]++
                        kunByUser[address(arg2)][kunByUser[address(arg2)]] = arg3
                        kunByUser[address(arg2)][1][arg3] = kunByUser[address(arg2)]
    approved[arg3] = 0
    if not stor103[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[361 len 23] >> 72,
                    0
    require stor103[arg3] - 1 < tokenByIndex.length
    emit Approval(address(tokenByIndex[stor103[arg3] - 1].field_256), 0, arg3);
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
        address(tokenByIndex[stor103[arg3] - 1].field_256) = arg2
        Mask(96, 0, tokenByIndex[stor103[arg3] - 1].field_416) = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
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
            mem[ceil32(stor108[arg1].length) + baseURI.length.field_1 % 128 + 160 len ceil32(stor108[arg1].length)] = mem[128 len ceil32(stor108[arg1].length)]
            mem[stor108[arg1].length + ceil32(stor108[arg1].length) + baseURI.length.field_1 % 128 + 160] = 32
            mem[stor108[arg1].length + ceil32(stor108[arg1].length) + baseURI.length.field_1 % 128 + 192] = mem[ceil32(stor108[arg1].length) + 128]
            mem[stor108[arg1].length + ceil32(stor108[arg1].length) + baseURI.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor108[arg1].length) + 128])] = mem[ceil32(stor108[arg1].length) + 160 len ceil32(mem[ceil32(stor108[arg1].length) + 128])]
            var39001 = ceil32(mem[ceil32(stor108[arg1].length) + 128])
            if ceil32(mem[ceil32(stor108[arg1].length) + 128]) > mem[ceil32(stor108[arg1].length) + 128]:
                mem[mem[ceil32(stor108[arg1].length) + 128] + stor108[arg1].length + ceil32(stor108[arg1].length) + baseURI.length.field_1 % 128 + 224] = 0
            return Array(len=mem[ceil32(stor108[arg1].length) + 128], data=mem[stor108[arg1].length + ceil32(stor108[arg1].length) + baseURI.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor108[arg1].length) + 128])]), 
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
        while idx < uint255(baseURI.length.field_1):
            mem[idx + ceil32(stor108[arg1].length) + 160] = baseURI[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor108[arg1].length) + uint255(baseURI.length.field_1) + 160 len ceil32(stor108[arg1].length)] = mem[128 len ceil32(stor108[arg1].length)]
        var32001 = ceil32(stor108[arg1].length)
        mem[stor108[arg1].length + ceil32(stor108[arg1].length) + uint255(baseURI.length.field_1) + 160] = 32
        mem[stor108[arg1].length + ceil32(stor108[arg1].length) + uint255(baseURI.length.field_1) + 192] = mem[ceil32(stor108[arg1].length) + 128]
        mem[stor108[arg1].length + ceil32(stor108[arg1].length) + uint255(baseURI.length.field_1) + 224 len ceil32(mem[ceil32(stor108[arg1].length) + 128])] = mem[ceil32(stor108[arg1].length) + 160 len ceil32(mem[ceil32(stor108[arg1].length) + 128])]
        if ceil32(mem[ceil32(stor108[arg1].length) + 128]) > mem[ceil32(stor108[arg1].length) + 128]:
            mem[mem[ceil32(stor108[arg1].length) + 128] + stor108[arg1].length + ceil32(stor108[arg1].length) + uint255(baseURI.length.field_1) + 224] = 0
        return Array(len=mem[ceil32(stor108[arg1].length) + 128], data=mem[stor108[arg1].length + ceil32(stor108[arg1].length) + uint255(baseURI.length.field_1) + 224 len ceil32(mem[ceil32(stor108[arg1].length) + 128])]), 
    if not arg1:
        mem[ceil32(stor108[arg1].length) + 128] = 1
        mem[ceil32(stor108[arg1].length) + 160] = 0x3000000000000000000000000000000000000000000000000000000000000000
        if not bool(baseURI.length):
            mem[ceil32(stor108[arg1].length) + 224] = Mask(248, 8, baseURI.length)
            mem[ceil32(stor108[arg1].length) + baseURI.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            var32001 = 32
            mem[ceil32(stor108[arg1].length) + baseURI.length.field_1 % 128 + 225] = 32
            mem[ceil32(stor108[arg1].length) + baseURI.length.field_1 % 128 + 257] = mem[ceil32(stor108[arg1].length) + 192]
            mem[ceil32(stor108[arg1].length) + baseURI.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor108[arg1].length) + 192])] = mem[ceil32(stor108[arg1].length) + 224 len ceil32(mem[ceil32(stor108[arg1].length) + 192])]
            if ceil32(mem[ceil32(stor108[arg1].length) + 192]) > mem[ceil32(stor108[arg1].length) + 192]:
                mem[mem[ceil32(stor108[arg1].length) + 192] + ceil32(stor108[arg1].length) + baseURI.length.field_1 % 128 + 289] = 0
            return Array(len=mem[ceil32(stor108[arg1].length) + 192], data=mem[ceil32(stor108[arg1].length) + baseURI.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor108[arg1].length) + 192])]), 
        if bool(baseURI.length) == 1:
            idx = 0
            s = 0
            while idx < uint255(baseURI.length.field_1):
                mem[idx + ceil32(stor108[arg1].length) + 224] = baseURI[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(stor108[arg1].length) + uint255(baseURI.length.field_1) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor108[arg1].length) + uint255(baseURI.length.field_1) + 225] = 32
            mem[ceil32(stor108[arg1].length) + uint255(baseURI.length.field_1) + 257] = mem[ceil32(stor108[arg1].length) + 192]
            mem[ceil32(stor108[arg1].length) + uint255(baseURI.length.field_1) + 289 len ceil32(mem[ceil32(stor108[arg1].length) + 192])] = mem[ceil32(stor108[arg1].length) + 224 len ceil32(mem[ceil32(stor108[arg1].length) + 192])]
            if ceil32(mem[ceil32(stor108[arg1].length) + 192]) > mem[ceil32(stor108[arg1].length) + 192]:
                mem[mem[ceil32(stor108[arg1].length) + 192] + ceil32(stor108[arg1].length) + uint255(baseURI.length.field_1) + 289] = 0
            return Array(len=mem[ceil32(stor108[arg1].length) + 192], data=mem[ceil32(stor108[arg1].length) + uint255(baseURI.length.field_1) + 289 len ceil32(mem[ceil32(stor108[arg1].length) + 192])]), 
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
            mem[ceil32(stor108[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + 192 len ceil32(s)] = mem[ceil32(stor108[arg1].length) + 160 len ceil32(s)]
            var39001 = ceil32(s)
            mem[s + ceil32(stor108[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + 192] = 32
            mem[s + ceil32(stor108[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + 224] = mem[ceil32(stor108[arg1].length) + ceil32(s) + 160]
            mem[s + ceil32(stor108[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor108[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160]) <= mem[ceil32(stor108[arg1].length) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor108[arg1].length) + ceil32(s) + 160], data=mem[s + ceil32(stor108[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160])]), 
            mem[mem[ceil32(stor108[arg1].length) + ceil32(s) + 160] + s + ceil32(stor108[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + 256] = 0
            return 32, mem[s + ceil32(stor108[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160]) + 32], 
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
            mem[ceil32(stor108[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + 192 len ceil32(s)] = mem[ceil32(stor108[arg1].length) + 160 len ceil32(s)]
            mem[s + ceil32(stor108[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + 192] = 32
            mem[s + ceil32(stor108[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + 224] = mem[ceil32(stor108[arg1].length) + ceil32(s) + 160]
            mem[s + ceil32(stor108[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor108[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160]) <= mem[ceil32(stor108[arg1].length) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor108[arg1].length) + ceil32(s) + 160], data=mem[s + ceil32(stor108[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160])]), 
            mem[mem[ceil32(stor108[arg1].length) + ceil32(s) + 160] + s + ceil32(stor108[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + 256] = 0
            return 32, mem[s + ceil32(stor108[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160]) + 32], 
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
    while idx < uint255(baseURI.length.field_1):
        mem[idx + ceil32(stor108[arg1].length) + ceil32(s) + 192] = baseURI[t].field_0
        idx = idx + 32
        t = t + 1
        continue 
    mem[ceil32(stor108[arg1].length) + ceil32(s) + uint255(baseURI.length.field_1) + 192 len ceil32(s)] = mem[ceil32(stor108[arg1].length) + 160 len ceil32(s)]
    mem[s + ceil32(stor108[arg1].length) + ceil32(s) + uint255(baseURI.length.field_1) + 192] = 32
    mem[s + ceil32(stor108[arg1].length) + ceil32(s) + uint255(baseURI.length.field_1) + 224] = mem[ceil32(stor108[arg1].length) + ceil32(s) + 160]
    mem[s + ceil32(stor108[arg1].length) + ceil32(s) + uint255(baseURI.length.field_1) + 256 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor108[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160])]
    if ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160]) <= mem[ceil32(stor108[arg1].length) + ceil32(s) + 160]:
        return Array(len=mem[ceil32(stor108[arg1].length) + ceil32(s) + 160], data=mem[s + ceil32(stor108[arg1].length) + ceil32(s) + uint255(baseURI.length.field_1) + 256 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160])]), 
    mem[mem[ceil32(stor108[arg1].length) + ceil32(s) + 160] + s + ceil32(stor108[arg1].length) + ceil32(s) + uint255(baseURI.length.field_1) + 256] = 0
    return 32, mem[s + ceil32(stor108[arg1].length) + ceil32(s) + uint255(baseURI.length.field_1) + 224 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(s) + 160]) + 32], 
}

function mintBasicNFT() payable {
    if not stor152:
        revert with 0, 're-entered'
    stor152 = 0
    mem[100] = msg.sender
    require ext_code.size(kunAddress)
    staticcall kunAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < basicMintCost:
        revert with 0, 'Insufficient kun balance'
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    require ext_code.size(kunAddress)
    staticcall kunAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < basicMintCost:
        revert with 0, 'Insufficient kun allowance'
    mem[(2 * ceil32(return_data.size)) + 128] = block.timestamp + block.difficulty + block.coinbase + block.hash(block.number - 1) + tokenByIndex.length
    mem[(2 * ceil32(return_data.size)) + 96] = 32
    mem[64] = (2 * ceil32(return_data.size)) + 160
    idx = sha3(block.timestamp + block.difficulty + block.coinbase + block.hash(block.number - 1) + tokenByIndex.length) % 12
    while idx < 12:
        mem[0] = idx
        mem[32] = 158
        if typeCount[idx] >= basicMax:
            idx = idx + 1
            continue 
        if not stor154[msg.sender][idx][1][stor151]:
            stor154[msg.sender][idx]++
            stor154[msg.sender][idx][stor154[msg.sender][idx]] = stor151
            stor154[msg.sender][idx][1][stor151] = stor154[msg.sender][idx]
        nftIdToTypeId[stor151] = idx
        typeCount[idx]++
        mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 196] = basicMintCost
        require ext_code.size(kunAddress)
        call kunAddress.0x79cc6790 with:
             gas gas_remaining wei
            args msg.sender, basicMintCost
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 160] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if stor103[stor151]:
            revert with 0, 'ERC721: token already minted'
        if not tokenOfOwnerByIndex[address(msg.sender)][1][stor151]:
            tokenOfOwnerByIndex[address(msg.sender)]++
            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor151
            tokenOfOwnerByIndex[address(msg.sender)][1][stor151] = tokenOfOwnerByIndex[address(msg.sender)]
        if stor103[stor151]:
            require stor103[stor151] - 1 < tokenByIndex.length
            address(tokenByIndex[stor103[stor151] - 1].field_256) = msg.sender
            Mask(96, 0, tokenByIndex[stor103[stor151] - 1].field_416) = 0
            emit Transfer(0, msg.sender, stor151);
            if not ext_code.size(msg.sender):
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(sub_0aa73672[idx].length) + 224
                mem[(2 * ceil32(return_data.size)) + 192] = sub_0aa73672[idx].length
                mem[0] = sha3(idx, 159)
                mem[(2 * ceil32(return_data.size)) + 224] = sub_0aa73672[idx]
                s = (2 * ceil32(return_data.size)) + 224
                t = sha3(mem[0])
                while (2 * ceil32(return_data.size)) + sub_0aa73672[idx].length + 192 > s:
                    mem[s + 32] = stor1[t]
                    s = s + 32
                    t = t + 1
                    continue 
                if not stor103[stor151]:
                    revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                mem[32] = 108
                mem[0] = sha3(stor151, 108)
                stor108[stor151].field_0 = (2 * mem[(2 * ceil32(return_data.size)) + 192]) + 1
                t = sha3(sha3(stor151, 108))
                s = (2 * ceil32(return_data.size)) + 224
                while (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192] + 224 > s:
                    stor[t] = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3(sha3(stor151, 108)) + (Mask(251, 0, mem[(2 * ceil32(return_data.size)) + 192] + 31) >> 5)
                while sha3(sha3(stor151, 108)) + (stor108[stor151].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            else:
                mem[(2 * ceil32(return_data.size)) + 228] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 260] = 0
                mem[(2 * ceil32(return_data.size)) + 292] = stor151
                mem[(2 * ceil32(return_data.size)) + 324] = 128
                mem[(2 * ceil32(return_data.size)) + 356] = 0
                s = 0
                while s < 0:
                    mem[s + (2 * ceil32(return_data.size)) + 388] = mem[s + (2 * ceil32(return_data.size)) + 192]
                    s = s + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 192] = 164
                mem[(2 * ceil32(return_data.size)) + 224] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 388] = 50
                mem[(2 * ceil32(return_data.size)) + 420 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                if 0 > eth.balance(this.address):
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(msg.sender):
                    revert with 0, 'Address: call to non-contract'
                s = 0
                while s < 164:
                    mem[s + (2 * ceil32(return_data.size)) + 484] = mem[s + (2 * ceil32(return_data.size)) + 224]
                    s = s + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 648] = 0
                call msg.sender.mem[(2 * ceil32(return_data.size)) + 484 len 4] with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(return_data.size)) + 488 len 160]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 484] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 488] = 32
                        idx = 0
                        while idx < 50:
                            mem[idx + (2 * ceil32(return_data.size)) + 552] = mem[idx + (2 * ceil32(return_data.size)) + 420]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 50, mem[(2 * ceil32(return_data.size)) + 552 len 50], 0
                    require ext_call.return_data[0] >= 32
                    require uint32(msg.sender), mem[132 len 28] == msg.sender << 224
                    if msg.sender << 224 != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(sub_0aa73672[idx].length) + 516
                    mem[(2 * ceil32(return_data.size)) + 484] = sub_0aa73672[idx].length
                    mem[0] = sha3(idx, 159)
                    mem[(2 * ceil32(return_data.size)) + 516] = sub_0aa73672[idx]
                    s = (2 * ceil32(return_data.size)) + 516
                    t = sha3(mem[0])
                    while (2 * ceil32(return_data.size)) + sub_0aa73672[idx].length + 484 > s:
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    if not stor103[stor151]:
                        revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                    mem[32] = 108
                    mem[0] = sha3(stor151, 108)
                    stor108[stor151].field_0 = (2 * mem[(2 * ceil32(return_data.size)) + 484]) + 1
                    t = sha3(sha3(stor151, 108))
                    s = (2 * ceil32(return_data.size)) + 516
                    while (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 484] + 516 > s:
                        stor[t] = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(stor151, 108)) + (Mask(251, 0, mem[(2 * ceil32(return_data.size)) + 484] + 31) >> 5)
                    while sha3(sha3(stor151, 108)) + (stor108[stor151].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    mem[(2 * ceil32(return_data.size)) + 484] = return_data.size
                    mem[(2 * ceil32(return_data.size)) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 32
                        idx = 0
                        while idx < 50:
                            mem[idx + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = mem[idx + (2 * ceil32(return_data.size)) + 420]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 50, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 50], 0
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 516] == Mask(32, 224, mem[(2 * ceil32(return_data.size)) + 516])
                    if Mask(32, 224, mem[(2 * ceil32(return_data.size)) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(sub_0aa73672[idx].length) + 517
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] = sub_0aa73672[idx].length
                    mem[0] = sha3(idx, 159)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 517] = sub_0aa73672[idx]
                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 517
                    t = sha3(mem[0])
                    while (2 * ceil32(return_data.size)) + ceil32(return_data.size) + sub_0aa73672[idx].length + 485 > s:
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    if not stor103[stor151]:
                        revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                    mem[32] = 108
                    mem[0] = sha3(stor151, 108)
                    stor108[stor151].field_0 = (2 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 485]) + 1
                    t = sha3(sha3(stor151, 108))
                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 517
                    while (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] + 517 > s:
                        stor[t] = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(stor151, 108)) + (Mask(251, 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] + 31) >> 5)
                    while sha3(sha3(stor151, 108)) + (stor108[stor151].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
        else:
            mem[(2 * ceil32(return_data.size)) + 192] = stor151
            mem[(2 * ceil32(return_data.size)) + 224] = msg.sender
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length].field_0 = stor151
            address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
            Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
            stor103[stor151] = tokenByIndex.length
            emit Transfer(0, msg.sender, stor151);
            if not ext_code.size(msg.sender):
                mem[(2 * ceil32(return_data.size)) + 256] = sub_0aa73672[idx].length
                mem[0] = sha3(idx, 159)
                mem[(2 * ceil32(return_data.size)) + 288] = sub_0aa73672[idx]
                s = (2 * ceil32(return_data.size)) + 288
                t = sha3(mem[0])
                while (2 * ceil32(return_data.size)) + sub_0aa73672[idx].length + 256 > s:
                    mem[s + 32] = stor1[t]
                    s = s + 32
                    t = t + 1
                    continue 
                if not stor103[stor151]:
                    revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                stor108[stor151].field_0 = (2 * mem[(2 * ceil32(return_data.size)) + 256]) + 1
                t = sha3(sha3(stor151, 108))
                s = (2 * ceil32(return_data.size)) + 288
                while (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 288 > s:
                    stor[t] = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3(sha3(stor151, 108)) + (Mask(251, 0, mem[(2 * ceil32(return_data.size)) + 256] + 31) >> 5)
                while sha3(sha3(stor151, 108)) + (stor108[stor151].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            else:
                mem[(2 * ceil32(return_data.size)) + 292] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 324] = 0
                mem[(2 * ceil32(return_data.size)) + 356] = stor151
                mem[(2 * ceil32(return_data.size)) + 388] = 128
                mem[(2 * ceil32(return_data.size)) + 420] = 0
                s = 0
                while s < 0:
                    mem[s + (2 * ceil32(return_data.size)) + 452] = mem[s + (2 * ceil32(return_data.size)) + 192]
                    s = s + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 256] = 164
                mem[(2 * ceil32(return_data.size)) + 288] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 452] = 50
                mem[(2 * ceil32(return_data.size)) + 484 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                if 0 > eth.balance(this.address):
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(msg.sender):
                    revert with 0, 'Address: call to non-contract'
                s = 0
                while s < 164:
                    mem[s + (2 * ceil32(return_data.size)) + 548] = mem[s + (2 * ceil32(return_data.size)) + 288]
                    s = s + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 712] = 0
                call msg.sender.mem[(2 * ceil32(return_data.size)) + 548 len 4] with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(return_data.size)) + 552 len 160]
                if return_data.size:
                    mem[(2 * ceil32(return_data.size)) + 548] = return_data.size
                    mem[(2 * ceil32(return_data.size)) + 580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 32
                        idx = 0
                        while idx < 50:
                            mem[idx + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 617] = mem[idx + (2 * ceil32(return_data.size)) + 484]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 50, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 50], 0
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 580] == Mask(32, 224, mem[(2 * ceil32(return_data.size)) + 580])
                    if Mask(32, 224, mem[(2 * ceil32(return_data.size)) + 580]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549] = sub_0aa73672[idx].length
                    mem[0] = sha3(idx, 159)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 581] = sub_0aa73672[idx]
                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 581
                    t = sha3(mem[0])
                    while (2 * ceil32(return_data.size)) + ceil32(return_data.size) + sub_0aa73672[idx].length + 549 > s:
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    if not stor103[stor151]:
                        revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                    stor108[stor151].field_0 = (2 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549]) + 1
                    t = sha3(sha3(stor151, 108))
                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 581
                    while (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549] + 581 > s:
                        stor[t] = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(stor151, 108)) + (Mask(251, 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549] + 31) >> 5)
                    while sha3(sha3(stor151, 108)) + (stor108[stor151].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 548] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 552] = 32
                        idx = 0
                        while idx < 50:
                            mem[idx + (2 * ceil32(return_data.size)) + 616] = mem[idx + (2 * ceil32(return_data.size)) + 484]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 50, mem[(2 * ceil32(return_data.size)) + 616 len 50], 0
                    require ext_call.return_data[0] >= 32
                    require uint32(msg.sender), mem[132 len 28] == msg.sender << 224
                    if msg.sender << 224 != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(sub_0aa73672[idx].length) + 580
                    mem[(2 * ceil32(return_data.size)) + 548] = sub_0aa73672[idx].length
                    mem[0] = sha3(idx, 159)
                    mem[(2 * ceil32(return_data.size)) + 580] = sub_0aa73672[idx]
                    s = (2 * ceil32(return_data.size)) + 580
                    t = sha3(mem[0])
                    while (2 * ceil32(return_data.size)) + sub_0aa73672[idx].length + 548 > s:
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    if not stor103[stor151]:
                        revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                    mem[32] = 108
                    mem[0] = sha3(stor151, 108)
                    stor108[stor151].field_0 = (2 * mem[(2 * ceil32(return_data.size)) + 548]) + 1
                    t = sha3(sha3(stor151, 108))
                    s = (2 * ceil32(return_data.size)) + 580
                    while (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 548] + 580 > s:
                        stor[t] = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(stor151, 108)) + (Mask(251, 0, mem[(2 * ceil32(return_data.size)) + 548] + 31) >> 5)
                    while sha3(sha3(stor151, 108)) + (stor108[stor151].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
        stor151++
        emit 0x14237066: msg.sender, stor151, idx
        stor152 = 1
    idx = 0
    while idx < sha3(block.timestamp + block.difficulty + block.coinbase + block.hash(block.number - 1) + tokenByIndex.length) % 12:
        mem[0] = idx
        mem[32] = 158
        if typeCount[idx] >= basicMax:
            idx = idx + 1
            continue 
        if not stor154[msg.sender][idx][1][stor151]:
            stor154[msg.sender][idx]++
            stor154[msg.sender][idx][stor154[msg.sender][idx]] = stor151
            stor154[msg.sender][idx][1][stor151] = stor154[msg.sender][idx]
        nftIdToTypeId[stor151] = idx
        typeCount[idx]++
        mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 196] = basicMintCost
        require ext_code.size(kunAddress)
        call kunAddress.0x79cc6790 with:
             gas gas_remaining wei
            args msg.sender, basicMintCost
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 160] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if stor103[stor151]:
            revert with 0, 'ERC721: token already minted'
        if not tokenOfOwnerByIndex[address(msg.sender)][1][stor151]:
            tokenOfOwnerByIndex[address(msg.sender)]++
            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor151
            tokenOfOwnerByIndex[address(msg.sender)][1][stor151] = tokenOfOwnerByIndex[address(msg.sender)]
        if stor103[stor151]:
            require stor103[stor151] - 1 < tokenByIndex.length
            address(tokenByIndex[stor103[stor151] - 1].field_256) = msg.sender
            Mask(96, 0, tokenByIndex[stor103[stor151] - 1].field_416) = 0
            emit Transfer(0, msg.sender, stor151);
            if not ext_code.size(msg.sender):
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(sub_0aa73672[idx].length) + 224
                mem[(2 * ceil32(return_data.size)) + 192] = sub_0aa73672[idx].length
                mem[0] = sha3(idx, 159)
                mem[(2 * ceil32(return_data.size)) + 224] = sub_0aa73672[idx]
                s = (2 * ceil32(return_data.size)) + 224
                t = sha3(mem[0])
                while (2 * ceil32(return_data.size)) + sub_0aa73672[idx].length + 192 > s:
                    mem[s + 32] = stor1[t]
                    s = s + 32
                    t = t + 1
                    continue 
                if not stor103[stor151]:
                    revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                mem[32] = 108
                mem[0] = sha3(stor151, 108)
                stor108[stor151].field_0 = (2 * mem[(2 * ceil32(return_data.size)) + 192]) + 1
                t = sha3(sha3(stor151, 108))
                s = (2 * ceil32(return_data.size)) + 224
                while (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192] + 224 > s:
                    stor[t] = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3(sha3(stor151, 108)) + (Mask(251, 0, mem[(2 * ceil32(return_data.size)) + 192] + 31) >> 5)
                while sha3(sha3(stor151, 108)) + (stor108[stor151].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            else:
                mem[(2 * ceil32(return_data.size)) + 228] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 260] = 0
                mem[(2 * ceil32(return_data.size)) + 292] = stor151
                mem[(2 * ceil32(return_data.size)) + 324] = 128
                mem[(2 * ceil32(return_data.size)) + 356] = 0
                s = 0
                while s < 0:
                    mem[s + (2 * ceil32(return_data.size)) + 388] = mem[s + (2 * ceil32(return_data.size)) + 192]
                    s = s + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 192] = 164
                mem[(2 * ceil32(return_data.size)) + 224] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 388] = 50
                mem[(2 * ceil32(return_data.size)) + 420 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                if 0 > eth.balance(this.address):
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(msg.sender):
                    revert with 0, 'Address: call to non-contract'
                s = 0
                while s < 164:
                    mem[s + (2 * ceil32(return_data.size)) + 484] = mem[s + (2 * ceil32(return_data.size)) + 224]
                    s = s + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 648] = 0
                call msg.sender.mem[(2 * ceil32(return_data.size)) + 484 len 4] with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(return_data.size)) + 488 len 160]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 484] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 488] = 32
                        idx = 0
                        while idx < 50:
                            mem[idx + (2 * ceil32(return_data.size)) + 552] = mem[idx + (2 * ceil32(return_data.size)) + 420]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 50, mem[(2 * ceil32(return_data.size)) + 552 len 50], 0
                    require ext_call.return_data[0] >= 32
                    require uint32(msg.sender), mem[132 len 28] == msg.sender << 224
                    if msg.sender << 224 != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(sub_0aa73672[idx].length) + 516
                    mem[(2 * ceil32(return_data.size)) + 484] = sub_0aa73672[idx].length
                    mem[0] = sha3(idx, 159)
                    mem[(2 * ceil32(return_data.size)) + 516] = sub_0aa73672[idx]
                    s = (2 * ceil32(return_data.size)) + 516
                    t = sha3(mem[0])
                    while (2 * ceil32(return_data.size)) + sub_0aa73672[idx].length + 484 > s:
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    if not stor103[stor151]:
                        revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                    mem[32] = 108
                    mem[0] = sha3(stor151, 108)
                    stor108[stor151].field_0 = (2 * mem[(2 * ceil32(return_data.size)) + 484]) + 1
                    t = sha3(sha3(stor151, 108))
                    s = (2 * ceil32(return_data.size)) + 516
                    while (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 484] + 516 > s:
                        stor[t] = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(stor151, 108)) + (Mask(251, 0, mem[(2 * ceil32(return_data.size)) + 484] + 31) >> 5)
                    while sha3(sha3(stor151, 108)) + (stor108[stor151].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    mem[(2 * ceil32(return_data.size)) + 484] = return_data.size
                    mem[(2 * ceil32(return_data.size)) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 32
                        idx = 0
                        while idx < 50:
                            mem[idx + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = mem[idx + (2 * ceil32(return_data.size)) + 420]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 50, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 50], 0
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 516] == Mask(32, 224, mem[(2 * ceil32(return_data.size)) + 516])
                    if Mask(32, 224, mem[(2 * ceil32(return_data.size)) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(sub_0aa73672[idx].length) + 517
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] = sub_0aa73672[idx].length
                    mem[0] = sha3(idx, 159)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 517] = sub_0aa73672[idx]
                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 517
                    t = sha3(mem[0])
                    while (2 * ceil32(return_data.size)) + ceil32(return_data.size) + sub_0aa73672[idx].length + 485 > s:
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    if not stor103[stor151]:
                        revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                    mem[32] = 108
                    mem[0] = sha3(stor151, 108)
                    stor108[stor151].field_0 = (2 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 485]) + 1
                    t = sha3(sha3(stor151, 108))
                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 517
                    while (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] + 517 > s:
                        stor[t] = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(stor151, 108)) + (Mask(251, 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] + 31) >> 5)
                    while sha3(sha3(stor151, 108)) + (stor108[stor151].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
        else:
            mem[(2 * ceil32(return_data.size)) + 192] = stor151
            mem[(2 * ceil32(return_data.size)) + 224] = msg.sender
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length].field_0 = stor151
            address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
            Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
            stor103[stor151] = tokenByIndex.length
            emit Transfer(0, msg.sender, stor151);
            if not ext_code.size(msg.sender):
                mem[(2 * ceil32(return_data.size)) + 256] = sub_0aa73672[idx].length
                mem[0] = sha3(idx, 159)
                mem[(2 * ceil32(return_data.size)) + 288] = sub_0aa73672[idx]
                s = (2 * ceil32(return_data.size)) + 288
                t = sha3(mem[0])
                while (2 * ceil32(return_data.size)) + sub_0aa73672[idx].length + 256 > s:
                    mem[s + 32] = stor1[t]
                    s = s + 32
                    t = t + 1
                    continue 
                if not stor103[stor151]:
                    revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                stor108[stor151].field_0 = (2 * mem[(2 * ceil32(return_data.size)) + 256]) + 1
                t = sha3(sha3(stor151, 108))
                s = (2 * ceil32(return_data.size)) + 288
                while (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 288 > s:
                    stor[t] = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3(sha3(stor151, 108)) + (Mask(251, 0, mem[(2 * ceil32(return_data.size)) + 256] + 31) >> 5)
                while sha3(sha3(stor151, 108)) + (stor108[stor151].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            else:
                mem[(2 * ceil32(return_data.size)) + 292] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 324] = 0
                mem[(2 * ceil32(return_data.size)) + 356] = stor151
                mem[(2 * ceil32(return_data.size)) + 388] = 128
                mem[(2 * ceil32(return_data.size)) + 420] = 0
                s = 0
                while s < 0:
                    mem[s + (2 * ceil32(return_data.size)) + 452] = mem[s + (2 * ceil32(return_data.size)) + 192]
                    s = s + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 256] = 164
                mem[(2 * ceil32(return_data.size)) + 288] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 452] = 50
                mem[(2 * ceil32(return_data.size)) + 484 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                if 0 > eth.balance(this.address):
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(msg.sender):
                    revert with 0, 'Address: call to non-contract'
                s = 0
                while s < 164:
                    mem[s + (2 * ceil32(return_data.size)) + 548] = mem[s + (2 * ceil32(return_data.size)) + 288]
                    s = s + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 712] = 0
                call msg.sender.mem[(2 * ceil32(return_data.size)) + 548 len 4] with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(return_data.size)) + 552 len 160]
                if return_data.size:
                    mem[(2 * ceil32(return_data.size)) + 548] = return_data.size
                    mem[(2 * ceil32(return_data.size)) + 580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 32
                        idx = 0
                        while idx < 50:
                            mem[idx + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 617] = mem[idx + (2 * ceil32(return_data.size)) + 484]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 50, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 50], 0
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 580] == Mask(32, 224, mem[(2 * ceil32(return_data.size)) + 580])
                    if Mask(32, 224, mem[(2 * ceil32(return_data.size)) + 580]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549] = sub_0aa73672[idx].length
                    mem[0] = sha3(idx, 159)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 581] = sub_0aa73672[idx]
                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 581
                    t = sha3(mem[0])
                    while (2 * ceil32(return_data.size)) + ceil32(return_data.size) + sub_0aa73672[idx].length + 549 > s:
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    if not stor103[stor151]:
                        revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                    stor108[stor151].field_0 = (2 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549]) + 1
                    t = sha3(sha3(stor151, 108))
                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 581
                    while (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549] + 581 > s:
                        stor[t] = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(stor151, 108)) + (Mask(251, 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549] + 31) >> 5)
                    while sha3(sha3(stor151, 108)) + (stor108[stor151].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 548] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 552] = 32
                        idx = 0
                        while idx < 50:
                            mem[idx + (2 * ceil32(return_data.size)) + 616] = mem[idx + (2 * ceil32(return_data.size)) + 484]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 50, mem[(2 * ceil32(return_data.size)) + 616 len 50], 0
                    require ext_call.return_data[0] >= 32
                    require uint32(msg.sender), mem[132 len 28] == msg.sender << 224
                    if msg.sender << 224 != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(sub_0aa73672[idx].length) + 580
                    mem[(2 * ceil32(return_data.size)) + 548] = sub_0aa73672[idx].length
                    mem[0] = sha3(idx, 159)
                    mem[(2 * ceil32(return_data.size)) + 580] = sub_0aa73672[idx]
                    s = (2 * ceil32(return_data.size)) + 580
                    t = sha3(mem[0])
                    while (2 * ceil32(return_data.size)) + sub_0aa73672[idx].length + 548 > s:
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    if not stor103[stor151]:
                        revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                    mem[32] = 108
                    mem[0] = sha3(stor151, 108)
                    stor108[stor151].field_0 = (2 * mem[(2 * ceil32(return_data.size)) + 548]) + 1
                    t = sha3(sha3(stor151, 108))
                    s = (2 * ceil32(return_data.size)) + 580
                    while (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 548] + 580 > s:
                        stor[t] = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(stor151, 108)) + (Mask(251, 0, mem[(2 * ceil32(return_data.size)) + 548] + 31) >> 5)
                    while sha3(sha3(stor151, 108)) + (stor108[stor151].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
        stor151++
        emit 0x14237066: msg.sender, stor151, idx
        stor152 = 1
    revert with 0, 'No more NFT can be minted'
}

function mintQianNFT() payable {
    mem[64] = 96
    if not stor152:
        revert with 0, 're-entered'
    stor152 = 0
    mem[0] = msg.sender
    mem[32] = 155
    if kunByUser[msg.sender] < qianMintCost:
        revert with 0, 'Insufficient Kun NFT'
    if stor162.length >= qianMax:
        revert with 0, 'No more Qian NFT can be minted'
    idx = 0
    while idx < qianMintCost:
        if 0 >= kunByUser[msg.sender]:
            revert with 0, 'EnumerableSet: index out of bounds'
        mem[0] = kunByUser[msg.sender]
        mem[32] = sha3(msg.sender, 155) + 1
        if not kunByUser[msg.sender][1][kunByUser[msg.sender]]:
            _8754 = mem[64]
            mem[64] = mem[64] + 96
            mem[_8754] = 41
            mem[_8754 + 32 len 41] = 0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
            mem[32] = 103
            if not stor103[stor155[msg.sender]]:
                _8756 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 41
                idx = 0
                while idx < 41:
                    mem[idx + _8756 + 68] = mem[idx + _8754 + 32]
                    idx = idx + 32
                    continue 
                mem[_8756 + 109] = 0
                revert with memory
                  from mem[64]
                   len _8756 + -mem[64] + 132
            require stor103[stor155[msg.sender]] - 1 < tokenByIndex.length
            mem[0] = kunByUser[msg.sender]
            mem[32] = 104
            approved[stor155[msg.sender]] = 0
            if not address(tokenByIndex[stor103[stor155[msg.sender]] - 1].field_256):
                _8795 = mem[64]
                mem[64] = mem[64] + 96
                mem[_8795] = 41
                mem[_8795 + 32 len 41] = 0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                mem[32] = 103
                if not stor103[stor155[msg.sender]]:
                    _8804 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 41
                    idx = 0
                    while idx < 41:
                        mem[idx + _8804 + 68] = mem[idx + _8795 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8804 + 109] = 0
                    revert with memory
                      from mem[64]
                       len _8804 + -mem[64] + 132
            else:
                _8801 = mem[64]
                mem[64] = mem[64] + 96
                mem[_8801] = 41
                mem[_8801 + 32 len 41] = 0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                mem[32] = 103
                if not stor103[stor155[msg.sender]]:
                    _8809 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 41
                    idx = 0
                    while idx < 41:
                        mem[idx + _8809 + 68] = mem[idx + _8801 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8809 + 109] = 0
                    revert with memory
                      from mem[64]
                       len _8809 + -mem[64] + 132
        else:
            require kunByUser[msg.sender] - 1 < kunByUser[msg.sender]
            require kunByUser[msg.sender][1][kunByUser[msg.sender]] - 1 < kunByUser[msg.sender]
            kunByUser[msg.sender][kunByUser[msg.sender][1][kunByUser[msg.sender]]] = kunByUser[msg.sender][kunByUser[msg.sender]]
            kunByUser[msg.sender][1][kunByUser[msg.sender][kunByUser[msg.sender]]] = kunByUser[msg.sender][1][kunByUser[msg.sender]]
            require kunByUser[msg.sender]
            kunByUser[msg.sender][kunByUser[msg.sender]] = 0
            kunByUser[msg.sender]--
            mem[0] = kunByUser[msg.sender]
            mem[32] = sha3(msg.sender, 155) + 1
            kunByUser[msg.sender][1][kunByUser[msg.sender]] = 0
            _8757 = mem[64]
            mem[64] = mem[64] + 96
            mem[_8757] = 41
            mem[_8757 + 32 len 41] = 0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
            mem[32] = 103
            if not stor103[stor155[msg.sender]]:
                _8769 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 41
                idx = 0
                while idx < 41:
                    mem[idx + _8769 + 68] = mem[idx + _8757 + 32]
                    idx = idx + 32
                    continue 
                mem[_8769 + 109] = 0
                revert with memory
                  from mem[64]
                   len _8769 + -mem[64] + 132
            require stor103[stor155[msg.sender]] - 1 < tokenByIndex.length
            mem[0] = kunByUser[msg.sender]
            mem[32] = 104
            approved[stor155[msg.sender]] = 0
            if not address(tokenByIndex[stor103[stor155[msg.sender]] - 1].field_256):
                _8806 = mem[64]
                mem[64] = mem[64] + 96
                mem[_8806] = 41
                mem[_8806 + 32 len 41] = 0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                mem[32] = 103
                if not stor103[stor155[msg.sender]]:
                    _8819 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 41
                    idx = 0
                    while idx < 41:
                        mem[idx + _8819 + 68] = mem[idx + _8806 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8819 + 109] = 0
                    revert with memory
                      from mem[64]
                       len _8819 + -mem[64] + 132
            else:
                _8810 = mem[64]
                mem[64] = mem[64] + 96
                mem[_8810] = 41
                mem[_8810 + 32 len 41] = 0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                mem[32] = 103
                if not stor103[stor155[msg.sender]]:
                    _8822 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 41
                    idx = 0
                    while idx < 41:
                        mem[idx + _8822 + 68] = mem[idx + _8810 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8822 + 109] = 0
                    revert with memory
                      from mem[64]
                       len _8822 + -mem[64] + 132
        ('stor', ('map', ('stor', ('map', 'msg.sender', ('name', 'stor155', 155))), ('name', 'stor103', 103)))
        require stor103[stor155[msg.sender]] - 1 < tokenByIndex.length
        emit Approval(address(tokenByIndex[stor103[stor155[msg.sender]] - 1].field_256), 0, kunByUser[msg.sender]);
        if Mask(255, 1, stor108[stor155[msg.sender]].field_0 and (256 * not bool(stor108[stor155[msg.sender]].field_0)) - 1):
            stor108[stor155[msg.sender]].field_0 = 0
            if 31 < stor108[stor155[msg.sender]].length:
                s = sha3(sha3(kunByUser[msg.sender], 108))
                while sha3(sha3(kunByUser[msg.sender], 108)) + (stor108[stor155[msg.sender]].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
        if tokenOfOwnerByIndex[address(stor102[stor103[stor155[msg.sender]] - 1].field_256)][1][stor155[msg.sender]]:
            require tokenOfOwnerByIndex[address(stor102[stor103[stor155[msg.sender]] - 1].field_256)] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[stor155[msg.sender]] - 1].field_256)]
            require tokenOfOwnerByIndex[address(stor102[stor103[stor155[msg.sender]] - 1].field_256)][1][stor155[msg.sender]] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[stor155[msg.sender]] - 1].field_256)]
            tokenOfOwnerByIndex[address(stor102[stor103[stor155[msg.sender]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[stor155[msg.sender]] - 1].field_256)][1][stor155[msg.sender]]] = tokenOfOwnerByIndex[address(stor102[stor103[stor155[msg.sender]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[stor155[msg.sender]] - 1].field_256)]]
            tokenOfOwnerByIndex[address(stor102[stor103[stor155[msg.sender]] - 1].field_256)][1][tokenOfOwnerByIndex[address(stor102[stor103[stor155[msg.sender]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[stor155[msg.sender]] - 1].field_256)]]] = tokenOfOwnerByIndex[address(stor102[stor103[stor155[msg.sender]] - 1].field_256)][1][stor155[msg.sender]]
            require tokenOfOwnerByIndex[address(stor102[stor103[stor155[msg.sender]] - 1].field_256)]
            tokenOfOwnerByIndex[address(stor102[stor103[stor155[msg.sender]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[stor155[msg.sender]] - 1].field_256)]] = 0
            tokenOfOwnerByIndex[address(stor102[stor103[stor155[msg.sender]] - 1].field_256)]--
            tokenOfOwnerByIndex[address(stor102[stor103[stor155[msg.sender]] - 1].field_256)][1][stor155[msg.sender]] = 0
        mem[0] = kunByUser[msg.sender]
        mem[32] = 103
        if stor103[stor155[msg.sender]]:
            require tokenByIndex.length - 1 < tokenByIndex.length
            require stor103[stor155[msg.sender]] - 1 < tokenByIndex.length
            tokenByIndex[stor103[stor155[msg.sender]] - 1].field_0 = tokenByIndex[tokenByIndex.length - 1].field_0
            tokenByIndex[stor103[stor155[msg.sender]] - 1].field_256 = tokenByIndex[tokenByIndex.length - 1].field_256
            stor103[stor102[stor102.length - 1].field_0] = stor103[stor155[msg.sender]]
            require tokenByIndex.length
            tokenByIndex[tokenByIndex.length - 1].field_0 = 0
            tokenByIndex[tokenByIndex.length - 1].field_256 = 0
            tokenByIndex.length--
            mem[0] = kunByUser[msg.sender]
            mem[32] = 103
            stor103[stor155[msg.sender]] = 0
        emit Transfer(address(tokenByIndex[stor103[stor155[msg.sender]] - 1].field_256), 0, kunByUser[msg.sender]);
        idx = idx + 1
        continue 
    if qianByUser[msg.sender][1][stor151]:
        if stor163[stor151]:
            mem[0] = stor151
            nftIdToTypeId[stor151] = 13
            _8763 = mem[64]
            mem[64] = mem[64] + 32
            mem[_8763] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if stor103[stor151]:
                revert with 0, 'ERC721: token already minted'
            if tokenOfOwnerByIndex[address(msg.sender)][1][stor151]:
                mem[0] = stor151
                mem[32] = 103
                if stor103[stor151]:
                    require stor103[stor151] - 1 < tokenByIndex.length
                    mem[0] = 102
                    address(tokenByIndex[stor103[stor151] - 1].field_256) = msg.sender
                    Mask(96, 0, tokenByIndex[stor103[stor151] - 1].field_416) = 0
                    emit Transfer(0, msg.sender, stor151);
                    if not ext_code.size(msg.sender):
                        mem[32] = 159
                        _9205 = mem[64]
                        mem[64] = mem[64] + ceil32(stor17BC.length) + 32
                        mem[_9205 + 32] = uint256(stor17BC.field_0)
                        idx = _9205 + 32
                        s = 0
                        while _9205 + stor17BC.length > idx:
                            mem[idx + 32] = stor17BC[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if not stor103[stor151]:
                            revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                        mem[32] = 108
                        stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9205 + 32 len stor17BC.length])
                    else:
                        _9123 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = stor151
                        mem[mem[64] + 132] = 128
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196 len 0] = None
                        _17516 = mem[64]
                        mem[mem[64]] = 164
                        mem[mem[64] + 32 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                        mem[64] = mem[64] + 292
                        mem[_9123 + 196] = 50
                        mem[_9123 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if 0 > eth.balance(this.address):
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(msg.sender):
                            revert with 0, 'Address: call to non-contract'
                        _18032 = mem[_17516]
                        mem[_9123 + 292 len ceil32(mem[_17516])] = mem[_17516 + 32 len ceil32(mem[_17516])]
                        if ceil32(_18032) > _18032:
                            mem[_18032 + _9123 + 292] = 0
                        call msg.sender with:
                             gas gas_remaining wei
                            args mem[_9123 + 296 len _18032 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 
                                            32,
                                            50,
                                            0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_9123 + 278 len 14] >> 144,
                                            0
                            require mem[96] >= 32
                            require mem[128] == Mask(32, 224, mem[128])
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[_9123 + 324] = uint256(stor17BC.field_0)
                            idx = _9123 + 324
                            s = 0
                            while _9123 + stor17BC.length + 292 > idx:
                                mem[idx + 32] = stor17BC[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if not stor103[stor151]:
                                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                            stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9123 + 324 len stor17BC.length])
                        else:
                            mem[_9123 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_9123 + 278 len 14] >> 144,
                                            0
                            require return_data.size >= 32
                            require mem[_9123 + 324] == Mask(32, 224, mem[_9123 + 324])
                            if Mask(32, 224, mem[_9123 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[_9123 + ceil32(return_data.size) + 325] = uint256(stor17BC.field_0)
                            idx = _9123 + ceil32(return_data.size) + 325
                            s = 0
                            while _9123 + ceil32(return_data.size) + stor17BC.length + 293 > idx:
                                mem[idx + 32] = stor17BC[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if not stor103[stor151]:
                                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                            stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9123 + ceil32(return_data.size) + 325 len stor17BC.length])
                else:
                    _8903 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8903] = stor151
                    mem[_8903 + 32] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = stor151
                    address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                    mem[0] = stor151
                    mem[32] = 103
                    stor103[stor151] = tokenByIndex.length
                    emit Transfer(0, msg.sender, stor151);
                    if not ext_code.size(msg.sender):
                        mem[32] = 159
                        _9176 = mem[64]
                        mem[64] = mem[64] + ceil32(stor17BC.length) + 32
                        mem[_9176 + 32] = uint256(stor17BC.field_0)
                        idx = _9176 + 32
                        s = 0
                        while _9176 + stor17BC.length > idx:
                            mem[idx + 32] = stor17BC[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if not stor103[stor151]:
                            revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                        mem[32] = 108
                        stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9176 + 32 len stor17BC.length])
                    else:
                        _9098 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = stor151
                        mem[mem[64] + 132] = 128
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196 len 0] = None
                        _17522 = mem[64]
                        mem[mem[64]] = 164
                        mem[mem[64] + 32 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                        mem[64] = mem[64] + 292
                        mem[_9098 + 196] = 50
                        mem[_9098 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if 0 > eth.balance(this.address):
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(msg.sender):
                            revert with 0, 'Address: call to non-contract'
                        _18035 = mem[_17522]
                        mem[_9098 + 292 len ceil32(mem[_17522])] = mem[_17522 + 32 len ceil32(mem[_17522])]
                        if ceil32(_18035) > _18035:
                            mem[_18035 + _9098 + 292] = 0
                        call msg.sender with:
                             gas gas_remaining wei
                            args mem[_9098 + 296 len _18035 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 
                                            32,
                                            50,
                                            0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_9098 + 278 len 14] >> 144,
                                            0
                            require mem[96] >= 32
                            require mem[128] == Mask(32, 224, mem[128])
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[_9098 + 324] = uint256(stor17BC.field_0)
                            idx = _9098 + 324
                            s = 0
                            while _9098 + stor17BC.length + 292 > idx:
                                mem[idx + 32] = stor17BC[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if not stor103[stor151]:
                                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                            stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9098 + 324 len stor17BC.length])
                        else:
                            mem[_9098 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_9098 + 278 len 14] >> 144,
                                            0
                            require return_data.size >= 32
                            require mem[_9098 + 324] == Mask(32, 224, mem[_9098 + 324])
                            if Mask(32, 224, mem[_9098 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[_9098 + ceil32(return_data.size) + 325] = uint256(stor17BC.field_0)
                            idx = _9098 + ceil32(return_data.size) + 325
                            s = 0
                            while _9098 + ceil32(return_data.size) + stor17BC.length + 293 > idx:
                                mem[idx + 32] = stor17BC[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if not stor103[stor151]:
                                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                            stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9098 + ceil32(return_data.size) + 325 len stor17BC.length])
            else:
                tokenOfOwnerByIndex[address(msg.sender)]++
                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor151
                tokenOfOwnerByIndex[address(msg.sender)][1][stor151] = tokenOfOwnerByIndex[address(msg.sender)]
                mem[0] = stor151
                mem[32] = 103
                if stor103[stor151]:
                    require stor103[stor151] - 1 < tokenByIndex.length
                    mem[0] = 102
                    address(tokenByIndex[stor103[stor151] - 1].field_256) = msg.sender
                    Mask(96, 0, tokenByIndex[stor103[stor151] - 1].field_416) = 0
                    emit Transfer(0, msg.sender, stor151);
                    if not ext_code.size(msg.sender):
                        mem[32] = 159
                        _9206 = mem[64]
                        mem[64] = mem[64] + ceil32(stor17BC.length) + 32
                        mem[_9206 + 32] = uint256(stor17BC.field_0)
                        idx = _9206 + 32
                        s = 0
                        while _9206 + stor17BC.length > idx:
                            mem[idx + 32] = stor17BC[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if not stor103[stor151]:
                            revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                        mem[32] = 108
                        stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9206 + 32 len stor17BC.length])
                    else:
                        _9124 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = stor151
                        mem[mem[64] + 132] = 128
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196 len 0] = None
                        _17528 = mem[64]
                        mem[mem[64]] = 164
                        mem[mem[64] + 32 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                        mem[64] = mem[64] + 292
                        mem[_9124 + 196] = 50
                        mem[_9124 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if 0 > eth.balance(this.address):
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(msg.sender):
                            revert with 0, 'Address: call to non-contract'
                        _18038 = mem[_17528]
                        mem[_9124 + 292 len ceil32(mem[_17528])] = mem[_17528 + 32 len ceil32(mem[_17528])]
                        if ceil32(_18038) > _18038:
                            mem[_18038 + _9124 + 292] = 0
                        call msg.sender with:
                             gas gas_remaining wei
                            args mem[_9124 + 296 len _18038 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 
                                            32,
                                            50,
                                            0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_9124 + 278 len 14] >> 144,
                                            0
                            require mem[96] >= 32
                            require mem[128] == Mask(32, 224, mem[128])
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[_9124 + 324] = uint256(stor17BC.field_0)
                            idx = _9124 + 324
                            s = 0
                            while _9124 + stor17BC.length + 292 > idx:
                                mem[idx + 32] = stor17BC[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if not stor103[stor151]:
                                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                            stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9124 + 324 len stor17BC.length])
                        else:
                            mem[_9124 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_9124 + 278 len 14] >> 144,
                                            0
                            require return_data.size >= 32
                            require mem[_9124 + 324] == Mask(32, 224, mem[_9124 + 324])
                            if Mask(32, 224, mem[_9124 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[_9124 + ceil32(return_data.size) + 325] = uint256(stor17BC.field_0)
                            idx = _9124 + ceil32(return_data.size) + 325
                            s = 0
                            while _9124 + ceil32(return_data.size) + stor17BC.length + 293 > idx:
                                mem[idx + 32] = stor17BC[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if not stor103[stor151]:
                                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                            stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9124 + ceil32(return_data.size) + 325 len stor17BC.length])
                else:
                    _8908 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8908] = stor151
                    mem[_8908 + 32] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = stor151
                    address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                    mem[0] = stor151
                    mem[32] = 103
                    stor103[stor151] = tokenByIndex.length
                    emit Transfer(0, msg.sender, stor151);
                    if not ext_code.size(msg.sender):
                        mem[32] = 159
                        _9178 = mem[64]
                        mem[64] = mem[64] + ceil32(stor17BC.length) + 32
                        mem[_9178 + 32] = uint256(stor17BC.field_0)
                        idx = _9178 + 32
                        s = 0
                        while _9178 + stor17BC.length > idx:
                            mem[idx + 32] = stor17BC[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if not stor103[stor151]:
                            revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                        mem[32] = 108
                        stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9178 + 32 len stor17BC.length])
                    else:
                        _9099 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = stor151
                        mem[mem[64] + 132] = 128
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196 len 0] = None
                        _17534 = mem[64]
                        mem[mem[64]] = 164
                        mem[mem[64] + 32 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                        mem[64] = mem[64] + 292
                        mem[_9099 + 196] = 50
                        mem[_9099 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if 0 > eth.balance(this.address):
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(msg.sender):
                            revert with 0, 'Address: call to non-contract'
                        _18041 = mem[_17534]
                        mem[_9099 + 292 len ceil32(mem[_17534])] = mem[_17534 + 32 len ceil32(mem[_17534])]
                        if ceil32(_18041) > _18041:
                            mem[_18041 + _9099 + 292] = 0
                        call msg.sender with:
                             gas gas_remaining wei
                            args mem[_9099 + 296 len _18041 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 
                                            32,
                                            50,
                                            0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_9099 + 278 len 14] >> 144,
                                            0
                            require mem[96] >= 32
                            require mem[128] == Mask(32, 224, mem[128])
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[_9099 + 324] = uint256(stor17BC.field_0)
                            idx = _9099 + 324
                            s = 0
                            while _9099 + stor17BC.length + 292 > idx:
                                mem[idx + 32] = stor17BC[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if not stor103[stor151]:
                                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                            stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9099 + 324 len stor17BC.length])
                        else:
                            mem[_9099 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_9099 + 278 len 14] >> 144,
                                            0
                            require return_data.size >= 32
                            require mem[_9099 + 324] == Mask(32, 224, mem[_9099 + 324])
                            if Mask(32, 224, mem[_9099 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[_9099 + ceil32(return_data.size) + 325] = uint256(stor17BC.field_0)
                            idx = _9099 + ceil32(return_data.size) + 325
                            s = 0
                            while _9099 + ceil32(return_data.size) + stor17BC.length + 293 > idx:
                                mem[idx + 32] = stor17BC[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if not stor103[stor151]:
                                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                            stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9099 + ceil32(return_data.size) + 325 len stor17BC.length])
        else:
            stor162.length++
            stor162[stor162.length] = stor151
            stor163[stor151] = stor162.length
            mem[0] = stor151
            nftIdToTypeId[stor151] = 13
            _8764 = mem[64]
            mem[64] = mem[64] + 32
            mem[_8764] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if stor103[stor151]:
                revert with 0, 'ERC721: token already minted'
            if tokenOfOwnerByIndex[address(msg.sender)][1][stor151]:
                mem[0] = stor151
                mem[32] = 103
                if stor103[stor151]:
                    require stor103[stor151] - 1 < tokenByIndex.length
                    mem[0] = 102
                    address(tokenByIndex[stor103[stor151] - 1].field_256) = msg.sender
                    Mask(96, 0, tokenByIndex[stor103[stor151] - 1].field_416) = 0
                    emit Transfer(0, msg.sender, stor151);
                    if not ext_code.size(msg.sender):
                        mem[32] = 159
                        _9207 = mem[64]
                        mem[64] = mem[64] + ceil32(stor17BC.length) + 32
                        mem[_9207 + 32] = uint256(stor17BC.field_0)
                        idx = _9207 + 32
                        s = 0
                        while _9207 + stor17BC.length > idx:
                            mem[idx + 32] = stor17BC[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if not stor103[stor151]:
                            revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                        mem[32] = 108
                        stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9207 + 32 len stor17BC.length])
                    else:
                        _9125 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = stor151
                        mem[mem[64] + 132] = 128
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196 len 0] = None
                        _17540 = mem[64]
                        mem[mem[64]] = 164
                        mem[mem[64] + 32 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                        mem[64] = mem[64] + 292
                        mem[_9125 + 196] = 50
                        mem[_9125 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if 0 > eth.balance(this.address):
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(msg.sender):
                            revert with 0, 'Address: call to non-contract'
                        _18044 = mem[_17540]
                        mem[_9125 + 292 len ceil32(mem[_17540])] = mem[_17540 + 32 len ceil32(mem[_17540])]
                        if ceil32(_18044) > _18044:
                            mem[_18044 + _9125 + 292] = 0
                        call msg.sender with:
                             gas gas_remaining wei
                            args mem[_9125 + 296 len _18044 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 
                                            32,
                                            50,
                                            0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_9125 + 278 len 14] >> 144,
                                            0
                            require mem[96] >= 32
                            require mem[128] == Mask(32, 224, mem[128])
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[_9125 + 324] = uint256(stor17BC.field_0)
                            idx = _9125 + 324
                            s = 0
                            while _9125 + stor17BC.length + 292 > idx:
                                mem[idx + 32] = stor17BC[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if not stor103[stor151]:
                                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                            stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9125 + 324 len stor17BC.length])
                        else:
                            mem[_9125 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_9125 + 278 len 14] >> 144,
                                            0
                            require return_data.size >= 32
                            require mem[_9125 + 324] == Mask(32, 224, mem[_9125 + 324])
                            if Mask(32, 224, mem[_9125 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[_9125 + ceil32(return_data.size) + 325] = uint256(stor17BC.field_0)
                            idx = _9125 + ceil32(return_data.size) + 325
                            s = 0
                            while _9125 + ceil32(return_data.size) + stor17BC.length + 293 > idx:
                                mem[idx + 32] = stor17BC[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if not stor103[stor151]:
                                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                            stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9125 + ceil32(return_data.size) + 325 len stor17BC.length])
                else:
                    _8913 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8913] = stor151
                    mem[_8913 + 32] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = stor151
                    address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                    mem[0] = stor151
                    mem[32] = 103
                    stor103[stor151] = tokenByIndex.length
                    emit Transfer(0, msg.sender, stor151);
                    if not ext_code.size(msg.sender):
                        mem[32] = 159
                        _9180 = mem[64]
                        mem[64] = mem[64] + ceil32(stor17BC.length) + 32
                        mem[_9180 + 32] = uint256(stor17BC.field_0)
                        idx = _9180 + 32
                        s = 0
                        while _9180 + stor17BC.length > idx:
                            mem[idx + 32] = stor17BC[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if not stor103[stor151]:
                            revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                        mem[32] = 108
                        stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9180 + 32 len stor17BC.length])
                    else:
                        _9100 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = stor151
                        mem[mem[64] + 132] = 128
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196 len 0] = None
                        _17546 = mem[64]
                        mem[mem[64]] = 164
                        mem[mem[64] + 32 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                        mem[64] = mem[64] + 292
                        mem[_9100 + 196] = 50
                        mem[_9100 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if 0 > eth.balance(this.address):
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(msg.sender):
                            revert with 0, 'Address: call to non-contract'
                        _18047 = mem[_17546]
                        mem[_9100 + 292 len ceil32(mem[_17546])] = mem[_17546 + 32 len ceil32(mem[_17546])]
                        if ceil32(_18047) > _18047:
                            mem[_18047 + _9100 + 292] = 0
                        call msg.sender with:
                             gas gas_remaining wei
                            args mem[_9100 + 296 len _18047 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 
                                            32,
                                            50,
                                            0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_9100 + 278 len 14] >> 144,
                                            0
                            require mem[96] >= 32
                            require mem[128] == Mask(32, 224, mem[128])
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[_9100 + 324] = uint256(stor17BC.field_0)
                            idx = _9100 + 324
                            s = 0
                            while _9100 + stor17BC.length + 292 > idx:
                                mem[idx + 32] = stor17BC[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if not stor103[stor151]:
                                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                            stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9100 + 324 len stor17BC.length])
                        else:
                            mem[_9100 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_9100 + 278 len 14] >> 144,
                                            0
                            require return_data.size >= 32
                            require mem[_9100 + 324] == Mask(32, 224, mem[_9100 + 324])
                            if Mask(32, 224, mem[_9100 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[_9100 + ceil32(return_data.size) + 325] = uint256(stor17BC.field_0)
                            idx = _9100 + ceil32(return_data.size) + 325
                            s = 0
                            while _9100 + ceil32(return_data.size) + stor17BC.length + 293 > idx:
                                mem[idx + 32] = stor17BC[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if not stor103[stor151]:
                                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                            stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9100 + ceil32(return_data.size) + 325 len stor17BC.length])
            else:
                tokenOfOwnerByIndex[address(msg.sender)]++
                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor151
                tokenOfOwnerByIndex[address(msg.sender)][1][stor151] = tokenOfOwnerByIndex[address(msg.sender)]
                mem[0] = stor151
                mem[32] = 103
                if stor103[stor151]:
                    require stor103[stor151] - 1 < tokenByIndex.length
                    mem[0] = 102
                    address(tokenByIndex[stor103[stor151] - 1].field_256) = msg.sender
                    Mask(96, 0, tokenByIndex[stor103[stor151] - 1].field_416) = 0
                    emit Transfer(0, msg.sender, stor151);
                    if not ext_code.size(msg.sender):
                        mem[32] = 159
                        _9208 = mem[64]
                        mem[64] = mem[64] + ceil32(stor17BC.length) + 32
                        mem[_9208 + 32] = uint256(stor17BC.field_0)
                        idx = _9208 + 32
                        s = 0
                        while _9208 + stor17BC.length > idx:
                            mem[idx + 32] = stor17BC[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if not stor103[stor151]:
                            revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                        mem[32] = 108
                        stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9208 + 32 len stor17BC.length])
                    else:
                        _9126 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = stor151
                        mem[mem[64] + 132] = 128
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196 len 0] = None
                        _17552 = mem[64]
                        mem[mem[64]] = 164
                        mem[mem[64] + 32 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                        mem[64] = mem[64] + 292
                        mem[_9126 + 196] = 50
                        mem[_9126 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if 0 > eth.balance(this.address):
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(msg.sender):
                            revert with 0, 'Address: call to non-contract'
                        _18050 = mem[_17552]
                        mem[_9126 + 292 len ceil32(mem[_17552])] = mem[_17552 + 32 len ceil32(mem[_17552])]
                        if ceil32(_18050) > _18050:
                            mem[_18050 + _9126 + 292] = 0
                        call msg.sender with:
                             gas gas_remaining wei
                            args mem[_9126 + 296 len _18050 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 
                                            32,
                                            50,
                                            0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_9126 + 278 len 14] >> 144,
                                            0
                            require mem[96] >= 32
                            require mem[128] == Mask(32, 224, mem[128])
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[_9126 + 324] = uint256(stor17BC.field_0)
                            idx = _9126 + 324
                            s = 0
                            while _9126 + stor17BC.length + 292 > idx:
                                mem[idx + 32] = stor17BC[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if not stor103[stor151]:
                                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                            stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9126 + 324 len stor17BC.length])
                        else:
                            mem[_9126 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_9126 + 278 len 14] >> 144,
                                            0
                            require return_data.size >= 32
                            require mem[_9126 + 324] == Mask(32, 224, mem[_9126 + 324])
                            if Mask(32, 224, mem[_9126 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[_9126 + ceil32(return_data.size) + 325] = uint256(stor17BC.field_0)
                            idx = _9126 + ceil32(return_data.size) + 325
                            s = 0
                            while _9126 + ceil32(return_data.size) + stor17BC.length + 293 > idx:
                                mem[idx + 32] = stor17BC[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if not stor103[stor151]:
                                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                            stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9126 + ceil32(return_data.size) + 325 len stor17BC.length])
                else:
                    _8918 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8918] = stor151
                    mem[_8918 + 32] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = stor151
                    address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                    mem[0] = stor151
                    mem[32] = 103
                    stor103[stor151] = tokenByIndex.length
                    emit Transfer(0, msg.sender, stor151);
                    if not ext_code.size(msg.sender):
                        mem[32] = 159
                        _9182 = mem[64]
                        mem[64] = mem[64] + ceil32(stor17BC.length) + 32
                        mem[_9182 + 32] = uint256(stor17BC.field_0)
                        idx = _9182 + 32
                        s = 0
                        while _9182 + stor17BC.length > idx:
                            mem[idx + 32] = stor17BC[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if not stor103[stor151]:
                            revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                        mem[32] = 108
                        stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9182 + 32 len stor17BC.length])
                    else:
                        _9101 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = stor151
                        mem[mem[64] + 132] = 128
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196 len 0] = None
                        _17558 = mem[64]
                        mem[mem[64]] = 164
                        mem[mem[64] + 32 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                        mem[64] = mem[64] + 292
                        mem[_9101 + 196] = 50
                        mem[_9101 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if 0 > eth.balance(this.address):
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(msg.sender):
                            revert with 0, 'Address: call to non-contract'
                        _18053 = mem[_17558]
                        mem[_9101 + 292 len ceil32(mem[_17558])] = mem[_17558 + 32 len ceil32(mem[_17558])]
                        if ceil32(_18053) > _18053:
                            mem[_18053 + _9101 + 292] = 0
                        call msg.sender with:
                             gas gas_remaining wei
                            args mem[_9101 + 296 len _18053 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 
                                            32,
                                            50,
                                            0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_9101 + 278 len 14] >> 144,
                                            0
                            require mem[96] >= 32
                            require mem[128] == Mask(32, 224, mem[128])
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[_9101 + 324] = uint256(stor17BC.field_0)
                            idx = _9101 + 324
                            s = 0
                            while _9101 + stor17BC.length + 292 > idx:
                                mem[idx + 32] = stor17BC[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if not stor103[stor151]:
                                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                            stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9101 + 324 len stor17BC.length])
                        else:
                            mem[_9101 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_9101 + 278 len 14] >> 144,
                                            0
                            require return_data.size >= 32
                            require mem[_9101 + 324] == Mask(32, 224, mem[_9101 + 324])
                            if Mask(32, 224, mem[_9101 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[_9101 + ceil32(return_data.size) + 325] = uint256(stor17BC.field_0)
                            idx = _9101 + ceil32(return_data.size) + 325
                            s = 0
                            while _9101 + ceil32(return_data.size) + stor17BC.length + 293 > idx:
                                mem[idx + 32] = stor17BC[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if not stor103[stor151]:
                                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                            stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9101 + ceil32(return_data.size) + 325 len stor17BC.length])
    else:
        qianByUser[msg.sender]++
        qianByUser[msg.sender][qianByUser[msg.sender]] = stor151
        qianByUser[msg.sender][1][stor151] = qianByUser[msg.sender]
        if stor163[stor151]:
            mem[0] = stor151
            nftIdToTypeId[stor151] = 13
            _8765 = mem[64]
            mem[64] = mem[64] + 32
            mem[_8765] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if stor103[stor151]:
                revert with 0, 'ERC721: token already minted'
            if tokenOfOwnerByIndex[address(msg.sender)][1][stor151]:
                mem[0] = stor151
                mem[32] = 103
                if stor103[stor151]:
                    require stor103[stor151] - 1 < tokenByIndex.length
                    mem[0] = 102
                    address(tokenByIndex[stor103[stor151] - 1].field_256) = msg.sender
                    Mask(96, 0, tokenByIndex[stor103[stor151] - 1].field_416) = 0
                    emit Transfer(0, msg.sender, stor151);
                    if not ext_code.size(msg.sender):
                        mem[32] = 159
                        _9209 = mem[64]
                        mem[64] = mem[64] + ceil32(stor17BC.length) + 32
                        mem[_9209 + 32] = uint256(stor17BC.field_0)
                        idx = _9209 + 32
                        s = 0
                        while _9209 + stor17BC.length > idx:
                            mem[idx + 32] = stor17BC[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if not stor103[stor151]:
                            revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                        mem[32] = 108
                        stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9209 + 32 len stor17BC.length])
                    else:
                        _9127 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = stor151
                        mem[mem[64] + 132] = 128
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196 len 0] = None
                        _17564 = mem[64]
                        mem[mem[64]] = 164
                        mem[mem[64] + 32 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                        mem[64] = mem[64] + 292
                        mem[_9127 + 196] = 50
                        mem[_9127 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if 0 > eth.balance(this.address):
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(msg.sender):
                            revert with 0, 'Address: call to non-contract'
                        _18056 = mem[_17564]
                        mem[_9127 + 292 len ceil32(mem[_17564])] = mem[_17564 + 32 len ceil32(mem[_17564])]
                        if ceil32(_18056) > _18056:
                            mem[_18056 + _9127 + 292] = 0
                        call msg.sender with:
                             gas gas_remaining wei
                            args mem[_9127 + 296 len _18056 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 
                                            32,
                                            50,
                                            0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_9127 + 278 len 14] >> 144,
                                            0
                            require mem[96] >= 32
                            require mem[128] == Mask(32, 224, mem[128])
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[_9127 + 324] = uint256(stor17BC.field_0)
                            idx = _9127 + 324
                            s = 0
                            while _9127 + stor17BC.length + 292 > idx:
                                mem[idx + 32] = stor17BC[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if not stor103[stor151]:
                                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                            stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9127 + 324 len stor17BC.length])
                        else:
                            mem[_9127 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_9127 + 278 len 14] >> 144,
                                            0
                            require return_data.size >= 32
                            require mem[_9127 + 324] == Mask(32, 224, mem[_9127 + 324])
                            if Mask(32, 224, mem[_9127 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[_9127 + ceil32(return_data.size) + 325] = uint256(stor17BC.field_0)
                            idx = _9127 + ceil32(return_data.size) + 325
                            s = 0
                            while _9127 + ceil32(return_data.size) + stor17BC.length + 293 > idx:
                                mem[idx + 32] = stor17BC[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if not stor103[stor151]:
                                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                            stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9127 + ceil32(return_data.size) + 325 len stor17BC.length])
                else:
                    _8923 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8923] = stor151
                    mem[_8923 + 32] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = stor151
                    address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                    mem[0] = stor151
                    mem[32] = 103
                    stor103[stor151] = tokenByIndex.length
                    emit Transfer(0, msg.sender, stor151);
                    if not ext_code.size(msg.sender):
                        mem[32] = 159
                        _9184 = mem[64]
                        mem[64] = mem[64] + ceil32(stor17BC.length) + 32
                        mem[_9184 + 32] = uint256(stor17BC.field_0)
                        idx = _9184 + 32
                        s = 0
                        while _9184 + stor17BC.length > idx:
                            mem[idx + 32] = stor17BC[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if not stor103[stor151]:
                            revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                        mem[32] = 108
                        stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9184 + 32 len stor17BC.length])
                    else:
                        _9102 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = stor151
                        mem[mem[64] + 132] = 128
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196 len 0] = None
                        _17570 = mem[64]
                        mem[mem[64]] = 164
                        mem[mem[64] + 32 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                        mem[64] = mem[64] + 292
                        mem[_9102 + 196] = 50
                        mem[_9102 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if 0 > eth.balance(this.address):
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(msg.sender):
                            revert with 0, 'Address: call to non-contract'
                        _18059 = mem[_17570]
                        mem[_9102 + 292 len ceil32(mem[_17570])] = mem[_17570 + 32 len ceil32(mem[_17570])]
                        if ceil32(_18059) > _18059:
                            mem[_18059 + _9102 + 292] = 0
                        call msg.sender with:
                             gas gas_remaining wei
                            args mem[_9102 + 296 len _18059 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 
                                            32,
                                            50,
                                            0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_9102 + 278 len 14] >> 144,
                                            0
                            require mem[96] >= 32
                            require mem[128] == Mask(32, 224, mem[128])
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[_9102 + 324] = uint256(stor17BC.field_0)
                            idx = _9102 + 324
                            s = 0
                            while _9102 + stor17BC.length + 292 > idx:
                                mem[idx + 32] = stor17BC[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if not stor103[stor151]:
                                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                            stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9102 + 324 len stor17BC.length])
                        else:
                            mem[_9102 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_9102 + 278 len 14] >> 144,
                                            0
                            require return_data.size >= 32
                            require mem[_9102 + 324] == Mask(32, 224, mem[_9102 + 324])
                            if Mask(32, 224, mem[_9102 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[_9102 + ceil32(return_data.size) + 325] = uint256(stor17BC.field_0)
                            idx = _9102 + ceil32(return_data.size) + 325
                            s = 0
                            while _9102 + ceil32(return_data.size) + stor17BC.length + 293 > idx:
                                mem[idx + 32] = stor17BC[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if not stor103[stor151]:
                                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                            stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9102 + ceil32(return_data.size) + 325 len stor17BC.length])
            else:
                tokenOfOwnerByIndex[address(msg.sender)]++
                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor151
                tokenOfOwnerByIndex[address(msg.sender)][1][stor151] = tokenOfOwnerByIndex[address(msg.sender)]
                mem[0] = stor151
                mem[32] = 103
                if stor103[stor151]:
                    require stor103[stor151] - 1 < tokenByIndex.length
                    mem[0] = 102
                    address(tokenByIndex[stor103[stor151] - 1].field_256) = msg.sender
                    Mask(96, 0, tokenByIndex[stor103[stor151] - 1].field_416) = 0
                    emit Transfer(0, msg.sender, stor151);
                    if not ext_code.size(msg.sender):
                        mem[32] = 159
                        _9210 = mem[64]
                        mem[64] = mem[64] + ceil32(stor17BC.length) + 32
                        mem[_9210 + 32] = uint256(stor17BC.field_0)
                        idx = _9210 + 32
                        s = 0
                        while _9210 + stor17BC.length > idx:
                            mem[idx + 32] = stor17BC[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if not stor103[stor151]:
                            revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                        mem[32] = 108
                        stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9210 + 32 len stor17BC.length])
                    else:
                        _9128 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = stor151
                        mem[mem[64] + 132] = 128
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196 len 0] = None
                        _17576 = mem[64]
                        mem[mem[64]] = 164
                        mem[mem[64] + 32 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                        mem[64] = mem[64] + 292
                        mem[_9128 + 196] = 50
                        mem[_9128 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if 0 > eth.balance(this.address):
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(msg.sender):
                            revert with 0, 'Address: call to non-contract'
                        _18062 = mem[_17576]
                        mem[_9128 + 292 len ceil32(mem[_17576])] = mem[_17576 + 32 len ceil32(mem[_17576])]
                        if ceil32(_18062) > _18062:
                            mem[_18062 + _9128 + 292] = 0
                        call msg.sender with:
                             gas gas_remaining wei
                            args mem[_9128 + 296 len _18062 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 
                                            32,
                                            50,
                                            0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_9128 + 278 len 14] >> 144,
                                            0
                            require mem[96] >= 32
                            require mem[128] == Mask(32, 224, mem[128])
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[_9128 + 324] = uint256(stor17BC.field_0)
                            idx = _9128 + 324
                            s = 0
                            while _9128 + stor17BC.length + 292 > idx:
                                mem[idx + 32] = stor17BC[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if not stor103[stor151]:
                                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                            stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9128 + 324 len stor17BC.length])
                        else:
                            mem[_9128 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_9128 + 278 len 14] >> 144,
                                            0
                            require return_data.size >= 32
                            require mem[_9128 + 324] == Mask(32, 224, mem[_9128 + 324])
                            if Mask(32, 224, mem[_9128 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[_9128 + ceil32(return_data.size) + 325] = uint256(stor17BC.field_0)
                            idx = _9128 + ceil32(return_data.size) + 325
                            s = 0
                            while _9128 + ceil32(return_data.size) + stor17BC.length + 293 > idx:
                                mem[idx + 32] = stor17BC[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if not stor103[stor151]:
                                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                            stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9128 + ceil32(return_data.size) + 325 len stor17BC.length])
                else:
                    _8928 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8928] = stor151
                    mem[_8928 + 32] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = stor151
                    address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                    mem[0] = stor151
                    mem[32] = 103
                    stor103[stor151] = tokenByIndex.length
                    emit Transfer(0, msg.sender, stor151);
                    if not ext_code.size(msg.sender):
                        mem[32] = 159
                        _9186 = mem[64]
                        mem[64] = mem[64] + ceil32(stor17BC.length) + 32
                        mem[_9186 + 32] = uint256(stor17BC.field_0)
                        idx = _9186 + 32
                        s = 0
                        while _9186 + stor17BC.length > idx:
                            mem[idx + 32] = stor17BC[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if not stor103[stor151]:
                            revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                        mem[32] = 108
                        stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9186 + 32 len stor17BC.length])
                    else:
                        _9103 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = stor151
                        mem[mem[64] + 132] = 128
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196 len 0] = None
                        _17582 = mem[64]
                        mem[mem[64]] = 164
                        mem[mem[64] + 32 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                        mem[64] = mem[64] + 292
                        mem[_9103 + 196] = 50
                        mem[_9103 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if 0 > eth.balance(this.address):
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(msg.sender):
                            revert with 0, 'Address: call to non-contract'
                        _18065 = mem[_17582]
                        mem[_9103 + 292 len ceil32(mem[_17582])] = mem[_17582 + 32 len ceil32(mem[_17582])]
                        if ceil32(_18065) > _18065:
                            mem[_18065 + _9103 + 292] = 0
                        call msg.sender with:
                             gas gas_remaining wei
                            args mem[_9103 + 296 len _18065 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 
                                            32,
                                            50,
                                            0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_9103 + 278 len 14] >> 144,
                                            0
                            require mem[96] >= 32
                            require mem[128] == Mask(32, 224, mem[128])
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[_9103 + 324] = uint256(stor17BC.field_0)
                            idx = _9103 + 324
                            s = 0
                            while _9103 + stor17BC.length + 292 > idx:
                                mem[idx + 32] = stor17BC[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if not stor103[stor151]:
                                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                            stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9103 + 324 len stor17BC.length])
                        else:
                            mem[_9103 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_9103 + 278 len 14] >> 144,
                                            0
                            require return_data.size >= 32
                            require mem[_9103 + 324] == Mask(32, 224, mem[_9103 + 324])
                            if Mask(32, 224, mem[_9103 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[_9103 + ceil32(return_data.size) + 325] = uint256(stor17BC.field_0)
                            idx = _9103 + ceil32(return_data.size) + 325
                            s = 0
                            while _9103 + ceil32(return_data.size) + stor17BC.length + 293 > idx:
                                mem[idx + 32] = stor17BC[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if not stor103[stor151]:
                                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                            stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9103 + ceil32(return_data.size) + 325 len stor17BC.length])
        else:
            stor162.length++
            stor162[stor162.length] = stor151
            stor163[stor151] = stor162.length
            mem[0] = stor151
            nftIdToTypeId[stor151] = 13
            _8766 = mem[64]
            mem[64] = mem[64] + 32
            mem[_8766] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if stor103[stor151]:
                revert with 0, 'ERC721: token already minted'
            if tokenOfOwnerByIndex[address(msg.sender)][1][stor151]:
                mem[0] = stor151
                mem[32] = 103
                if stor103[stor151]:
                    require stor103[stor151] - 1 < tokenByIndex.length
                    mem[0] = 102
                    address(tokenByIndex[stor103[stor151] - 1].field_256) = msg.sender
                    Mask(96, 0, tokenByIndex[stor103[stor151] - 1].field_416) = 0
                    emit Transfer(0, msg.sender, stor151);
                    if not ext_code.size(msg.sender):
                        mem[32] = 159
                        _9211 = mem[64]
                        mem[64] = mem[64] + ceil32(stor17BC.length) + 32
                        mem[_9211 + 32] = uint256(stor17BC.field_0)
                        idx = _9211 + 32
                        s = 0
                        while _9211 + stor17BC.length > idx:
                            mem[idx + 32] = stor17BC[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if not stor103[stor151]:
                            revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                        mem[32] = 108
                        stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9211 + 32 len stor17BC.length])
                    else:
                        _9129 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = stor151
                        mem[mem[64] + 132] = 128
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196 len 0] = None
                        _17588 = mem[64]
                        mem[mem[64]] = 164
                        mem[mem[64] + 32 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                        mem[64] = mem[64] + 292
                        mem[_9129 + 196] = 50
                        mem[_9129 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if 0 > eth.balance(this.address):
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(msg.sender):
                            revert with 0, 'Address: call to non-contract'
                        _18068 = mem[_17588]
                        mem[_9129 + 292 len ceil32(mem[_17588])] = mem[_17588 + 32 len ceil32(mem[_17588])]
                        if ceil32(_18068) > _18068:
                            mem[_18068 + _9129 + 292] = 0
                        call msg.sender with:
                             gas gas_remaining wei
                            args mem[_9129 + 296 len _18068 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 
                                            32,
                                            50,
                                            0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_9129 + 278 len 14] >> 144,
                                            0
                            require mem[96] >= 32
                            require mem[128] == Mask(32, 224, mem[128])
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[_9129 + 324] = uint256(stor17BC.field_0)
                            idx = _9129 + 324
                            s = 0
                            while _9129 + stor17BC.length + 292 > idx:
                                mem[idx + 32] = stor17BC[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if not stor103[stor151]:
                                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                            stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9129 + 324 len stor17BC.length])
                        else:
                            mem[_9129 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_9129 + 278 len 14] >> 144,
                                            0
                            require return_data.size >= 32
                            require mem[_9129 + 324] == Mask(32, 224, mem[_9129 + 324])
                            if Mask(32, 224, mem[_9129 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[_9129 + ceil32(return_data.size) + 325] = uint256(stor17BC.field_0)
                            idx = _9129 + ceil32(return_data.size) + 325
                            s = 0
                            while _9129 + ceil32(return_data.size) + stor17BC.length + 293 > idx:
                                mem[idx + 32] = stor17BC[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if not stor103[stor151]:
                                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                            stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9129 + ceil32(return_data.size) + 325 len stor17BC.length])
                else:
                    _8933 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8933] = stor151
                    mem[_8933 + 32] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = stor151
                    address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                    mem[0] = stor151
                    mem[32] = 103
                    stor103[stor151] = tokenByIndex.length
                    emit Transfer(0, msg.sender, stor151);
                    if not ext_code.size(msg.sender):
                        mem[32] = 159
                        _9188 = mem[64]
                        mem[64] = mem[64] + ceil32(stor17BC.length) + 32
                        mem[_9188 + 32] = uint256(stor17BC.field_0)
                        idx = _9188 + 32
                        s = 0
                        while _9188 + stor17BC.length > idx:
                            mem[idx + 32] = stor17BC[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if not stor103[stor151]:
                            revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                        mem[32] = 108
                        stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9188 + 32 len stor17BC.length])
                    else:
                        _9104 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = stor151
                        mem[mem[64] + 132] = 128
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196 len 0] = None
                        _17594 = mem[64]
                        mem[mem[64]] = 164
                        mem[mem[64] + 32 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                        mem[64] = mem[64] + 292
                        mem[_9104 + 196] = 50
                        mem[_9104 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if 0 > eth.balance(this.address):
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(msg.sender):
                            revert with 0, 'Address: call to non-contract'
                        _18071 = mem[_17594]
                        mem[_9104 + 292 len ceil32(mem[_17594])] = mem[_17594 + 32 len ceil32(mem[_17594])]
                        if ceil32(_18071) > _18071:
                            mem[_18071 + _9104 + 292] = 0
                        call msg.sender with:
                             gas gas_remaining wei
                            args mem[_9104 + 296 len _18071 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 
                                            32,
                                            50,
                                            0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_9104 + 278 len 14] >> 144,
                                            0
                            require mem[96] >= 32
                            require mem[128] == Mask(32, 224, mem[128])
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[_9104 + 324] = uint256(stor17BC.field_0)
                            idx = _9104 + 324
                            s = 0
                            while _9104 + stor17BC.length + 292 > idx:
                                mem[idx + 32] = stor17BC[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if not stor103[stor151]:
                                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                            stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9104 + 324 len stor17BC.length])
                        else:
                            mem[_9104 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_9104 + 278 len 14] >> 144,
                                            0
                            require return_data.size >= 32
                            require mem[_9104 + 324] == Mask(32, 224, mem[_9104 + 324])
                            if Mask(32, 224, mem[_9104 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[_9104 + ceil32(return_data.size) + 325] = uint256(stor17BC.field_0)
                            idx = _9104 + ceil32(return_data.size) + 325
                            s = 0
                            while _9104 + ceil32(return_data.size) + stor17BC.length + 293 > idx:
                                mem[idx + 32] = stor17BC[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if not stor103[stor151]:
                                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                            stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9104 + ceil32(return_data.size) + 325 len stor17BC.length])
            else:
                tokenOfOwnerByIndex[address(msg.sender)]++
                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor151
                tokenOfOwnerByIndex[address(msg.sender)][1][stor151] = tokenOfOwnerByIndex[address(msg.sender)]
                mem[0] = stor151
                mem[32] = 103
                if stor103[stor151]:
                    require stor103[stor151] - 1 < tokenByIndex.length
                    mem[0] = 102
                    address(tokenByIndex[stor103[stor151] - 1].field_256) = msg.sender
                    Mask(96, 0, tokenByIndex[stor103[stor151] - 1].field_416) = 0
                    emit Transfer(0, msg.sender, stor151);
                    if not ext_code.size(msg.sender):
                        mem[32] = 159
                        _9212 = mem[64]
                        mem[64] = mem[64] + ceil32(stor17BC.length) + 32
                        mem[_9212 + 32] = uint256(stor17BC.field_0)
                        idx = _9212 + 32
                        s = 0
                        while _9212 + stor17BC.length > idx:
                            mem[idx + 32] = stor17BC[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if not stor103[stor151]:
                            revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                        mem[32] = 108
                        stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9212 + 32 len stor17BC.length])
                    else:
                        _9130 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = stor151
                        mem[mem[64] + 132] = 128
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196 len 0] = None
                        _17600 = mem[64]
                        mem[mem[64]] = 164
                        mem[mem[64] + 32 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                        mem[64] = mem[64] + 292
                        mem[_9130 + 196] = 50
                        mem[_9130 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if 0 > eth.balance(this.address):
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(msg.sender):
                            revert with 0, 'Address: call to non-contract'
                        _18074 = mem[_17600]
                        mem[_9130 + 292 len ceil32(mem[_17600])] = mem[_17600 + 32 len ceil32(mem[_17600])]
                        if ceil32(_18074) > _18074:
                            mem[_18074 + _9130 + 292] = 0
                        call msg.sender with:
                             gas gas_remaining wei
                            args mem[_9130 + 296 len _18074 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 
                                            32,
                                            50,
                                            0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_9130 + 278 len 14] >> 144,
                                            0
                            require mem[96] >= 32
                            require mem[128] == Mask(32, 224, mem[128])
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[_9130 + 324] = uint256(stor17BC.field_0)
                            idx = _9130 + 324
                            s = 0
                            while _9130 + stor17BC.length + 292 > idx:
                                mem[idx + 32] = stor17BC[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if not stor103[stor151]:
                                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                            stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9130 + 324 len stor17BC.length])
                        else:
                            mem[_9130 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_9130 + 278 len 14] >> 144,
                                            0
                            require return_data.size >= 32
                            require mem[_9130 + 324] == Mask(32, 224, mem[_9130 + 324])
                            if Mask(32, 224, mem[_9130 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[_9130 + ceil32(return_data.size) + 325] = uint256(stor17BC.field_0)
                            idx = _9130 + ceil32(return_data.size) + 325
                            s = 0
                            while _9130 + ceil32(return_data.size) + stor17BC.length + 293 > idx:
                                mem[idx + 32] = stor17BC[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if not stor103[stor151]:
                                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                            stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9130 + ceil32(return_data.size) + 325 len stor17BC.length])
                else:
                    _8938 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8938] = stor151
                    mem[_8938 + 32] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = stor151
                    address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                    mem[0] = stor151
                    mem[32] = 103
                    stor103[stor151] = tokenByIndex.length
                    emit Transfer(0, msg.sender, stor151);
                    if not ext_code.size(msg.sender):
                        mem[32] = 159
                        _9190 = mem[64]
                        mem[64] = mem[64] + ceil32(stor17BC.length) + 32
                        mem[_9190 + 32] = uint256(stor17BC.field_0)
                        idx = _9190 + 32
                        s = 0
                        while _9190 + stor17BC.length > idx:
                            mem[idx + 32] = stor17BC[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if not stor103[stor151]:
                            revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                        mem[32] = 108
                        stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9190 + 32 len stor17BC.length])
                    else:
                        _9105 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = stor151
                        mem[mem[64] + 132] = 128
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196 len 0] = None
                        _17606 = mem[64]
                        mem[mem[64]] = 164
                        mem[mem[64] + 32 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                        mem[64] = mem[64] + 292
                        mem[_9105 + 196] = 50
                        mem[_9105 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if 0 > eth.balance(this.address):
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(msg.sender):
                            revert with 0, 'Address: call to non-contract'
                        _18077 = mem[_17606]
                        mem[_9105 + 292 len ceil32(mem[_17606])] = mem[_17606 + 32 len ceil32(mem[_17606])]
                        if ceil32(_18077) > _18077:
                            mem[_18077 + _9105 + 292] = 0
                        call msg.sender with:
                             gas gas_remaining wei
                            args mem[_9105 + 296 len _18077 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 
                                            32,
                                            50,
                                            0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_9105 + 278 len 14] >> 144,
                                            0
                            require mem[96] >= 32
                            require mem[128] == Mask(32, 224, mem[128])
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[_9105 + 324] = uint256(stor17BC.field_0)
                            idx = _9105 + 324
                            s = 0
                            while _9105 + stor17BC.length + 292 > idx:
                                mem[idx + 32] = stor17BC[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if not stor103[stor151]:
                                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                            stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9105 + 324 len stor17BC.length])
                        else:
                            mem[_9105 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[_9105 + 278 len 14] >> 144,
                                            0
                            require return_data.size >= 32
                            require mem[_9105 + 324] == Mask(32, 224, mem[_9105 + 324])
                            if Mask(32, 224, mem[_9105 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[_9105 + ceil32(return_data.size) + 325] = uint256(stor17BC.field_0)
                            idx = _9105 + ceil32(return_data.size) + 325
                            s = 0
                            while _9105 + ceil32(return_data.size) + stor17BC.length + 293 > idx:
                                mem[idx + 32] = stor17BC[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if not stor103[stor151]:
                                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                            stor108[stor151][].field_0 = Array(len=stor17BC.length, data=mem[_9105 + ceil32(return_data.size) + 325 len stor17BC.length])
    stor151++
    emit 0xbd18cdf7: msg.sender, stor151
    stor152 = 1
}



}
