contract main {




// =====================  Runtime code  =====================


#
#  - sub_165fd13f(?)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5)
#
address owner;
array of uint256 stor1;
uint256 sub_0a72fb86;
mapping of struct stor3;
mapping of bool tokenHash;
mapping of address tokenCreator;
mapping of uint256 sub_a5b941c2;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor10;
mapping of address approved;
mapping of uint8 stor12;
mapping of uint8 stor13;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct baseURI;
array of uint256 contractURI;
mapping of uint8 stor20;
mapping of uint256 stor99;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor20[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor10[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    return approved[arg1]
}

function sub_0a72fb86(?) {
    return sub_0a72fb86
}

function totalSupply() {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= tokenOfOwnerByIndex[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function decimals() {
    return decimals
}

function tokenCreator(uint256 arg1) {
    require calldata.size - 4 >= 32
    return address(tokenCreator[arg1])
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e456e756d657261626c654d61703a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return tokenByIndex[arg1].field_0
}

function paused() {
    return bool(uint8(stor1.length.field_160))
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor10[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor10[arg1] - 1 < tokenByIndex.length
    return address(tokenByIndex[stor10[arg1] - 1].field_256)
}

function baseURI() {
    return baseURI[0 len baseURI.length].field_0
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    return tokenOfOwnerByIndex[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function tokenHash(uint256 arg1) {
    return uint256(tokenHash[arg1][0 len tokenHash[arg1].length])
}

function sub_a5b941c2(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    return sub_a5b941c2[arg1[all]]
}

function contractURI() {
    return contractURI[0 len contractURI.length]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor12[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function receiveEther() payable {
    revert
}

function unpause() {
    if owner != msg.sender:
        if address(stor1.length) != msg.sender:
            revert with 0, 'nOwnable: caller is not the owne'
    require uint8(stor1.length.field_160)
    uint8(stor1.length.field_160) = 0
    emit Unpause()
}

function pause() {
    if owner != msg.sender:
        if address(stor1.length) != msg.sender:
            revert with 0, 'nOwnable: caller is not the owne'
    require not uint8(stor1.length.field_160)
    uint8(stor1.length.field_160) = 1
    emit Pause()
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor12[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function withdrawEther() {
    if owner != msg.sender:
        if address(stor1.length) != msg.sender:
            revert with 0, 'nOwnable: caller is not the owne'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if address(stor1.length) != msg.sender:
            revert with 0, 'nOwnable: caller is not the owne'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if address(stor1.length) != msg.sender:
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

function sub_51b6ba5b(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        if address(stor1.length) != msg.sender:
            revert with 0, 'nOwnable: caller is not the owne'
    if arg1.length:
        name[] = Array(len=arg1.length, data=arg1[all])
    else:
        name.length = 0
        idx = 0
        while name.length + 31 / 32 > idx:
            name[idx] = 0
            idx = idx + 1
            continue 
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        if address(stor1.length) != msg.sender:
            revert with 0, 'nOwnable: caller is not the owne'
    if arg1.length:
        baseURI[].field_0 = Array(len=arg1.length, data=arg1[all])
    else:
        baseURI.length = 0
        idx = 0
        while baseURI.length + 31 / 32 > idx:
            baseURI[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function setContractURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        if address(stor1.length) != msg.sender:
            revert with 0, 'nOwnable: caller is not the owne'
    if arg1.length:
        contractURI[] = Array(len=arg1.length, data=arg1[all])
    else:
        contractURI.length = 0
        idx = 0
        while contractURI.length + 31 / 32 > idx:
            contractURI[idx] = 0
            idx = idx + 1
            continue 
}

function validatePublisher(address arg1, bool arg2, string arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if owner != msg.sender:
        if address(stor1.length) != msg.sender:
            revert with 0, 'nOwnable: caller is not the owne'
    stor13[address(arg1)] = uint8(arg2)
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + 128] = mem[ceil32(arg3.length) + floor32(arg3.length) + 128] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
    emit ValidatePublisher(arg1, arg2, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len arg3.length % 32]));
    mem[ceil32(arg3.length) + 128] = 1
    return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
}

function listNFTs(uint256 arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    if msg.sender == owner:
        idx = arg1
        while idx <= arg2:
            mem[32] = 4
            _24 = mem[64]
            mem[0] = sha3(idx, 4)
            mem[mem[64]] = uint256(tokenHash[idx])
            s = mem[64]
            t = sha3(mem[0])
            while _24 + tokenHash[idx].length > s + 32:
                mem[s + 32] = stor1[t].field_0
                s = s + 32
                t = t + 1
                continue 
            emit idx: sha3(mem[mem[64] len _24 + tokenHash[idx].length - mem[64]])
            idx = idx + 1
            continue 
    else:
        if address(stor1.length) != msg.sender:
            revert with 0, 'nOwnable: caller is not the owne'
        idx = arg1
        while idx <= arg2:
            mem[32] = 4
            _26 = mem[64]
            mem[0] = sha3(idx, 4)
            mem[mem[64]] = uint256(tokenHash[idx])
            s = mem[64]
            t = sha3(mem[0])
            while _26 + tokenHash[idx].length > s + 32:
                mem[s + 32] = stor1[t].field_0
                s = s + 32
                t = t + 1
                continue 
            emit idx: sha3(mem[mem[64] len _26 + tokenHash[idx].length - mem[64]])
            idx = idx + 1
            continue 
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor10[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor10[arg2] - 1 < tokenByIndex.length
    if arg1 == address(tokenByIndex[stor10[arg2] - 1].field_256):
        revert with 0, 32, 33, 0x6e4552433732313a20617070726f76616c20746f2063757272656e74206f776e65, mem[293 len 31]
    if address(tokenByIndex[stor10[arg2] - 1].field_256) != msg.sender:
        if not stor12[address(stor9[stor10[arg2] - 1].field_256)][address(msg.sender)]:
            revert with 0, 
                        32,
                        56,
                        0x734552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                        mem[316 len 8]
    approved[arg2] = arg1
    if not stor10[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor10[arg2] - 1 < tokenByIndex.length
    emit Approval(address(tokenByIndex[stor10[arg2] - 1].field_256), arg1, arg2);
}

function setTokenURI(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if owner != msg.sender:
        if address(stor1.length) != msg.sender:
            revert with 0, 'nOwnable: caller is not the owne'
    if not stor10[arg1]:
        revert with 0, 
                    32,
                    44,
                    0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg2.length) + 240 len 20]
    if arg2.length:
        stor3[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
    else:
        stor3[arg1].field_0 = 0
        idx = 0
        while stor3[arg1].length + 31 / 32 > idx:
            stor3[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
    mem[ceil32(arg2.length) + 128] = 32
    mem[ceil32(arg2.length) + 160] = arg2.length
    mem[ceil32(arg2.length) + 192 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit URI(string rg1, uint256 rg2):
                 Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                 mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32],
                 Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256,
                 arg1,
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 192] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32]
        emit URI(string rg1, uint256 rg2):
                 Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                 mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32],
                 Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                 mem[(2 * ceil32(arg2.length)) + 192 len floor32(arg2.length) + -ceil32(arg2.length) + 32],
                 arg1,
}

function burnToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if address(stor1.length) != msg.sender:
            revert with 0, 'nOwnable: caller is not the owne'
    if not stor10[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor10[arg1] - 1 < tokenByIndex.length
    approved[arg1] = 0
    if not stor10[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor10[arg1] - 1 < tokenByIndex.length
    emit Approval(address(tokenByIndex[stor10[arg1] - 1].field_256), 0, arg1);
    if Mask(255, 1, stor3[arg1].field_0 and (256 * not bool(stor3[arg1].field_0)) - 1):
        stor3[arg1].field_0 = 0
        if 31 < stor3[arg1].length:
            idx = 0
            while stor3[arg1].length + 31 / 32 > idx:
                stor3[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    uint256(tokenHash[arg1]) = 0
    if Mask(255, 1, uint256(tokenHash[arg1]) and (256 * not bool(tokenHash[arg1])) - 1):
        if 31 < tokenHash[arg1].length:
            idx = 0
            while tokenHash[arg1].length + 31 / 32 > idx:
                uint256(tokenHash[arg1][idx]) = 0
                idx = idx + 1
                continue 
    if 31 < tokenHash[arg1].length:
        idx = 0
        while tokenHash[arg1].length + 31 / 32 > idx:
            uint256(tokenHash[arg1][idx]) = 0
            idx = idx + 1
            continue 
    if tokenOfOwnerByIndex[address(stor9[stor10[arg1] - 1].field_256)][1][arg1]:
        require tokenOfOwnerByIndex[address(stor9[stor10[arg1] - 1].field_256)] - 1 < tokenOfOwnerByIndex[address(stor9[stor10[arg1] - 1].field_256)]
        require tokenOfOwnerByIndex[address(stor9[stor10[arg1] - 1].field_256)][1][arg1] - 1 < tokenOfOwnerByIndex[address(stor9[stor10[arg1] - 1].field_256)]
        tokenOfOwnerByIndex[address(stor9[stor10[arg1] - 1].field_256)][tokenOfOwnerByIndex[address(stor9[stor10[arg1] - 1].field_256)][1][arg1]] = tokenOfOwnerByIndex[address(stor9[stor10[arg1] - 1].field_256)][tokenOfOwnerByIndex[address(stor9[stor10[arg1] - 1].field_256)]]
        tokenOfOwnerByIndex[address(stor9[stor10[arg1] - 1].field_256)][1][tokenOfOwnerByIndex[address(stor9[stor10[arg1] - 1].field_256)][tokenOfOwnerByIndex[address(stor9[stor10[arg1] - 1].field_256)]]] = tokenOfOwnerByIndex[address(stor9[stor10[arg1] - 1].field_256)][1][arg1]
        require tokenOfOwnerByIndex[address(stor9[stor10[arg1] - 1].field_256)]
        tokenOfOwnerByIndex[address(stor9[stor10[arg1] - 1].field_256)][tokenOfOwnerByIndex[address(stor9[stor10[arg1] - 1].field_256)]] = 0
        tokenOfOwnerByIndex[address(stor9[stor10[arg1] - 1].field_256)]--
        tokenOfOwnerByIndex[address(stor9[stor10[arg1] - 1].field_256)][1][arg1] = 0
    if stor10[arg1]:
        require tokenByIndex.length - 1 < tokenByIndex.length
        require stor10[arg1] - 1 < tokenByIndex.length
        tokenByIndex[stor10[arg1] - 1].field_0 = tokenByIndex[tokenByIndex.length - 1].field_0
        tokenByIndex[stor10[arg1] - 1].field_256 = tokenByIndex[tokenByIndex.length - 1].field_256
        stor10[stor9[stor9.length - 1].field_0] = stor10[arg1]
        require tokenByIndex.length
        tokenByIndex[tokenByIndex.length - 1].field_0 = 0
        tokenByIndex[tokenByIndex.length - 1].field_256 = 0
        tokenByIndex.length--
        stor10[arg1] = 0
    emit Transfer(address(tokenByIndex[stor10[arg1] - 1].field_256), 0, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor10[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    if not stor10[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor10[arg3] - 1 < tokenByIndex.length
    if address(tokenByIndex[stor10[arg3] - 1].field_256) != msg.sender:
        if not stor10[arg3]:
            revert with 0, 32, 44, 0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[304 len 20]
        if approved[arg3] != msg.sender:
            if not stor12[address(stor9[stor10[arg3] - 1].field_256)][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[309 len 15]
    if not stor10[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor10[arg3] - 1 < tokenByIndex.length
    if address(tokenByIndex[stor10[arg3] - 1].field_256) != arg1:
        revert with 0, 32, 41, 0x724552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[397 len 23]
    if not arg2:
        revert with 0, 32, 36, 0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[392 len 28]
    approved[arg3] = 0
    if not stor10[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[361 len 23],
                    mem[407 len 9]
    require stor10[arg3] - 1 < tokenByIndex.length
    emit Approval(address(tokenByIndex[stor10[arg3] - 1].field_256), 0, arg3);
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
    if stor10[arg3]:
        require stor10[arg3] - 1 < tokenByIndex.length
        address(tokenByIndex[stor10[arg3] - 1].field_256) = arg2
        Mask(96, 0, tokenByIndex[stor10[arg3] - 1].field_416) = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
        stor10[arg3] = tokenByIndex.length
    emit Transfer(arg1, arg2, arg3);
}

function sub_d4a338b5(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg1.length != 64:
        revert with 0, 'C1 - Invalid hash provided'
    if not stor13[msg.sender]:
        revert with 0, 32, 33, 0x6e4332202d20556e7665726966696564207075626c697368657220616464726573, mem[ceil32(arg1.length) + 229 len 31]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 6
    if stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]:
        revert with 0, 'C3 - NFT exists already'
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if stor10[stor2]:
        revert with 0, 'ERC721: token already minted'
    if not tokenOfOwnerByIndex[address(msg.sender)][1][stor2]:
        tokenOfOwnerByIndex[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = sub_0a72fb86
        tokenOfOwnerByIndex[address(msg.sender)][1][stor2] = tokenOfOwnerByIndex[address(msg.sender)]
    if stor10[stor2]:
        require stor10[stor2] - 1 < tokenByIndex.length
        address(tokenByIndex[stor10[stor2] - 1].field_256) = msg.sender
        Mask(96, 0, tokenByIndex[stor10[stor2] - 1].field_416) = 0
        emit Transfer(this.address, msg.sender, sub_0a72fb86);
        uint256(tokenCreator[stor2]) = msg.sender or Mask(96, 160, uint256(tokenCreator[stor2]))
        if arg1.length:
            uint256(tokenHash[stor2][]) = Array(len=arg1.length, data=arg1[all])
        else:
            uint256(tokenHash[stor2]) = 0
            idx = 0
            while tokenHash[stor2].length + 31 / 32 > idx:
                uint256(tokenHash[stor2][idx]) = 0
                idx = idx + 1
                continue 
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 and !(256^(-(arg1.length % 32) + 32) - 1)
        mem[ceil32(arg1.length) + arg1.length + 128] = 6
        stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)] = sub_0a72fb86
        sub_0a72fb86++
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = mem[ceil32(arg1.length) + floor32(arg1.length) + 128] and 256^(-(arg1.length % 32) + 32) - 1 or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 and !(256^(-(arg1.length % 32) + 32) - 1)
        emit sub_0a72fb86: sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
        mem[ceil32(arg1.length) + 128] = sub_0a72fb86
        return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length].field_0 = sub_0a72fb86
    address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
    stor10[stor2] = tokenByIndex.length
    emit Transfer(this.address, msg.sender, sub_0a72fb86);
    uint256(tokenCreator[stor2]) = msg.sender or Mask(96, 160, uint256(tokenCreator[stor2]))
    if arg1.length:
        uint256(tokenHash[stor2][]) = Array(len=arg1.length, data=arg1[all])
    else:
        uint256(tokenHash[stor2]) = 0
        idx = 0
        while tokenHash[stor2].length + 31 / 32 > idx:
            uint256(tokenHash[stor2][idx]) = 0
            idx = idx + 1
            continue 
    mem[ceil32(arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 192] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 192] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 192] = 6
    stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] = sub_0a72fb86
    sub_0a72fb86++
    mem[ceil32(arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 192] = mem[ceil32(arg1.length) + floor32(arg1.length) + 192] and 256^(-(arg1.length % 32) + 32) - 1 or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 and !(256^(-(arg1.length % 32) + 32) - 1)
    emit sub_0a72fb86: sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len arg1.length % 32])
    return sub_0a72fb86
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor10[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[211 len 17]
    mem[32] = 3
    mem[64] = ceil32(stor3[arg1].length) + 128
    mem[96] = stor3[arg1].length
    mem[128] = stor3[arg1].field_0
    idx = 128
    s = 0
    while stor3[arg1].length + 96 > idx:
        mem[idx + 32] = stor3[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not baseURI.length:
        var23001 = ceil32(stor3[arg1].length)
        return Array(len=stor3[arg1].length, data=mem[128 len stor3[arg1].length])
    if stor3[arg1].length:
        mem[0] = 18
        mem[ceil32(stor3[arg1].length) + 160] = uint256(baseURI.field_0)
        idx = mem[64] + 32
        s = 0
        while ceil32(stor3[arg1].length) + baseURI.length + 128 > idx:
            mem[idx + 32] = baseURI[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor3[arg1].length) + baseURI.length + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[ceil32(stor3[arg1].length) + baseURI.length + floor32(mem[96]) + -(mem[96] % 32) + 192 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
        _1006 = mem[64]
        mem[64] = mem[96] + ceil32(stor3[arg1].length) + baseURI.length + 160
        mem[mem[96] + ceil32(stor3[arg1].length) + baseURI.length + 160] = 32
        mem[mem[96] + ceil32(stor3[arg1].length) + baseURI.length + 192] = mem[_1006]
        _1083 = mem[_1006]
        mem[mem[96] + ceil32(stor3[arg1].length) + baseURI.length + 224 len ceil32(mem[_1006])] = mem[_1006 + 32 len ceil32(mem[_1006])]
        if not _1083 % 32:
            return 32, mem[mem[96] + ceil32(stor3[arg1].length) + baseURI.length + 192 len _1083 + 32]
        mem[floor32(_1083) + mem[96] + ceil32(stor3[arg1].length) + baseURI.length + 224] = mem[floor32(_1083) + mem[96] + ceil32(stor3[arg1].length) + baseURI.length + -(_1083 % 32) + 256 len _1083 % 32]
        return 32, mem[mem[96] + ceil32(stor3[arg1].length) + baseURI.length + 192 len floor32(_1083) + 64]
    if not arg1:
        mem[64] = ceil32(stor3[arg1].length) + 192
        mem[ceil32(stor3[arg1].length) + 128] = 1
        mem[ceil32(stor3[arg1].length) + 160] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[0] = 18
        mem[ceil32(stor3[arg1].length) + 224] = uint256(baseURI.field_0)
        idx = mem[64] + 32
        s = 0
        while ceil32(stor3[arg1].length) + baseURI.length + 192 > idx:
            mem[idx + 32] = baseURI[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor3[arg1].length) + baseURI.length + 224 len floor32(mem[ceil32(stor3[arg1].length) + 128])] = mem[ceil32(stor3[arg1].length) + 160 len floor32(mem[ceil32(stor3[arg1].length) + 128])]
        mem[ceil32(stor3[arg1].length) + baseURI.length + floor32(mem[ceil32(stor3[arg1].length) + 128]) + -(mem[ceil32(stor3[arg1].length) + 128] % 32) + 256 len mem[ceil32(stor3[arg1].length) + 128] % 32] = mem[ceil32(stor3[arg1].length) + floor32(mem[ceil32(stor3[arg1].length) + 128]) + -(mem[ceil32(stor3[arg1].length) + 128] % 32) + 192 len mem[ceil32(stor3[arg1].length) + 128] % 32]
        _1002 = mem[64]
        mem[64] = mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + baseURI.length + 224
        mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + baseURI.length + 224] = 32
        mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + baseURI.length + 256] = mem[_1002]
        _1048 = mem[_1002]
        mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + baseURI.length + 288 len ceil32(mem[_1002])] = mem[_1002 + 32 len ceil32(mem[_1002])]
        if not _1048 % 32:
            return 32, mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + baseURI.length + 256 len _1048 + 32]
        mem[floor32(_1048) + mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + baseURI.length + 288] = mem[floor32(_1048) + mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + baseURI.length + -(_1048 % 32) + 320 len _1048 % 32]
        return 32, mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + baseURI.length + 256 len floor32(_1048) + 64], 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[ceil32(stor3[arg1].length) + 128] = s
    mem[64] = ceil32(stor3[arg1].length) + ceil32(s) + 160
    if not s:
        t = s - 1
        idx = arg1
        while idx:
            require t < s
            mem[t + ceil32(stor3[arg1].length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[0] = 18
        mem[ceil32(stor3[arg1].length) + ceil32(s) + 192] = uint256(baseURI.field_0)
        t = mem[64] + 32
        u = 0
        while ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 160 > t:
            mem[t + 32] = baseURI[u].field_256
            t = t + 32
            u = u + 1
            continue 
        mem[ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 192 len floor32(mem[ceil32(stor3[arg1].length) + 128])] = mem[ceil32(stor3[arg1].length) + 160 len floor32(mem[ceil32(stor3[arg1].length) + 128])]
        mem[ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + floor32(mem[ceil32(stor3[arg1].length) + 128]) + -(mem[ceil32(stor3[arg1].length) + 128] % 32) + 224 len mem[ceil32(stor3[arg1].length) + 128] % 32] = mem[ceil32(stor3[arg1].length) + floor32(mem[ceil32(stor3[arg1].length) + 128]) + -(mem[ceil32(stor3[arg1].length) + 128] % 32) + 192 len mem[ceil32(stor3[arg1].length) + 128] % 32]
        _1232 = mem[64]
        mem[64] = mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 192
        mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 192] = 32
        mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 224] = mem[_1232]
        _1246 = mem[_1232]
        mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 256 len ceil32(mem[_1232])] = mem[_1232 + 32 len ceil32(mem[_1232])]
        if not _1246 % 32:
            return 32, mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 224 len _1246 + 32], 
        mem[floor32(_1246) + mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 256] = mem[floor32(_1246) + mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + -(_1246 % 32) + 288 len _1246 % 32]
        return 32, mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 224 len floor32(_1246) + 64], 
    mem[ceil32(stor3[arg1].length) + 160 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < s
        mem[t + ceil32(stor3[arg1].length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[0] = 18
    mem[ceil32(stor3[arg1].length) + ceil32(s) + 192] = uint256(baseURI.field_0)
    t = mem[64] + 32
    u = 0
    while ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 160 > t:
        mem[t + 32] = baseURI[u].field_256
        t = t + 32
        u = u + 1
        continue 
    mem[ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 192 len floor32(mem[ceil32(stor3[arg1].length) + 128])] = mem[ceil32(stor3[arg1].length) + 160 len floor32(mem[ceil32(stor3[arg1].length) + 128])]
    mem[ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + floor32(mem[ceil32(stor3[arg1].length) + 128]) + -(mem[ceil32(stor3[arg1].length) + 128] % 32) + 224 len mem[ceil32(stor3[arg1].length) + 128] % 32] = mem[ceil32(stor3[arg1].length) + floor32(mem[ceil32(stor3[arg1].length) + 128]) + -(mem[ceil32(stor3[arg1].length) + 128] % 32) + 192 len mem[ceil32(stor3[arg1].length) + 128] % 32]
    _1236 = mem[64]
    mem[64] = mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 192
    mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 192] = 32
    mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 224] = mem[_1236]
    _1249 = mem[_1236]
    mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 256 len ceil32(mem[_1236])] = mem[_1236 + 32 len ceil32(mem[_1236])]
    if not _1249 % 32:
        return 32, mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 224 len _1249 + 32], 
    mem[floor32(_1249) + mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 256] = mem[floor32(_1249) + mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + -(_1249 % 32) + 288 len _1249 % 32]
    return 32, mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 224 len floor32(_1249) + 64], 
}

function uri(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor10[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[211 len 17]
    mem[32] = 3
    mem[64] = ceil32(stor3[arg1].length) + 128
    mem[96] = stor3[arg1].length
    mem[128] = stor3[arg1].field_0
    idx = 128
    s = 0
    while stor3[arg1].length + 96 > idx:
        mem[idx + 32] = stor3[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not baseURI.length:
        var25001 = ceil32(stor3[arg1].length)
        return Array(len=stor3[arg1].length, data=mem[128 len stor3[arg1].length])
    if stor3[arg1].length:
        mem[0] = 18
        mem[ceil32(stor3[arg1].length) + 160] = uint256(baseURI.field_0)
        idx = mem[64] + 32
        s = 0
        while ceil32(stor3[arg1].length) + baseURI.length + 128 > idx:
            mem[idx + 32] = baseURI[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor3[arg1].length) + baseURI.length + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[ceil32(stor3[arg1].length) + baseURI.length + floor32(mem[96]) + -(mem[96] % 32) + 192 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
        _1006 = mem[64]
        mem[64] = mem[96] + ceil32(stor3[arg1].length) + baseURI.length + 160
        mem[mem[96] + ceil32(stor3[arg1].length) + baseURI.length + 160] = 32
        mem[mem[96] + ceil32(stor3[arg1].length) + baseURI.length + 192] = mem[_1006]
        _1089 = mem[_1006]
        mem[mem[96] + ceil32(stor3[arg1].length) + baseURI.length + 224 len ceil32(mem[_1006])] = mem[_1006 + 32 len ceil32(mem[_1006])]
        var35001 = ceil32(_1089)
        if not _1089 % 32:
            return 32, mem[mem[96] + ceil32(stor3[arg1].length) + baseURI.length + 192 len _1089 + 32]
        mem[floor32(_1089) + mem[96] + ceil32(stor3[arg1].length) + baseURI.length + 224] = mem[floor32(_1089) + mem[96] + ceil32(stor3[arg1].length) + baseURI.length + -(_1089 % 32) + 256 len _1089 % 32]
        return 32, mem[mem[96] + ceil32(stor3[arg1].length) + baseURI.length + 192 len floor32(_1089) + 64]
    if not arg1:
        mem[64] = ceil32(stor3[arg1].length) + 192
        mem[ceil32(stor3[arg1].length) + 128] = 1
        mem[ceil32(stor3[arg1].length) + 160] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[0] = 18
        mem[ceil32(stor3[arg1].length) + 224] = uint256(baseURI.field_0)
        idx = mem[64] + 32
        s = 0
        while ceil32(stor3[arg1].length) + baseURI.length + 192 > idx:
            mem[idx + 32] = baseURI[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor3[arg1].length) + baseURI.length + 224 len floor32(mem[ceil32(stor3[arg1].length) + 128])] = mem[ceil32(stor3[arg1].length) + 160 len floor32(mem[ceil32(stor3[arg1].length) + 128])]
        mem[ceil32(stor3[arg1].length) + baseURI.length + floor32(mem[ceil32(stor3[arg1].length) + 128]) + -(mem[ceil32(stor3[arg1].length) + 128] % 32) + 256 len mem[ceil32(stor3[arg1].length) + 128] % 32] = mem[ceil32(stor3[arg1].length) + floor32(mem[ceil32(stor3[arg1].length) + 128]) + -(mem[ceil32(stor3[arg1].length) + 128] % 32) + 192 len mem[ceil32(stor3[arg1].length) + 128] % 32]
        _1002 = mem[64]
        mem[64] = mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + baseURI.length + 224
        mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + baseURI.length + 224] = 32
        mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + baseURI.length + 256] = mem[_1002]
        _1074 = mem[_1002]
        mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + baseURI.length + 288 len ceil32(mem[_1002])] = mem[_1002 + 32 len ceil32(mem[_1002])]
        if not _1074 % 32:
            return 32, mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + baseURI.length + 256 len _1074 + 32]
        mem[floor32(_1074) + mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + baseURI.length + 288] = mem[floor32(_1074) + mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + baseURI.length + -(_1074 % 32) + 320 len _1074 % 32]
        return 32, mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + baseURI.length + 256 len floor32(_1074) + 64], 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[ceil32(stor3[arg1].length) + 128] = s
    mem[64] = ceil32(stor3[arg1].length) + ceil32(s) + 160
    if not s:
        t = s - 1
        idx = arg1
        while idx:
            require t < s
            mem[t + ceil32(stor3[arg1].length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[0] = 18
        mem[ceil32(stor3[arg1].length) + ceil32(s) + 192] = uint256(baseURI.field_0)
        t = mem[64] + 32
        u = 0
        while ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 160 > t:
            mem[t + 32] = baseURI[u].field_256
            t = t + 32
            u = u + 1
            continue 
        mem[ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 192 len floor32(mem[ceil32(stor3[arg1].length) + 128])] = mem[ceil32(stor3[arg1].length) + 160 len floor32(mem[ceil32(stor3[arg1].length) + 128])]
        mem[ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + floor32(mem[ceil32(stor3[arg1].length) + 128]) + -(mem[ceil32(stor3[arg1].length) + 128] % 32) + 224 len mem[ceil32(stor3[arg1].length) + 128] % 32] = mem[ceil32(stor3[arg1].length) + floor32(mem[ceil32(stor3[arg1].length) + 128]) + -(mem[ceil32(stor3[arg1].length) + 128] % 32) + 192 len mem[ceil32(stor3[arg1].length) + 128] % 32]
        _1232 = mem[64]
        mem[64] = mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 192
        mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 192] = 32
        mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 224] = mem[_1232]
        _1252 = mem[_1232]
        mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 256 len ceil32(mem[_1232])] = mem[_1232 + 32 len ceil32(mem[_1232])]
        if not _1252 % 32:
            return 32, mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 224 len _1252 + 32], 
        mem[floor32(_1252) + mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 256] = mem[floor32(_1252) + mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + -(_1252 % 32) + 288 len _1252 % 32]
        return 32, mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 224 len floor32(_1252) + 64], 
    mem[ceil32(stor3[arg1].length) + 160 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < s
        mem[t + ceil32(stor3[arg1].length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[0] = 18
    mem[ceil32(stor3[arg1].length) + ceil32(s) + 192] = uint256(baseURI.field_0)
    t = mem[64] + 32
    u = 0
    while ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 160 > t:
        mem[t + 32] = baseURI[u].field_256
        t = t + 32
        u = u + 1
        continue 
    mem[ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 192 len floor32(mem[ceil32(stor3[arg1].length) + 128])] = mem[ceil32(stor3[arg1].length) + 160 len floor32(mem[ceil32(stor3[arg1].length) + 128])]
    mem[ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + floor32(mem[ceil32(stor3[arg1].length) + 128]) + -(mem[ceil32(stor3[arg1].length) + 128] % 32) + 224 len mem[ceil32(stor3[arg1].length) + 128] % 32] = mem[ceil32(stor3[arg1].length) + floor32(mem[ceil32(stor3[arg1].length) + 128]) + -(mem[ceil32(stor3[arg1].length) + 128] % 32) + 192 len mem[ceil32(stor3[arg1].length) + 128] % 32]
    _1236 = mem[64]
    mem[64] = mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 192
    mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 192] = 32
    mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 224] = mem[_1236]
    _1255 = mem[_1236]
    mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 256 len ceil32(mem[_1236])] = mem[_1236 + 32 len ceil32(mem[_1236])]
    if not _1255 % 32:
        return 32, mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 224 len _1255 + 32], 
    mem[floor32(_1255) + mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 256] = mem[floor32(_1255) + mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + -(_1255 % 32) + 288 len _1255 % 32]
    return 32, mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 224 len floor32(_1255) + 64], 
}

function _tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor10[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[211 len 17]
    mem[32] = 3
    mem[64] = ceil32(stor3[arg1].length) + 128
    mem[96] = stor3[arg1].length
    mem[128] = stor3[arg1].field_0
    idx = 128
    s = 0
    while stor3[arg1].length + 96 > idx:
        mem[idx + 32] = stor3[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not baseURI.length:
        var25001 = ceil32(stor3[arg1].length)
        return Array(len=stor3[arg1].length, data=mem[128 len stor3[arg1].length])
    if stor3[arg1].length:
        mem[0] = 18
        mem[ceil32(stor3[arg1].length) + 160] = uint256(baseURI.field_0)
        idx = mem[64] + 32
        s = 0
        while ceil32(stor3[arg1].length) + baseURI.length + 128 > idx:
            mem[idx + 32] = baseURI[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor3[arg1].length) + baseURI.length + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[ceil32(stor3[arg1].length) + baseURI.length + floor32(mem[96]) + -(mem[96] % 32) + 192 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
        _1006 = mem[64]
        mem[64] = mem[96] + ceil32(stor3[arg1].length) + baseURI.length + 160
        mem[mem[96] + ceil32(stor3[arg1].length) + baseURI.length + 160] = 32
        mem[mem[96] + ceil32(stor3[arg1].length) + baseURI.length + 192] = mem[_1006]
        _1089 = mem[_1006]
        mem[mem[96] + ceil32(stor3[arg1].length) + baseURI.length + 224 len ceil32(mem[_1006])] = mem[_1006 + 32 len ceil32(mem[_1006])]
        var35001 = ceil32(_1089)
        if not _1089 % 32:
            return 32, mem[mem[96] + ceil32(stor3[arg1].length) + baseURI.length + 192 len _1089 + 32]
        mem[floor32(_1089) + mem[96] + ceil32(stor3[arg1].length) + baseURI.length + 224] = mem[floor32(_1089) + mem[96] + ceil32(stor3[arg1].length) + baseURI.length + -(_1089 % 32) + 256 len _1089 % 32]
        return 32, mem[mem[96] + ceil32(stor3[arg1].length) + baseURI.length + 192 len floor32(_1089) + 64]
    if not arg1:
        mem[64] = ceil32(stor3[arg1].length) + 192
        mem[ceil32(stor3[arg1].length) + 128] = 1
        mem[ceil32(stor3[arg1].length) + 160] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[0] = 18
        mem[ceil32(stor3[arg1].length) + 224] = uint256(baseURI.field_0)
        idx = mem[64] + 32
        s = 0
        while ceil32(stor3[arg1].length) + baseURI.length + 192 > idx:
            mem[idx + 32] = baseURI[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor3[arg1].length) + baseURI.length + 224 len floor32(mem[ceil32(stor3[arg1].length) + 128])] = mem[ceil32(stor3[arg1].length) + 160 len floor32(mem[ceil32(stor3[arg1].length) + 128])]
        mem[ceil32(stor3[arg1].length) + baseURI.length + floor32(mem[ceil32(stor3[arg1].length) + 128]) + -(mem[ceil32(stor3[arg1].length) + 128] % 32) + 256 len mem[ceil32(stor3[arg1].length) + 128] % 32] = mem[ceil32(stor3[arg1].length) + floor32(mem[ceil32(stor3[arg1].length) + 128]) + -(mem[ceil32(stor3[arg1].length) + 128] % 32) + 192 len mem[ceil32(stor3[arg1].length) + 128] % 32]
        _1002 = mem[64]
        mem[64] = mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + baseURI.length + 224
        mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + baseURI.length + 224] = 32
        mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + baseURI.length + 256] = mem[_1002]
        _1074 = mem[_1002]
        mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + baseURI.length + 288 len ceil32(mem[_1002])] = mem[_1002 + 32 len ceil32(mem[_1002])]
        if not _1074 % 32:
            return 32, mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + baseURI.length + 256 len _1074 + 32]
        mem[floor32(_1074) + mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + baseURI.length + 288] = mem[floor32(_1074) + mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + baseURI.length + -(_1074 % 32) + 320 len _1074 % 32]
        return 32, mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + baseURI.length + 256 len floor32(_1074) + 64], 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[ceil32(stor3[arg1].length) + 128] = s
    mem[64] = ceil32(stor3[arg1].length) + ceil32(s) + 160
    if not s:
        t = s - 1
        idx = arg1
        while idx:
            require t < s
            mem[t + ceil32(stor3[arg1].length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[0] = 18
        mem[ceil32(stor3[arg1].length) + ceil32(s) + 192] = uint256(baseURI.field_0)
        t = mem[64] + 32
        u = 0
        while ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 160 > t:
            mem[t + 32] = baseURI[u].field_256
            t = t + 32
            u = u + 1
            continue 
        mem[ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 192 len floor32(mem[ceil32(stor3[arg1].length) + 128])] = mem[ceil32(stor3[arg1].length) + 160 len floor32(mem[ceil32(stor3[arg1].length) + 128])]
        mem[ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + floor32(mem[ceil32(stor3[arg1].length) + 128]) + -(mem[ceil32(stor3[arg1].length) + 128] % 32) + 224 len mem[ceil32(stor3[arg1].length) + 128] % 32] = mem[ceil32(stor3[arg1].length) + floor32(mem[ceil32(stor3[arg1].length) + 128]) + -(mem[ceil32(stor3[arg1].length) + 128] % 32) + 192 len mem[ceil32(stor3[arg1].length) + 128] % 32]
        _1232 = mem[64]
        mem[64] = mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 192
        mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 192] = 32
        mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 224] = mem[_1232]
        _1252 = mem[_1232]
        mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 256 len ceil32(mem[_1232])] = mem[_1232 + 32 len ceil32(mem[_1232])]
        if not _1252 % 32:
            return 32, mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 224 len _1252 + 32], 
        mem[floor32(_1252) + mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 256] = mem[floor32(_1252) + mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + -(_1252 % 32) + 288 len _1252 % 32]
        return 32, mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 224 len floor32(_1252) + 64], 
    mem[ceil32(stor3[arg1].length) + 160 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < s
        mem[t + ceil32(stor3[arg1].length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[0] = 18
    mem[ceil32(stor3[arg1].length) + ceil32(s) + 192] = uint256(baseURI.field_0)
    t = mem[64] + 32
    u = 0
    while ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 160 > t:
        mem[t + 32] = baseURI[u].field_256
        t = t + 32
        u = u + 1
        continue 
    mem[ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 192 len floor32(mem[ceil32(stor3[arg1].length) + 128])] = mem[ceil32(stor3[arg1].length) + 160 len floor32(mem[ceil32(stor3[arg1].length) + 128])]
    mem[ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + floor32(mem[ceil32(stor3[arg1].length) + 128]) + -(mem[ceil32(stor3[arg1].length) + 128] % 32) + 224 len mem[ceil32(stor3[arg1].length) + 128] % 32] = mem[ceil32(stor3[arg1].length) + floor32(mem[ceil32(stor3[arg1].length) + 128]) + -(mem[ceil32(stor3[arg1].length) + 128] % 32) + 192 len mem[ceil32(stor3[arg1].length) + 128] % 32]
    _1236 = mem[64]
    mem[64] = mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 192
    mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 192] = 32
    mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 224] = mem[_1236]
    _1255 = mem[_1236]
    mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 256 len ceil32(mem[_1236])] = mem[_1236 + 32 len ceil32(mem[_1236])]
    if not _1255 % 32:
        return 32, mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 224 len _1255 + 32], 
    mem[floor32(_1255) + mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 256] = mem[floor32(_1255) + mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + -(_1255 % 32) + 288 len _1255 % 32]
    return 32, mem[mem[ceil32(stor3[arg1].length) + 128] + ceil32(stor3[arg1].length) + ceil32(s) + baseURI.length + 224 len floor32(_1255) + 64], 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor10[arg3]:
        revert with 0, 32, 44, 0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
    if not stor10[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[201 len 23],
                    mem[247 len 9]
    require stor10[arg3] - 1 < tokenByIndex.length
    if msg.sender == address(tokenByIndex[stor10[arg3] - 1].field_256):
        if not stor10[arg3]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[297 len 23],
                        mem[343 len 9]
        require stor10[arg3] - 1 < tokenByIndex.length
        if address(tokenByIndex[stor10[arg3] - 1].field_256) != arg1:
            revert with 0, 32, 41, 0x724552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
        if not arg2:
            revert with 0, 32, 36, 0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
        approved[arg3] = 0
        if not stor10[arg3]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[393 len 23],
                        mem[439 len 9]
        require stor10[arg3] - 1 < tokenByIndex.length
        emit Approval(address(tokenByIndex[stor10[arg3] - 1].field_256), 0, arg3);
        if not tokenOfOwnerByIndex[address(arg1)][1][arg3]:
            if not tokenOfOwnerByIndex[address(arg2)][1][arg3]:
                tokenOfOwnerByIndex[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
            if stor10[arg3]:
                require stor10[arg3] - 1 < tokenByIndex.length
                address(tokenByIndex[stor10[arg3] - 1].field_256) = arg2
                Mask(96, 0, tokenByIndex[stor10[arg3] - 1].field_416) = 0
                emit Transfer(arg1, arg2, arg3);
                if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    if ext_code.hash(arg2):
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg2):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(arg2):
                            revert with 0, 'Address: call to non-contract'
                        mem[708 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                        mem[896 len 4] = 0
                        mem[868 len 0] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[868 len 4]
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
                stor10[arg3] = tokenByIndex.length
                emit Transfer(arg1, arg2, arg3);
                if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    if ext_code.hash(arg2):
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg2):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(arg2):
                            revert with 0, 'Address: call to non-contract'
                        mem[772 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                        mem[960 len 4] = 0
                        mem[932 len 0] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
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
                if stor10[arg3]:
                    require stor10[arg3] - 1 < tokenByIndex.length
                    address(tokenByIndex[stor10[arg3] - 1].field_256) = arg2
                    Mask(96, 0, tokenByIndex[stor10[arg3] - 1].field_416) = 0
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg2):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(arg2):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[896 len 4] = 0
                            mem[868 len 0] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[868 len 4]
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
                    stor10[arg3] = tokenByIndex.length
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg2):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(arg2):
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[960 len 4] = 0
                            mem[932 len 0] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
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
                if stor10[arg3]:
                    require stor10[arg3] - 1 < tokenByIndex.length
                    address(tokenByIndex[stor10[arg3] - 1].field_256) = arg2
                    Mask(96, 0, tokenByIndex[stor10[arg3] - 1].field_416) = 0
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg2):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(arg2):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
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
                    stor10[arg3] = tokenByIndex.length
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg2):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(arg2):
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
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
        if not stor10[arg3]:
            revert with 0, 32, 44, 0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[336 len 20]
        if approved[arg3] == msg.sender:
            if not stor10[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[297 len 23],
                            mem[343 len 9]
            require stor10[arg3] - 1 < tokenByIndex.length
            if address(tokenByIndex[stor10[arg3] - 1].field_256) != arg1:
                revert with 0, 32, 41, 0x724552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
            if not arg2:
                revert with 0, 32, 36, 0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
            approved[arg3] = 0
            if not stor10[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[393 len 23],
                            mem[439 len 9]
            require stor10[arg3] - 1 < tokenByIndex.length
            emit Approval(address(tokenByIndex[stor10[arg3] - 1].field_256), 0, arg3);
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
            if stor10[arg3]:
                require stor10[arg3] - 1 < tokenByIndex.length
                address(tokenByIndex[stor10[arg3] - 1].field_256) = arg2
                Mask(96, 0, tokenByIndex[stor10[arg3] - 1].field_416) = 0
                emit Transfer(arg1, arg2, arg3);
                if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    if ext_code.hash(arg2):
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg2):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(arg2):
                            revert with 0, 'Address: call to non-contract'
                        mem[708 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                        mem[896 len 4] = 0
                        mem[868 len 0] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[868 len 4]
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
                stor10[arg3] = tokenByIndex.length
                emit Transfer(arg1, arg2, arg3);
                if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    if ext_code.hash(arg2):
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg2):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(arg2):
                            revert with 0, 'Address: call to non-contract'
                        mem[772 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                        mem[960 len 4] = 0
                        mem[932 len 0] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
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
            if not stor12[address(stor9[stor10[arg3] - 1].field_256)][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[341 len 15]
            if not stor10[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[297 len 23],
                            mem[343 len 9]
            require stor10[arg3] - 1 < tokenByIndex.length
            if address(tokenByIndex[stor10[arg3] - 1].field_256) != arg1:
                revert with 0, 32, 41, 0x724552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
            if not arg2:
                revert with 0, 32, 36, 0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
            approved[arg3] = 0
            if not stor10[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[393 len 23],
                            mem[439 len 9]
            require stor10[arg3] - 1 < tokenByIndex.length
            emit Approval(address(tokenByIndex[stor10[arg3] - 1].field_256), 0, arg3);
            if not tokenOfOwnerByIndex[address(arg1)][1][arg3]:
                if not tokenOfOwnerByIndex[address(arg2)][1][arg3]:
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
                if stor10[arg3]:
                    require stor10[arg3] - 1 < tokenByIndex.length
                    address(tokenByIndex[stor10[arg3] - 1].field_256) = arg2
                    Mask(96, 0, tokenByIndex[stor10[arg3] - 1].field_416) = 0
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg2):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(arg2):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
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
                    stor10[arg3] = tokenByIndex.length
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg2):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(arg2):
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[960 len 4] = 0
                            mem[932 len 0] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
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
                if stor10[arg3]:
                    require stor10[arg3] - 1 < tokenByIndex.length
                    address(tokenByIndex[stor10[arg3] - 1].field_256) = arg2
                    Mask(96, 0, tokenByIndex[stor10[arg3] - 1].field_416) = 0
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg2):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(arg2):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[896 len 4] = 0
                            mem[868 len 0] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[868 len 4]
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
                    stor10[arg3] = tokenByIndex.length
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg2):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(arg2):
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[960 len 4] = 0
                            mem[932 len 0] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
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
