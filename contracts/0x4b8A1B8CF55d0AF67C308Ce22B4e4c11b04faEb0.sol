contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
array of struct tokenOfOwnerByIndex;
mapping of uint256 stor6;
array of uint256 tokenByIndex;
mapping of uint256 stor8;
array of uint256 name;
array of uint256 symbol;
array of struct baseURI;
mapping of struct stor12;
address _governanceAddress;
mapping of uint8 stor14;

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
                    0x6e4552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function _governance() payable {
    return _governanceAddress
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
    require arg2 < tokenOfOwnerByIndex[address(arg1)].field_0
    return tokenOfOwnerByIndex[address(arg1)][arg2].field_0
}

function _minters(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor14[arg1])
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

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor4[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    stor14[address(arg1)] = 1
}

function removeMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    stor14[address(arg1)] = 0
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor4[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    if not arg1:
        revert with 0, 'new governance the zero address'
    emit GovernanceTransferred(_governanceAddress, arg1);
    _governanceAddress = arg1
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

function tokensOfOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if not tokenOfOwnerByIndex[address(arg1)].field_0:
        mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 128] = 32
        mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 160] = tokenOfOwnerByIndex[address(arg1)].field_0
        mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 192 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)] = mem[128 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)]
        return memory
          from (32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 128
           len (96 * tokenOfOwnerByIndex[address(arg1)].field_0) + 64
    mem[128] = tokenOfOwnerByIndex[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = tokenOfOwnerByIndex[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 192 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)] = mem[128 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)]
    return Array(len=tokenOfOwnerByIndex[address(arg1)].field_0, data=mem[128 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)], mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + floor32(tokenOfOwnerByIndex[address(arg1)].field_0) + 192 len (32 * tokenOfOwnerByIndex[address(arg1)].field_0) - floor32(tokenOfOwnerByIndex[address(arg1)].field_0)]), 
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor14[address(msg.sender)]:
        revert with 0, '!minter'
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[arg2]:
        revert with 0, 'ERC721: token already minted'
    ownerOf[arg2] = arg1
    balanceOf[address(arg1)]++
    emit Transfer(0, arg1, arg2);
    stor6[arg2] = tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)].field_0++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = arg2
    stor8[arg2] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg2
    if not arg2:
        if not ownerOf[arg2]:
            revert with 0, 32, 44, 0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65, mem[272 len 20]
        stor12[arg2].field_0 = 0
        stor12[arg2].field_1 = 1
        stor12[arg2].field_8 = '0' / 256
        idx = 0
        while stor12[arg2].length + 31 / 32 > idx:
            stor12[arg2][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg2
        while idx:
            s = s + 1
            idx = idx / 10
            continue 
        mem[96] = s
        mem[64] = ceil32(s) + 128
        if s:
            mem[128 len s] = code.data[15393 len s]
        t = s - 1
        idx = arg2
        while idx:
            require t < mem[96]
            mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        if not ownerOf[arg2]:
            revert with 0, 
                        32,
                        44,
                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                        mem[mem[64] + 112 len 20]
        stor12[arg2][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
    return 1
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
    if not stor12[arg1].length:
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
    mem[ceil32(stor12[arg1].length) + baseURI.length + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[ceil32(stor12[arg1].length) + baseURI.length + floor32(mem[96]) + -(mem[96] % 32) + 192 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
    _310 = mem[64]
    mem[64] = mem[96] + ceil32(stor12[arg1].length) + baseURI.length + 160
    mem[mem[96] + ceil32(stor12[arg1].length) + baseURI.length + 160] = 32
    mem[mem[96] + ceil32(stor12[arg1].length) + baseURI.length + 192] = mem[_310]
    _320 = mem[_310]
    mem[mem[96] + ceil32(stor12[arg1].length) + baseURI.length + 224 len ceil32(mem[_310])] = mem[_310 + 32 len ceil32(mem[_310])]
    if not _320 % 32:
        return 32, mem[mem[96] + ceil32(stor12[arg1].length) + baseURI.length + 192 len _320 + 32]
    mem[floor32(_320) + mem[96] + ceil32(stor12[arg1].length) + baseURI.length + 224] = mem[floor32(_320) + mem[96] + ceil32(stor12[arg1].length) + baseURI.length + -(_320 % 32) + 256 len _320 % 32]
    return 32, mem[mem[96] + ceil32(stor12[arg1].length) + baseURI.length + 192 len floor32(_320) + 64]
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
                        0x6e4552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
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
                    0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77,
                    mem[205 len 23]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x724552433732313a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[200 len 28]
    if approved[arg3]:
        approved[arg3] = 0
    if 1 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if 1 > tokenOfOwnerByIndex[address(arg1)].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor6[arg3] != tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
        require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
        tokenOfOwnerByIndex[address(arg1)][stor6[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
        stor6[stor5[address(arg1)][stor5[address(arg1)].field_0].field_0] = stor6[arg3]
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor14[address(msg.sender)]:
        revert with 0, '!minter'
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
                        0x6e4552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[208 len 20]
        if approved[arg1] != msg.sender:
            if not stor4[stor1[arg1]][address(msg.sender)]:
                revert with 0, 'caller is not owner nor approved'
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
    if 1 > tokenOfOwnerByIndex[stor1[arg1]].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor6[arg1] != tokenOfOwnerByIndex[stor1[arg1]].field_0 - 1:
        require tokenOfOwnerByIndex[stor1[arg1]].field_0 - 1 < tokenOfOwnerByIndex[stor1[arg1]].field_0
        require stor6[arg1] < tokenOfOwnerByIndex[stor1[arg1]].field_0
        tokenOfOwnerByIndex[stor1[arg1]][stor6[arg1]].field_0 = tokenOfOwnerByIndex[stor1[arg1]][tokenOfOwnerByIndex[stor1[arg1]].field_0].field_0
        stor6[stor5[stor1[arg1]][stor5[stor1[arg1]].field_0].field_0] = stor6[arg1]
    tokenOfOwnerByIndex[stor1[arg1]].field_0--
    if tokenOfOwnerByIndex[stor1[arg1]].field_0 > tokenOfOwnerByIndex[stor1[arg1]].field_0 - 1:
        idx = tokenOfOwnerByIndex[stor1[arg1]].field_0 - 1
        while tokenOfOwnerByIndex[stor1[arg1]].field_0 > idx:
            tokenOfOwnerByIndex[stor1[arg1]][idx].field_0 = 0
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
    if Mask(255, 1, (256 * not stor12[arg1].field_0) - 1 and stor12[arg1].field_0):
        stor12[arg1].field_0 = 0
        if 31 < stor12[arg1].length:
            idx = 0
            while stor12[arg1].length + 31 / 32 > idx:
                stor12[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function safeMint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor14[address(msg.sender)]:
        revert with 0, '!minter'
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[arg2]:
        revert with 0, 'ERC721: token already minted'
    ownerOf[arg2] = arg1
    balanceOf[address(arg1)]++
    emit Transfer(0, arg1, arg2);
    stor6[arg2] = tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)].field_0++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = arg2
    stor8[arg2] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg2
    if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        if not arg2:
            if not ownerOf[arg2]:
                revert with 0, 32, 44, 0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65, mem[304 len 20]
            stor12[arg2].field_0 = 0
            stor12[arg2].field_1 = 1
            stor12[arg2].field_8 = '0' / 256
            idx = 0
            while stor12[arg2].length + 31 / 32 > idx:
                stor12[arg2][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = arg2
            while idx:
                s = s + 1
                idx = idx / 10
                continue 
            mem[128] = s
            mem[64] = ceil32(s) + 160
            if s:
                mem[160 len s] = code.data[15393 len s]
            t = s - 1
            idx = arg2
            while idx:
                require t < mem[128]
                mem[t + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            if not ownerOf[arg2]:
                revert with 0, 
                            32,
                            44,
                            0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                            mem[mem[64] + 112 len 20]
            stor12[arg2][].field_0 = Array(len=mem[128], data=mem[160 len mem[128]])
    else:
        if not ext_code.hash(arg1):
            if not arg2:
                if not ownerOf[arg2]:
                    revert with 0, 32, 44, 0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65, mem[304 len 20]
                stor12[arg2].field_0 = 0
                stor12[arg2].field_1 = 1
                stor12[arg2].field_8 = '0' / 256
                idx = 0
                while stor12[arg2].length + 31 / 32 > idx:
                    stor12[arg2][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = arg2
                while idx:
                    s = s + 1
                    idx = idx / 10
                    continue 
                mem[128] = s
                mem[64] = ceil32(s) + 160
                if s:
                    mem[160 len s] = code.data[15393 len s]
                t = s - 1
                idx = arg2
                while idx:
                    require t < mem[128]
                    mem[t + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                if not ownerOf[arg2]:
                    revert with 0, 
                                32,
                                44,
                                0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                mem[mem[64] + 112 len 20]
                stor12[arg2][].field_0 = Array(len=mem[128], data=mem[160 len mem[128]])
        else:
            mem[324 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, 0, arg2, 128, 0
            mem[512 len 4] = 0
            call arg1.0x80 with:
                 gas gas_remaining wei
                args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, 0, arg2, 128, 0) << 1024, mem[484 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            Mask(112, -800, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, 0, arg2, 128, 0) << 800
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[ceil32(return_data.size) + 443 len 14]
            require return_data.size >= 32
            if Mask(32, 224, mem[356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[ceil32(return_data.size) + 443 len 14]
            if not arg2:
                if not ownerOf[arg2]:
                    revert with 0, 
                                32,
                                44,
                                0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                mem[ceil32(return_data.size) + 501 len 20]
                stor12[arg2].field_0 = 0
                stor12[arg2].field_1 = 1
                stor12[arg2].field_8 = '0' / 256
                idx = 0
                while stor12[arg2].length + 31 / 32 > idx:
                    stor12[arg2][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = arg2
                while idx:
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s:
                    mem[ceil32(return_data.size) + 357 len s] = code.data[15393 len s]
                t = s - 1
                idx = arg2
                while idx:
                    require t < s
                    mem[ceil32(return_data.size) + t + 357 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                if not ownerOf[arg2]:
                    revert with 0, 
                                32,
                                44,
                                0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                mem[ceil32(return_data.size) + ceil32(s) + 469 len 20]
                stor12[arg2][].field_0 = Array(len=s, data=mem[ceil32(return_data.size) + 357 len s])
    return 1
}

function safeMint(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if not stor14[address(msg.sender)]:
        revert with 0, '!minter'
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[arg2]:
        revert with 0, 'ERC721: token already minted'
    ownerOf[arg2] = arg1
    balanceOf[address(arg1)]++
    emit Transfer(0, arg1, arg2);
    stor6[arg2] = tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)].field_0++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = arg2
    mem[32] = 8
    stor8[arg2] = tokenByIndex.length
    tokenByIndex.length++
    mem[0] = 7
    tokenByIndex[tokenByIndex.length] = arg2
    if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        if not arg2:
            if not ownerOf[arg2]:
                revert with 0, 
                            32,
                            44,
                            0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                            mem[ceil32(arg3.length) + 304 len 20]
            stor12[arg2].field_0 = 0
            stor12[arg2].field_1 = 1
            stor12[arg2].field_8 = '0' / 256
            idx = 0
            while stor12[arg2].length + 31 / 32 > idx:
                stor12[arg2][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = arg2
            while idx:
                s = s + 1
                idx = idx / 10
                continue 
            mem[ceil32(arg3.length) + 128] = s
            if s:
                mem[ceil32(arg3.length) + 160 len s] = code.data[15393 len s]
            t = s - 1
            idx = arg2
            while idx:
                require t < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[ceil32(arg3.length) + t + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            if not ownerOf[arg2]:
                revert with 0, 
                            32,
                            44,
                            0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                            mem[ceil32(arg3.length) + ceil32(s) + 272 len 20]
            stor12[arg2][].field_0 = Array(len=Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)], data=mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]])
    else:
        if not ext_code.hash(arg1):
            if not arg2:
                if not ownerOf[arg2]:
                    revert with 0, 
                                32,
                                44,
                                0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                mem[ceil32(arg3.length) + 304 len 20]
                stor12[arg2].field_0 = 0
                stor12[arg2].field_1 = 1
                stor12[arg2].field_8 = '0' / 256
                idx = 0
                while stor12[arg2].length + 31 / 32 > idx:
                    stor12[arg2][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = arg2
                while idx:
                    s = s + 1
                    idx = idx / 10
                    continue 
                mem[ceil32(arg3.length) + 128] = s
                if s:
                    mem[ceil32(arg3.length) + 160 len s] = code.data[15393 len s]
                t = s - 1
                idx = arg2
                while idx:
                    require t < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                    mem[ceil32(arg3.length) + t + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                if not ownerOf[arg2]:
                    revert with 0, 
                                32,
                                44,
                                0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                mem[ceil32(arg3.length) + ceil32(s) + 272 len 20]
                stor12[arg2][].field_0 = Array(len=Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)], data=mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]])
        else:
            mem[ceil32(arg3.length) + 164] = msg.sender
            mem[ceil32(arg3.length) + 196] = 0
            mem[ceil32(arg3.length) + 228] = arg2
            mem[ceil32(arg3.length) + 260] = 128
            mem[ceil32(arg3.length) + 292] = arg3.length
            mem[ceil32(arg3.length) + 324 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            if not arg3.length % 32:
                mem[ceil32(arg3.length) + 128] = arg3.length + 164
                mem[64] = arg3.length + ceil32(arg3.length) + 324
                mem[ceil32(arg3.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(arg3.length) + 160 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                _173 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[arg3.length + ceil32(arg3.length) + 324 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                mem[arg3.length + ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 324] = mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) + 256, mem[arg3.length + ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 324])
                call arg1.mem[arg3.length + ceil32(arg3.length) + 324 len 4] with:
                     gas gas_remaining wei
                    args mem[arg3.length + ceil32(arg3.length) + 328 len _173 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg3.length > 0:
                            revert with arg3[all]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[arg3.length + ceil32(arg3.length) + 442 len 14]
                    require arg3.length >= 32
                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[arg3.length + ceil32(arg3.length) + 442 len 14]
                    if not arg2:
                        if not ownerOf[arg2]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[arg3.length + ceil32(arg3.length) + 500 len 20]
                        stor12[arg2].field_0 = 0
                        stor12[arg2].field_1 = 1
                        stor12[arg2].field_8 = '0' / 256
                        idx = 0
                        while stor12[arg2].length + 31 / 32 > idx:
                            stor12[arg2][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = arg2
                        while idx:
                            s = s + 1
                            idx = idx / 10
                            continue 
                        if s:
                            mem[arg3.length + ceil32(arg3.length) + 356 len s] = code.data[15393 len s]
                        t = s - 1
                        idx = arg2
                        while idx:
                            require t < s
                            mem[arg3.length + ceil32(arg3.length) + t + 356 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        if not ownerOf[arg2]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[arg3.length + ceil32(arg3.length) + ceil32(s) + 468 len 20]
                        stor12[arg2][].field_0 = Array(len=s, data=mem[arg3.length + ceil32(arg3.length) + 356 len s])
                else:
                    mem[arg3.length + ceil32(arg3.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[arg3.length + ceil32(arg3.length) + ceil32(return_data.size) + 443 len 14]
                    require return_data.size >= 32
                    if Mask(32, 224, mem[arg3.length + ceil32(arg3.length) + 356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[arg3.length + ceil32(arg3.length) + ceil32(return_data.size) + 443 len 14]
                    if not arg2:
                        if not ownerOf[arg2]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[arg3.length + ceil32(arg3.length) + ceil32(return_data.size) + 501 len 20]
                        stor12[arg2].field_0 = 0
                        stor12[arg2].field_1 = 1
                        stor12[arg2].field_8 = '0' / 256
                        idx = 0
                        while stor12[arg2].length + 31 / 32 > idx:
                            stor12[arg2][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = arg2
                        while idx:
                            s = s + 1
                            idx = idx / 10
                            continue 
                        if s:
                            mem[arg3.length + ceil32(arg3.length) + ceil32(return_data.size) + 357 len s] = code.data[15393 len s]
                        t = s - 1
                        idx = arg2
                        while idx:
                            require t < s
                            mem[arg3.length + ceil32(arg3.length) + ceil32(return_data.size) + t + 357 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        if not ownerOf[arg2]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[arg3.length + ceil32(arg3.length) + ceil32(return_data.size) + ceil32(s) + 469 len 20]
                        stor12[arg2][].field_0 = Array(len=s, data=mem[arg3.length + ceil32(arg3.length) + ceil32(return_data.size) + 357 len s])
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + 324] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 356 len arg3.length % 32]
                mem[ceil32(arg3.length) + 128] = floor32(arg3.length) + 196
                mem[64] = floor32(arg3.length) + ceil32(arg3.length) + 356
                mem[ceil32(arg3.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(arg3.length) + 160 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                _178 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[floor32(arg3.length) + ceil32(arg3.length) + 356 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                mem[floor32(arg3.length) + ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 356] = mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) + 256, mem[floor32(arg3.length) + ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 356])
                call arg1.mem[floor32(arg3.length) + ceil32(arg3.length) + 356 len 4] with:
                     gas gas_remaining wei
                    args mem[floor32(arg3.length) + ceil32(arg3.length) + 360 len _178 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg3.length > 0:
                            revert with arg3[all]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[floor32(arg3.length) + ceil32(arg3.length) + 474 len 14]
                    require arg3.length >= 32
                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[floor32(arg3.length) + ceil32(arg3.length) + 474 len 14]
                    if not arg2:
                        if not ownerOf[arg2]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[floor32(arg3.length) + ceil32(arg3.length) + 532 len 20]
                        stor12[arg2].field_0 = 0
                        stor12[arg2].field_1 = 1
                        stor12[arg2].field_8 = '0' / 256
                        idx = 0
                        while stor12[arg2].length + 31 / 32 > idx:
                            stor12[arg2][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = arg2
                        while idx:
                            s = s + 1
                            idx = idx / 10
                            continue 
                        if s:
                            mem[floor32(arg3.length) + ceil32(arg3.length) + 388 len s] = code.data[15393 len s]
                        t = s - 1
                        idx = arg2
                        while idx:
                            require t < s
                            mem[floor32(arg3.length) + ceil32(arg3.length) + t + 388 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        if not ownerOf[arg2]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(s) + 500 len 20]
                        stor12[arg2][].field_0 = Array(len=s, data=mem[floor32(arg3.length) + ceil32(arg3.length) + 388 len s])
                else:
                    mem[floor32(arg3.length) + ceil32(arg3.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(return_data.size) + 475 len 14]
                    require return_data.size >= 32
                    if Mask(32, 224, mem[floor32(arg3.length) + ceil32(arg3.length) + 388]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(return_data.size) + 475 len 14]
                    if not arg2:
                        if not ownerOf[arg2]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(return_data.size) + 533 len 20]
                        stor12[arg2].field_0 = 0
                        stor12[arg2].field_1 = 1
                        stor12[arg2].field_8 = '0' / 256
                        idx = 0
                        while stor12[arg2].length + 31 / 32 > idx:
                            stor12[arg2][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = arg2
                        while idx:
                            s = s + 1
                            idx = idx / 10
                            continue 
                        if s:
                            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(return_data.size) + 389 len s] = code.data[15393 len s]
                        t = s - 1
                        idx = arg2
                        while idx:
                            require t < s
                            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(return_data.size) + t + 389 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        if not ownerOf[arg2]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(return_data.size) + ceil32(s) + 501 len 20]
                        stor12[arg2][].field_0 = Array(len=s, data=mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(return_data.size) + 389 len s])
    return 1
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not ownerOf[arg3]:
        revert with 0, 32, 44, 0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
    if not ownerOf[arg3]:
        revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[237 len 23]
    if msg.sender == ownerOf[arg3]:
        if not ownerOf[arg3]:
            revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[237 len 23]
        if ownerOf[arg3] != arg1:
            revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[237 len 23]
        if not arg2:
            revert with 0, 32, 36, 0x724552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[232 len 28]
        if not approved[arg3]:
            if 1 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(arg1)]--
            balanceOf[address(arg2)]++
            ownerOf[arg3] = arg2
            emit Transfer(arg1, arg2, arg3);
            if 1 > tokenOfOwnerByIndex[address(arg1)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor6[arg3] == tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                tokenOfOwnerByIndex[address(arg1)].field_0--
                if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                    idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                    while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                stor6[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                tokenOfOwnerByIndex[address(arg2)].field_0++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    if ext_code.hash(arg2):
                        mem[452 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                        mem[640 len 4] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[612 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        Mask(112, -800, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 800
                        mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
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
            else:
                require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
                require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
                tokenOfOwnerByIndex[address(arg1)][stor6[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
                stor6[stor5[address(arg1)][stor5[address(arg1)].field_0].field_0] = stor6[arg3]
                tokenOfOwnerByIndex[address(arg1)].field_0--
                if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                    idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                    while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                stor6[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                tokenOfOwnerByIndex[address(arg2)].field_0++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
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
                            if return_data.size > 0:
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
        else:
            approved[arg3] = 0
            if 1 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(arg1)]--
            balanceOf[address(arg2)]++
            ownerOf[arg3] = arg2
            emit Transfer(arg1, arg2, arg3);
            if 1 > tokenOfOwnerByIndex[address(arg1)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor6[arg3] == tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                tokenOfOwnerByIndex[address(arg1)].field_0--
                if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                    idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                    while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                stor6[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                tokenOfOwnerByIndex[address(arg2)].field_0++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    if ext_code.hash(arg2):
                        mem[452 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                        mem[640 len 4] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[612 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        Mask(112, -800, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 800
                        mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
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
            else:
                require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
                require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
                tokenOfOwnerByIndex[address(arg1)][stor6[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
                stor6[stor5[address(arg1)][stor5[address(arg1)].field_0].field_0] = stor6[arg3]
                tokenOfOwnerByIndex[address(arg1)].field_0--
                if tokenOfOwnerByIndex[address(arg1)].field_0 <= tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[452 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[640 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[612 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            Mask(112, -800, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 800
                            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
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
                else:
                    idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                    while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
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
                                if return_data.size > 0:
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
    else:
        if not ownerOf[arg3]:
            revert with 0, 32, 44, 0x6e4552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
        if approved[arg3] == msg.sender:
            if not ownerOf[arg3]:
                revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[237 len 23]
            if ownerOf[arg3] != arg1:
                revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[237 len 23]
            if not arg2:
                revert with 0, 32, 36, 0x724552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[232 len 28]
            if not approved[arg3]:
                if 1 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)]--
                balanceOf[address(arg2)]++
                ownerOf[arg3] = arg2
                emit Transfer(arg1, arg2, arg3);
                if 1 > tokenOfOwnerByIndex[address(arg1)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor6[arg3] == tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                    tokenOfOwnerByIndex[address(arg1)].field_0--
                    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[452 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[640 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[612 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            Mask(112, -800, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 800
                            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
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
                else:
                    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
                    require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
                    tokenOfOwnerByIndex[address(arg1)][stor6[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
                    stor6[stor5[address(arg1)][stor5[address(arg1)].field_0].field_0] = stor6[arg3]
                    tokenOfOwnerByIndex[address(arg1)].field_0--
                    if tokenOfOwnerByIndex[address(arg1)].field_0 <= tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                        stor6[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                        tokenOfOwnerByIndex[address(arg2)].field_0++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[452 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                                mem[640 len 4] = 0
                                call arg2.0x80 with:
                                     gas gas_remaining wei
                                    args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[612 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                Mask(112, -800, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 800
                                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
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
                    else:
                        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor6[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                        tokenOfOwnerByIndex[address(arg2)].field_0++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
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
                                    if return_data.size > 0:
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
            else:
                approved[arg3] = 0
                if 1 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)]--
                balanceOf[address(arg2)]++
                ownerOf[arg3] = arg2
                emit Transfer(arg1, arg2, arg3);
                if 1 > tokenOfOwnerByIndex[address(arg1)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor6[arg3] != tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
                    require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
                    tokenOfOwnerByIndex[address(arg1)][stor6[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
                    stor6[stor5[address(arg1)][stor5[address(arg1)].field_0].field_0] = stor6[arg3]
                tokenOfOwnerByIndex[address(arg1)].field_0--
                if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                    idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                    while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                stor6[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                tokenOfOwnerByIndex[address(arg2)].field_0++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    if ext_code.hash(arg2):
                        mem[452 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                        mem[640 len 4] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[612 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        Mask(112, -800, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 800
                        mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
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
        else:
            if not stor4[stor1[arg3]][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[245 len 15]
            if not ownerOf[arg3]:
                revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[237 len 23]
            if ownerOf[arg3] != arg1:
                revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[237 len 23]
            if not arg2:
                revert with 0, 32, 36, 0x724552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[232 len 28]
            if approved[arg3]:
                approved[arg3] = 0
            if 1 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(arg1)]--
            balanceOf[address(arg2)]++
            ownerOf[arg3] = arg2
            emit Transfer(arg1, arg2, arg3);
            if 1 > tokenOfOwnerByIndex[address(arg1)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor6[arg3] != tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
                require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
                tokenOfOwnerByIndex[address(arg1)][stor6[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
                stor6[stor5[address(arg1)][stor5[address(arg1)].field_0].field_0] = stor6[arg3]
            tokenOfOwnerByIndex[address(arg1)].field_0--
            if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                    tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            stor6[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
            tokenOfOwnerByIndex[address(arg2)].field_0++
            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
            if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                if ext_code.hash(arg2):
                    mem[452 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                    mem[640 len 4] = 0
                    call arg2.0x80 with:
                         gas gas_remaining wei
                        args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[612 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    Mask(112, -800, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 800
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
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
    if msg.sender == ownerOf[arg3]:
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
                        0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77,
                        mem[ceil32(arg4.length) + 237 len 23]
        if not arg2:
            revert with 0, 
                        32,
                        36,
                        0x724552433732313a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[ceil32(arg4.length) + 232 len 28]
        if not approved[arg3]:
            mem[ceil32(arg4.length) + 128] = 30
            if 1 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(arg1)]--
            balanceOf[address(arg2)]++
            ownerOf[arg3] = arg2
            emit Transfer(arg1, arg2, arg3);
            if 1 > tokenOfOwnerByIndex[address(arg1)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor6[arg3] == tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                tokenOfOwnerByIndex[address(arg1)].field_0--
                if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                    idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                    while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                stor6[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                tokenOfOwnerByIndex[address(arg2)].field_0++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    if ext_code.hash(arg2):
                        mem[ceil32(arg4.length) + 388] = 128
                        mem[ceil32(arg4.length) + 420] = arg4.length
                        mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        if not arg4.length % 32:
                            mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                            mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                            call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                 gas gas_remaining wei
                                args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                            if not return_data.size:
                                if not ext_call.success:
                                    if arg4.length > 0:
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
                                    if return_data.size > 0:
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
                            mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (2 * floor32(floor32(arg4.length) + 196)) + -(floor32(arg4.length) + 196 % 32) + -floor32(arg4.length) + 92 len floor32(arg4.length) + 196 % 32]
                            call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                 gas gas_remaining wei
                                args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                            if not return_data.size:
                                if not ext_call.success:
                                    if arg4.length > 0:
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
                                    if return_data.size > 0:
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
            else:
                require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
                require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
                tokenOfOwnerByIndex[address(arg1)][stor6[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
                stor6[stor5[address(arg1)][stor5[address(arg1)].field_0].field_0] = stor6[arg3]
                tokenOfOwnerByIndex[address(arg1)].field_0--
                if tokenOfOwnerByIndex[address(arg1)].field_0 <= tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
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
                                        if arg4.length > 0:
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
                                        if return_data.size > 0:
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
                                mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (2 * floor32(floor32(arg4.length) + 196)) + -(floor32(arg4.length) + 196 % 32) + -floor32(arg4.length) + 92 len floor32(arg4.length) + 196 % 32]
                                call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length > 0:
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
                                        if return_data.size > 0:
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
                else:
                    idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                    while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
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
                                        if arg4.length > 0:
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
                                        if return_data.size > 0:
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
                                        if arg4.length > 0:
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
                                        if return_data.size > 0:
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
        else:
            approved[arg3] = 0
            mem[ceil32(arg4.length) + 128] = 30
            if 1 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(arg1)]--
            balanceOf[address(arg2)]++
            ownerOf[arg3] = arg2
            emit Transfer(arg1, arg2, arg3);
            if 1 > tokenOfOwnerByIndex[address(arg1)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor6[arg3] == tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                tokenOfOwnerByIndex[address(arg1)].field_0--
                if tokenOfOwnerByIndex[address(arg1)].field_0 <= tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[ceil32(arg4.length) + 388] = 128
                            mem[ceil32(arg4.length) + 420] = arg4.length
                            mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                                call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length > 0:
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
                                        if return_data.size > 0:
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
                                        if arg4.length > 0:
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
                                        if return_data.size > 0:
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
                else:
                    idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                    while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[ceil32(arg4.length) + 388] = 128
                            mem[ceil32(arg4.length) + 420] = arg4.length
                            mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                                call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length > 0:
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
                                        if return_data.size > 0:
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
                                mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (2 * floor32(floor32(arg4.length) + 196)) + -(floor32(arg4.length) + 196 % 32) + -floor32(arg4.length) + 92 len floor32(arg4.length) + 196 % 32]
                                call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length > 0:
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
                                        if return_data.size > 0:
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
            else:
                require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
                require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
                tokenOfOwnerByIndex[address(arg1)][stor6[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
                stor6[stor5[address(arg1)][stor5[address(arg1)].field_0].field_0] = stor6[arg3]
                tokenOfOwnerByIndex[address(arg1)].field_0--
                if tokenOfOwnerByIndex[address(arg1)].field_0 <= tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[ceil32(arg4.length) + 388] = 128
                            mem[ceil32(arg4.length) + 420] = arg4.length
                            mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                                call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length > 0:
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
                                        if return_data.size > 0:
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
                                mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (2 * floor32(floor32(arg4.length) + 196)) + -(floor32(arg4.length) + 196 % 32) + -floor32(arg4.length) + 92 len floor32(arg4.length) + 196 % 32]
                                call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length > 0:
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
                                        if return_data.size > 0:
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
                else:
                    idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                    while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
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
                                        if arg4.length > 0:
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
                                        if return_data.size > 0:
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
                                mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (2 * floor32(floor32(arg4.length) + 196)) + -(floor32(arg4.length) + 196 % 32) + -floor32(arg4.length) + 92 len floor32(arg4.length) + 196 % 32]
                                call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length > 0:
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
                                        if return_data.size > 0:
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
    else:
        if not ownerOf[arg3]:
            revert with 0, 
                        32,
                        44,
                        0x6e4552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[ceil32(arg4.length) + 240 len 20]
        if approved[arg3] == msg.sender:
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
                            0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77,
                            mem[ceil32(arg4.length) + 237 len 23]
            if not arg2:
                revert with 0, 
                            32,
                            36,
                            0x724552433732313a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[ceil32(arg4.length) + 232 len 28]
            if not approved[arg3]:
                mem[ceil32(arg4.length) + 128] = 30
                if 1 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)]--
                balanceOf[address(arg2)]++
                ownerOf[arg3] = arg2
                emit Transfer(arg1, arg2, arg3);
                if 1 > tokenOfOwnerByIndex[address(arg1)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor6[arg3] == tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                    tokenOfOwnerByIndex[address(arg1)].field_0--
                    if tokenOfOwnerByIndex[address(arg1)].field_0 <= tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                        stor6[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                        tokenOfOwnerByIndex[address(arg2)].field_0++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 388] = 128
                                mem[ceil32(arg4.length) + 420] = arg4.length
                                mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
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
                                            if return_data.size > 0:
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
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (2 * floor32(floor32(arg4.length) + 196)) + -(floor32(arg4.length) + 196 % 32) + -floor32(arg4.length) + 92 len floor32(arg4.length) + 196 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
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
                                            if return_data.size > 0:
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
                    else:
                        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor6[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                        tokenOfOwnerByIndex[address(arg2)].field_0++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 388] = 128
                                mem[ceil32(arg4.length) + 420] = arg4.length
                                mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
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
                                            if return_data.size > 0:
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
                                            if arg4.length > 0:
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
                                            if return_data.size > 0:
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
                else:
                    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
                    require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
                    tokenOfOwnerByIndex[address(arg1)][stor6[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
                    stor6[stor5[address(arg1)][stor5[address(arg1)].field_0].field_0] = stor6[arg3]
                    tokenOfOwnerByIndex[address(arg1)].field_0--
                    if tokenOfOwnerByIndex[address(arg1)].field_0 <= tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                        stor6[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                        tokenOfOwnerByIndex[address(arg2)].field_0++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 388] = 128
                                mem[ceil32(arg4.length) + 420] = arg4.length
                                mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
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
                                            if return_data.size > 0:
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
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (2 * floor32(floor32(arg4.length) + 196)) + -(floor32(arg4.length) + 196 % 32) + -floor32(arg4.length) + 92 len floor32(arg4.length) + 196 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
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
                                            if return_data.size > 0:
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
                    else:
                        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor6[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                        tokenOfOwnerByIndex[address(arg2)].field_0++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
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
                                            if arg4.length > 0:
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
                                            if return_data.size > 0:
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
                                            if arg4.length > 0:
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
                                            if return_data.size > 0:
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
            else:
                approved[arg3] = 0
                mem[ceil32(arg4.length) + 128] = 30
                if 1 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)]--
                balanceOf[address(arg2)]++
                ownerOf[arg3] = arg2
                emit Transfer(arg1, arg2, arg3);
                if 1 > tokenOfOwnerByIndex[address(arg1)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor6[arg3] == tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                    tokenOfOwnerByIndex[address(arg1)].field_0--
                    if tokenOfOwnerByIndex[address(arg1)].field_0 <= tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                        stor6[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                        tokenOfOwnerByIndex[address(arg2)].field_0++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 388] = 128
                                mem[ceil32(arg4.length) + 420] = arg4.length
                                mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
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
                                            if return_data.size > 0:
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
                                            if arg4.length > 0:
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
                                            if return_data.size > 0:
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
                    else:
                        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor6[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                        tokenOfOwnerByIndex[address(arg2)].field_0++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 388] = 128
                                mem[ceil32(arg4.length) + 420] = arg4.length
                                mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
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
                                            if return_data.size > 0:
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
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (2 * floor32(floor32(arg4.length) + 196)) + -(floor32(arg4.length) + 196 % 32) + -floor32(arg4.length) + 92 len floor32(arg4.length) + 196 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
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
                                            if return_data.size > 0:
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
                else:
                    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
                    require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
                    tokenOfOwnerByIndex[address(arg1)][stor6[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
                    stor6[stor5[address(arg1)][stor5[address(arg1)].field_0].field_0] = stor6[arg3]
                    tokenOfOwnerByIndex[address(arg1)].field_0--
                    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[ceil32(arg4.length) + 388] = 128
                            mem[ceil32(arg4.length) + 420] = arg4.length
                            mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                                call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length > 0:
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
                                        if return_data.size > 0:
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
                                mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (2 * floor32(floor32(arg4.length) + 196)) + -(floor32(arg4.length) + 196 % 32) + -floor32(arg4.length) + 92 len floor32(arg4.length) + 196 % 32]
                                call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length > 0:
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
                                        if return_data.size > 0:
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
        else:
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
                            0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77,
                            mem[ceil32(arg4.length) + 237 len 23]
            if not arg2:
                revert with 0, 
                            32,
                            36,
                            0x724552433732313a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[ceil32(arg4.length) + 232 len 28]
            if not approved[arg3]:
                mem[ceil32(arg4.length) + 128] = 30
                if 1 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)]--
                balanceOf[address(arg2)]++
                ownerOf[arg3] = arg2
                emit Transfer(arg1, arg2, arg3);
                if 1 > tokenOfOwnerByIndex[address(arg1)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor6[arg3] == tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                    tokenOfOwnerByIndex[address(arg1)].field_0--
                    if tokenOfOwnerByIndex[address(arg1)].field_0 <= tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                        stor6[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                        tokenOfOwnerByIndex[address(arg2)].field_0++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 388] = 128
                                mem[ceil32(arg4.length) + 420] = arg4.length
                                mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
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
                                            if return_data.size > 0:
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
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (2 * floor32(floor32(arg4.length) + 196)) + -(floor32(arg4.length) + 196 % 32) + -floor32(arg4.length) + 92 len floor32(arg4.length) + 196 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
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
                                            if return_data.size > 0:
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
                    else:
                        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor6[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                        tokenOfOwnerByIndex[address(arg2)].field_0++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 388] = 128
                                mem[ceil32(arg4.length) + 420] = arg4.length
                                mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length > 0:
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
                                            if return_data.size > 0:
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
                                            if arg4.length > 0:
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
                                            if return_data.size > 0:
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
                else:
                    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
                    require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
                    tokenOfOwnerByIndex[address(arg1)][stor6[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
                    stor6[stor5[address(arg1)][stor5[address(arg1)].field_0].field_0] = stor6[arg3]
                    tokenOfOwnerByIndex[address(arg1)].field_0--
                    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[ceil32(arg4.length) + 388] = 128
                            mem[ceil32(arg4.length) + 420] = arg4.length
                            mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                                call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length > 0:
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
                                        if return_data.size > 0:
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
                                mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (2 * floor32(floor32(arg4.length) + 196)) + -(floor32(arg4.length) + 196 % 32) + -floor32(arg4.length) + 92 len floor32(arg4.length) + 196 % 32]
                                call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length > 0:
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
                                        if return_data.size > 0:
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
            else:
                approved[arg3] = 0
                mem[ceil32(arg4.length) + 128] = 30
                if 1 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)]--
                balanceOf[address(arg2)]++
                ownerOf[arg3] = arg2
                emit Transfer(arg1, arg2, arg3);
                if 1 > tokenOfOwnerByIndex[address(arg1)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor6[arg3] != tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
                    require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
                    tokenOfOwnerByIndex[address(arg1)][stor6[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
                    stor6[stor5[address(arg1)][stor5[address(arg1)].field_0].field_0] = stor6[arg3]
                tokenOfOwnerByIndex[address(arg1)].field_0--
                if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                    idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                    while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                stor6[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                tokenOfOwnerByIndex[address(arg2)].field_0++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    if ext_code.hash(arg2):
                        mem[ceil32(arg4.length) + 388] = 128
                        mem[ceil32(arg4.length) + 420] = arg4.length
                        mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                        if not arg4.length % 32:
                            mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                            mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                            call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                 gas gas_remaining wei
                                args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                            if not return_data.size:
                                if not ext_call.success:
                                    if arg4.length > 0:
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
                                    if return_data.size > 0:
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
                            mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (2 * floor32(floor32(arg4.length) + 196)) + -(floor32(arg4.length) + 196 % 32) + -floor32(arg4.length) + 92 len floor32(arg4.length) + 196 % 32]
                            call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                 gas gas_remaining wei
                                args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                            if not return_data.size:
                                if not ext_call.success:
                                    if arg4.length > 0:
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
                                    if return_data.size > 0:
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



}
