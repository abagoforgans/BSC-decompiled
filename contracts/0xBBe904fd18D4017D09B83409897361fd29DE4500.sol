contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor6;
array of uint256 tokenByIndex;
mapping of uint256 stor8;
array of uint256 name;
array of uint256 symbol;
array of struct baseURI;
mapping of struct stor12;
mapping of uint8 stor13;
uint256 stor14;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() payable {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x654552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0xfe455243373231456e756d657261626c653a206f776e657220696e646578206f7574206f6620626f756e64,
                    mem[207 len 21]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x64455243373231456e756d657261626c653a20676c6f62616c20696e646578206f7574206f6620626f756e64,
                    mem[208 len 20]
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    return ownerOf[arg1]
}

function baseURI() payable {
    return baseURI[0 len baseURI.length].field_0
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    return balanceOf[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function isMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    return bool(stor13[address(arg1)])
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor4[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor4[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function renounceMinter() payable {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor13[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    stor13[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function setBaseURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if not msg.sender:
        revert with 0, 
                    32,
                    34,
                    0x6e526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[ceil32(arg1.length) + 230 len 30]
    if not stor13[address(msg.sender)]:
        revert with 0, 
                    32,
                    48,
                    0x6e4d696e746572526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d696e74657220726f6c,
                    mem[ceil32(arg1.length) + 244 len 16]
    baseURI[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor13[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x6e4d696e746572526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d696e74657220726f6c,
                    mem[212 len 16]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if stor13[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor13[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e4552433732313a20617070726f76616c20746f2063757272656e74206f776e65,
                    mem[197 len 31]
    if ownerOf[arg2] != msg.sender:
        if not stor4[stor1[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        56,
                        0x6e4552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                        mem[220 len 8]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function mintWithTokenURI(address arg1, uint256 arg2, string arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if not msg.sender:
        revert with 0, 
                    32,
                    34,
                    0x6e526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[ceil32(arg3.length) + 230 len 30]
    if not stor13[address(msg.sender)]:
        revert with 0, 
                    32,
                    48,
                    0x6e4d696e746572526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d696e74657220726f6c,
                    mem[ceil32(arg3.length) + 244 len 16]
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[arg2]:
        revert with 0, 'ERC721: token already minted'
    ownerOf[arg2] = arg1
    balanceOf[address(arg1)]++
    emit Transfer(0, arg1, arg2);
    stor6[arg2] = tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = arg2
    stor8[arg2] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg2
    if not ownerOf[arg2]:
        revert with 0, 
                    32,
                    44,
                    0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg3.length) + 240 len 20]
    stor12[arg2][].field_0 = Array(len=arg3.length, data=arg3[all])
    mem[ceil32(arg3.length) + 128] = 1
    return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[211 len 17]
    mem[32] = 12
    mem[64] = ceil32(stor12[arg1].length) + 128
    mem[96] = stor12[arg1].length
    mem[128] = stor12[arg1].field_0
    idx = 128
    s = 0
    while stor12[arg1].length + 96 > idx:
        mem[idx + 32] = stor12[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if 0 == stor12[arg1].length:
        return ''
    mem[0] = 11
    mem[ceil32(stor12[arg1].length) + 160] = uint256(baseURI.field_0)
    idx = mem[64] + 32
    s = 0
    while ceil32(stor12[arg1].length) + baseURI.length + 128 > idx:
        mem[idx + 32] = baseURI[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor12[arg1].length) + baseURI.length + 160 len floor32(stor12[arg1].length)] = mem[128 len floor32(stor12[arg1].length)]
    mem[ceil32(stor12[arg1].length) + baseURI.length + floor32(stor12[arg1].length) + 160] = mem[floor32(stor12[arg1].length) + -stor12[arg1].length % 32 + 160 len stor12[arg1].length % 32] or Mask(8 * -stor12[arg1].length % 32 + 32, -(8 * -stor12[arg1].length % 32 + 32) + 256, mem[ceil32(stor12[arg1].length) + baseURI.length + floor32(stor12[arg1].length) + 160])
    _310 = mem[64]
    mem[64] = stor12[arg1].length + ceil32(stor12[arg1].length) + baseURI.length + 160
    mem[stor12[arg1].length + ceil32(stor12[arg1].length) + baseURI.length + 160] = 32
    mem[stor12[arg1].length + ceil32(stor12[arg1].length) + baseURI.length + 192] = mem[_310]
    _320 = mem[_310]
    mem[stor12[arg1].length + ceil32(stor12[arg1].length) + baseURI.length + 224 len ceil32(mem[_310])] = mem[_310 + 32 len ceil32(mem[_310])]
    if not _320 % 32:
        return 32, mem[stor12[arg1].length + ceil32(stor12[arg1].length) + baseURI.length + 192 len _320 + 32]
    mem[floor32(_320) + stor12[arg1].length + ceil32(stor12[arg1].length) + baseURI.length + 224] = mem[floor32(_320) + stor12[arg1].length + ceil32(stor12[arg1].length) + baseURI.length + -(_320 % 32) + 256 len _320 % 32]
    return 32, mem[stor12[arg1].length + ceil32(stor12[arg1].length) + baseURI.length + 192 len floor32(_320) + 64]
}

function sub_a00939f6(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[64] = ceil32(arg3.length) + 128
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if not msg.sender:
        revert with 0, 
                    32,
                    34,
                    0x6e526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[ceil32(arg3.length) + 230 len 30]
    mem[0] = msg.sender
    mem[32] = 13
    if not stor13[address(msg.sender)]:
        revert with 0, 
                    32,
                    48,
                    0x6e4d696e746572526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d696e74657220726f6c,
                    mem[ceil32(arg3.length) + 244 len 16]
    if not arg1:
        revert with 0, 'Invalid Address'
    idx = 0
    while idx < arg2:
        stor14++
        if not msg.sender:
            revert with 0, 
                        32,
                        34,
                        0x6e526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                        mem[ceil32(arg3.length) + 230 len 30]
        if not stor13[address(msg.sender)]:
            revert with 0, 
                        32,
                        48,
                        0x6e4d696e746572526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d696e74657220726f6c,
                        mem[ceil32(arg3.length) + 244 len 16]
        if not arg1:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor14]:
            revert with 0, 'ERC721: token already minted'
        ownerOf[stor14] = arg1
        balanceOf[address(arg1)]++
        emit Transfer(0, arg1, stor14);
        stor6[stor14] = tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)]++
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor14
        stor8[stor14] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = stor14
        if not ownerOf[stor14]:
            revert with 0, 
                        32,
                        44,
                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                        mem[ceil32(arg3.length) + 240 len 20]
        mem[32] = 12
        mem[0] = sha3(stor14, 12)
        stor12[stor14].field_0 = (2 * arg3.length) + 1
        t = sha3(sha3(stor14, 12))
        s = 128
        while arg3.length + 128 > s:
            stor[t] = mem[s]
            t = t + 1
            s = s + 32
            continue 
        s = sha3(sha3(stor14, 12)) + (Mask(251, 0, arg3.length + 31) >> 5)
        while sha3(sha3(stor14, 12)) + (stor12[stor14].length + 31 / 32) > s:
            stor[s] = 0
            s = s + 1
            continue 
        idx = idx + 1
        continue 
    mem[ceil32(arg3.length) + 128] = arg1
    mem[ceil32(arg3.length) + 160] = arg2
    emit Minted(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32], Array(len=arg3.length, data=arg3[all]));
    mem[ceil32(arg3.length) + 128] = 1
    return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x654552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[208 len 20]
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[213 len 15]
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77,
                    mem[205 len 23]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x684552433732313a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[200 len 28]
    if approved[arg3]:
        approved[arg3] = 0
    if 1 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if 1 > tokenOfOwnerByIndex[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if tokenOfOwnerByIndex[address(arg1)] - 1 != stor6[arg3]:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not ownerOf[arg3]:
        revert with 0, 32, 44, 0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
    if not ownerOf[arg3]:
        revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[237 len 23]
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 32, 44, 0x654552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[245 len 15]
    if not ownerOf[arg3]:
        revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[237 len 23]
    if ownerOf[arg3] != arg1:
        revert with 0, 32, 41, 0x734552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[237 len 23]
    if not arg2:
        revert with 0, 32, 36, 0x684552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[232 len 28]
    if approved[arg3]:
        approved[arg3] = 0
    if 1 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if 1 > tokenOfOwnerByIndex[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if tokenOfOwnerByIndex[address(arg1)] - 1 != stor6[arg3]:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        if ext_code.hash(arg2):
            mem[452 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
            mem[640 len 4] = 0
            call arg2.0x80 with:
                 gas gas_remaining wei
                args 0, mem[612 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'sERC721: transfer to non ERC721Receiver implementefer to non ERC'
            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[ceil32(return_data.size) + 571 len 14]
            require return_data.size >= 32
            if Mask(32, 224, mem[484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[ceil32(return_data.size) + 571 len 14]
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    if ownerOf[arg1] != msg.sender:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x654552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[208 len 20]
        if approved[arg1] != msg.sender:
            if not stor4[stor1[arg1]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            48,
                            0x6e4552433732314275726e61626c653a2063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[212 len 16]
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    if ownerOf[arg1] != ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x734552433732313a206275726e206f6620746f6b656e2074686174206973206e6f74206f77,
                    mem[201 len 27]
    if approved[arg1]:
        approved[arg1] = 0
    if 1 > balanceOf[stor1[arg1]]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[stor1[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
    if 1 > tokenOfOwnerByIndex[stor1[arg1]]:
        revert with 0, 'SafeMath: subtraction overflow'
    if tokenOfOwnerByIndex[stor1[arg1]] - 1 != stor6[arg1]:
        require tokenOfOwnerByIndex[stor1[arg1]] - 1 < tokenOfOwnerByIndex[stor1[arg1]]
        require stor6[arg1] < tokenOfOwnerByIndex[stor1[arg1]]
        tokenOfOwnerByIndex[stor1[arg1]][stor6[arg1]] = tokenOfOwnerByIndex[stor1[arg1]][tokenOfOwnerByIndex[stor1[arg1]]]
        stor6[stor5[stor1[arg1]][stor5[stor1[arg1]]]] = stor6[arg1]
    tokenOfOwnerByIndex[stor1[arg1]]--
    if tokenOfOwnerByIndex[stor1[arg1]] > tokenOfOwnerByIndex[stor1[arg1]] - 1:
        idx = tokenOfOwnerByIndex[stor1[arg1]] - 1
        while tokenOfOwnerByIndex[stor1[arg1]] > idx:
            tokenOfOwnerByIndex[stor1[arg1]][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg1] = 0
    if 1 > tokenByIndex.length:
        revert with 0, 'SafeMath: subtraction overflow'
    require tokenByIndex.length - 1 < tokenByIndex.length
    require stor8[arg1] < tokenByIndex.length
    tokenByIndex[stor8[arg1]] = tokenByIndex[tokenByIndex.length]
    stor8[stor7[stor7.length]] = stor8[arg1]
    tokenByIndex.length--
    if tokenByIndex.length > tokenByIndex.length - 1:
        idx = tokenByIndex.length - 1
        while tokenByIndex.length > idx:
            tokenByIndex[idx] = 0
            idx = idx + 1
            continue 
    stor8[arg1] = 0
    if Mask(255, 1, stor12[arg1].field_0 and (256 * not bool(stor12[arg1].field_0)) - 1):
        stor12[arg1].field_0 = 0
        if 31 < stor12[arg1].length:
            idx = 0
            while stor12[arg1].length + 31 / 32 > idx:
                stor12[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if not ownerOf[arg3]:
        revert with 0, 
                    32,
                    44,
                    0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 240 len 20]
    if not ownerOf[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 237 len 23]
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 
                        32,
                        44,
                        0x654552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[ceil32(arg4.length) + 240 len 20]
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[ceil32(arg4.length) + 245 len 15]
    if not ownerOf[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 237 len 23]
    if ownerOf[arg3] != arg1:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77,
                    mem[ceil32(arg4.length) + 237 len 23]
    if not arg2:
        revert with 0, 
                    32,
                    36,
                    0x684552433732313a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[ceil32(arg4.length) + 232 len 28]
    if approved[arg3]:
        approved[arg3] = 0
    mem[ceil32(arg4.length) + 128] = 30
    if 1 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if 1 > tokenOfOwnerByIndex[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if tokenOfOwnerByIndex[address(arg1)] - 1 != stor6[arg3]:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        if ext_code.hash(arg2):
            mem[ceil32(arg4.length) + 388] = 128
            mem[ceil32(arg4.length) + 420] = arg4.length
            mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (3 * floor32(arg4.length + 164)) + (-2 * arg4.length) - 40 len arg4.length + -floor32(arg4.length + 164) + 164]
                call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                     gas gas_remaining wei
                    args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length:
                            revert with arg4[all]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                    require arg4.length >= 32
                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                else:
                    mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                    require return_data.size >= 32
                    if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (3 * floor32(floor32(arg4.length) + 196)) + (-2 * floor32(arg4.length)) - 104 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                     gas gas_remaining wei
                    args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length:
                            revert with arg4[all]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                    require arg4.length >= 32
                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                else:
                    mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                    require return_data.size >= 32
                    if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
}

function batchTransfer(uint256[] arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if arg2.length != arg1.length:
        revert with 0, 
                    32,
                    50,
                    0x72726563697069656e7473206c656e6774682073686f756c6420626520657175616c20746f2076616c756573206c656e6774,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 278 len 14]
    idx = 0
    while idx < arg1.length:
        require idx < mem[(32 * arg1.length) + 128]
        _326 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[96]
        _331 = mem[(32 * idx) + 128]
        if not ownerOf[mem[(32 * idx) + 128]]:
            revert with 0, 
                        32,
                        44,
                        0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[mem[64] + 112 len 20]
        if not ownerOf[mem[(32 * idx) + 128]]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[mem[64] + 109 len 23]
        if msg.sender == ownerOf[mem[(32 * idx) + 128]]:
            if not ownerOf[mem[(32 * idx) + 128]]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[mem[64] + 109 len 23]
            if ownerOf[mem[(32 * idx) + 128]] != msg.sender:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77,
                            mem[mem[64] + 109 len 23]
            if not mem[(32 * idx) + (32 * arg1.length) + 172 len 20]:
                revert with 0, 32, 36, 0x684552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
            if not approved[mem[(32 * idx) + 128]]:
                mem[0] = msg.sender
                mem[32] = 3
                _365 = mem[64]
                mem[64] = mem[64] + 64
                mem[_365] = 30
                mem[_365 + 32] = 'SafeMath: subtraction overflow'
                if 1 > balanceOf[address(msg.sender)]:
                    _373 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _373 + 68] = mem[idx + _365 + 32]
                        idx = idx + 32
                        continue 
                    mem[_373 + 68] = mem[_373 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _373 + -mem[64] + 100
                balanceOf[address(msg.sender)]--
                balanceOf[address(_326)]++
                ownerOf[_331] = address(_326)
                emit Transfer(msg.sender, address(_326), _331);
                mem[0] = msg.sender
                mem[32] = 5
                _417 = mem[64]
                mem[64] = mem[64] + 64
                mem[_417] = 30
                mem[_417 + 32] = 'SafeMath: subtraction overflow'
                if 1 > tokenOfOwnerByIndex[address(msg.sender)]:
                    _433 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _433 + 68] = mem[idx + _417 + 32]
                        idx = idx + 32
                        continue 
                    mem[_433 + 68] = mem[_433 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _433 + -mem[64] + 100
            else:
                approved[mem[(32 * idx) + 128]] = 0
                mem[0] = msg.sender
                mem[32] = 3
                _366 = mem[64]
                mem[64] = mem[64] + 64
                mem[_366] = 30
                mem[_366 + 32] = 'SafeMath: subtraction overflow'
                if 1 > balanceOf[address(msg.sender)]:
                    _376 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _376 + 68] = mem[idx + _366 + 32]
                        idx = idx + 32
                        continue 
                    mem[_376 + 68] = mem[_376 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _376 + -mem[64] + 100
                balanceOf[address(msg.sender)]--
                balanceOf[address(_326)]++
                ownerOf[_331] = address(_326)
                emit Transfer(msg.sender, address(_326), _331);
                mem[0] = msg.sender
                mem[32] = 5
                _418 = mem[64]
                mem[64] = mem[64] + 64
                mem[_418] = 30
                mem[_418 + 32] = 'SafeMath: subtraction overflow'
                if 1 > tokenOfOwnerByIndex[address(msg.sender)]:
                    _436 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _436 + 68] = mem[idx + _418 + 32]
                        idx = idx + 32
                        continue 
                    mem[_436 + 68] = mem[_436 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _436 + -mem[64] + 100
        else:
            if not ownerOf[mem[(32 * idx) + 128]]:
                revert with 0, 
                            32,
                            44,
                            0x654552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[mem[64] + 112 len 20]
            if approved[mem[(32 * idx) + 128]] == msg.sender:
                if not ownerOf[mem[(32 * idx) + 128]]:
                    revert with 0, 
                                32,
                                41,
                                0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                                mem[mem[64] + 109 len 23]
                if ownerOf[mem[(32 * idx) + 128]] != msg.sender:
                    revert with 0, 
                                32,
                                41,
                                0x734552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77,
                                mem[mem[64] + 109 len 23]
                if not mem[(32 * idx) + (32 * arg1.length) + 172 len 20]:
                    revert with 0, 32, 36, 0x684552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                if not approved[mem[(32 * idx) + 128]]:
                    mem[0] = msg.sender
                    mem[32] = 3
                    _399 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_399] = 30
                    mem[_399 + 32] = 'SafeMath: subtraction overflow'
                    if 1 > balanceOf[address(msg.sender)]:
                        _407 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _407 + 68] = mem[idx + _399 + 32]
                            idx = idx + 32
                            continue 
                        mem[_407 + 68] = mem[_407 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _407 + -mem[64] + 100
                    balanceOf[address(msg.sender)]--
                    balanceOf[address(_326)]++
                    ownerOf[_331] = address(_326)
                    emit Transfer(msg.sender, address(_326), _331);
                    mem[0] = msg.sender
                    mem[32] = 5
                    _479 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_479] = 30
                    mem[_479 + 32] = 'SafeMath: subtraction overflow'
                    if 1 > tokenOfOwnerByIndex[address(msg.sender)]:
                        _491 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _491 + 68] = mem[idx + _479 + 32]
                            idx = idx + 32
                            continue 
                        mem[_491 + 68] = mem[_491 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _491 + -mem[64] + 100
                else:
                    approved[mem[(32 * idx) + 128]] = 0
                    mem[0] = msg.sender
                    mem[32] = 3
                    _400 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_400] = 30
                    mem[_400 + 32] = 'SafeMath: subtraction overflow'
                    if 1 > balanceOf[address(msg.sender)]:
                        _410 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _410 + 68] = mem[idx + _400 + 32]
                            idx = idx + 32
                            continue 
                        mem[_410 + 68] = mem[_410 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _410 + -mem[64] + 100
                    balanceOf[address(msg.sender)]--
                    balanceOf[address(_326)]++
                    ownerOf[_331] = address(_326)
                    emit Transfer(msg.sender, address(_326), _331);
                    mem[0] = msg.sender
                    mem[32] = 5
                    _480 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_480] = 30
                    mem[_480 + 32] = 'SafeMath: subtraction overflow'
                    if 1 > tokenOfOwnerByIndex[address(msg.sender)]:
                        _494 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _494 + 68] = mem[idx + _480 + 32]
                            idx = idx + 32
                            continue 
                        mem[_494 + 68] = mem[_494 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _494 + -mem[64] + 100
            else:
                if not stor4[stor1[mem[(32 * idx) + 128]]][address(msg.sender)]:
                    revert with 0, 
                                32,
                                49,
                                0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                                mem[mem[64] + 117 len 15]
                if not ownerOf[mem[(32 * idx) + 128]]:
                    revert with 0, 
                                32,
                                41,
                                0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                                mem[mem[64] + 109 len 23]
                if ownerOf[mem[(32 * idx) + 128]] != msg.sender:
                    revert with 0, 
                                32,
                                41,
                                0x734552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77,
                                mem[mem[64] + 109 len 23]
                if not mem[(32 * idx) + (32 * arg1.length) + 172 len 20]:
                    revert with 0, 32, 36, 0x684552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                if not approved[mem[(32 * idx) + 128]]:
                    mem[0] = msg.sender
                    mem[32] = 3
                    _413 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_413] = 30
                    mem[_413 + 32] = 'SafeMath: subtraction overflow'
                    if 1 > balanceOf[address(msg.sender)]:
                        _421 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _421 + 68] = mem[idx + _413 + 32]
                            idx = idx + 32
                            continue 
                        mem[_421 + 68] = mem[_421 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _421 + -mem[64] + 100
                    balanceOf[address(msg.sender)]--
                    balanceOf[address(_326)]++
                    ownerOf[_331] = address(_326)
                    emit Transfer(msg.sender, address(_326), _331);
                    mem[0] = msg.sender
                    mem[32] = 5
                    _497 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_497] = 30
                    mem[_497 + 32] = 'SafeMath: subtraction overflow'
                    if 1 > tokenOfOwnerByIndex[address(msg.sender)]:
                        _511 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _511 + 68] = mem[idx + _497 + 32]
                            idx = idx + 32
                            continue 
                        mem[_511 + 68] = mem[_511 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _511 + -mem[64] + 100
                else:
                    approved[mem[(32 * idx) + 128]] = 0
                    mem[0] = msg.sender
                    mem[32] = 3
                    _414 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_414] = 30
                    mem[_414 + 32] = 'SafeMath: subtraction overflow'
                    if 1 > balanceOf[address(msg.sender)]:
                        _424 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _424 + 68] = mem[idx + _414 + 32]
                            idx = idx + 32
                            continue 
                        mem[_424 + 68] = mem[_424 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _424 + -mem[64] + 100
                    balanceOf[address(msg.sender)]--
                    balanceOf[address(_326)]++
                    ownerOf[_331] = address(_326)
                    emit Transfer(msg.sender, address(_326), _331);
                    mem[0] = msg.sender
                    mem[32] = 5
                    _498 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_498] = 30
                    mem[_498 + 32] = 'SafeMath: subtraction overflow'
                    if 1 > tokenOfOwnerByIndex[address(msg.sender)]:
                        _514 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _514 + 68] = mem[idx + _498 + 32]
                            idx = idx + 32
                            continue 
                        mem[_514 + 68] = mem[_514 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _514 + -mem[64] + 100
        ('le', 1, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'tokenOfOwnerByIndex', 5))))
        if tokenOfOwnerByIndex[address(msg.sender)] - 1 != stor6[_331]:
            require tokenOfOwnerByIndex[address(msg.sender)] - 1 < tokenOfOwnerByIndex[address(msg.sender)]
            require stor6[_331] < tokenOfOwnerByIndex[address(msg.sender)]
            tokenOfOwnerByIndex[address(msg.sender)][stor6[_331]] = tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]]
            stor6[stor5[address(msg.sender)][stor5[address(msg.sender)]]] = stor6[_331]
        tokenOfOwnerByIndex[address(msg.sender)]--
        if tokenOfOwnerByIndex[address(msg.sender)] > tokenOfOwnerByIndex[address(msg.sender)] - 1:
            s = tokenOfOwnerByIndex[address(msg.sender)] + sha3(sha3(address(msg.sender), 5)) - 1
            while sha3(sha3(address(msg.sender), 5)) + tokenOfOwnerByIndex[address(msg.sender)] > s:
                stor[s] = 0
                s = s + 1
                continue 
        stor6[_331] = tokenOfOwnerByIndex[address(_326)]
        mem[32] = 5
        tokenOfOwnerByIndex[address(_326)]++
        mem[0] = sha3(address(_326), 5)
        tokenOfOwnerByIndex[address(_326)][tokenOfOwnerByIndex[address(_326)]] = _331
        idx = idx + 1
        continue 
    _322 = mem[64]
    mem[mem[64]] = msg.sender
    mem[mem[64] + 32] = 96
    mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
    _324 = mem[(32 * arg1.length) + 128]
    mem[mem[64] + 128 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
    mem[mem[64] + 64] = (32 * _324) + 128
    mem[(32 * _324) + _322 + 128] = mem[96]
    mem[(32 * _324) + _322 + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    emit TransferBatch(address rg1, address[] rg2, uint256[] rg3):
                       mem[mem[64] len (32 * mem[96]) + (32 * _324) + _322 + -mem[64] + 160],
    return 1
}

function batchBurn(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if not msg.sender:
        revert with 0, 32, 34, 0x6e526f6c65733a206163636f756e7420697320746865207a65726f20616464726573, mem[(32 * arg1.length) + 230 len 30]
    mem[0] = msg.sender
    mem[32] = 13
    if not stor13[address(msg.sender)]:
        revert with 0, 
                    32,
                    48,
                    0x6e4d696e746572526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d696e74657220726f6c,
                    mem[(32 * arg1.length) + 244 len 16]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _263 = mem[(32 * idx) + 128]
        if not ownerOf[mem[(32 * idx) + 128]]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[mem[64] + 109 len 23]
        if ownerOf[mem[(32 * idx) + 128]] != msg.sender:
            revert with 0, 32, 37, 0x734552433732313a206275726e206f6620746f6b656e2074686174206973206e6f74206f77, mem[mem[64] + 105 len 27]
        if not approved[mem[(32 * idx) + 128]]:
            mem[0] = msg.sender
            mem[32] = 3
            _275 = mem[64]
            mem[64] = mem[64] + 64
            mem[_275] = 30
            mem[_275 + 32] = 'SafeMath: subtraction overflow'
            if 1 > balanceOf[address(msg.sender)]:
                _277 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _277 + 68] = mem[idx + _275 + 32]
                    idx = idx + 32
                    continue 
                mem[_277 + 68] = mem[_277 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _277 + -mem[64] + 100
            balanceOf[address(msg.sender)]--
            ownerOf[_263] = 0
            emit Transfer(msg.sender, 0, _263);
            mem[0] = msg.sender
            mem[32] = 5
            _297 = mem[64]
            mem[64] = mem[64] + 64
            mem[_297] = 30
            mem[_297 + 32] = 'SafeMath: subtraction overflow'
            if 1 > tokenOfOwnerByIndex[address(msg.sender)]:
                _299 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _299 + 68] = mem[idx + _297 + 32]
                    idx = idx + 32
                    continue 
                mem[_299 + 68] = mem[_299 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _299 + -mem[64] + 100
            if tokenOfOwnerByIndex[address(msg.sender)] - 1 == stor6[_263]:
                tokenOfOwnerByIndex[address(msg.sender)]--
                if tokenOfOwnerByIndex[address(msg.sender)] <= tokenOfOwnerByIndex[address(msg.sender)] - 1:
                    mem[0] = _263
                    mem[32] = 6
                    stor6[_263] = 0
                    _335 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_335] = 30
                    mem[_335 + 32] = 'SafeMath: subtraction overflow'
                    if 1 > tokenByIndex.length:
                        _339 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _339 + 68] = mem[idx + _335 + 32]
                            idx = idx + 32
                            continue 
                        mem[_339 + 68] = mem[_339 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _339 + -mem[64] + 100
                    require tokenByIndex.length - 1 < tokenByIndex.length
                    require stor8[_263] < tokenByIndex.length
                    tokenByIndex[stor8[_263]] = tokenByIndex[tokenByIndex.length]
                    stor8[stor7[stor7.length]] = stor8[_263]
                    tokenByIndex.length--
                    if tokenByIndex.length > tokenByIndex.length - 1:
                        s = tokenByIndex.length + sha3(7) - 1
                        while sha3(7) + tokenByIndex.length > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    stor8[_263] = 0
                    mem[0] = _263
                    mem[32] = 12
                    if Mask(255, 1, stor12[_263].field_0 and (256 * not bool(stor12[_263].field_0)) - 1):
                        mem[0] = _263
                        mem[32] = 12
                        stor12[_263].field_0 = 0
                        if 31 < stor12[_263].length:
                            mem[0] = sha3(_263, 12)
                            s = sha3(sha3(_263, 12))
                            while sha3(sha3(_263, 12)) + (stor12[_263].length + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
                s = tokenOfOwnerByIndex[address(msg.sender)] + sha3(sha3(address(msg.sender), 5)) - 1
                while sha3(sha3(address(msg.sender), 5)) + tokenOfOwnerByIndex[address(msg.sender)] > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                mem[0] = _263
                mem[32] = 6
                stor6[_263] = 0
                _556 = mem[64]
                mem[64] = mem[64] + 64
                mem[_556] = 30
                mem[_556 + 32] = 'SafeMath: subtraction overflow'
                if 1 > tokenByIndex.length:
                    _564 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _564 + 68] = mem[idx + _556 + 32]
                        idx = idx + 32
                        continue 
                    mem[_564 + 68] = mem[_564 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _564 + -mem[64] + 100
                require tokenByIndex.length - 1 < tokenByIndex.length
                require stor8[_263] < tokenByIndex.length
                tokenByIndex[stor8[_263]] = tokenByIndex[tokenByIndex.length]
                stor8[stor7[stor7.length]] = stor8[_263]
                tokenByIndex.length--
                if tokenByIndex.length <= tokenByIndex.length - 1:
                    stor8[_263] = 0
                    mem[0] = _263
                    mem[32] = 12
                    if Mask(255, 1, stor12[_263].field_0 and (256 * not bool(stor12[_263].field_0)) - 1):
                        mem[0] = _263
                        mem[32] = 12
                        stor12[_263].field_0 = 0
                        if 31 < stor12[_263].length:
                            mem[0] = sha3(_263, 12)
                            s = sha3(sha3(_263, 12))
                            while sha3(sha3(_263, 12)) + (stor12[_263].length + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
                s = tokenByIndex.length + sha3(7) - 1
                while sha3(7) + tokenByIndex.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                stor8[_263] = 0
                mem[0] = _263
                mem[32] = 12
                if not Mask(255, 1, stor12[_263].field_0 and (256 * not bool(stor12[_263].field_0)) - 1):
                    idx = idx + 1
                    continue 
                mem[0] = _263
                mem[32] = 12
                stor12[_263].field_0 = 0
                if 31 >= stor12[_263].length:
                    idx = idx + 1
                    continue 
                mem[0] = sha3(_263, 12)
                s = sha3(sha3(_263, 12))
                while sha3(sha3(_263, 12)) + (stor12[_263].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                s = sha3(sha3(_263, 12)) + (stor12[_263].length + 31 / 32) + 1
                continue 
            require tokenOfOwnerByIndex[address(msg.sender)] - 1 < tokenOfOwnerByIndex[address(msg.sender)]
            require stor6[_263] < tokenOfOwnerByIndex[address(msg.sender)]
            tokenOfOwnerByIndex[address(msg.sender)][stor6[_263]] = tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]]
            stor6[stor5[address(msg.sender)][stor5[address(msg.sender)]]] = stor6[_263]
            tokenOfOwnerByIndex[address(msg.sender)]--
            if tokenOfOwnerByIndex[address(msg.sender)] <= tokenOfOwnerByIndex[address(msg.sender)] - 1:
                mem[0] = _263
                mem[32] = 6
                stor6[_263] = 0
                _346 = mem[64]
                mem[64] = mem[64] + 64
                mem[_346] = 30
                mem[_346 + 32] = 'SafeMath: subtraction overflow'
                if 1 > tokenByIndex.length:
                    _357 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _357 + 68] = mem[idx + _346 + 32]
                        idx = idx + 32
                        continue 
                    mem[_357 + 68] = mem[_357 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _357 + -mem[64] + 100
            else:
                s = tokenOfOwnerByIndex[address(msg.sender)] + sha3(sha3(address(msg.sender), 5)) - 1
                while sha3(sha3(address(msg.sender), 5)) + tokenOfOwnerByIndex[address(msg.sender)] > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                mem[0] = _263
                mem[32] = 6
                stor6[_263] = 0
                _558 = mem[64]
                mem[64] = mem[64] + 64
                mem[_558] = 30
                mem[_558 + 32] = 'SafeMath: subtraction overflow'
                if 1 > tokenByIndex.length:
                    _568 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _568 + 68] = mem[idx + _558 + 32]
                        idx = idx + 32
                        continue 
                    mem[_568 + 68] = mem[_568 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _568 + -mem[64] + 100
        else:
            approved[mem[(32 * idx) + 128]] = 0
            mem[0] = msg.sender
            mem[32] = 3
            _276 = mem[64]
            mem[64] = mem[64] + 64
            mem[_276] = 30
            mem[_276 + 32] = 'SafeMath: subtraction overflow'
            if 1 > balanceOf[address(msg.sender)]:
                _280 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _280 + 68] = mem[idx + _276 + 32]
                    idx = idx + 32
                    continue 
                mem[_280 + 68] = mem[_280 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _280 + -mem[64] + 100
            balanceOf[address(msg.sender)]--
            ownerOf[_263] = 0
            emit Transfer(msg.sender, 0, _263);
            mem[0] = msg.sender
            mem[32] = 5
            _298 = mem[64]
            mem[64] = mem[64] + 64
            mem[_298] = 30
            mem[_298 + 32] = 'SafeMath: subtraction overflow'
            if 1 > tokenOfOwnerByIndex[address(msg.sender)]:
                _302 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _302 + 68] = mem[idx + _298 + 32]
                    idx = idx + 32
                    continue 
                mem[_302 + 68] = mem[_302 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _302 + -mem[64] + 100
            if tokenOfOwnerByIndex[address(msg.sender)] - 1 == stor6[_263]:
                tokenOfOwnerByIndex[address(msg.sender)]--
                if tokenOfOwnerByIndex[address(msg.sender)] <= tokenOfOwnerByIndex[address(msg.sender)] - 1:
                    mem[0] = _263
                    mem[32] = 6
                    stor6[_263] = 0
                    _336 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_336] = 30
                    mem[_336 + 32] = 'SafeMath: subtraction overflow'
                    if 1 > tokenByIndex.length:
                        _342 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _342 + 68] = mem[idx + _336 + 32]
                            idx = idx + 32
                            continue 
                        mem[_342 + 68] = mem[_342 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _342 + -mem[64] + 100
                    require tokenByIndex.length - 1 < tokenByIndex.length
                    require stor8[_263] < tokenByIndex.length
                    tokenByIndex[stor8[_263]] = tokenByIndex[tokenByIndex.length]
                    stor8[stor7[stor7.length]] = stor8[_263]
                    tokenByIndex.length--
                    if tokenByIndex.length > tokenByIndex.length - 1:
                        s = tokenByIndex.length + sha3(7) - 1
                        while sha3(7) + tokenByIndex.length > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    stor8[_263] = 0
                    mem[0] = _263
                    mem[32] = 12
                    if Mask(255, 1, stor12[_263].field_0 and (256 * not bool(stor12[_263].field_0)) - 1):
                        mem[0] = _263
                        mem[32] = 12
                        stor12[_263].field_0 = 0
                        if 31 < stor12[_263].length:
                            mem[0] = sha3(_263, 12)
                            s = sha3(sha3(_263, 12))
                            while sha3(sha3(_263, 12)) + (stor12[_263].length + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
                s = tokenOfOwnerByIndex[address(msg.sender)] + sha3(sha3(address(msg.sender), 5)) - 1
                while sha3(sha3(address(msg.sender), 5)) + tokenOfOwnerByIndex[address(msg.sender)] > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                mem[0] = _263
                mem[32] = 6
                stor6[_263] = 0
                _560 = mem[64]
                mem[64] = mem[64] + 64
                mem[_560] = 30
                mem[_560 + 32] = 'SafeMath: subtraction overflow'
                if 1 > tokenByIndex.length:
                    _572 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _572 + 68] = mem[idx + _560 + 32]
                        idx = idx + 32
                        continue 
                    mem[_572 + 68] = mem[_572 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _572 + -mem[64] + 100
                require tokenByIndex.length - 1 < tokenByIndex.length
                require stor8[_263] < tokenByIndex.length
                tokenByIndex[stor8[_263]] = tokenByIndex[tokenByIndex.length]
                stor8[stor7[stor7.length]] = stor8[_263]
                tokenByIndex.length--
                if tokenByIndex.length <= tokenByIndex.length - 1:
                    stor8[_263] = 0
                    mem[0] = _263
                    mem[32] = 12
                    if Mask(255, 1, stor12[_263].field_0 and (256 * not bool(stor12[_263].field_0)) - 1):
                        mem[0] = _263
                        mem[32] = 12
                        stor12[_263].field_0 = 0
                        if 31 < stor12[_263].length:
                            mem[0] = sha3(_263, 12)
                            s = sha3(sha3(_263, 12))
                            while sha3(sha3(_263, 12)) + (stor12[_263].length + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
                s = tokenByIndex.length + sha3(7) - 1
                while sha3(7) + tokenByIndex.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                stor8[_263] = 0
                mem[0] = _263
                mem[32] = 12
                if not Mask(255, 1, stor12[_263].field_0 and (256 * not bool(stor12[_263].field_0)) - 1):
                    idx = idx + 1
                    continue 
                mem[0] = _263
                mem[32] = 12
                stor12[_263].field_0 = 0
                if 31 >= stor12[_263].length:
                    idx = idx + 1
                    continue 
                mem[0] = sha3(_263, 12)
                s = sha3(sha3(_263, 12))
                while sha3(sha3(_263, 12)) + (stor12[_263].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                s = sha3(sha3(_263, 12)) + (stor12[_263].length + 31 / 32) + 1
                continue 
            require tokenOfOwnerByIndex[address(msg.sender)] - 1 < tokenOfOwnerByIndex[address(msg.sender)]
            require stor6[_263] < tokenOfOwnerByIndex[address(msg.sender)]
            tokenOfOwnerByIndex[address(msg.sender)][stor6[_263]] = tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]]
            stor6[stor5[address(msg.sender)][stor5[address(msg.sender)]]] = stor6[_263]
            tokenOfOwnerByIndex[address(msg.sender)]--
            if tokenOfOwnerByIndex[address(msg.sender)] <= tokenOfOwnerByIndex[address(msg.sender)] - 1:
                mem[0] = _263
                mem[32] = 6
                stor6[_263] = 0
                _348 = mem[64]
                mem[64] = mem[64] + 64
                mem[_348] = 30
                mem[_348 + 32] = 'SafeMath: subtraction overflow'
                if 1 > tokenByIndex.length:
                    _364 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _364 + 68] = mem[idx + _348 + 32]
                        idx = idx + 32
                        continue 
                    mem[_364 + 68] = mem[_364 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _364 + -mem[64] + 100
            else:
                s = tokenOfOwnerByIndex[address(msg.sender)] + sha3(sha3(address(msg.sender), 5)) - 1
                while sha3(sha3(address(msg.sender), 5)) + tokenOfOwnerByIndex[address(msg.sender)] > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                mem[0] = _263
                mem[32] = 6
                stor6[_263] = 0
                _562 = mem[64]
                mem[64] = mem[64] + 64
                mem[_562] = 30
                mem[_562 + 32] = 'SafeMath: subtraction overflow'
                if 1 > tokenByIndex.length:
                    _576 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _576 + 68] = mem[idx + _562 + 32]
                        idx = idx + 32
                        continue 
                    mem[_576 + 68] = mem[_576 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _576 + -mem[64] + 100
        ('le', 1, ('stor', ('length', ('name', 'tokenByIndex', 7))))
        require tokenByIndex.length - 1 < tokenByIndex.length
        require stor8[_263] < tokenByIndex.length
        tokenByIndex[stor8[_263]] = tokenByIndex[tokenByIndex.length]
        stor8[stor7[stor7.length]] = stor8[_263]
        tokenByIndex.length--
        if tokenByIndex.length > tokenByIndex.length - 1:
            s = tokenByIndex.length + sha3(7) - 1
            while sha3(7) + tokenByIndex.length > s:
                stor[s] = 0
                s = s + 1
                continue 
        stor8[_263] = 0
        mem[0] = _263
        mem[32] = 12
        if Mask(255, 1, stor12[_263].field_0 and (256 * not bool(stor12[_263].field_0)) - 1):
            mem[0] = _263
            mem[32] = 12
            stor12[_263].field_0 = 0
            if 31 < stor12[_263].length:
                mem[0] = sha3(_263, 12)
                s = sha3(sha3(_263, 12))
                while sha3(sha3(_263, 12)) + (stor12[_263].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
        idx = idx + 1
        continue 
    mem[mem[64]] = msg.sender
    mem[mem[64] + 32] = 64
    mem[mem[64] + 64] = mem[96]
    mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    emit 0xe273d72a: msg.sender, 64, mem[mem[64] + 64 len (32 * mem[96]) + 32]
}



}
