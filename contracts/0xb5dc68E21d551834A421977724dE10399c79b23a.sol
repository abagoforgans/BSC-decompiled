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
array of uint256 tokenURI;
mapping of uint8 stor12;

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
    return bool(stor12[address(arg1)])
}

function tokenURI(uint256 arg1) payable {
    return tokenURI[arg1][0 len tokenURI[arg1].length]
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
    if not stor12[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    stor12[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor12[address(msg.sender)]:
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
    if stor12[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor12[address(arg1)] = 1
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
    if not stor12[address(msg.sender)]:
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
    tokenURI[arg2][] = Array(len=arg3.length, data=arg3[all])
    mem[ceil32(arg3.length) + 128] = 1
    return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
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
        revert with 0, 32, 36, 0x724552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[232 len 28]
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
    if stor6[arg3] != tokenOfOwnerByIndex[address(arg1)] - 1:
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
    if ext_code.hash(arg2):
        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            require ext_code.size(arg2)
            call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'sERC721: transfer to non ERC721Receiver implemente'
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
    if 1 > tokenOfOwnerByIndex[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor6[arg3] != tokenOfOwnerByIndex[address(arg1)] - 1:
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
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
                    0x724552433732313a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[ceil32(arg4.length) + 232 len 28]
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
    if stor6[arg3] != tokenOfOwnerByIndex[address(arg1)] - 1:
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
    if ext_code.hash(arg2):
        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            require ext_code.size(arg2)
            call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'sERC721: transfer to non ERC721Receiver implemente'
}



}
