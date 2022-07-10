contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#  - tokenURI(uint256 arg1)
#
const maxBatch = 10000


mapping of uint8 stor0;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor3;
mapping of address approved;
mapping of uint8 stor5;
array of uint256 name;
array of uint256 symbol;
mapping of struct stor8;
array of uint256 baseURI;
address owner;
mapping of uint256 sub_3205f8a1;
mapping of uint256 sub_47d4991e;
uint256 stor13;
mapping of uint8 nftId;
array of uint256 nftName;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() payable {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= tokenOfOwnerByIndex[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function sub_3205f8a1(?) payable {
    require calldata.size - 4 >= 32
    return sub_3205f8a1[arg1]
}

function getNftName(uint8 arg1) payable {
    return nftName[arg1 << 248][0 len nftName[arg1 << 248].length]
}

function sub_47d4991e(?) payable {
    require calldata.size - 4 >= 32
    return sub_47d4991e[arg1]
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e456e756d657261626c654d61703a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return tokenByIndex[arg1].field_0
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor3[arg1] - 1 < tokenByIndex.length
    return address(tokenByIndex[stor3[arg1] - 1].field_256)
}

function baseURI() payable {
    return baseURI[0 len baseURI.length]
}

function getNftId(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return nftId[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    return tokenOfOwnerByIndex[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function getNftNameOfTokenId(uint256 arg1) payable {
    return nftName[stor14[arg1]][0 len nftName[stor14[arg1]].length]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function setBaseURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
    baseURI[] = Array(len=arg1.length, data=arg1[all])
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x724f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setTokenURI(uint256 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    44,
                    0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg2.length) + 240 len 20]
    stor8[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
}

function sub_4c5029bc(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + ('cd', 36).length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
    nftName[cd[4] << 248] = (2 * ('cd', 36).length) + 1
    s = 0
    idx = cd[36] + 36
    while cd[36] + ('cd', 36).length + 36 > idx:
        nftName[cd[4] << 248][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
    while nftName[cd[4] << 248].length + 31 / 32 > idx:
        nftName[cd[4] << 248][idx] = 0
        idx = idx + 1
        continue 
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor3[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor3[arg2] - 1 < tokenByIndex.length
    if arg1 == address(tokenByIndex[stor3[arg2] - 1].field_256):
        revert with 0, 32, 33, 0x6e4552433732313a20617070726f76616c20746f2063757272656e74206f776e65, mem[293 len 31]
    if address(tokenByIndex[stor3[arg2] - 1].field_256) != msg.sender:
        if not stor5[address(stor2[stor3[arg2] - 1].field_256)][address(msg.sender)]:
            revert with 0, 
                        32,
                        56,
                        0x6e4552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                        mem[316 len 8]
    approved[arg2] = arg1
    if not stor3[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor3[arg2] - 1 < tokenByIndex.length
    emit Approval(address(tokenByIndex[stor3[arg2] - 1].field_256), arg1, arg2);
}

function mint(address arg1, string arg2, uint8 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
    stor13++
    nftId[stor13] = arg3
    if sub_3205f8a1[arg3 << 248] + 1 < sub_3205f8a1[arg3 << 248]:
        revert with 0, 'SafeMath: addition overflow'
    sub_3205f8a1[arg3 << 248]++
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if stor3[stor13]:
        revert with 0, 'ERC721: token already minted'
    if not tokenOfOwnerByIndex[address(arg1)][1][stor13]:
        tokenOfOwnerByIndex[address(arg1)]++
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor13
        tokenOfOwnerByIndex[address(arg1)][1][stor13] = tokenOfOwnerByIndex[address(arg1)]
    if stor3[stor13]:
        require stor3[stor13] - 1 < tokenByIndex.length
        address(tokenByIndex[stor3[stor13] - 1].field_256) = arg1
        Mask(96, 0, tokenByIndex[stor3[stor13] - 1].field_416) = 0
        emit Transfer(0, arg1, stor13);
        if not stor3[stor13]:
            revert with 0, 
                        32,
                        44,
                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                        mem[ceil32(arg2.length) + 240 len 20]
        stor8[stor13][].field_0 = Array(len=arg2.length, data=arg2[all])
        mem[ceil32(arg2.length) + 128] = stor13
        return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length].field_0 = stor13
    address(tokenByIndex[tokenByIndex.length].field_256) = arg1
    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
    stor3[stor13] = tokenByIndex.length
    emit Transfer(0, arg1, stor13);
    if not stor3[stor13]:
        revert with 0, 
                    32,
                    44,
                    0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg2.length) + 304 len 20]
    stor8[stor13][].field_0 = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg2.length) + 192] = stor13
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 224 len -arg2.length + ceil32(arg2.length)]
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
    if 1 > sub_3205f8a1[stor14[arg1]]:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_3205f8a1[stor14[arg1]]--
    if sub_47d4991e[stor14[arg1]] + 1 < sub_47d4991e[stor14[arg1]]:
        revert with 0, 'SafeMath: addition overflow'
    sub_47d4991e[stor14[arg1]]++
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor3[arg1] - 1 < tokenByIndex.length
    approved[arg1] = 0
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor3[arg1] - 1 < tokenByIndex.length
    emit Approval(address(tokenByIndex[stor3[arg1] - 1].field_256), 0, arg1);
    if Mask(255, 1, stor8[arg1].field_0 and (256 * not bool(stor8[arg1].field_0)) - 1):
        stor8[arg1].field_0 = 0
        if 31 < stor8[arg1].length:
            idx = 0
            while stor8[arg1].length + 31 / 32 > idx:
                stor8[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    if tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)][1][arg1]:
        require tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)] - 1 < tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)]
        require tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)][1][arg1] - 1 < tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)]
        tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)][1][arg1]] = tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)]]
        tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)][1][tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)]]] = tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)][1][arg1]
        require tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)]
        tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)]] = 0
        tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)]--
        tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)][1][arg1] = 0
    if stor3[arg1]:
        require tokenByIndex.length - 1 < tokenByIndex.length
        require stor3[arg1] - 1 < tokenByIndex.length
        tokenByIndex[stor3[arg1] - 1].field_0 = tokenByIndex[tokenByIndex.length - 1].field_0
        tokenByIndex[stor3[arg1] - 1].field_256 = tokenByIndex[tokenByIndex.length - 1].field_256
        stor3[stor2[stor2.length - 1].field_0] = stor3[arg1]
        require tokenByIndex.length
        tokenByIndex[tokenByIndex.length - 1].field_0 = 0
        tokenByIndex[tokenByIndex.length - 1].field_256 = 0
        tokenByIndex.length--
        stor3[arg1] = 0
    emit Transfer(address(tokenByIndex[stor3[arg1] - 1].field_256), 0, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor3[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor3[arg3] - 1 < tokenByIndex.length
    if address(tokenByIndex[stor3[arg3] - 1].field_256) != msg.sender:
        if not stor3[arg3]:
            revert with 0, 32, 44, 0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[304 len 20]
        if approved[arg3] != msg.sender:
            if not stor5[address(stor2[stor3[arg3] - 1].field_256)][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[309 len 15]
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor3[arg3] - 1 < tokenByIndex.length
    if address(tokenByIndex[stor3[arg3] - 1].field_256) != arg1:
        revert with 0, 32, 41, 0x724552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[397 len 23]
    if not arg2:
        revert with 0, 32, 36, 0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[392 len 28]
    approved[arg3] = 0
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[361 len 23],
                    mem[407 len 9]
    require stor3[arg3] - 1 < tokenByIndex.length
    emit Approval(address(tokenByIndex[stor3[arg3] - 1].field_256), 0, arg3);
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
        address(tokenByIndex[stor3[arg3] - 1].field_256) = arg2
        Mask(96, 0, tokenByIndex[stor3[arg3] - 1].field_416) = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
        stor3[arg3] = tokenByIndex.length
    emit Transfer(arg1, arg2, arg3);
}

function batchMint(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
    if arg1 <= 0:
        revert with 0, 'wrong batch number'
    if arg1 > 10000:
        revert with 0, 'wrong batch number'
    idx = 0
    while idx < arg1:
        stor13++
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if stor3[stor13]:
            revert with 0, 'ERC721: token already minted'
        if tokenOfOwnerByIndex[address(msg.sender)][1][stor13]:
            mem[0] = stor13
            mem[32] = 3
            if stor3[stor13]:
                require stor3[stor13] - 1 < tokenByIndex.length
                mem[0] = 2
                address(tokenByIndex[stor3[stor13] - 1].field_256) = msg.sender
                Mask(96, 0, tokenByIndex[stor3[stor13] - 1].field_416) = 0
                emit Transfer(0, msg.sender, stor13);
                if not stor13:
                    _101 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_101] = 1
                    mem[_101 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    if not stor3[stor13]:
                        revert with 0, 
                                    32,
                                    44,
                                    0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                    mem[mem[64] + 112 len 20]
                    mem[32] = 8
                    mem[0] = sha3(stor13, 8)
                    bool(stor8[stor13].field_0) = 0
                    uint255(stor8[stor13].field_1) = 1
                    uint8(stor8[stor13].field_248) = 48
                    s = sha3(sha3(stor13, 8))
                    while sha3(sha3(stor13, 8)) + (stor8[stor13].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    t = 0
                    s = stor13
                    while s:
                        t = t + 1
                        s = s / 10
                        continue 
                    require t <= test266151307()
                    _139 = mem[64]
                    mem[mem[64]] = t
                    mem[64] = mem[64] + ceil32(t) + 32
                    if not t:
                        u = t
                        s = stor13
                        while s:
                            require u - 1 < mem[_139]
                            mem[u + _139 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))), 0) - 256
                            u = u - 1
                            s = s / 10
                            continue 
                        if not stor3[stor13]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[mem[64] + 112 len 20]
                        mem[0] = stor13
                        mem[32] = 8
                        _232 = mem[_139]
                        mem[0] = sha3(stor13, 8)
                        stor8[stor13].field_0 = (2 * _232) + 1
                        t = sha3(sha3(stor13, 8))
                        s = _139 + 32
                        while _139 + _232 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor13, 8)) + (Mask(251, 0, _232 + 31) >> 5)
                        while sha3(sha3(stor13, 8)) + (stor8[stor13].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        mem[_139 + 32 len t] = call.data[calldata.size len t]
                        u = t
                        s = stor13
                        while s:
                            require u - 1 < mem[_139]
                            mem[u + _139 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))), 0) - 256
                            u = u - 1
                            s = s / 10
                            continue 
                        if not stor3[stor13]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[mem[64] + 112 len 20]
                        mem[0] = stor13
                        mem[32] = 8
                        _236 = mem[_139]
                        mem[0] = sha3(stor13, 8)
                        stor8[stor13].field_0 = (2 * _236) + 1
                        t = sha3(sha3(stor13, 8))
                        s = _139 + 32
                        while _139 + _236 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor13, 8)) + (Mask(251, 0, _236 + 31) >> 5)
                        while sha3(sha3(stor13, 8)) + (stor8[stor13].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
            else:
                _83 = mem[64]
                mem[64] = mem[64] + 64
                mem[_83] = stor13
                mem[_83 + 32] = msg.sender
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = stor13
                address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                mem[0] = stor13
                mem[32] = 3
                stor3[stor13] = tokenByIndex.length
                emit Transfer(0, msg.sender, stor13);
                if not stor13:
                    _99 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_99] = 1
                    mem[_99 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    if not stor3[stor13]:
                        revert with 0, 
                                    32,
                                    44,
                                    0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                    mem[mem[64] + 112 len 20]
                    mem[32] = 8
                    mem[0] = sha3(stor13, 8)
                    bool(stor8[stor13].field_0) = 0
                    uint255(stor8[stor13].field_1) = 1
                    uint8(stor8[stor13].field_248) = 48
                    s = sha3(sha3(stor13, 8))
                    while sha3(sha3(stor13, 8)) + (stor8[stor13].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    t = 0
                    s = stor13
                    while s:
                        t = t + 1
                        s = s / 10
                        continue 
                    require t <= test266151307()
                    _140 = mem[64]
                    mem[mem[64]] = t
                    mem[64] = mem[64] + ceil32(t) + 32
                    if not t:
                        u = t
                        s = stor13
                        while s:
                            require u - 1 < mem[_140]
                            mem[u + _140 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))), 0) - 256
                            u = u - 1
                            s = s / 10
                            continue 
                        if not stor3[stor13]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[mem[64] + 112 len 20]
                        mem[0] = stor13
                        mem[32] = 8
                        _240 = mem[_140]
                        mem[0] = sha3(stor13, 8)
                        stor8[stor13].field_0 = (2 * _240) + 1
                        t = sha3(sha3(stor13, 8))
                        s = _140 + 32
                        while _140 + _240 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor13, 8)) + (Mask(251, 0, _240 + 31) >> 5)
                        while sha3(sha3(stor13, 8)) + (stor8[stor13].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        mem[_140 + 32 len t] = call.data[calldata.size len t]
                        u = t
                        s = stor13
                        while s:
                            require u - 1 < mem[_140]
                            mem[u + _140 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))), 0) - 256
                            u = u - 1
                            s = s / 10
                            continue 
                        if not stor3[stor13]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[mem[64] + 112 len 20]
                        mem[0] = stor13
                        mem[32] = 8
                        _244 = mem[_140]
                        mem[0] = sha3(stor13, 8)
                        stor8[stor13].field_0 = (2 * _244) + 1
                        t = sha3(sha3(stor13, 8))
                        s = _140 + 32
                        while _140 + _244 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor13, 8)) + (Mask(251, 0, _244 + 31) >> 5)
                        while sha3(sha3(stor13, 8)) + (stor8[stor13].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
        else:
            tokenOfOwnerByIndex[address(msg.sender)]++
            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor13
            tokenOfOwnerByIndex[address(msg.sender)][1][stor13] = tokenOfOwnerByIndex[address(msg.sender)]
            mem[0] = stor13
            mem[32] = 3
            if stor3[stor13]:
                require stor3[stor13] - 1 < tokenByIndex.length
                mem[0] = 2
                address(tokenByIndex[stor3[stor13] - 1].field_256) = msg.sender
                Mask(96, 0, tokenByIndex[stor3[stor13] - 1].field_416) = 0
                emit Transfer(0, msg.sender, stor13);
                if not stor13:
                    _102 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_102] = 1
                    mem[_102 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    if not stor3[stor13]:
                        revert with 0, 
                                    32,
                                    44,
                                    0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                    mem[mem[64] + 112 len 20]
                    mem[32] = 8
                    mem[0] = sha3(stor13, 8)
                    bool(stor8[stor13].field_0) = 0
                    uint255(stor8[stor13].field_1) = 1
                    uint8(stor8[stor13].field_248) = 48
                    s = sha3(sha3(stor13, 8))
                    while sha3(sha3(stor13, 8)) + (stor8[stor13].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    t = 0
                    s = stor13
                    while s:
                        t = t + 1
                        s = s / 10
                        continue 
                    require t <= test266151307()
                    _141 = mem[64]
                    mem[mem[64]] = t
                    mem[64] = mem[64] + ceil32(t) + 32
                    if not t:
                        u = t
                        s = stor13
                        while s:
                            require u - 1 < mem[_141]
                            mem[u + _141 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))), 0) - 256
                            u = u - 1
                            s = s / 10
                            continue 
                        if not stor3[stor13]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[mem[64] + 112 len 20]
                        mem[0] = stor13
                        mem[32] = 8
                        _248 = mem[_141]
                        mem[0] = sha3(stor13, 8)
                        stor8[stor13].field_0 = (2 * _248) + 1
                        t = sha3(sha3(stor13, 8))
                        s = _141 + 32
                        while _141 + _248 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor13, 8)) + (Mask(251, 0, _248 + 31) >> 5)
                        while sha3(sha3(stor13, 8)) + (stor8[stor13].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        mem[_141 + 32 len t] = call.data[calldata.size len t]
                        u = t
                        s = stor13
                        while s:
                            require u - 1 < mem[_141]
                            mem[u + _141 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))), 0) - 256
                            u = u - 1
                            s = s / 10
                            continue 
                        if not stor3[stor13]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[mem[64] + 112 len 20]
                        mem[0] = stor13
                        mem[32] = 8
                        _252 = mem[_141]
                        mem[0] = sha3(stor13, 8)
                        stor8[stor13].field_0 = (2 * _252) + 1
                        t = sha3(sha3(stor13, 8))
                        s = _141 + 32
                        while _141 + _252 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor13, 8)) + (Mask(251, 0, _252 + 31) >> 5)
                        while sha3(sha3(stor13, 8)) + (stor8[stor13].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
            else:
                _88 = mem[64]
                mem[64] = mem[64] + 64
                mem[_88] = stor13
                mem[_88 + 32] = msg.sender
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = stor13
                address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                mem[0] = stor13
                mem[32] = 3
                stor3[stor13] = tokenByIndex.length
                emit Transfer(0, msg.sender, stor13);
                if not stor13:
                    _100 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_100] = 1
                    mem[_100 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    if not stor3[stor13]:
                        revert with 0, 
                                    32,
                                    44,
                                    0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                    mem[mem[64] + 112 len 20]
                    mem[32] = 8
                    mem[0] = sha3(stor13, 8)
                    bool(stor8[stor13].field_0) = 0
                    uint255(stor8[stor13].field_1) = 1
                    uint8(stor8[stor13].field_248) = 48
                    s = sha3(sha3(stor13, 8))
                    while sha3(sha3(stor13, 8)) + (stor8[stor13].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    t = 0
                    s = stor13
                    while s:
                        t = t + 1
                        s = s / 10
                        continue 
                    require t <= test266151307()
                    _142 = mem[64]
                    mem[mem[64]] = t
                    mem[64] = mem[64] + ceil32(t) + 32
                    if not t:
                        u = t
                        s = stor13
                        while s:
                            require u - 1 < mem[_142]
                            mem[u + _142 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))), 0) - 256
                            u = u - 1
                            s = s / 10
                            continue 
                        if not stor3[stor13]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[mem[64] + 112 len 20]
                        mem[0] = stor13
                        mem[32] = 8
                        _256 = mem[_142]
                        mem[0] = sha3(stor13, 8)
                        stor8[stor13].field_0 = (2 * _256) + 1
                        t = sha3(sha3(stor13, 8))
                        s = _142 + 32
                        while _142 + _256 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor13, 8)) + (Mask(251, 0, _256 + 31) >> 5)
                        while sha3(sha3(stor13, 8)) + (stor8[stor13].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        mem[_142 + 32 len t] = call.data[calldata.size len t]
                        u = t
                        s = stor13
                        while s:
                            require u - 1 < mem[_142]
                            mem[u + _142 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))), 0) - 256
                            u = u - 1
                            s = s / 10
                            continue 
                        if not stor3[stor13]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[mem[64] + 112 len 20]
                        mem[0] = stor13
                        mem[32] = 8
                        _260 = mem[_142]
                        mem[0] = sha3(stor13, 8)
                        stor8[stor13].field_0 = (2 * _260) + 1
                        t = sha3(sha3(stor13, 8))
                        s = _142 + 32
                        while _142 + _260 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor13, 8)) + (Mask(251, 0, _260 + 31) >> 5)
                        while sha3(sha3(stor13, 8)) + (stor8[stor13].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
        idx = idx + 1
        continue 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor3[arg3]:
        revert with 0, 32, 44, 0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[201 len 23],
                    mem[247 len 9]
    require stor3[arg3] - 1 < tokenByIndex.length
    if msg.sender == address(tokenByIndex[stor3[arg3] - 1].field_256):
        if not stor3[arg3]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[297 len 23],
                        mem[343 len 9]
        require stor3[arg3] - 1 < tokenByIndex.length
        if address(tokenByIndex[stor3[arg3] - 1].field_256) != arg1:
            revert with 0, 32, 41, 0x724552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
        if not arg2:
            revert with 0, 32, 36, 0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
        approved[arg3] = 0
        if not stor3[arg3]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[393 len 23],
                        mem[439 len 9]
        require stor3[arg3] - 1 < tokenByIndex.length
        emit Approval(address(tokenByIndex[stor3[arg3] - 1].field_256), 0, arg3);
        if not tokenOfOwnerByIndex[address(arg1)][1][arg3]:
            if tokenOfOwnerByIndex[address(arg2)][1][arg3]:
                if stor3[arg3]:
                    require stor3[arg3] - 1 < tokenByIndex.length
                    address(tokenByIndex[stor3[arg3] - 1].field_256) = arg2
                    Mask(96, 0, tokenByIndex[stor3[arg3] - 1].field_416) = 0
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2):
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        mem[708 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                        mem[896 len 4] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args 0, mem[868 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
                        mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
                        require return_data.size >= 32
                        if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 827 len 14]
                else:
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = arg3
                    address(tokenByIndex[tokenByIndex.length].field_256) = arg2
                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                    stor3[arg3] = tokenByIndex.length
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2):
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        mem[772 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                        mem[960 len 4] = 0
                        mem[932 len 0] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[758 len 14], 0, 32, 50) >> 544
                        mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
                        require return_data.size >= 32
                        if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 891 len 14]
            else:
                tokenOfOwnerByIndex[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
                if stor3[arg3]:
                    require stor3[arg3] - 1 < tokenByIndex.length
                    address(tokenByIndex[stor3[arg3] - 1].field_256) = arg2
                    Mask(96, 0, tokenByIndex[stor3[arg3] - 1].field_416) = 0
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2):
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        mem[708 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                        mem[896 len 4] = 0
                        mem[868 len 0] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[868 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[694 len 14], 0, 32, 50) >> 544
                        mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
                        require return_data.size >= 32
                        if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 827 len 14]
                else:
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = arg3
                    address(tokenByIndex[tokenByIndex.length].field_256) = arg2
                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                    stor3[arg3] = tokenByIndex.length
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2):
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        mem[772 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                        mem[960 len 4] = 0
                        mem[932 len 0] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[758 len 14], 0, 32, 50) >> 544
                        mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
                        require return_data.size >= 32
                        if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 891 len 14]
        else:
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
                address(tokenByIndex[stor3[arg3] - 1].field_256) = arg2
                Mask(96, 0, tokenByIndex[stor3[arg3] - 1].field_416) = 0
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2):
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[708 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                    mem[896 len 4] = 0
                    mem[868 len 0] = 0
                    call arg2.0x80 with:
                         gas gas_remaining wei
                        args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[868 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                    Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[694 len 14], 0, 32, 50) >> 544
                    mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                    Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
                    require return_data.size >= 32
                    if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[ceil32(return_data.size) + 827 len 14]
            else:
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = arg3
                address(tokenByIndex[tokenByIndex.length].field_256) = arg2
                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                stor3[arg3] = tokenByIndex.length
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2):
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[772 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                    mem[960 len 4] = 0
                    mem[932 len 0] = 0
                    call arg2.0x80 with:
                         gas gas_remaining wei
                        args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                    Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[758 len 14], 0, 32, 50) >> 544
                    mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                    Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
                    require return_data.size >= 32
                    if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[ceil32(return_data.size) + 891 len 14]
    else:
        if not stor3[arg3]:
            revert with 0, 32, 44, 0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[336 len 20]
        if approved[arg3] == msg.sender:
            if not stor3[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[297 len 23],
                            mem[343 len 9]
            require stor3[arg3] - 1 < tokenByIndex.length
            if address(tokenByIndex[stor3[arg3] - 1].field_256) != arg1:
                revert with 0, 32, 41, 0x724552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
            if not arg2:
                revert with 0, 32, 36, 0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
            approved[arg3] = 0
            if not stor3[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[393 len 23],
                            mem[439 len 9]
            require stor3[arg3] - 1 < tokenByIndex.length
            emit Approval(address(tokenByIndex[stor3[arg3] - 1].field_256), 0, arg3);
            if not tokenOfOwnerByIndex[address(arg1)][1][arg3]:
                if not tokenOfOwnerByIndex[address(arg2)][1][arg3]:
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
                if stor3[arg3]:
                    require stor3[arg3] - 1 < tokenByIndex.length
                    address(tokenByIndex[stor3[arg3] - 1].field_256) = arg2
                    Mask(96, 0, tokenByIndex[stor3[arg3] - 1].field_416) = 0
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2):
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        mem[708 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                        mem[896 len 4] = 0
                        mem[868 len 0] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[868 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[694 len 14], 0, 32, 50) >> 544
                        mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
                        require return_data.size >= 32
                        if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 827 len 14]
                else:
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = arg3
                    address(tokenByIndex[tokenByIndex.length].field_256) = arg2
                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                    stor3[arg3] = tokenByIndex.length
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2):
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        mem[772 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                        mem[960 len 4] = 0
                        mem[932 len 0] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[758 len 14], 0, 32, 50) >> 544
                        mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
                        require return_data.size >= 32
                        if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 891 len 14]
            else:
                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                require tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 < tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)][1][arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                tokenOfOwnerByIndex[address(arg1)][1][tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]] = tokenOfOwnerByIndex[address(arg1)][1][arg3]
                require tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                tokenOfOwnerByIndex[address(arg1)]--
                tokenOfOwnerByIndex[address(arg1)][1][arg3] = 0
                if tokenOfOwnerByIndex[address(arg2)][1][arg3]:
                    if stor3[arg3]:
                        require stor3[arg3] - 1 < tokenByIndex.length
                        address(tokenByIndex[stor3[arg3] - 1].field_256) = arg2
                        Mask(96, 0, tokenByIndex[stor3[arg3] - 1].field_416) = 0
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2):
                            if not ext_code.size(arg2):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[896 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args 0, mem[868 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
                            require return_data.size >= 32
                            if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 827 len 14]
                    else:
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = arg3
                        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                        stor3[arg3] = tokenByIndex.length
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2):
                            if not ext_code.size(arg2):
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[960 len 4] = 0
                            mem[932 len 0] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[758 len 14], 0, 32, 50) >> 544
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
                            require return_data.size >= 32
                            if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 891 len 14]
                else:
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
                    if stor3[arg3]:
                        require stor3[arg3] - 1 < tokenByIndex.length
                        address(tokenByIndex[stor3[arg3] - 1].field_256) = arg2
                        Mask(96, 0, tokenByIndex[stor3[arg3] - 1].field_416) = 0
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2):
                            if not ext_code.size(arg2):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[896 len 4] = 0
                            mem[868 len 0] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[868 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[694 len 14], 0, 32, 50) >> 544
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
                            require return_data.size >= 32
                            if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 827 len 14]
                    else:
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = arg3
                        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                        stor3[arg3] = tokenByIndex.length
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2):
                            if not ext_code.size(arg2):
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[960 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args 0, mem[932 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
                            require return_data.size >= 32
                            if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 891 len 14]
        else:
            if not stor5[address(stor2[stor3[arg3] - 1].field_256)][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[341 len 15]
            if not stor3[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[297 len 23],
                            mem[343 len 9]
            require stor3[arg3] - 1 < tokenByIndex.length
            if address(tokenByIndex[stor3[arg3] - 1].field_256) != arg1:
                revert with 0, 32, 41, 0x724552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
            if not arg2:
                revert with 0, 32, 36, 0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
            approved[arg3] = 0
            if not stor3[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[393 len 23],
                            mem[439 len 9]
            require stor3[arg3] - 1 < tokenByIndex.length
            emit Approval(address(tokenByIndex[stor3[arg3] - 1].field_256), 0, arg3);
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
                address(tokenByIndex[stor3[arg3] - 1].field_256) = arg2
                Mask(96, 0, tokenByIndex[stor3[arg3] - 1].field_416) = 0
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2):
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[708 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                    mem[896 len 4] = 0
                    mem[868 len 0] = 0
                    call arg2.0x80 with:
                         gas gas_remaining wei
                        args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[868 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                    Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[694 len 14], 0, 32, 50) >> 544
                    mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                    Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
                    require return_data.size >= 32
                    if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[ceil32(return_data.size) + 827 len 14]
            else:
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = arg3
                address(tokenByIndex[tokenByIndex.length].field_256) = arg2
                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                stor3[arg3] = tokenByIndex.length
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2):
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[772 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                    mem[960 len 4] = 0
                    mem[932 len 0] = 0
                    call arg2.0x80 with:
                         gas gas_remaining wei
                        args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                    Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[758 len 14], 0, 32, 50) >> 544
                    mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                    Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
                    require return_data.size >= 32
                    if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[ceil32(return_data.size) + 891 len 14]
}



}
