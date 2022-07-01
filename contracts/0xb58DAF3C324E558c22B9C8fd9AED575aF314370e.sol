contract main {




// =====================  Runtime code  =====================


#
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
array of struct baseURI;
address owner;
uint256 sub_3e0f7f02;
uint8 hasSaleStarted;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function hasSaleStarted() {
    return bool(hasSaleStarted)
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= tokenOfOwnerByIndex[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x75456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function sub_3e0f7f02(?) {
    return sub_3e0f7f02
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

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor3[arg1] - 1 < tokenByIndex.length
    return tokenByIndex[stor3[arg1] - 1].field_256
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

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function pauseSale() {
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
    hasSaleStarted = 0
}

function startSale() {
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
    hasSaleStarted = 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function withdrawAll() payable {
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) {
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

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
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

function calculatePrice() {
    if bool(hasSaleStarted) != 1:
        revert with 0, 'Sale hasn't started'
    if tokenByIndex.length >= sub_3e0f7f02:
        revert with 0, 'Sale has already ended'
    if tokenByIndex.length >= 3000:
        return 12 * 10^16
    if tokenByIndex.length >= 2500:
        return 10^17
    if tokenByIndex.length >= 2000:
        return (25 * 10^12 * 3600)
    if tokenByIndex.length >= 1500:
        return 8 * 10^16
    if tokenByIndex.length >= 1000:
        return 7 * 10^16
    if tokenByIndex.length < 500:
        return 5 * 10^16
    return 6 * 10^16
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x64596f752063616e206f6e6c79206275726e20612031202d2031303030206174207468652074696d,
                    mem[204 len 24]
    if arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x64596f752063616e206f6e6c79206275726e20612031202d2031303030206174207468652074696d,
                    mem[204 len 24]
    if tokenByIndex.length > sub_3e0f7f02 - arg1:
        revert with 0, 'There NFT's are allready claimed'
    sub_3e0f7f02 -= arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor3[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor3[arg2] - 1 < tokenByIndex.length
    if arg1 == tokenByIndex[stor3[arg2] - 1].field_256:
        revert with 0, 32, 33, 0x6e4552433732313a20617070726f76616c20746f2063757272656e74206f776e65, mem[293 len 31]
    if tokenByIndex[stor3[arg2] - 1].field_256 != msg.sender:
        if not stor5[stor2[stor3[arg2] - 1].field_256][address(msg.sender)]:
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
    emit Approval(tokenByIndex[stor3[arg2] - 1].field_256, arg1, arg2);
}

function tokensOfOwner(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    if not tokenOfOwnerByIndex[address(arg1)]:
        return ''
    require tokenOfOwnerByIndex[address(arg1)] <= test266151307()
    if tokenOfOwnerByIndex[address(arg1)]:
        mem[128 len 32 * tokenOfOwnerByIndex[address(arg1)]] = call.data[calldata.size len 32 * tokenOfOwnerByIndex[address(arg1)]]
    idx = 0
    while idx < tokenOfOwnerByIndex[address(arg1)]:
        mem[32] = 1
        if idx >= tokenOfOwnerByIndex[address(arg1)]:
            revert with 0, 
                        32,
                        34,
                        0x75456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 230 len 30]
        mem[0] = sha3(address(arg1), 1)
        require idx < tokenOfOwnerByIndex[address(arg1)]
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        idx = idx + 1
        continue 
    mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 192 len floor32(tokenOfOwnerByIndex[address(arg1)])] = mem[128 len floor32(tokenOfOwnerByIndex[address(arg1)])]
    return Array(len=tokenOfOwnerByIndex[address(arg1)], data=mem[128 len floor32(tokenOfOwnerByIndex[address(arg1)])], mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + floor32(tokenOfOwnerByIndex[address(arg1)]) + 192 len (32 * tokenOfOwnerByIndex[address(arg1)]) - floor32(tokenOfOwnerByIndex[address(arg1)])]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
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
    if tokenByIndex[stor3[arg3] - 1].field_256 != msg.sender:
        if not stor3[arg3]:
            revert with 0, 32, 44, 0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[304 len 20]
        if approved[arg3] != msg.sender:
            if not stor5[stor2[stor3[arg3] - 1].field_256][address(msg.sender)]:
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
    if tokenByIndex[stor3[arg3] - 1].field_256 != arg1:
        revert with 0, 32, 41, 0x724552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[397 len 23]
    if not arg2:
        revert with 0, 32, 36, 0x654552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[392 len 28]
    approved[arg3] = 0
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[361 len 23],
                    mem[407 len 9]
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

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[211 len 17]
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
    mem[64] = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160
    mem[ceil32(stor8[arg1].length) + 128] = baseURI.length
    mem[0] = 9
    mem[ceil32(stor8[arg1].length) + 160] = uint256(baseURI.field_0)
    idx = ceil32(stor8[arg1].length) + 160
    s = 0
    while ceil32(stor8[arg1].length) + baseURI.length + 128 > idx:
        mem[idx + 32] = baseURI[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if 0 == baseURI.length:
        return Array(len=stor8[arg1].length, data=mem[128 len stor8[arg1].length])
    if stor8[arg1].length:
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len floor32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 160 len floor32(baseURI.length)]
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 192] = 256^(-baseURI.length % 32 + 32) - 1 and mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 192] or mem[ceil32(stor8[arg1].length) + floor32(baseURI.length) + 160] and !(256^(-baseURI.length % 32 + 32) - 1)
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 192 len floor32(stor8[arg1].length)] = mem[128 len floor32(stor8[arg1].length)]
        var35001 = floor32(stor8[arg1].length) + 128
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + floor32(stor8[arg1].length) + -stor8[arg1].length % 32 + 224 len stor8[arg1].length % 32] = mem[floor32(stor8[arg1].length) + -stor8[arg1].length % 32 + 160 len stor8[arg1].length % 32]
        mem[64] = stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 192
        mem[stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 192] = 32
        mem[stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 224] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]
        mem[stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160])]
        var40001 = ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160])
        if not mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] % 32:
            return 32, mem[stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 224 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + 32], 
        mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256] = mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + -(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] % 32) + 288 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] % 32]
        return 32, mem[stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 224 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + 64], 
    if not arg1:
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] = 1
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 256 len floor32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 160 len floor32(baseURI.length)]
        var36001 = ceil32(stor8[arg1].length) + floor32(baseURI.length) + 160
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 256] = 256^(-baseURI.length % 32 + 32) - 1 and mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 256] or mem[ceil32(stor8[arg1].length) + floor32(baseURI.length) + 160] and !(256^(-baseURI.length % 32 + 32) - 1)
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256 len 0] = None
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256 len 0] = 0
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 257] = 32
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 289] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 321 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224])]
        if not mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224] % 32:
            return 32, mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 289 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224] + 32], 
        mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]) + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 321] = mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]) + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + -(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224] % 32) + 353 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224] % 32]
        return Array(len=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224], data=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 321 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]) + 32]), 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] = s
    if s:
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < s
        mem[t + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224 len floor32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 160 len floor32(baseURI.length)]
    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + floor32(baseURI.length) + 224] = 256^(-baseURI.length % 32 + 32) - 1 and mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + floor32(baseURI.length) + 224] or mem[ceil32(stor8[arg1].length) + floor32(baseURI.length) + 160] and !(256^(-baseURI.length % 32 + 32) - 1)
    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224 len floor32(s)] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len floor32(s)]
    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + floor32(s) + -(s % 32) + 256 len s % 32] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(s) + -(s % 32) + 224 len s % 32]
    mem[64] = s + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224
    mem[s + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224] = 32
    mem[s + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 256] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]
    mem[s + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 288 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])]
    if not mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] % 32:
        return 32, mem[s + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 256 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] + 32], 
    mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) + s + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 288] = mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) + s + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + -(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] % 32) + 320 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] % 32]
    return 32, mem[s + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 256 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) + 64], 
}

function reserveGiveaway(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
    if arg1 <= 0:
        revert with 0, 'Max 50 to reserve at once'
    if arg1 > 50:
        revert with 0, 'Max 50 to reserve at once'
    if arg1 + tokenByIndex.length < tokenByIndex.length:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + tokenByIndex.length > sub_3e0f7f02:
        revert with 0, 'Exceeds MAX_TanjiInu'
    if hasSaleStarted:
        revert with 0, 'Sale has already started'
    idx = 0
    while idx < arg1:
        _431 = mem[64]
        mem[64] = mem[64] + 32
        mem[_431] = 0
        if not owner:
            revert with 0, 'ERC721: mint to the zero address'
        if stor3[stor2.length + idx]:
            revert with 0, 'ERC721: token already minted'
        if tokenOfOwnerByIndex[stor10][1][stor2.length + idx]:
            mem[0] = tokenByIndex.length + idx
            mem[32] = 3
            if stor3[stor2.length + idx]:
                require stor3[stor2.length + idx] - 1 < tokenByIndex.length
                mem[0] = 2
                tokenByIndex[stor3[tokenByIndex.length + idx] - 1].field_256 = owner
                emit Transfer(0, owner, tokenByIndex.length + idx);
                if not ext_code.size(owner):
                    idx = idx + 1
                    continue 
                _465 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = tokenByIndex.length + idx
                mem[mem[64] + 132] = 128
                mem[mem[64] + 164] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 196] = mem[s + _431 + 32]
                    s = s + 32
                    continue 
                _851 = mem[64]
                mem[mem[64]] = 164
                mem[64] = mem[64] + 196
                mem[_851 + 32] = mem[_851 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[64] = _465 + 292
                mem[_465 + 196] = 50
                mem[_465 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                if not ext_code.size(owner):
                    revert with 0, 'Address: call to non-contract'
                _880 = mem[_851]
                t = _851 + 32
                u = _465 + 292
                s = mem[_851]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_465 + floor32(mem[_851]) + 292] = mem[_851 + -(mem[_851] % 32) + floor32(mem[_851]) + 64 len mem[_851] % 32] or Mask(8 * -(mem[_851] % 32) + 32, -(8 * -(mem[_851] % 32) + 32) + 256, mem[_465 + floor32(mem[_851]) + 292])
                call owner.mem[_465 + 292 len 4] with:
                     gas gas_remaining wei
                    args mem[_465 + 296 len _880 - 4]
                if not return_data.size:
                    if ext_call.success:
                        require mem[96] >= 32
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[_465 + 410 len 14]
                        idx = idx + 1
                        continue 
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_465 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_465 + 296] = 32
                    idx = 32
                    while idx < 50:
                        mem[idx + _465 + 360] = mem[idx + _465 + 228]
                        idx = idx + 32
                        continue 
                    mem[_465 + 392] = mem[_465 + 406 len 18]
                    revert with 0, 32, 50, 0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_465 + 392]
                mem[64] = _465 + ceil32(return_data.size) + 293
                mem[_465 + 292] = return_data.size
                mem[_465 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require return_data.size >= 32
                    if Mask(32, 224, mem[_465 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[_465 + ceil32(return_data.size) + 411 len 14]
                    idx = idx + 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_465 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_465 + ceil32(return_data.size) + 297] = 32
                idx = 32
                while idx < 50:
                    mem[idx + _465 + ceil32(return_data.size) + 361] = mem[idx + _465 + 228]
                    idx = idx + 32
                    continue 
                mem[_465 + ceil32(return_data.size) + 393] = mem[_465 + ceil32(return_data.size) + 407 len 18]
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                            mem[_465 + ceil32(return_data.size) + 393]
            _443 = mem[64]
            mem[64] = mem[64] + 64
            mem[_443] = tokenByIndex.length + idx
            mem[_443 + 32] = owner
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length + idx
            tokenByIndex[tokenByIndex.length].field_256 = owner
            mem[0] = tokenByIndex.length + idx
            mem[32] = 3
            stor3[stor2.length + idx] = tokenByIndex.length
            emit Transfer(0, owner, tokenByIndex.length + idx);
            if not ext_code.size(owner):
                idx = idx + 1
                continue 
            _459 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0
            mem[mem[64] + 100] = tokenByIndex.length + idx
            mem[mem[64] + 132] = 128
            mem[mem[64] + 164] = 0
            s = 0
            while s < 0:
                mem[s + mem[64] + 196] = mem[s + _431 + 32]
                s = s + 32
                continue 
            _855 = mem[64]
            mem[mem[64]] = 164
            mem[64] = mem[64] + 196
            mem[_855 + 32] = mem[_855 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[64] = _459 + 292
            mem[_459 + 196] = 50
            mem[_459 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if not ext_code.size(owner):
                revert with 0, 'Address: call to non-contract'
            _884 = mem[_855]
            s = _855 + 32
            t = mem[64]
            idx = mem[_855]
            while idx >= 32:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx - 32
                continue 
            mem[mem[64] + floor32(mem[_855])] = mem[_855 + floor32(mem[_855]) + -(mem[_855] % 32) + 64 len mem[_855] % 32] or Mask(8 * -(mem[_855] % 32) + 32, -(8 * -(mem[_855] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_855])])
            call owner.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _884 + _459 + -mem[64] + 288]
            if not return_data.size:
                if ext_call.success:
                    require mem[96] >= 32
                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[mem[64] + 118 len 14]
                    s = 1
                    continue 
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[_459 + 196]
                _1297 = mem[_459 + 196]
                if not mem[_459 + 196]:
                    if not mem[_459 + 196] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[_459 + 196] + 32]
                    mem[floor32(mem[_459 + 196]) + mem[64] + 68] = mem[floor32(mem[_459 + 196]) + mem[64] + -(mem[_459 + 196] % 32) + 100 len mem[_459 + 196] % 32]
                else:
                    mem[mem[64] + 68] = mem[_459 + 228]
                    idx = 32
                    while idx < _1297:
                        mem[idx + mem[64] + 68] = mem[idx + _459 + 228]
                        idx = idx + 32
                        continue 
                    if not _1297 % 32:
                        revert with 0, 32, mem[mem[64] + 36 len _1297 + 32]
                    mem[floor32(_1297) + mem[64] + 68] = mem[floor32(_1297) + mem[64] + -(_1297 % 32) + 100 len _1297 % 32]
                revert with 0, 32, mem[mem[64] + 36 len floor32(_1297) + 64]
            _1257 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1257] = return_data.size
            mem[_1257 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require return_data.size >= 32
                if Mask(32, 224, mem[_1257 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[mem[64] + 118 len 14]
                s = 1
                continue 
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_459 + 196]
            _1301 = mem[_459 + 196]
            if not mem[_459 + 196]:
                if not mem[_459 + 196] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[_459 + 196] + 32]
                mem[floor32(mem[_459 + 196]) + mem[64] + 68] = mem[floor32(mem[_459 + 196]) + mem[64] + -(mem[_459 + 196] % 32) + 100 len mem[_459 + 196] % 32]
            else:
                mem[mem[64] + 68] = mem[_459 + 228]
                idx = 32
                while idx < _1301:
                    mem[idx + mem[64] + 68] = mem[idx + _459 + 228]
                    idx = idx + 32
                    continue 
                if not _1301 % 32:
                    revert with 0, 32, mem[mem[64] + 36 len _1301 + 32]
                mem[floor32(_1301) + mem[64] + 68] = mem[floor32(_1301) + mem[64] + -(_1301 % 32) + 100 len _1301 % 32]
            revert with 0, 32, mem[mem[64] + 36 len floor32(_1301) + 64]
        tokenOfOwnerByIndex[stor10]++
        tokenOfOwnerByIndex[stor10][tokenOfOwnerByIndex[stor10]] = tokenByIndex.length + idx
        tokenOfOwnerByIndex[stor10][1][stor2.length + idx] = tokenOfOwnerByIndex[stor10]
        mem[0] = tokenByIndex.length + idx
        mem[32] = 3
        if stor3[stor2.length + idx]:
            require stor3[stor2.length + idx] - 1 < tokenByIndex.length
            mem[0] = 2
            tokenByIndex[stor3[tokenByIndex.length + idx] - 1].field_256 = owner
            emit Transfer(0, owner, tokenByIndex.length + idx);
            if not ext_code.size(owner):
                idx = idx + 1
                continue 
            _468 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0
            mem[mem[64] + 100] = tokenByIndex.length + idx
            mem[mem[64] + 132] = 128
            mem[mem[64] + 164] = 0
            s = 0
            while s < 0:
                mem[s + mem[64] + 196] = mem[s + _431 + 32]
                s = s + 32
                continue 
            _859 = mem[64]
            mem[mem[64]] = 164
            mem[64] = mem[64] + 196
            mem[_859 + 32] = mem[_859 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[64] = _468 + 292
            mem[_468 + 196] = 50
            mem[_468 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if not ext_code.size(owner):
                revert with 0, 'Address: call to non-contract'
            _888 = mem[_859]
            t = _859 + 32
            u = mem[64]
            s = mem[_859]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_859])] = mem[_859 + floor32(mem[_859]) + -(mem[_859] % 32) + 64 len mem[_859] % 32] or Mask(8 * -(mem[_859] % 32) + 32, -(8 * -(mem[_859] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_859])])
            call owner.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _888 + _468 + -mem[64] + 288]
            if not return_data.size:
                if ext_call.success:
                    require mem[96] >= 32
                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[mem[64] + 118 len 14]
                    idx = idx + 1
                    continue 
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                _1311 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[_468 + 196]
                _1313 = mem[_468 + 196]
                if not mem[_468 + 196]:
                    if not mem[_468 + 196] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[_468 + 196] + 32]
                    mem[floor32(mem[_468 + 196]) + mem[64] + 68] = mem[floor32(mem[_468 + 196]) + mem[64] + -(mem[_468 + 196] % 32) + 100 len mem[_468 + 196] % 32]
                    revert with 0, 32, mem[mem[64] + 36 len floor32(_1313) + 64]
                mem[mem[64] + 68] = mem[_468 + 228]
                idx = 32
                while idx < _1313:
                    mem[idx + mem[64] + 68] = mem[idx + _468 + 228]
                    idx = idx + 32
                    continue 
                if not _1313 % 32:
                    revert with memory
                      from mem[64]
                       len _1313 + _1311 + -mem[64] + 68
                mem[floor32(_1313) + _1311 + 68] = mem[floor32(_1313) + _1311 + -(_1313 % 32) + 100 len _1313 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_1313) + _1311 + -mem[64] + 100
            _1259 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1259] = return_data.size
            mem[_1259 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require return_data.size >= 32
                if Mask(32, 224, mem[_1259 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[mem[64] + 118 len 14]
                idx = idx + 1
                continue 
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            _1315 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_468 + 196]
            _1317 = mem[_468 + 196]
            if not mem[_468 + 196]:
                if not mem[_468 + 196] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[_468 + 196] + 32]
                mem[floor32(mem[_468 + 196]) + mem[64] + 68] = mem[floor32(mem[_468 + 196]) + mem[64] + -(mem[_468 + 196] % 32) + 100 len mem[_468 + 196] % 32]
                revert with 0, 32, mem[mem[64] + 36 len floor32(_1317) + 64]
            mem[mem[64] + 68] = mem[_468 + 228]
            idx = 32
            while idx < _1317:
                mem[idx + mem[64] + 68] = mem[idx + _468 + 228]
                idx = idx + 32
                continue 
            if not _1317 % 32:
                revert with memory
                  from mem[64]
                   len _1317 + _1315 + -mem[64] + 68
            mem[floor32(_1317) + _1315 + 68] = mem[floor32(_1317) + _1315 + -(_1317 % 32) + 100 len _1317 % 32]
            revert with memory
              from mem[64]
               len floor32(_1317) + _1315 + -mem[64] + 100
        _448 = mem[64]
        mem[64] = mem[64] + 64
        mem[_448] = tokenByIndex.length + idx
        mem[_448 + 32] = owner
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length + idx
        tokenByIndex[tokenByIndex.length].field_256 = owner
        mem[0] = tokenByIndex.length + idx
        mem[32] = 3
        stor3[stor2.length + idx] = tokenByIndex.length
        emit Transfer(0, owner, tokenByIndex.length + idx);
        if not ext_code.size(owner):
            idx = idx + 1
            continue 
        _462 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = 0
        mem[mem[64] + 100] = tokenByIndex.length + idx
        mem[mem[64] + 132] = 128
        mem[mem[64] + 164] = 0
        s = 0
        while s < 0:
            mem[s + mem[64] + 196] = mem[s + _431 + 32]
            s = s + 32
            continue 
        _863 = mem[64]
        mem[mem[64]] = 164
        mem[64] = mem[64] + 196
        mem[_863 + 32] = mem[_863 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
        mem[64] = _462 + 292
        mem[_462 + 196] = 50
        mem[_462 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
        if not ext_code.size(owner):
            revert with 0, 'Address: call to non-contract'
        _892 = mem[_863]
        s = _863 + 32
        t = mem[64]
        idx = mem[_863]
        while idx >= 32:
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx - 32
            continue 
        mem[mem[64] + floor32(mem[_863])] = mem[_863 + floor32(mem[_863]) + -(mem[_863] % 32) + 64 len mem[_863] % 32] or Mask(8 * -(mem[_863] % 32) + 32, -(8 * -(mem[_863] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_863])])
        call owner.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _892 + _462 + -mem[64] + 288]
        if not return_data.size:
            if ext_call.success:
                require mem[96] >= 32
                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[mem[64] + 118 len 14]
                s = 1
                continue 
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_462 + 196]
            _1329 = mem[_462 + 196]
            if not mem[_462 + 196]:
                if not mem[_462 + 196] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[_462 + 196] + 32]
                mem[floor32(mem[_462 + 196]) + mem[64] + 68] = mem[floor32(mem[_462 + 196]) + mem[64] + -(mem[_462 + 196] % 32) + 100 len mem[_462 + 196] % 32]
            else:
                mem[mem[64] + 68] = mem[_462 + 228]
                idx = 32
                while idx < _1329:
                    mem[idx + mem[64] + 68] = mem[idx + _462 + 228]
                    idx = idx + 32
                    continue 
                if not _1329 % 32:
                    revert with 0, 32, mem[mem[64] + 36 len _1329 + 32]
                mem[floor32(_1329) + mem[64] + 68] = mem[floor32(_1329) + mem[64] + -(_1329 % 32) + 100 len _1329 % 32]
            revert with 0, 32, mem[mem[64] + 36 len floor32(_1329) + 64]
        _1261 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_1261] = return_data.size
        mem[_1261 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            require return_data.size >= 32
            if Mask(32, 224, mem[_1261 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 118 len 14]
            s = 1
            continue 
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        _1331 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_462 + 196]
        _1333 = mem[_462 + 196]
        if not mem[_462 + 196]:
            if not mem[_462 + 196] % 32:
                revert with 0, 32, mem[mem[64] + 36 len mem[_462 + 196] + 32]
            mem[floor32(mem[_462 + 196]) + mem[64] + 68] = mem[floor32(mem[_462 + 196]) + mem[64] + -(mem[_462 + 196] % 32) + 100 len mem[_462 + 196] % 32]
            revert with 0, 32, mem[mem[64] + 36 len floor32(_1333) + 64]
        mem[mem[64] + 68] = mem[_462 + 228]
        idx = 32
        while idx < _1333:
            mem[idx + mem[64] + 68] = mem[idx + _462 + 228]
            idx = idx + 32
            continue 
        if not _1333 % 32:
            revert with memory
              from mem[64]
               len _1333 + _1331 + -mem[64] + 68
        mem[floor32(_1333) + _1331 + 68] = mem[floor32(_1333) + _1331 + -(_1333 % 32) + 100 len _1333 % 32]
        revert with memory
          from mem[64]
           len floor32(_1333) + _1331 + -mem[64] + 100
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
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
    if msg.sender == tokenByIndex[stor3[arg3] - 1].field_256:
        if not stor3[arg3]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[297 len 23],
                        mem[343 len 9]
        require stor3[arg3] - 1 < tokenByIndex.length
        if tokenByIndex[stor3[arg3] - 1].field_256 != arg1:
            revert with 0, 32, 41, 0x724552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
        if not arg2:
            revert with 0, 32, 36, 0x654552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
        approved[arg3] = 0
        if not stor3[arg3]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[393 len 23],
                        mem[439 len 9]
        require stor3[arg3] - 1 < tokenByIndex.length
        emit Approval(tokenByIndex[stor3[arg3] - 1].field_256, 0, arg3);
        if not tokenOfOwnerByIndex[address(arg1)][1][arg3]:
            if tokenOfOwnerByIndex[address(arg2)][1][arg3]:
                if stor3[arg3]:
                    require stor3[arg3] - 1 < tokenByIndex.length
                    tokenByIndex[stor3[arg3] - 1].field_256 = arg2
                    tokenByIndex[stor3[arg3] - 1].field_416 = 0
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
                    tokenByIndex[tokenByIndex.length].field_256 = arg2
                    tokenByIndex[tokenByIndex.length].field_416 = 0
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
                    tokenByIndex[stor3[arg3] - 1].field_256 = arg2
                    tokenByIndex[stor3[arg3] - 1].field_416 = 0
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
                    tokenByIndex[tokenByIndex.length].field_256 = arg2
                    tokenByIndex[tokenByIndex.length].field_416 = 0
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
                    tokenByIndex[stor3[arg3] - 1].field_256 = arg2
                    tokenByIndex[stor3[arg3] - 1].field_416 = 0
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
                    tokenByIndex[tokenByIndex.length].field_256 = arg2
                    tokenByIndex[tokenByIndex.length].field_416 = 0
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
                tokenOfOwnerByIndex[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
                if stor3[arg3]:
                    require stor3[arg3] - 1 < tokenByIndex.length
                    tokenByIndex[stor3[arg3] - 1].field_256 = arg2
                    tokenByIndex[stor3[arg3] - 1].field_416 = 0
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
                    tokenByIndex[tokenByIndex.length].field_256 = arg2
                    tokenByIndex[tokenByIndex.length].field_416 = 0
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
            revert with 0, 32, 44, 0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[336 len 20]
        if approved[arg3] == msg.sender:
            if not stor3[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[297 len 23],
                            mem[343 len 9]
            require stor3[arg3] - 1 < tokenByIndex.length
            if tokenByIndex[stor3[arg3] - 1].field_256 != arg1:
                revert with 0, 32, 41, 0x724552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
            if not arg2:
                revert with 0, 32, 36, 0x654552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
            approved[arg3] = 0
            if not stor3[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[393 len 23],
                            mem[439 len 9]
            require stor3[arg3] - 1 < tokenByIndex.length
            emit Approval(tokenByIndex[stor3[arg3] - 1].field_256, 0, arg3);
            if not tokenOfOwnerByIndex[address(arg1)][1][arg3]:
                if tokenOfOwnerByIndex[address(arg2)][1][arg3]:
                    if stor3[arg3]:
                        require stor3[arg3] - 1 < tokenByIndex.length
                        tokenByIndex[stor3[arg3] - 1].field_256 = arg2
                        tokenByIndex[stor3[arg3] - 1].field_416 = 0
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
                        tokenByIndex[tokenByIndex.length].field_256 = arg2
                        tokenByIndex[tokenByIndex.length].field_416 = 0
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
                        tokenByIndex[stor3[arg3] - 1].field_256 = arg2
                        tokenByIndex[stor3[arg3] - 1].field_416 = 0
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
                        tokenByIndex[tokenByIndex.length].field_256 = arg2
                        tokenByIndex[tokenByIndex.length].field_416 = 0
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
                        tokenByIndex[stor3[arg3] - 1].field_256 = arg2
                        tokenByIndex[stor3[arg3] - 1].field_416 = 0
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
                        tokenByIndex[tokenByIndex.length].field_256 = arg2
                        tokenByIndex[tokenByIndex.length].field_416 = 0
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
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
                    if stor3[arg3]:
                        require stor3[arg3] - 1 < tokenByIndex.length
                        tokenByIndex[stor3[arg3] - 1].field_256 = arg2
                        tokenByIndex[stor3[arg3] - 1].field_416 = 0
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
                        tokenByIndex[tokenByIndex.length].field_256 = arg2
                        tokenByIndex[tokenByIndex.length].field_416 = 0
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
            if not stor5[stor2[stor3[arg3] - 1].field_256][address(msg.sender)]:
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
            if tokenByIndex[stor3[arg3] - 1].field_256 != arg1:
                revert with 0, 32, 41, 0x724552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
            if not arg2:
                revert with 0, 32, 36, 0x654552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
            approved[arg3] = 0
            if not stor3[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[393 len 23],
                            mem[439 len 9]
            require stor3[arg3] - 1 < tokenByIndex.length
            emit Approval(tokenByIndex[stor3[arg3] - 1].field_256, 0, arg3);
            if not tokenOfOwnerByIndex[address(arg1)][1][arg3]:
                if tokenOfOwnerByIndex[address(arg2)][1][arg3]:
                    if stor3[arg3]:
                        require stor3[arg3] - 1 < tokenByIndex.length
                        tokenByIndex[stor3[arg3] - 1].field_256 = arg2
                        tokenByIndex[stor3[arg3] - 1].field_416 = 0
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
                        tokenByIndex[tokenByIndex.length].field_256 = arg2
                        tokenByIndex[tokenByIndex.length].field_416 = 0
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
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
                    if stor3[arg3]:
                        require stor3[arg3] - 1 < tokenByIndex.length
                        tokenByIndex[stor3[arg3] - 1].field_256 = arg2
                        tokenByIndex[stor3[arg3] - 1].field_416 = 0
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
                        tokenByIndex[tokenByIndex.length].field_256 = arg2
                        tokenByIndex[tokenByIndex.length].field_416 = 0
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
                    tokenByIndex[stor3[arg3] - 1].field_256 = arg2
                    tokenByIndex[stor3[arg3] - 1].field_416 = 0
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
                    tokenByIndex[tokenByIndex.length].field_256 = arg2
                    tokenByIndex[tokenByIndex.length].field_416 = 0
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
}

function sub_c6810cd3(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if tokenByIndex.length >= sub_3e0f7f02:
        revert with 0, 'Sale has already ended'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0xfe596f752063616e206d696e74206d696e696d756d20312c206d6178696d756d20312054616e6a69496e,
                    mem[206 len 22]
    if arg1 > 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0xfe596f752063616e206d696e74206d696e696d756d20312c206d6178696d756d20312054616e6a69496e,
                    mem[206 len 22]
    if arg1 + tokenByIndex.length < tokenByIndex.length:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + tokenByIndex.length > sub_3e0f7f02:
        revert with 0, 'Exceeds MAX_TanjiInu'
    if bool(hasSaleStarted) != 1:
        revert with 0, 'Sale hasn't started'
    if tokenByIndex.length >= sub_3e0f7f02:
        revert with 0, 'Sale has already ended'
    if tokenByIndex.length >= 3000:
        if 12 * 10^16 * arg1 / 12 * 10^16 != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if msg.value < 12 * 10^16 * arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73424e422076616c75652073656e742069732062656c6f77207468652070726963,
                        mem[197 len 31]
        idx = 0
        while idx < arg1:
            _2961 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2961] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if stor3[stor2.length]:
                revert with 0, 'ERC721: token already minted'
            if not tokenOfOwnerByIndex[address(msg.sender)][1][stor2.length]:
                tokenOfOwnerByIndex[address(msg.sender)]++
                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                tokenOfOwnerByIndex[address(msg.sender)][1][stor2.length] = tokenOfOwnerByIndex[address(msg.sender)]
                mem[0] = tokenByIndex.length
                mem[32] = 3
                if stor3[stor2.length]:
                    require stor3[stor2.length] - 1 < tokenByIndex.length
                    mem[0] = 2
                    tokenByIndex[stor3[tokenByIndex.length] - 1].field_256 = msg.sender
                    tokenByIndex[stor3[tokenByIndex.length] - 1].field_416 = 0
                    emit Transfer(0, msg.sender, tokenByIndex.length);
                    if not ext_code.size(msg.sender):
                        idx = idx + 1
                        continue 
                    _3232 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = tokenByIndex.length
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 196] = mem[s + _2961 + 32]
                        s = s + 32
                        continue 
                    _5999 = mem[64]
                    mem[mem[64]] = 164
                    mem[64] = mem[64] + 196
                    mem[_5999 + 32] = mem[_5999 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[64] = _3232 + 292
                    mem[_3232 + 196] = 50
                    mem[_3232 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if not ext_code.size(msg.sender):
                        revert with 0, 'Address: call to non-contract'
                    _6196 = mem[_5999]
                    t = _5999 + 32
                    u = _3232 + 292
                    s = mem[_5999]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_3232 + floor32(mem[_5999]) + 292] = mem[_5999 + -(mem[_5999] % 32) + floor32(mem[_5999]) + 64 len mem[_5999] % 32] or Mask(8 * -(mem[_5999] % 32) + 32, -(8 * -(mem[_5999] % 32) + 32) + 256, mem[_3232 + floor32(mem[_5999]) + 292])
                    call msg.sender.mem[_3232 + 292 len 4] with:
                         gas gas_remaining wei
                        args mem[_3232 + 296 len _6196 - 4]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 32
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_3232 + 410 len 14]
                            idx = idx + 1
                            continue 
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_3232 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3232 + 296] = 32
                        idx = 32
                        while idx < 50:
                            mem[idx + _3232 + 360] = mem[idx + _3232 + 228]
                            idx = idx + 32
                            continue 
                        mem[_3232 + 392] = mem[_3232 + 406 len 18]
                        revert with 0, 32, 50, 0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_3232 + 392]
                    mem[64] = _3232 + ceil32(return_data.size) + 293
                    mem[_3232 + 292] = return_data.size
                    mem[_3232 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        require return_data.size >= 32
                        if Mask(32, 224, mem[_3232 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[_3232 + ceil32(return_data.size) + 411 len 14]
                        idx = idx + 1
                        continue 
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3232 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3232 + ceil32(return_data.size) + 297] = 32
                    idx = 32
                    while idx < 50:
                        mem[idx + _3232 + ceil32(return_data.size) + 361] = mem[idx + _3232 + 228]
                        idx = idx + 32
                        continue 
                    mem[_3232 + ceil32(return_data.size) + 393] = mem[_3232 + ceil32(return_data.size) + 407 len 18]
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                mem[_3232 + ceil32(return_data.size) + 393]
                _3104 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3104] = tokenByIndex.length
                mem[_3104 + 32] = msg.sender
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                tokenByIndex[tokenByIndex.length].field_416 = 0
                mem[0] = tokenByIndex.length
                mem[32] = 3
                stor3[stor2.length] = tokenByIndex.length
                emit Transfer(0, msg.sender, tokenByIndex.length);
                if not ext_code.size(msg.sender):
                    idx = idx + 1
                    continue 
                _3190 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = tokenByIndex.length
                mem[mem[64] + 132] = 128
                mem[mem[64] + 164] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 196] = mem[s + _2961 + 32]
                    s = s + 32
                    continue 
                _6003 = mem[64]
                mem[mem[64]] = 164
                mem[64] = mem[64] + 196
                mem[_6003 + 32] = mem[_6003 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[64] = _3190 + 292
                mem[_3190 + 196] = 50
                mem[_3190 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                if not ext_code.size(msg.sender):
                    revert with 0, 'Address: call to non-contract'
                _6200 = mem[_6003]
                s = _6003 + 32
                t = _3190 + 292
                idx = mem[_6003]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[_3190 + floor32(mem[_6003]) + 292] = mem[_6003 + -(mem[_6003] % 32) + floor32(mem[_6003]) + 64 len mem[_6003] % 32] or Mask(8 * -(mem[_6003] % 32) + 32, -(8 * -(mem[_6003] % 32) + 32) + 256, mem[_3190 + floor32(mem[_6003]) + 292])
                call msg.sender.mem[_3190 + 292 len 4] with:
                     gas gas_remaining wei
                    args mem[_3190 + 296 len _6200 - 4]
                if not return_data.size:
                    if ext_call.success:
                        require mem[96] >= 32
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[_3190 + 410 len 14]
                        s = 1
                        continue 
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_3190 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3190 + 296] = 32
                    idx = 32
                    while idx < 50:
                        mem[idx + _3190 + 360] = mem[idx + _3190 + 228]
                        idx = idx + 32
                        continue 
                    mem[_3190 + 392] = mem[_3190 + 406 len 18]
                    revert with 0, 32, 50, 0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_3190 + 392]
                mem[64] = _3190 + ceil32(return_data.size) + 293
                mem[_3190 + 292] = return_data.size
                mem[_3190 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require return_data.size >= 32
                    if Mask(32, 224, mem[_3190 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[_3190 + ceil32(return_data.size) + 411 len 14]
                    s = 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_3190 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3190 + ceil32(return_data.size) + 297] = 32
                idx = 32
                while idx < 50:
                    mem[idx + _3190 + ceil32(return_data.size) + 361] = mem[idx + _3190 + 228]
                    idx = idx + 32
                    continue 
                mem[_3190 + ceil32(return_data.size) + 393] = mem[_3190 + ceil32(return_data.size) + 407 len 18]
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                            mem[_3190 + ceil32(return_data.size) + 393]
            mem[0] = tokenByIndex.length
            mem[32] = 3
            if stor3[stor2.length]:
                require stor3[stor2.length] - 1 < tokenByIndex.length
                mem[0] = 2
                tokenByIndex[stor3[tokenByIndex.length] - 1].field_256 = msg.sender
                tokenByIndex[stor3[tokenByIndex.length] - 1].field_416 = 0
                emit Transfer(0, msg.sender, tokenByIndex.length);
                if not ext_code.size(msg.sender):
                    idx = idx + 1
                    continue 
                _3229 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = tokenByIndex.length
                mem[mem[64] + 132] = 128
                mem[mem[64] + 164] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 196] = mem[s + _2961 + 32]
                    s = s + 32
                    continue 
                _5991 = mem[64]
                mem[mem[64]] = 164
                mem[64] = mem[64] + 196
                mem[_5991 + 32] = mem[_5991 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[64] = _3229 + 292
                mem[_3229 + 196] = 50
                mem[_3229 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                if not ext_code.size(msg.sender):
                    revert with 0, 'Address: call to non-contract'
                _6188 = mem[_5991]
                t = _5991 + 32
                u = _3229 + 292
                s = mem[_5991]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_3229 + floor32(mem[_5991]) + 292] = mem[_5991 + -(mem[_5991] % 32) + floor32(mem[_5991]) + 64 len mem[_5991] % 32] or Mask(8 * -(mem[_5991] % 32) + 32, -(8 * -(mem[_5991] % 32) + 32) + 256, mem[_3229 + floor32(mem[_5991]) + 292])
                call msg.sender.mem[_3229 + 292 len 4] with:
                     gas gas_remaining wei
                    args mem[_3229 + 296 len _6188 - 4]
                if not return_data.size:
                    if ext_call.success:
                        require mem[96] >= 32
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[_3229 + 410 len 14]
                        idx = idx + 1
                        continue 
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_3229 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3229 + 296] = 32
                    idx = 32
                    while idx < 50:
                        mem[idx + _3229 + 360] = mem[idx + _3229 + 228]
                        idx = idx + 32
                        continue 
                    mem[_3229 + 392] = mem[_3229 + 406 len 18]
                    revert with 0, 32, 50, 0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_3229 + 392]
                mem[64] = _3229 + ceil32(return_data.size) + 293
                mem[_3229 + 292] = return_data.size
                mem[_3229 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require return_data.size >= 32
                    if Mask(32, 224, mem[_3229 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[_3229 + ceil32(return_data.size) + 411 len 14]
                    idx = idx + 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_3229 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3229 + ceil32(return_data.size) + 297] = 32
                idx = 32
                while idx < 50:
                    mem[idx + _3229 + ceil32(return_data.size) + 361] = mem[idx + _3229 + 228]
                    idx = idx + 32
                    continue 
                mem[_3229 + ceil32(return_data.size) + 393] = mem[_3229 + ceil32(return_data.size) + 407 len 18]
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                            mem[_3229 + ceil32(return_data.size) + 393]
            _3099 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3099] = tokenByIndex.length
            mem[_3099 + 32] = msg.sender
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
            tokenByIndex[tokenByIndex.length].field_256 = msg.sender
            tokenByIndex[tokenByIndex.length].field_416 = 0
            mem[0] = tokenByIndex.length
            mem[32] = 3
            stor3[stor2.length] = tokenByIndex.length
            emit Transfer(0, msg.sender, tokenByIndex.length);
            if not ext_code.size(msg.sender):
                idx = idx + 1
                continue 
            _3187 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0
            mem[mem[64] + 100] = tokenByIndex.length
            mem[mem[64] + 132] = 128
            mem[mem[64] + 164] = 0
            s = 0
            while s < 0:
                mem[s + mem[64] + 196] = mem[s + _2961 + 32]
                s = s + 32
                continue 
            _5995 = mem[64]
            mem[mem[64]] = 164
            mem[64] = mem[64] + 196
            mem[_5995 + 32] = mem[_5995 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[64] = _3187 + 292
            mem[_3187 + 196] = 50
            mem[_3187 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if not ext_code.size(msg.sender):
                revert with 0, 'Address: call to non-contract'
            _6192 = mem[_5995]
            s = _5995 + 32
            t = mem[64]
            idx = mem[_5995]
            while idx >= 32:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx - 32
                continue 
            mem[mem[64] + floor32(mem[_5995])] = mem[_5995 + floor32(mem[_5995]) + -(mem[_5995] % 32) + 64 len mem[_5995] % 32] or Mask(8 * -(mem[_5995] % 32) + 32, -(8 * -(mem[_5995] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_5995])])
            call msg.sender.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _6192 + _3187 + -mem[64] + 288]
            if not return_data.size:
                if ext_call.success:
                    require mem[96] >= 32
                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[mem[64] + 118 len 14]
                    s = 1
                    continue 
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                _9291 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[_3187 + 196]
                _9293 = mem[_3187 + 196]
                if not mem[_3187 + 196]:
                    if not mem[_3187 + 196] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[_3187 + 196] + 32]
                    mem[floor32(mem[_3187 + 196]) + mem[64] + 68] = mem[floor32(mem[_3187 + 196]) + mem[64] + -(mem[_3187 + 196] % 32) + 100 len mem[_3187 + 196] % 32]
                else:
                    mem[mem[64] + 68] = mem[_3187 + 228]
                    idx = 32
                    while idx < _9293:
                        mem[idx + mem[64] + 68] = mem[idx + _3187 + 228]
                        idx = idx + 32
                        continue 
                    if not _9293 % 32:
                        revert with memory
                          from mem[64]
                           len _9293 + _9291 + -mem[64] + 68
                    mem[floor32(_9293) + _9291 + 68] = mem[floor32(_9293) + _9291 + -(_9293 % 32) + 100 len _9293 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_9293) + _9291 + -mem[64] + 100
            _8773 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_8773] = return_data.size
            mem[_8773 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require return_data.size >= 32
                if Mask(32, 224, mem[_8773 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[mem[64] + 118 len 14]
                s = 1
                continue 
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            _9295 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_3187 + 196]
            _9297 = mem[_3187 + 196]
            if not mem[_3187 + 196]:
                if not mem[_3187 + 196] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[_3187 + 196] + 32]
                mem[floor32(mem[_3187 + 196]) + mem[64] + 68] = mem[floor32(mem[_3187 + 196]) + mem[64] + -(mem[_3187 + 196] % 32) + 100 len mem[_3187 + 196] % 32]
            else:
                mem[mem[64] + 68] = mem[_3187 + 228]
                idx = 32
                while idx < _9297:
                    mem[idx + mem[64] + 68] = mem[idx + _3187 + 228]
                    idx = idx + 32
                    continue 
                if not _9297 % 32:
                    revert with memory
                      from mem[64]
                       len _9297 + _9295 + -mem[64] + 68
                mem[floor32(_9297) + _9295 + 68] = mem[floor32(_9297) + _9295 + -(_9297 % 32) + 100 len _9297 % 32]
            revert with memory
              from mem[64]
               len floor32(_9297) + _9295 + -mem[64] + 100
    else:
        if tokenByIndex.length >= 2500:
            if 10^17 * arg1 / 10^17 != arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if msg.value < 10^17 * arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73424e422076616c75652073656e742069732062656c6f77207468652070726963,
                            mem[197 len 31]
            idx = 0
            while idx < arg1:
                _2960 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2960] = 0
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if stor3[stor2.length]:
                    revert with 0, 'ERC721: token already minted'
                if tokenOfOwnerByIndex[address(msg.sender)][1][stor2.length]:
                    mem[0] = tokenByIndex.length
                    mem[32] = 3
                    if stor3[stor2.length]:
                        require stor3[stor2.length] - 1 < tokenByIndex.length
                        mem[0] = 2
                        tokenByIndex[stor3[tokenByIndex.length] - 1].field_256 = msg.sender
                        tokenByIndex[stor3[tokenByIndex.length] - 1].field_416 = 0
                        emit Transfer(0, msg.sender, tokenByIndex.length);
                        if not ext_code.size(msg.sender):
                            idx = idx + 1
                            continue 
                        _3223 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = tokenByIndex.length
                        mem[mem[64] + 132] = 128
                        mem[mem[64] + 164] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 196] = mem[s + _2960 + 32]
                            s = s + 32
                            continue 
                        _5975 = mem[64]
                        mem[mem[64]] = 164
                        mem[64] = mem[64] + 196
                        mem[_5975 + 32] = mem[_5975 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[64] = _3223 + 292
                        mem[_3223 + 196] = 50
                        mem[_3223 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if not ext_code.size(msg.sender):
                            revert with 0, 'Address: call to non-contract'
                        _6172 = mem[_5975]
                        t = _5975 + 32
                        u = _3223 + 292
                        s = mem[_5975]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_3223 + floor32(mem[_5975]) + 292] = mem[_5975 + -(mem[_5975] % 32) + floor32(mem[_5975]) + 64 len mem[_5975] % 32] or Mask(8 * -(mem[_5975] % 32) + 32, -(8 * -(mem[_5975] % 32) + 32) + 256, mem[_3223 + floor32(mem[_5975]) + 292])
                        call msg.sender.mem[_3223 + 292 len 4] with:
                             gas gas_remaining wei
                            args mem[_3223 + 296 len _6172 - 4]
                        if not return_data.size:
                            if ext_call.success:
                                require mem[96] >= 32
                                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_3223 + 410 len 14]
                                idx = idx + 1
                                continue 
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_3223 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3223 + 296] = 32
                            idx = 32
                            while idx < 50:
                                mem[idx + _3223 + 360] = mem[idx + _3223 + 228]
                                idx = idx + 32
                                continue 
                            mem[_3223 + 392] = mem[_3223 + 406 len 18]
                            revert with 0, 32, 50, 0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_3223 + 392]
                        mem[64] = _3223 + ceil32(return_data.size) + 293
                        mem[_3223 + 292] = return_data.size
                        mem[_3223 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 32
                            if Mask(32, 224, mem[_3223 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_3223 + ceil32(return_data.size) + 411 len 14]
                            idx = idx + 1
                            continue 
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_3223 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3223 + ceil32(return_data.size) + 297] = 32
                        idx = 32
                        while idx < 50:
                            mem[idx + _3223 + ceil32(return_data.size) + 361] = mem[idx + _3223 + 228]
                            idx = idx + 32
                            continue 
                        mem[_3223 + ceil32(return_data.size) + 393] = mem[_3223 + ceil32(return_data.size) + 407 len 18]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                    mem[_3223 + ceil32(return_data.size) + 393]
                    _3089 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3089] = tokenByIndex.length
                    mem[_3089 + 32] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                    tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    mem[0] = tokenByIndex.length
                    mem[32] = 3
                    stor3[stor2.length] = tokenByIndex.length
                    emit Transfer(0, msg.sender, tokenByIndex.length);
                    if not ext_code.size(msg.sender):
                        idx = idx + 1
                        continue 
                    _3181 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = tokenByIndex.length
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 196] = mem[s + _2960 + 32]
                        s = s + 32
                        continue 
                    _5979 = mem[64]
                    mem[mem[64]] = 164
                    mem[64] = mem[64] + 196
                    mem[_5979 + 32] = mem[_5979 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[64] = _3181 + 292
                    mem[_3181 + 196] = 50
                    mem[_3181 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if not ext_code.size(msg.sender):
                        revert with 0, 'Address: call to non-contract'
                    _6176 = mem[_5979]
                    s = _5979 + 32
                    t = _3181 + 292
                    idx = mem[_5979]
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[_3181 + floor32(mem[_5979]) + 292] = mem[_5979 + -(mem[_5979] % 32) + floor32(mem[_5979]) + 64 len mem[_5979] % 32] or Mask(8 * -(mem[_5979] % 32) + 32, -(8 * -(mem[_5979] % 32) + 32) + 256, mem[_3181 + floor32(mem[_5979]) + 292])
                    call msg.sender.mem[_3181 + 292 len 4] with:
                         gas gas_remaining wei
                        args mem[_3181 + 296 len _6176 - 4]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 32
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_3181 + 410 len 14]
                            s = 1
                            continue 
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_3181 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3181 + 296] = 32
                        idx = 32
                        while idx < 50:
                            mem[idx + _3181 + 360] = mem[idx + _3181 + 228]
                            idx = idx + 32
                            continue 
                        mem[_3181 + 392] = mem[_3181 + 406 len 18]
                        revert with 0, 32, 50, 0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_3181 + 392]
                    mem[64] = _3181 + ceil32(return_data.size) + 293
                    mem[_3181 + 292] = return_data.size
                    mem[_3181 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        require return_data.size >= 32
                        if Mask(32, 224, mem[_3181 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[_3181 + ceil32(return_data.size) + 411 len 14]
                        s = 1
                        continue 
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3181 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3181 + ceil32(return_data.size) + 297] = 32
                    idx = 32
                    while idx < 50:
                        mem[idx + _3181 + ceil32(return_data.size) + 361] = mem[idx + _3181 + 228]
                        idx = idx + 32
                        continue 
                    mem[_3181 + ceil32(return_data.size) + 393] = mem[_3181 + ceil32(return_data.size) + 407 len 18]
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                mem[_3181 + ceil32(return_data.size) + 393]
                tokenOfOwnerByIndex[address(msg.sender)]++
                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                tokenOfOwnerByIndex[address(msg.sender)][1][stor2.length] = tokenOfOwnerByIndex[address(msg.sender)]
                mem[0] = tokenByIndex.length
                mem[32] = 3
                if stor3[stor2.length]:
                    require stor3[stor2.length] - 1 < tokenByIndex.length
                    mem[0] = 2
                    tokenByIndex[stor3[tokenByIndex.length] - 1].field_256 = msg.sender
                    tokenByIndex[stor3[tokenByIndex.length] - 1].field_416 = 0
                    emit Transfer(0, msg.sender, tokenByIndex.length);
                    if not ext_code.size(msg.sender):
                        idx = idx + 1
                        continue 
                    _3226 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = tokenByIndex.length
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 196] = mem[s + _2960 + 32]
                        s = s + 32
                        continue 
                    _5983 = mem[64]
                    mem[mem[64]] = 164
                    mem[64] = mem[64] + 196
                    mem[_5983 + 32] = mem[_5983 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[64] = _3226 + 292
                    mem[_3226 + 196] = 50
                    mem[_3226 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if not ext_code.size(msg.sender):
                        revert with 0, 'Address: call to non-contract'
                    _6180 = mem[_5983]
                    t = _5983 + 32
                    u = mem[64]
                    s = mem[_5983]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_5983])] = mem[_5983 + floor32(mem[_5983]) + -(mem[_5983] % 32) + 64 len mem[_5983] % 32] or Mask(8 * -(mem[_5983] % 32) + 32, -(8 * -(mem[_5983] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_5983])])
                    call msg.sender.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _6180 + _3226 + -mem[64] + 288]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 32
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[mem[64] + 118 len 14]
                            idx = idx + 1
                            continue 
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _9243 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[_3226 + 196]
                        _9245 = mem[_3226 + 196]
                        if not mem[_3226 + 196]:
                            if not mem[_3226 + 196] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[_3226 + 196] + 32]
                            mem[floor32(mem[_3226 + 196]) + mem[64] + 68] = mem[floor32(mem[_3226 + 196]) + mem[64] + -(mem[_3226 + 196] % 32) + 100 len mem[_3226 + 196] % 32]
                        else:
                            mem[mem[64] + 68] = mem[_3226 + 228]
                            idx = 32
                            while idx < _9245:
                                mem[idx + mem[64] + 68] = mem[idx + _3226 + 228]
                                idx = idx + 32
                                continue 
                            if not _9245 % 32:
                                revert with memory
                                  from mem[64]
                                   len _9245 + _9243 + -mem[64] + 68
                            mem[floor32(_9245) + _9243 + 68] = mem[floor32(_9245) + _9243 + -(_9245 % 32) + 100 len _9245 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_9245) + _9243 + -mem[64] + 100
                    _8767 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_8767] = return_data.size
                    mem[_8767 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        require return_data.size >= 32
                        if Mask(32, 224, mem[_8767 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[mem[64] + 118 len 14]
                        idx = idx + 1
                        continue 
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9247 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_3226 + 196]
                    _9249 = mem[_3226 + 196]
                    if not mem[_3226 + 196]:
                        if not mem[_3226 + 196] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[_3226 + 196] + 32]
                        mem[floor32(mem[_3226 + 196]) + mem[64] + 68] = mem[floor32(mem[_3226 + 196]) + mem[64] + -(mem[_3226 + 196] % 32) + 100 len mem[_3226 + 196] % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_9249) + _9247 + -mem[64] + 100
                    mem[mem[64] + 68] = mem[_3226 + 228]
                    idx = 32
                    while idx < _9249:
                        mem[idx + mem[64] + 68] = mem[idx + _3226 + 228]
                        idx = idx + 32
                        continue 
                    if not _9249 % 32:
                        revert with 0, 32, mem[mem[64] + 36 len _9249 + 32]
                    mem[floor32(_9249) + mem[64] + 68] = mem[floor32(_9249) + mem[64] + -(_9249 % 32) + 100 len _9249 % 32]
                    revert with 0, 32, mem[mem[64] + 36 len floor32(_9249) + 64]
                _3094 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3094] = tokenByIndex.length
                mem[_3094 + 32] = msg.sender
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                tokenByIndex[tokenByIndex.length].field_416 = 0
                mem[0] = tokenByIndex.length
                mem[32] = 3
                stor3[stor2.length] = tokenByIndex.length
                emit Transfer(0, msg.sender, tokenByIndex.length);
                if not ext_code.size(msg.sender):
                    idx = idx + 1
                    continue 
                _3184 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = tokenByIndex.length
                mem[mem[64] + 132] = 128
                mem[mem[64] + 164] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 196] = mem[s + _2960 + 32]
                    s = s + 32
                    continue 
                _5987 = mem[64]
                mem[mem[64]] = 164
                mem[64] = mem[64] + 196
                mem[_5987 + 32] = mem[_5987 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[64] = _3184 + 292
                mem[_3184 + 196] = 50
                mem[_3184 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                if not ext_code.size(msg.sender):
                    revert with 0, 'Address: call to non-contract'
                _6184 = mem[_5987]
                s = _5987 + 32
                t = _3184 + 292
                idx = mem[_5987]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[_3184 + floor32(mem[_5987]) + 292] = mem[_5987 + -(mem[_5987] % 32) + floor32(mem[_5987]) + 64 len mem[_5987] % 32] or Mask(8 * -(mem[_5987] % 32) + 32, -(8 * -(mem[_5987] % 32) + 32) + 256, mem[_3184 + floor32(mem[_5987]) + 292])
                call msg.sender.mem[_3184 + 292 len 4] with:
                     gas gas_remaining wei
                    args mem[_3184 + 296 len _6184 - 4]
                if not return_data.size:
                    if ext_call.success:
                        require mem[96] >= 32
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[_3184 + 410 len 14]
                        s = 1
                        continue 
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_3184 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3184 + 296] = 32
                    idx = 32
                    while idx < 50:
                        mem[idx + _3184 + 360] = mem[idx + _3184 + 228]
                        idx = idx + 32
                        continue 
                    mem[_3184 + 392] = mem[_3184 + 406 len 18]
                    revert with 0, 32, 50, 0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_3184 + 392]
                mem[64] = _3184 + ceil32(return_data.size) + 293
                mem[_3184 + 292] = return_data.size
                mem[_3184 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require return_data.size >= 32
                    if Mask(32, 224, mem[_3184 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[_3184 + ceil32(return_data.size) + 411 len 14]
                    s = 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_3184 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3184 + ceil32(return_data.size) + 297] = 32
                idx = 32
                while idx < 50:
                    mem[idx + _3184 + ceil32(return_data.size) + 361] = mem[idx + _3184 + 228]
                    idx = idx + 32
                    continue 
                mem[_3184 + ceil32(return_data.size) + 393] = mem[_3184 + ceil32(return_data.size) + 407 len 18]
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                            mem[_3184 + ceil32(return_data.size) + 393]
        else:
            if tokenByIndex.length >= 2000:
                if 25 * 10^12 * 3600 * arg1 / 25 * 10^12 * 3600 != arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if msg.value < 25 * 10^12 * 3600 * arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73424e422076616c75652073656e742069732062656c6f77207468652070726963,
                                mem[197 len 31]
                idx = 0
                while idx < arg1:
                    _2959 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2959] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if stor3[stor2.length]:
                        revert with 0, 'ERC721: token already minted'
                    if tokenOfOwnerByIndex[address(msg.sender)][1][stor2.length]:
                        mem[0] = tokenByIndex.length
                        mem[32] = 3
                        if stor3[stor2.length]:
                            require stor3[stor2.length] - 1 < tokenByIndex.length
                            mem[0] = 2
                            tokenByIndex[stor3[tokenByIndex.length] - 1].field_256 = msg.sender
                            tokenByIndex[stor3[tokenByIndex.length] - 1].field_416 = 0
                            emit Transfer(0, msg.sender, tokenByIndex.length);
                            if not ext_code.size(msg.sender):
                                idx = idx + 1
                                continue 
                            _3217 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = 0
                            mem[mem[64] + 100] = tokenByIndex.length
                            mem[mem[64] + 132] = 128
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 196] = mem[s + _2959 + 32]
                                s = s + 32
                                continue 
                            _5959 = mem[64]
                            mem[mem[64]] = 164
                            mem[64] = mem[64] + 196
                            mem[_5959 + 32] = mem[_5959 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[64] = _3217 + 292
                            mem[_3217 + 196] = 50
                            mem[_3217 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                            if not ext_code.size(msg.sender):
                                revert with 0, 'Address: call to non-contract'
                            _6156 = mem[_5959]
                            t = _5959 + 32
                            u = _3217 + 292
                            s = mem[_5959]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_3217 + floor32(mem[_5959]) + 292] = mem[_5959 + -(mem[_5959] % 32) + floor32(mem[_5959]) + 64 len mem[_5959] % 32] or Mask(8 * -(mem[_5959] % 32) + 32, -(8 * -(mem[_5959] % 32) + 32) + 256, mem[_3217 + floor32(mem[_5959]) + 292])
                            call msg.sender.mem[_3217 + 292 len 4] with:
                                 gas gas_remaining wei
                                args mem[_3217 + 296 len _6156 - 4]
                            if not return_data.size:
                                if ext_call.success:
                                    require mem[96] >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[_3217 + 410 len 14]
                                    idx = idx + 1
                                    continue 
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_3217 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_3217 + 296] = 32
                                idx = 32
                                while idx < 50:
                                    mem[idx + _3217 + 360] = mem[idx + _3217 + 228]
                                    idx = idx + 32
                                    continue 
                                mem[_3217 + 392] = mem[_3217 + 406 len 18]
                                revert with 0, 32, 50, 0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_3217 + 392]
                            mem[64] = _3217 + ceil32(return_data.size) + 293
                            mem[_3217 + 292] = return_data.size
                            mem[_3217 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                                require return_data.size >= 32
                                if Mask(32, 224, mem[_3217 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_3217 + ceil32(return_data.size) + 411 len 14]
                                idx = idx + 1
                                continue 
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_3217 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3217 + ceil32(return_data.size) + 297] = 32
                            idx = 32
                            while idx < 50:
                                mem[idx + _3217 + ceil32(return_data.size) + 361] = mem[idx + _3217 + 228]
                                idx = idx + 32
                                continue 
                            mem[_3217 + ceil32(return_data.size) + 393] = mem[_3217 + ceil32(return_data.size) + 407 len 18]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        mem[_3217 + ceil32(return_data.size) + 393]
                        _3079 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3079] = tokenByIndex.length
                        mem[_3079 + 32] = msg.sender
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                        tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        mem[0] = tokenByIndex.length
                        mem[32] = 3
                        stor3[stor2.length] = tokenByIndex.length
                        emit Transfer(0, msg.sender, tokenByIndex.length);
                        if not ext_code.size(msg.sender):
                            idx = idx + 1
                            continue 
                        _3175 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = tokenByIndex.length
                        mem[mem[64] + 132] = 128
                        mem[mem[64] + 164] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 196] = mem[s + _2959 + 32]
                            s = s + 32
                            continue 
                        _5963 = mem[64]
                        mem[mem[64]] = 164
                        mem[64] = mem[64] + 196
                        mem[_5963 + 32] = mem[_5963 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[64] = _3175 + 292
                        mem[_3175 + 196] = 50
                        mem[_3175 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if not ext_code.size(msg.sender):
                            revert with 0, 'Address: call to non-contract'
                        _6160 = mem[_5963]
                        s = _5963 + 32
                        t = _3175 + 292
                        idx = mem[_5963]
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[_3175 + floor32(mem[_5963]) + 292] = mem[_5963 + -(mem[_5963] % 32) + floor32(mem[_5963]) + 64 len mem[_5963] % 32] or Mask(8 * -(mem[_5963] % 32) + 32, -(8 * -(mem[_5963] % 32) + 32) + 256, mem[_3175 + floor32(mem[_5963]) + 292])
                        call msg.sender.mem[_3175 + 292 len 4] with:
                             gas gas_remaining wei
                            args mem[_3175 + 296 len _6160 - 4]
                        if not return_data.size:
                            if ext_call.success:
                                require mem[96] >= 32
                                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_3175 + 410 len 14]
                                s = 1
                                continue 
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_3175 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3175 + 296] = 32
                            idx = 32
                            while idx < 50:
                                mem[idx + _3175 + 360] = mem[idx + _3175 + 228]
                                idx = idx + 32
                                continue 
                            mem[_3175 + 392] = mem[_3175 + 406 len 18]
                            revert with 0, 32, 50, 0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_3175 + 392]
                        mem[64] = _3175 + ceil32(return_data.size) + 293
                        mem[_3175 + 292] = return_data.size
                        mem[_3175 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 32
                            if Mask(32, 224, mem[_3175 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_3175 + ceil32(return_data.size) + 411 len 14]
                            s = 1
                            continue 
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_3175 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3175 + ceil32(return_data.size) + 297] = 32
                        idx = 32
                        while idx < 50:
                            mem[idx + _3175 + ceil32(return_data.size) + 361] = mem[idx + _3175 + 228]
                            idx = idx + 32
                            continue 
                        mem[_3175 + ceil32(return_data.size) + 393] = mem[_3175 + ceil32(return_data.size) + 407 len 18]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                    mem[_3175 + ceil32(return_data.size) + 393]
                    tokenOfOwnerByIndex[address(msg.sender)]++
                    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                    tokenOfOwnerByIndex[address(msg.sender)][1][stor2.length] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[0] = tokenByIndex.length
                    mem[32] = 3
                    if stor3[stor2.length]:
                        require stor3[stor2.length] - 1 < tokenByIndex.length
                        mem[0] = 2
                        tokenByIndex[stor3[tokenByIndex.length] - 1].field_256 = msg.sender
                        tokenByIndex[stor3[tokenByIndex.length] - 1].field_416 = 0
                        emit Transfer(0, msg.sender, tokenByIndex.length);
                        if not ext_code.size(msg.sender):
                            idx = idx + 1
                            continue 
                        _3220 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = tokenByIndex.length
                        mem[mem[64] + 132] = 128
                        mem[mem[64] + 164] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 196] = mem[s + _2959 + 32]
                            s = s + 32
                            continue 
                        _5967 = mem[64]
                        mem[mem[64]] = 164
                        mem[64] = mem[64] + 196
                        mem[_5967 + 32] = mem[_5967 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[64] = _3220 + 292
                        mem[_3220 + 196] = 50
                        mem[_3220 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if not ext_code.size(msg.sender):
                            revert with 0, 'Address: call to non-contract'
                        _6164 = mem[_5967]
                        t = _5967 + 32
                        u = _3220 + 292
                        s = mem[_5967]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_3220 + floor32(mem[_5967]) + 292] = mem[_5967 + -(mem[_5967] % 32) + floor32(mem[_5967]) + 64 len mem[_5967] % 32] or Mask(8 * -(mem[_5967] % 32) + 32, -(8 * -(mem[_5967] % 32) + 32) + 256, mem[_3220 + floor32(mem[_5967]) + 292])
                        call msg.sender.mem[_3220 + 292 len 4] with:
                             gas gas_remaining wei
                            args mem[_3220 + 296 len _6164 - 4]
                        if not return_data.size:
                            if ext_call.success:
                                require mem[96] >= 32
                                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_3220 + 410 len 14]
                                idx = idx + 1
                                continue 
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_3220 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3220 + 296] = 32
                            idx = 32
                            while idx < 50:
                                mem[idx + _3220 + 360] = mem[idx + _3220 + 228]
                                idx = idx + 32
                                continue 
                            mem[_3220 + 392] = mem[_3220 + 406 len 18]
                            revert with 0, 32, 50, 0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_3220 + 392]
                        mem[64] = _3220 + ceil32(return_data.size) + 293
                        mem[_3220 + 292] = return_data.size
                        mem[_3220 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 32
                            if Mask(32, 224, mem[_3220 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_3220 + ceil32(return_data.size) + 411 len 14]
                            idx = idx + 1
                            continue 
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_3220 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3220 + ceil32(return_data.size) + 297] = 32
                        idx = 32
                        while idx < 50:
                            mem[idx + _3220 + ceil32(return_data.size) + 361] = mem[idx + _3220 + 228]
                            idx = idx + 32
                            continue 
                        mem[_3220 + ceil32(return_data.size) + 393] = mem[_3220 + ceil32(return_data.size) + 407 len 18]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                    mem[_3220 + ceil32(return_data.size) + 393]
                    _3084 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3084] = tokenByIndex.length
                    mem[_3084 + 32] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                    tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    mem[0] = tokenByIndex.length
                    mem[32] = 3
                    stor3[stor2.length] = tokenByIndex.length
                    emit Transfer(0, msg.sender, tokenByIndex.length);
                    if not ext_code.size(msg.sender):
                        idx = idx + 1
                        continue 
                    _3178 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = tokenByIndex.length
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 196] = mem[s + _2959 + 32]
                        s = s + 32
                        continue 
                    _5971 = mem[64]
                    mem[mem[64]] = 164
                    mem[64] = mem[64] + 196
                    mem[_5971 + 32] = mem[_5971 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[64] = _3178 + 292
                    mem[_3178 + 196] = 50
                    mem[_3178 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if not ext_code.size(msg.sender):
                        revert with 0, 'Address: call to non-contract'
                    _6168 = mem[_5971]
                    s = _5971 + 32
                    t = mem[64]
                    idx = mem[_5971]
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[_5971])] = mem[_5971 + floor32(mem[_5971]) + -(mem[_5971] % 32) + 64 len mem[_5971] % 32] or Mask(8 * -(mem[_5971] % 32) + 32, -(8 * -(mem[_5971] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_5971])])
                    call msg.sender.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _6168 + _3178 + -mem[64] + 288]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 32
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[mem[64] + 118 len 14]
                            s = 1
                            continue 
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _9195 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[_3178 + 196]
                        _9197 = mem[_3178 + 196]
                        if not mem[_3178 + 196]:
                            if not mem[_3178 + 196] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[_3178 + 196] + 32]
                            mem[floor32(mem[_3178 + 196]) + mem[64] + 68] = mem[floor32(mem[_3178 + 196]) + mem[64] + -(mem[_3178 + 196] % 32) + 100 len mem[_3178 + 196] % 32]
                        else:
                            mem[mem[64] + 68] = mem[_3178 + 228]
                            idx = 32
                            while idx < _9197:
                                mem[idx + mem[64] + 68] = mem[idx + _3178 + 228]
                                idx = idx + 32
                                continue 
                            if not _9197 % 32:
                                revert with memory
                                  from mem[64]
                                   len _9197 + _9195 + -mem[64] + 68
                            mem[floor32(_9197) + _9195 + 68] = mem[floor32(_9197) + _9195 + -(_9197 % 32) + 100 len _9197 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_9197) + _9195 + -mem[64] + 100
                    _8761 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_8761] = return_data.size
                    mem[_8761 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        require return_data.size >= 32
                        if Mask(32, 224, mem[_8761 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[mem[64] + 118 len 14]
                        s = 1
                        continue 
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9199 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_3178 + 196]
                    _9201 = mem[_3178 + 196]
                    if not mem[_3178 + 196]:
                        if not mem[_3178 + 196] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[_3178 + 196] + 32]
                        mem[floor32(mem[_3178 + 196]) + mem[64] + 68] = mem[floor32(mem[_3178 + 196]) + mem[64] + -(mem[_3178 + 196] % 32) + 100 len mem[_3178 + 196] % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_9201) + _9199 + -mem[64] + 100
                    mem[mem[64] + 68] = mem[_3178 + 228]
                    idx = 32
                    while idx < _9201:
                        mem[idx + mem[64] + 68] = mem[idx + _3178 + 228]
                        idx = idx + 32
                        continue 
                    if not _9201 % 32:
                        revert with 0, 32, mem[mem[64] + 36 len _9201 + 32]
                    mem[floor32(_9201) + mem[64] + 68] = mem[floor32(_9201) + mem[64] + -(_9201 % 32) + 100 len _9201 % 32]
                    revert with 0, 32, mem[mem[64] + 36 len floor32(_9201) + 64]
            else:
                if tokenByIndex.length >= 1500:
                    if 8 * 10^16 * arg1 / 8 * 10^16 != arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if msg.value < 8 * 10^16 * arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73424e422076616c75652073656e742069732062656c6f77207468652070726963,
                                    mem[197 len 31]
                    idx = 0
                    while idx < arg1:
                        _2958 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2958] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if stor3[stor2.length]:
                            revert with 0, 'ERC721: token already minted'
                        if tokenOfOwnerByIndex[address(msg.sender)][1][stor2.length]:
                            mem[0] = tokenByIndex.length
                            mem[32] = 3
                            if stor3[stor2.length]:
                                require stor3[stor2.length] - 1 < tokenByIndex.length
                                mem[0] = 2
                                tokenByIndex[stor3[tokenByIndex.length] - 1].field_256 = msg.sender
                                tokenByIndex[stor3[tokenByIndex.length] - 1].field_416 = 0
                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                if not ext_code.size(msg.sender):
                                    idx = idx + 1
                                    continue 
                                _3211 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = 0
                                mem[mem[64] + 100] = tokenByIndex.length
                                mem[mem[64] + 132] = 128
                                mem[mem[64] + 164] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 196] = mem[s + _2958 + 32]
                                    s = s + 32
                                    continue 
                                _5943 = mem[64]
                                mem[mem[64]] = 164
                                mem[64] = mem[64] + 196
                                mem[_5943 + 32] = mem[_5943 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[64] = _3211 + 292
                                mem[_3211 + 196] = 50
                                mem[_3211 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                                if not ext_code.size(msg.sender):
                                    revert with 0, 'Address: call to non-contract'
                                _6140 = mem[_5943]
                                t = _5943 + 32
                                u = _3211 + 292
                                s = mem[_5943]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_3211 + floor32(mem[_5943]) + 292] = mem[_5943 + -(mem[_5943] % 32) + floor32(mem[_5943]) + 64 len mem[_5943] % 32] or Mask(8 * -(mem[_5943] % 32) + 32, -(8 * -(mem[_5943] % 32) + 32) + 256, mem[_3211 + floor32(mem[_5943]) + 292])
                                call msg.sender.mem[_3211 + 292 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_3211 + 296 len _6140 - 4]
                                if not return_data.size:
                                    if ext_call.success:
                                        require mem[96] >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[_3211 + 410 len 14]
                                        idx = idx + 1
                                        continue 
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_3211 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_3211 + 296] = 32
                                    idx = 32
                                    while idx < 50:
                                        mem[idx + _3211 + 360] = mem[idx + _3211 + 228]
                                        idx = idx + 32
                                        continue 
                                    mem[_3211 + 392] = mem[_3211 + 406 len 18]
                                    revert with 0, 32, 50, 0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_3211 + 392]
                                mem[64] = _3211 + ceil32(return_data.size) + 293
                                mem[_3211 + 292] = return_data.size
                                mem[_3211 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if ext_call.success:
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[_3211 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[_3211 + ceil32(return_data.size) + 411 len 14]
                                    idx = idx + 1
                                    continue 
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_3211 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_3211 + ceil32(return_data.size) + 297] = 32
                                idx = 32
                                while idx < 50:
                                    mem[idx + _3211 + ceil32(return_data.size) + 361] = mem[idx + _3211 + 228]
                                    idx = idx + 32
                                    continue 
                                mem[_3211 + ceil32(return_data.size) + 393] = mem[_3211 + ceil32(return_data.size) + 407 len 18]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            mem[_3211 + ceil32(return_data.size) + 393]
                            _3069 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3069] = tokenByIndex.length
                            mem[_3069 + 32] = msg.sender
                            tokenByIndex.length++
                            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                            tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                            tokenByIndex[tokenByIndex.length].field_416 = 0
                            mem[0] = tokenByIndex.length
                            mem[32] = 3
                            stor3[stor2.length] = tokenByIndex.length
                            emit Transfer(0, msg.sender, tokenByIndex.length);
                            if not ext_code.size(msg.sender):
                                idx = idx + 1
                                continue 
                            _3169 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = 0
                            mem[mem[64] + 100] = tokenByIndex.length
                            mem[mem[64] + 132] = 128
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 196] = mem[s + _2958 + 32]
                                s = s + 32
                                continue 
                            _5947 = mem[64]
                            mem[mem[64]] = 164
                            mem[64] = mem[64] + 196
                            mem[_5947 + 32] = mem[_5947 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[64] = _3169 + 292
                            mem[_3169 + 196] = 50
                            mem[_3169 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                            if not ext_code.size(msg.sender):
                                revert with 0, 'Address: call to non-contract'
                            _6144 = mem[_5947]
                            s = _5947 + 32
                            t = _3169 + 292
                            idx = mem[_5947]
                            while idx >= 32:
                                mem[t] = mem[s]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[_3169 + floor32(mem[_5947]) + 292] = mem[_5947 + -(mem[_5947] % 32) + floor32(mem[_5947]) + 64 len mem[_5947] % 32] or Mask(8 * -(mem[_5947] % 32) + 32, -(8 * -(mem[_5947] % 32) + 32) + 256, mem[_3169 + floor32(mem[_5947]) + 292])
                            call msg.sender.mem[_3169 + 292 len 4] with:
                                 gas gas_remaining wei
                                args mem[_3169 + 296 len _6144 - 4]
                            if not return_data.size:
                                if ext_call.success:
                                    require mem[96] >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[_3169 + 410 len 14]
                                    s = 1
                                    continue 
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_3169 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_3169 + 296] = 32
                                idx = 32
                                while idx < 50:
                                    mem[idx + _3169 + 360] = mem[idx + _3169 + 228]
                                    idx = idx + 32
                                    continue 
                                mem[_3169 + 392] = mem[_3169 + 406 len 18]
                                revert with 0, 32, 50, 0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_3169 + 392]
                            mem[64] = _3169 + ceil32(return_data.size) + 293
                            mem[_3169 + 292] = return_data.size
                            mem[_3169 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                                require return_data.size >= 32
                                if Mask(32, 224, mem[_3169 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_3169 + ceil32(return_data.size) + 411 len 14]
                                s = 1
                                continue 
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_3169 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3169 + ceil32(return_data.size) + 297] = 32
                            idx = 32
                            while idx < 50:
                                mem[idx + _3169 + ceil32(return_data.size) + 361] = mem[idx + _3169 + 228]
                                idx = idx + 32
                                continue 
                            mem[_3169 + ceil32(return_data.size) + 393] = mem[_3169 + ceil32(return_data.size) + 407 len 18]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        mem[_3169 + ceil32(return_data.size) + 393]
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                        tokenOfOwnerByIndex[address(msg.sender)][1][stor2.length] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[0] = tokenByIndex.length
                        mem[32] = 3
                        if stor3[stor2.length]:
                            require stor3[stor2.length] - 1 < tokenByIndex.length
                            mem[0] = 2
                            tokenByIndex[stor3[tokenByIndex.length] - 1].field_256 = msg.sender
                            tokenByIndex[stor3[tokenByIndex.length] - 1].field_416 = 0
                            emit Transfer(0, msg.sender, tokenByIndex.length);
                            if not ext_code.size(msg.sender):
                                idx = idx + 1
                                continue 
                            _3214 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = 0
                            mem[mem[64] + 100] = tokenByIndex.length
                            mem[mem[64] + 132] = 128
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 196] = mem[s + _2958 + 32]
                                s = s + 32
                                continue 
                            _5951 = mem[64]
                            mem[mem[64]] = 164
                            mem[64] = mem[64] + 196
                            mem[_5951 + 32] = mem[_5951 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[64] = _3214 + 292
                            mem[_3214 + 196] = 50
                            mem[_3214 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                            if not ext_code.size(msg.sender):
                                revert with 0, 'Address: call to non-contract'
                            _6148 = mem[_5951]
                            t = _5951 + 32
                            u = _3214 + 292
                            s = mem[_5951]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_3214 + floor32(mem[_5951]) + 292] = mem[_5951 + -(mem[_5951] % 32) + floor32(mem[_5951]) + 64 len mem[_5951] % 32] or Mask(8 * -(mem[_5951] % 32) + 32, -(8 * -(mem[_5951] % 32) + 32) + 256, mem[_3214 + floor32(mem[_5951]) + 292])
                            call msg.sender.mem[_3214 + 292 len 4] with:
                                 gas gas_remaining wei
                                args mem[_3214 + 296 len _6148 - 4]
                            if not return_data.size:
                                if ext_call.success:
                                    require mem[96] >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[_3214 + 410 len 14]
                                    idx = idx + 1
                                    continue 
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_3214 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_3214 + 296] = 32
                                idx = 32
                                while idx < 50:
                                    mem[idx + _3214 + 360] = mem[idx + _3214 + 228]
                                    idx = idx + 32
                                    continue 
                                mem[_3214 + 392] = mem[_3214 + 406 len 18]
                                revert with 0, 32, 50, 0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_3214 + 392]
                            mem[64] = _3214 + ceil32(return_data.size) + 293
                            mem[_3214 + 292] = return_data.size
                            mem[_3214 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                                require return_data.size >= 32
                                if Mask(32, 224, mem[_3214 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_3214 + ceil32(return_data.size) + 411 len 14]
                                idx = idx + 1
                                continue 
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_3214 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3214 + ceil32(return_data.size) + 297] = 32
                            idx = 32
                            while idx < 50:
                                mem[idx + _3214 + ceil32(return_data.size) + 361] = mem[idx + _3214 + 228]
                                idx = idx + 32
                                continue 
                            mem[_3214 + ceil32(return_data.size) + 393] = mem[_3214 + ceil32(return_data.size) + 407 len 18]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        mem[_3214 + ceil32(return_data.size) + 393]
                        _3074 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3074] = tokenByIndex.length
                        mem[_3074 + 32] = msg.sender
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                        tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        mem[0] = tokenByIndex.length
                        mem[32] = 3
                        stor3[stor2.length] = tokenByIndex.length
                        emit Transfer(0, msg.sender, tokenByIndex.length);
                        if not ext_code.size(msg.sender):
                            idx = idx + 1
                            continue 
                        _3172 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = tokenByIndex.length
                        mem[mem[64] + 132] = 128
                        mem[mem[64] + 164] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 196] = mem[s + _2958 + 32]
                            s = s + 32
                            continue 
                        _5955 = mem[64]
                        mem[mem[64]] = 164
                        mem[64] = mem[64] + 196
                        mem[_5955 + 32] = mem[_5955 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[64] = _3172 + 292
                        mem[_3172 + 196] = 50
                        mem[_3172 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if not ext_code.size(msg.sender):
                            revert with 0, 'Address: call to non-contract'
                        _6152 = mem[_5955]
                        s = _5955 + 32
                        t = _3172 + 292
                        idx = mem[_5955]
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[_3172 + floor32(mem[_5955]) + 292] = mem[_5955 + -(mem[_5955] % 32) + floor32(mem[_5955]) + 64 len mem[_5955] % 32] or Mask(8 * -(mem[_5955] % 32) + 32, -(8 * -(mem[_5955] % 32) + 32) + 256, mem[_3172 + floor32(mem[_5955]) + 292])
                        call msg.sender.mem[_3172 + 292 len 4] with:
                             gas gas_remaining wei
                            args mem[_3172 + 296 len _6152 - 4]
                        if not return_data.size:
                            if ext_call.success:
                                require mem[96] >= 32
                                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_3172 + 410 len 14]
                                s = 1
                                continue 
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_3172 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3172 + 296] = 32
                            idx = 32
                            while idx < 50:
                                mem[idx + _3172 + 360] = mem[idx + _3172 + 228]
                                idx = idx + 32
                                continue 
                            mem[_3172 + 392] = mem[_3172 + 406 len 18]
                            revert with 0, 32, 50, 0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_3172 + 392]
                        mem[64] = _3172 + ceil32(return_data.size) + 293
                        mem[_3172 + 292] = return_data.size
                        mem[_3172 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 32
                            if Mask(32, 224, mem[_3172 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_3172 + ceil32(return_data.size) + 411 len 14]
                            s = 1
                            continue 
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_3172 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3172 + ceil32(return_data.size) + 297] = 32
                        idx = 32
                        while idx < 50:
                            mem[idx + _3172 + ceil32(return_data.size) + 361] = mem[idx + _3172 + 228]
                            idx = idx + 32
                            continue 
                        mem[_3172 + ceil32(return_data.size) + 393] = mem[_3172 + ceil32(return_data.size) + 407 len 18]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                    mem[_3172 + ceil32(return_data.size) + 393]
                else:
                    if tokenByIndex.length >= 1000:
                        if 7 * 10^16 * arg1 / 7 * 10^16 != arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if msg.value < 7 * 10^16 * arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73424e422076616c75652073656e742069732062656c6f77207468652070726963,
                                        mem[197 len 31]
                        idx = 0
                        while idx < arg1:
                            _2957 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2957] = 0
                            if not msg.sender:
                                revert with 0, 'ERC721: mint to the zero address'
                            if stor3[stor2.length]:
                                revert with 0, 'ERC721: token already minted'
                            if tokenOfOwnerByIndex[address(msg.sender)][1][stor2.length]:
                                mem[0] = tokenByIndex.length
                                mem[32] = 3
                                if stor3[stor2.length]:
                                    require stor3[stor2.length] - 1 < tokenByIndex.length
                                    mem[0] = 2
                                    tokenByIndex[stor3[tokenByIndex.length] - 1].field_256 = msg.sender
                                    tokenByIndex[stor3[tokenByIndex.length] - 1].field_416 = 0
                                    emit Transfer(0, msg.sender, tokenByIndex.length);
                                    if not ext_code.size(msg.sender):
                                        idx = idx + 1
                                        continue 
                                    _3205 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = 0
                                    mem[mem[64] + 100] = tokenByIndex.length
                                    mem[mem[64] + 132] = 128
                                    mem[mem[64] + 164] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + mem[64] + 196] = mem[s + _2957 + 32]
                                        s = s + 32
                                        continue 
                                    _5927 = mem[64]
                                    mem[mem[64]] = 164
                                    mem[64] = mem[64] + 196
                                    mem[_5927 + 32] = mem[_5927 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[64] = _3205 + 292
                                    mem[_3205 + 196] = 50
                                    mem[_3205 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                                    if not ext_code.size(msg.sender):
                                        revert with 0, 'Address: call to non-contract'
                                    _6124 = mem[_5927]
                                    t = _5927 + 32
                                    u = mem[64]
                                    s = mem[_5927]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_5927])] = mem[_5927 + floor32(mem[_5927]) + -(mem[_5927] % 32) + 64 len mem[_5927] % 32] or Mask(8 * -(mem[_5927] % 32) + 32, -(8 * -(mem[_5927] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_5927])])
                                    call msg.sender.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _6124 + _3205 + -mem[64] + 288]
                                    if not return_data.size:
                                        if ext_call.success:
                                            require mem[96] >= 32
                                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 
                                                            32,
                                                            50,
                                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                            mem[mem[64] + 118 len 14]
                                            idx = idx + 1
                                            continue 
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        _9019 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_3205 + 196]
                                        _9021 = mem[_3205 + 196]
                                        if not mem[_3205 + 196]:
                                            if not mem[_3205 + 196] % 32:
                                                revert with 0, 32, mem[mem[64] + 36 len mem[_3205 + 196] + 32]
                                            mem[floor32(mem[_3205 + 196]) + mem[64] + 68] = mem[floor32(mem[_3205 + 196]) + mem[64] + -(mem[_3205 + 196] % 32) + 100 len mem[_3205 + 196] % 32]
                                            revert with 0, 32, mem[mem[64] + 36 len floor32(_9021) + 64]
                                        mem[mem[64] + 68] = mem[_3205 + 228]
                                        idx = 32
                                        while idx < _9021:
                                            mem[idx + mem[64] + 68] = mem[idx + _3205 + 228]
                                            idx = idx + 32
                                            continue 
                                        if not _9021 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _9021 + _9019 + -mem[64] + 68
                                        mem[floor32(_9021) + _9019 + 68] = mem[floor32(_9021) + _9019 + -(_9021 % 32) + 100 len _9021 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_9021) + _9019 + -mem[64] + 100
                                    _8739 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_8739] = return_data.size
                                    mem[_8739 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if ext_call.success:
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[_8739 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[mem[64] + 118 len 14]
                                        idx = idx + 1
                                        continue 
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = mem[_3205 + 196]
                                    _9025 = mem[_3205 + 196]
                                    if not mem[_3205 + 196]:
                                        if not mem[_3205 + 196] % 32:
                                            revert with 0, 32, mem[mem[64] + 36 len mem[_3205 + 196] + 32]
                                        mem[floor32(mem[_3205 + 196]) + mem[64] + 68] = mem[floor32(mem[_3205 + 196]) + mem[64] + -(mem[_3205 + 196] % 32) + 100 len mem[_3205 + 196] % 32]
                                    else:
                                        mem[mem[64] + 68] = mem[_3205 + 228]
                                        idx = 32
                                        while idx < _9025:
                                            mem[idx + mem[64] + 68] = mem[idx + _3205 + 228]
                                            idx = idx + 32
                                            continue 
                                        if not _9025 % 32:
                                            revert with 0, 32, mem[mem[64] + 36 len _9025 + 32]
                                        mem[floor32(_9025) + mem[64] + 68] = mem[floor32(_9025) + mem[64] + -(_9025 % 32) + 100 len _9025 % 32]
                                    revert with 0, 32, mem[mem[64] + 36 len floor32(_9025) + 64]
                                _3059 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3059] = tokenByIndex.length
                                mem[_3059 + 32] = msg.sender
                                tokenByIndex.length++
                                tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                                tokenByIndex[tokenByIndex.length].field_416 = 0
                                mem[0] = tokenByIndex.length
                                mem[32] = 3
                                stor3[stor2.length] = tokenByIndex.length
                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                if not ext_code.size(msg.sender):
                                    idx = idx + 1
                                    continue 
                                _3163 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = 0
                                mem[mem[64] + 100] = tokenByIndex.length
                                mem[mem[64] + 132] = 128
                                mem[mem[64] + 164] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 196] = mem[s + _2957 + 32]
                                    s = s + 32
                                    continue 
                                _5931 = mem[64]
                                mem[mem[64]] = 164
                                mem[64] = mem[64] + 196
                                mem[_5931 + 32] = mem[_5931 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[64] = _3163 + 292
                                mem[_3163 + 196] = 50
                                mem[_3163 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                                if not ext_code.size(msg.sender):
                                    revert with 0, 'Address: call to non-contract'
                                _6128 = mem[_5931]
                                s = _5931 + 32
                                t = _3163 + 292
                                idx = mem[_5931]
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[_3163 + floor32(mem[_5931]) + 292] = mem[_5931 + -(mem[_5931] % 32) + floor32(mem[_5931]) + 64 len mem[_5931] % 32] or Mask(8 * -(mem[_5931] % 32) + 32, -(8 * -(mem[_5931] % 32) + 32) + 256, mem[_3163 + floor32(mem[_5931]) + 292])
                                call msg.sender.mem[_3163 + 292 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_3163 + 296 len _6128 - 4]
                                if not return_data.size:
                                    if ext_call.success:
                                        require mem[96] >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[_3163 + 410 len 14]
                                        s = 1
                                        continue 
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_3163 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_3163 + 296] = 32
                                    idx = 32
                                    while idx < 50:
                                        mem[idx + _3163 + 360] = mem[idx + _3163 + 228]
                                        idx = idx + 32
                                        continue 
                                    mem[_3163 + 392] = mem[_3163 + 406 len 18]
                                    revert with 0, 32, 50, 0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_3163 + 392]
                                mem[64] = _3163 + ceil32(return_data.size) + 293
                                mem[_3163 + 292] = return_data.size
                                mem[_3163 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if ext_call.success:
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[_3163 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[_3163 + ceil32(return_data.size) + 411 len 14]
                                    s = 1
                                    continue 
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_3163 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_3163 + ceil32(return_data.size) + 297] = 32
                                idx = 32
                                while idx < 50:
                                    mem[idx + _3163 + ceil32(return_data.size) + 361] = mem[idx + _3163 + 228]
                                    idx = idx + 32
                                    continue 
                                mem[_3163 + ceil32(return_data.size) + 393] = mem[_3163 + ceil32(return_data.size) + 407 len 18]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            mem[_3163 + ceil32(return_data.size) + 393]
                            tokenOfOwnerByIndex[address(msg.sender)]++
                            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                            tokenOfOwnerByIndex[address(msg.sender)][1][stor2.length] = tokenOfOwnerByIndex[address(msg.sender)]
                            mem[0] = tokenByIndex.length
                            mem[32] = 3
                            if stor3[stor2.length]:
                                require stor3[stor2.length] - 1 < tokenByIndex.length
                                mem[0] = 2
                                tokenByIndex[stor3[tokenByIndex.length] - 1].field_256 = msg.sender
                                tokenByIndex[stor3[tokenByIndex.length] - 1].field_416 = 0
                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                if not ext_code.size(msg.sender):
                                    idx = idx + 1
                                    continue 
                                _3208 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = 0
                                mem[mem[64] + 100] = tokenByIndex.length
                                mem[mem[64] + 132] = 128
                                mem[mem[64] + 164] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 196] = mem[s + _2957 + 32]
                                    s = s + 32
                                    continue 
                                _5935 = mem[64]
                                mem[mem[64]] = 164
                                mem[64] = mem[64] + 196
                                mem[_5935 + 32] = mem[_5935 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[64] = _3208 + 292
                                mem[_3208 + 196] = 50
                                mem[_3208 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                                if not ext_code.size(msg.sender):
                                    revert with 0, 'Address: call to non-contract'
                                _6132 = mem[_5935]
                                t = _5935 + 32
                                u = mem[64]
                                s = mem[_5935]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_5935])] = mem[_5935 + floor32(mem[_5935]) + -(mem[_5935] % 32) + 64 len mem[_5935] % 32] or Mask(8 * -(mem[_5935] % 32) + 32, -(8 * -(mem[_5935] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_5935])])
                                call msg.sender.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _6132 + _3208 + -mem[64] + 288]
                                if not return_data.size:
                                    if ext_call.success:
                                        require mem[96] >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[mem[64] + 118 len 14]
                                        idx = idx + 1
                                        continue 
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    _9051 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = mem[_3208 + 196]
                                    _9053 = mem[_3208 + 196]
                                    if not mem[_3208 + 196]:
                                        if not mem[_3208 + 196] % 32:
                                            revert with 0, 32, mem[mem[64] + 36 len mem[_3208 + 196] + 32]
                                        mem[floor32(mem[_3208 + 196]) + mem[64] + 68] = mem[floor32(mem[_3208 + 196]) + mem[64] + -(mem[_3208 + 196] % 32) + 100 len mem[_3208 + 196] % 32]
                                        revert with 0, 32, mem[mem[64] + 36 len floor32(_9053) + 64]
                                    mem[mem[64] + 68] = mem[_3208 + 228]
                                    idx = 32
                                    while idx < _9053:
                                        mem[idx + mem[64] + 68] = mem[idx + _3208 + 228]
                                        idx = idx + 32
                                        continue 
                                    if not _9053 % 32:
                                        revert with memory
                                          from mem[64]
                                           len _9053 + _9051 + -mem[64] + 68
                                    mem[floor32(_9053) + _9051 + 68] = mem[floor32(_9053) + _9051 + -(_9053 % 32) + 100 len _9053 % 32]
                                    revert with memory
                                      from mem[64]
                                       len floor32(_9053) + _9051 + -mem[64] + 100
                                _8743 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_8743] = return_data.size
                                mem[_8743 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if ext_call.success:
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[_8743 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[mem[64] + 118 len 14]
                                    idx = idx + 1
                                    continue 
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[_3208 + 196]
                                _9057 = mem[_3208 + 196]
                                if not mem[_3208 + 196]:
                                    if not mem[_3208 + 196] % 32:
                                        revert with 0, 32, mem[mem[64] + 36 len mem[_3208 + 196] + 32]
                                    mem[floor32(mem[_3208 + 196]) + mem[64] + 68] = mem[floor32(mem[_3208 + 196]) + mem[64] + -(mem[_3208 + 196] % 32) + 100 len mem[_3208 + 196] % 32]
                                else:
                                    mem[mem[64] + 68] = mem[_3208 + 228]
                                    idx = 32
                                    while idx < _9057:
                                        mem[idx + mem[64] + 68] = mem[idx + _3208 + 228]
                                        idx = idx + 32
                                        continue 
                                    if not _9057 % 32:
                                        revert with 0, 32, mem[mem[64] + 36 len _9057 + 32]
                                    mem[floor32(_9057) + mem[64] + 68] = mem[floor32(_9057) + mem[64] + -(_9057 % 32) + 100 len _9057 % 32]
                                revert with 0, 32, mem[mem[64] + 36 len floor32(_9057) + 64]
                            _3064 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3064] = tokenByIndex.length
                            mem[_3064 + 32] = msg.sender
                            tokenByIndex.length++
                            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                            tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                            tokenByIndex[tokenByIndex.length].field_416 = 0
                            mem[0] = tokenByIndex.length
                            mem[32] = 3
                            stor3[stor2.length] = tokenByIndex.length
                            emit Transfer(0, msg.sender, tokenByIndex.length);
                            if not ext_code.size(msg.sender):
                                idx = idx + 1
                                continue 
                            _3166 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = 0
                            mem[mem[64] + 100] = tokenByIndex.length
                            mem[mem[64] + 132] = 128
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 196] = mem[s + _2957 + 32]
                                s = s + 32
                                continue 
                            _5939 = mem[64]
                            mem[mem[64]] = 164
                            mem[64] = mem[64] + 196
                            mem[_5939 + 32] = mem[_5939 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[64] = _3166 + 292
                            mem[_3166 + 196] = 50
                            mem[_3166 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                            if not ext_code.size(msg.sender):
                                revert with 0, 'Address: call to non-contract'
                            _6136 = mem[_5939]
                            s = _5939 + 32
                            t = _3166 + 292
                            idx = mem[_5939]
                            while idx >= 32:
                                mem[t] = mem[s]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[_3166 + floor32(mem[_5939]) + 292] = mem[_5939 + -(mem[_5939] % 32) + floor32(mem[_5939]) + 64 len mem[_5939] % 32] or Mask(8 * -(mem[_5939] % 32) + 32, -(8 * -(mem[_5939] % 32) + 32) + 256, mem[_3166 + floor32(mem[_5939]) + 292])
                            call msg.sender.mem[_3166 + 292 len 4] with:
                                 gas gas_remaining wei
                                args mem[_3166 + 296 len _6136 - 4]
                            if not return_data.size:
                                if ext_call.success:
                                    require mem[96] >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[_3166 + 410 len 14]
                                    s = 1
                                    continue 
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_3166 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_3166 + 296] = 32
                                idx = 32
                                while idx < 50:
                                    mem[idx + _3166 + 360] = mem[idx + _3166 + 228]
                                    idx = idx + 32
                                    continue 
                                mem[_3166 + 392] = mem[_3166 + 406 len 18]
                                revert with 0, 32, 50, 0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_3166 + 392]
                            mem[64] = _3166 + ceil32(return_data.size) + 293
                            mem[_3166 + 292] = return_data.size
                            mem[_3166 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                                require return_data.size >= 32
                                if Mask(32, 224, mem[_3166 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_3166 + ceil32(return_data.size) + 411 len 14]
                                s = 1
                                continue 
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_3166 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3166 + ceil32(return_data.size) + 297] = 32
                            idx = 32
                            while idx < 50:
                                mem[idx + _3166 + ceil32(return_data.size) + 361] = mem[idx + _3166 + 228]
                                idx = idx + 32
                                continue 
                            mem[_3166 + ceil32(return_data.size) + 393] = mem[_3166 + ceil32(return_data.size) + 407 len 18]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        mem[_3166 + ceil32(return_data.size) + 393]
                    else:
                        if tokenByIndex.length < 500:
                            if 5 * 10^16 * arg1 / 5 * 10^16 != arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if msg.value < 5 * 10^16 * arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x73424e422076616c75652073656e742069732062656c6f77207468652070726963,
                                            mem[197 len 31]
                            idx = 0
                            while idx < arg1:
                                _2955 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2955] = 0
                                if not msg.sender:
                                    revert with 0, 'ERC721: mint to the zero address'
                                if stor3[stor2.length]:
                                    revert with 0, 'ERC721: token already minted'
                                if tokenOfOwnerByIndex[address(msg.sender)][1][stor2.length]:
                                    mem[0] = tokenByIndex.length
                                    mem[32] = 3
                                    if stor3[stor2.length]:
                                        require stor3[stor2.length] - 1 < tokenByIndex.length
                                        mem[0] = 2
                                        tokenByIndex[stor3[tokenByIndex.length] - 1].field_256 = msg.sender
                                        tokenByIndex[stor3[tokenByIndex.length] - 1].field_416 = 0
                                        emit Transfer(0, msg.sender, tokenByIndex.length);
                                        if not ext_code.size(msg.sender):
                                            idx = idx + 1
                                            continue 
                                        _3193 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = 0
                                        mem[mem[64] + 100] = tokenByIndex.length
                                        mem[mem[64] + 132] = 128
                                        mem[mem[64] + 164] = 0
                                        s = 0
                                        while s < 0:
                                            mem[s + mem[64] + 196] = mem[s + _2955 + 32]
                                            s = s + 32
                                            continue 
                                        _5895 = mem[64]
                                        mem[mem[64]] = 164
                                        mem[64] = mem[64] + 196
                                        mem[_5895 + 32] = mem[_5895 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                        mem[64] = _3193 + 292
                                        mem[_3193 + 196] = 50
                                        mem[_3193 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                                        if not ext_code.size(msg.sender):
                                            revert with 0, 'Address: call to non-contract'
                                        _6092 = mem[_5895]
                                        t = _5895 + 32
                                        u = mem[64]
                                        s = mem[_5895]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_5895])] = mem[_5895 + floor32(mem[_5895]) + -(mem[_5895] % 32) + 64 len mem[_5895] % 32] or Mask(8 * -(mem[_5895] % 32) + 32, -(8 * -(mem[_5895] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_5895])])
                                        call msg.sender.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _6092 + _3193 + -mem[64] + 288]
                                        if not return_data.size:
                                            if ext_call.success:
                                                require mem[96] >= 32
                                                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 
                                                                32,
                                                                50,
                                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                                mem[mem[64] + 118 len 14]
                                                idx = idx + 1
                                                continue 
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            _8891 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = mem[_3193 + 196]
                                            _8893 = mem[_3193 + 196]
                                            if not mem[_3193 + 196]:
                                                if not mem[_3193 + 196] % 32:
                                                    revert with 0, 32, mem[mem[64] + 36 len mem[_3193 + 196] + 32]
                                                mem[floor32(mem[_3193 + 196]) + mem[64] + 68] = mem[floor32(mem[_3193 + 196]) + mem[64] + -(mem[_3193 + 196] % 32) + 100 len mem[_3193 + 196] % 32]
                                                revert with memory
                                                  from mem[64]
                                                   len floor32(_8893) + _8891 + -mem[64] + 100
                                            mem[mem[64] + 68] = mem[_3193 + 228]
                                            idx = 32
                                            while idx < _8893:
                                                mem[idx + mem[64] + 68] = mem[idx + _3193 + 228]
                                                idx = idx + 32
                                                continue 
                                            if not _8893 % 32:
                                                revert with 0, 32, mem[mem[64] + 36 len _8893 + 32]
                                            mem[floor32(_8893) + mem[64] + 68] = mem[floor32(_8893) + mem[64] + -(_8893 % 32) + 100 len _8893 % 32]
                                            revert with 0, 32, mem[mem[64] + 36 len floor32(_8893) + 64]
                                        _8723 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_8723] = return_data.size
                                        mem[_8723 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if ext_call.success:
                                            require return_data.size >= 32
                                            if Mask(32, 224, mem[_8723 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 
                                                            32,
                                                            50,
                                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                            mem[mem[64] + 118 len 14]
                                            idx = idx + 1
                                            continue 
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8895 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_3193 + 196]
                                        _8897 = mem[_3193 + 196]
                                        if not mem[_3193 + 196]:
                                            if not mem[_3193 + 196] % 32:
                                                revert with 0, 32, mem[mem[64] + 36 len mem[_3193 + 196] + 32]
                                            mem[floor32(mem[_3193 + 196]) + mem[64] + 68] = mem[floor32(mem[_3193 + 196]) + mem[64] + -(mem[_3193 + 196] % 32) + 100 len mem[_3193 + 196] % 32]
                                            revert with memory
                                              from mem[64]
                                               len floor32(_8897) + _8895 + -mem[64] + 100
                                        mem[mem[64] + 68] = mem[_3193 + 228]
                                        idx = 32
                                        while idx < _8897:
                                            mem[idx + mem[64] + 68] = mem[idx + _3193 + 228]
                                            idx = idx + 32
                                            continue 
                                        if not _8897 % 32:
                                            revert with 0, 32, mem[mem[64] + 36 len _8897 + 32]
                                        mem[floor32(_8897) + mem[64] + 68] = mem[floor32(_8897) + mem[64] + -(_8897 % 32) + 100 len _8897 % 32]
                                        revert with 0, 32, mem[mem[64] + 36 len floor32(_8897) + 64]
                                    _3039 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3039] = tokenByIndex.length
                                    mem[_3039 + 32] = msg.sender
                                    tokenByIndex.length++
                                    tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                    tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                                    tokenByIndex[tokenByIndex.length].field_416 = 0
                                    mem[0] = tokenByIndex.length
                                    mem[32] = 3
                                    stor3[stor2.length] = tokenByIndex.length
                                    emit Transfer(0, msg.sender, tokenByIndex.length);
                                    if not ext_code.size(msg.sender):
                                        idx = idx + 1
                                        continue 
                                    _3151 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = 0
                                    mem[mem[64] + 100] = tokenByIndex.length
                                    mem[mem[64] + 132] = 128
                                    mem[mem[64] + 164] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + mem[64] + 196] = mem[s + _2955 + 32]
                                        s = s + 32
                                        continue 
                                    _5899 = mem[64]
                                    mem[mem[64]] = 164
                                    mem[64] = mem[64] + 196
                                    mem[_5899 + 32] = mem[_5899 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[64] = _3151 + 292
                                    mem[_3151 + 196] = 50
                                    mem[_3151 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                                    if not ext_code.size(msg.sender):
                                        revert with 0, 'Address: call to non-contract'
                                    _6096 = mem[_5899]
                                    s = _5899 + 32
                                    t = _3151 + 292
                                    idx = mem[_5899]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[_3151 + floor32(mem[_5899]) + 292] = mem[_5899 + -(mem[_5899] % 32) + floor32(mem[_5899]) + 64 len mem[_5899] % 32] or Mask(8 * -(mem[_5899] % 32) + 32, -(8 * -(mem[_5899] % 32) + 32) + 256, mem[_3151 + floor32(mem[_5899]) + 292])
                                    call msg.sender.mem[_3151 + 292 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_3151 + 296 len _6096 - 4]
                                    if not return_data.size:
                                        if ext_call.success:
                                            require mem[96] >= 32
                                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 
                                                            32,
                                                            50,
                                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                            mem[_3151 + 410 len 14]
                                            s = 1
                                            continue 
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_3151 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_3151 + 296] = 32
                                        idx = 32
                                        while idx < 50:
                                            mem[idx + _3151 + 360] = mem[idx + _3151 + 228]
                                            idx = idx + 32
                                            continue 
                                        mem[_3151 + 392] = mem[_3151 + 406 len 18]
                                        revert with 0, 32, 50, 0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_3151 + 392]
                                    mem[64] = _3151 + ceil32(return_data.size) + 293
                                    mem[_3151 + 292] = return_data.size
                                    mem[_3151 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if ext_call.success:
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[_3151 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[_3151 + ceil32(return_data.size) + 411 len 14]
                                        s = 1
                                        continue 
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_3151 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_3151 + ceil32(return_data.size) + 297] = 32
                                    idx = 32
                                    while idx < 50:
                                        mem[idx + _3151 + ceil32(return_data.size) + 361] = mem[idx + _3151 + 228]
                                        idx = idx + 32
                                        continue 
                                    mem[_3151 + ceil32(return_data.size) + 393] = mem[_3151 + ceil32(return_data.size) + 407 len 18]
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                                mem[_3151 + ceil32(return_data.size) + 393]
                                tokenOfOwnerByIndex[address(msg.sender)]++
                                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                                tokenOfOwnerByIndex[address(msg.sender)][1][stor2.length] = tokenOfOwnerByIndex[address(msg.sender)]
                                mem[0] = tokenByIndex.length
                                mem[32] = 3
                                if stor3[stor2.length]:
                                    require stor3[stor2.length] - 1 < tokenByIndex.length
                                    mem[0] = 2
                                    tokenByIndex[stor3[tokenByIndex.length] - 1].field_256 = msg.sender
                                    tokenByIndex[stor3[tokenByIndex.length] - 1].field_416 = 0
                                    emit Transfer(0, msg.sender, tokenByIndex.length);
                                    if not ext_code.size(msg.sender):
                                        idx = idx + 1
                                        continue 
                                    _3196 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = 0
                                    mem[mem[64] + 100] = tokenByIndex.length
                                    mem[mem[64] + 132] = 128
                                    mem[mem[64] + 164] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + mem[64] + 196] = mem[s + _2955 + 32]
                                        s = s + 32
                                        continue 
                                    _5903 = mem[64]
                                    mem[mem[64]] = 164
                                    mem[64] = mem[64] + 196
                                    mem[_5903 + 32] = mem[_5903 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[64] = _3196 + 292
                                    mem[_3196 + 196] = 50
                                    mem[_3196 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                                    if not ext_code.size(msg.sender):
                                        revert with 0, 'Address: call to non-contract'
                                    _6100 = mem[_5903]
                                    t = _5903 + 32
                                    u = mem[64]
                                    s = mem[_5903]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_5903])] = mem[_5903 + floor32(mem[_5903]) + -(mem[_5903] % 32) + 64 len mem[_5903] % 32] or Mask(8 * -(mem[_5903] % 32) + 32, -(8 * -(mem[_5903] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_5903])])
                                    call msg.sender.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _6100 + _3196 + -mem[64] + 288]
                                    if not return_data.size:
                                        if ext_call.success:
                                            require mem[96] >= 32
                                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 
                                                            32,
                                                            50,
                                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                            mem[mem[64] + 118 len 14]
                                            idx = idx + 1
                                            continue 
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_3196 + 196]
                                        _8925 = mem[_3196 + 196]
                                        if not mem[_3196 + 196]:
                                            if not mem[_3196 + 196] % 32:
                                                revert with 0, 32, mem[mem[64] + 36 len mem[_3196 + 196] + 32]
                                            mem[floor32(mem[_3196 + 196]) + mem[64] + 68] = mem[floor32(mem[_3196 + 196]) + mem[64] + -(mem[_3196 + 196] % 32) + 100 len mem[_3196 + 196] % 32]
                                        else:
                                            mem[mem[64] + 68] = mem[_3196 + 228]
                                            idx = 32
                                            while idx < _8925:
                                                mem[idx + mem[64] + 68] = mem[idx + _3196 + 228]
                                                idx = idx + 32
                                                continue 
                                            if not _8925 % 32:
                                                revert with 0, 32, mem[mem[64] + 36 len _8925 + 32]
                                            mem[floor32(_8925) + mem[64] + 68] = mem[floor32(_8925) + mem[64] + -(_8925 % 32) + 100 len _8925 % 32]
                                        revert with 0, 32, mem[mem[64] + 36 len floor32(_8925) + 64]
                                    _8727 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_8727] = return_data.size
                                    mem[_8727 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if ext_call.success:
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[_8727 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[mem[64] + 118 len 14]
                                        idx = idx + 1
                                        continue 
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = mem[_3196 + 196]
                                    _8929 = mem[_3196 + 196]
                                    if not mem[_3196 + 196]:
                                        if not mem[_3196 + 196] % 32:
                                            revert with 0, 32, mem[mem[64] + 36 len mem[_3196 + 196] + 32]
                                        mem[floor32(mem[_3196 + 196]) + mem[64] + 68] = mem[floor32(mem[_3196 + 196]) + mem[64] + -(mem[_3196 + 196] % 32) + 100 len mem[_3196 + 196] % 32]
                                    else:
                                        mem[mem[64] + 68] = mem[_3196 + 228]
                                        idx = 32
                                        while idx < _8929:
                                            mem[idx + mem[64] + 68] = mem[idx + _3196 + 228]
                                            idx = idx + 32
                                            continue 
                                        if not _8929 % 32:
                                            revert with 0, 32, mem[mem[64] + 36 len _8929 + 32]
                                        mem[floor32(_8929) + mem[64] + 68] = mem[floor32(_8929) + mem[64] + -(_8929 % 32) + 100 len _8929 % 32]
                                    revert with 0, 32, mem[mem[64] + 36 len floor32(_8929) + 64]
                                _3044 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3044] = tokenByIndex.length
                                mem[_3044 + 32] = msg.sender
                                tokenByIndex.length++
                                tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                                tokenByIndex[tokenByIndex.length].field_416 = 0
                                mem[0] = tokenByIndex.length
                                mem[32] = 3
                                stor3[stor2.length] = tokenByIndex.length
                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                if not ext_code.size(msg.sender):
                                    idx = idx + 1
                                    continue 
                                _3154 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = 0
                                mem[mem[64] + 100] = tokenByIndex.length
                                mem[mem[64] + 132] = 128
                                mem[mem[64] + 164] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 196] = mem[s + _2955 + 32]
                                    s = s + 32
                                    continue 
                                _5907 = mem[64]
                                mem[mem[64]] = 164
                                mem[64] = mem[64] + 196
                                mem[_5907 + 32] = mem[_5907 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[64] = _3154 + 292
                                mem[_3154 + 196] = 50
                                mem[_3154 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                                if not ext_code.size(msg.sender):
                                    revert with 0, 'Address: call to non-contract'
                                _6104 = mem[_5907]
                                s = _5907 + 32
                                t = _3154 + 292
                                idx = mem[_5907]
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[_3154 + floor32(mem[_5907]) + 292] = mem[_5907 + -(mem[_5907] % 32) + floor32(mem[_5907]) + 64 len mem[_5907] % 32] or Mask(8 * -(mem[_5907] % 32) + 32, -(8 * -(mem[_5907] % 32) + 32) + 256, mem[_3154 + floor32(mem[_5907]) + 292])
                                call msg.sender.mem[_3154 + 292 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_3154 + 296 len _6104 - 4]
                                if not return_data.size:
                                    if ext_call.success:
                                        require mem[96] >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[_3154 + 410 len 14]
                                        s = 1
                                        continue 
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_3154 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_3154 + 296] = 32
                                    idx = 32
                                    while idx < 50:
                                        mem[idx + _3154 + 360] = mem[idx + _3154 + 228]
                                        idx = idx + 32
                                        continue 
                                    mem[_3154 + 392] = mem[_3154 + 406 len 18]
                                    revert with 0, 32, 50, 0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_3154 + 392]
                                mem[64] = _3154 + ceil32(return_data.size) + 293
                                mem[_3154 + 292] = return_data.size
                                mem[_3154 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if ext_call.success:
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[_3154 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[_3154 + ceil32(return_data.size) + 411 len 14]
                                    s = 1
                                    continue 
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_3154 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_3154 + ceil32(return_data.size) + 297] = 32
                                idx = 32
                                while idx < 50:
                                    mem[idx + _3154 + ceil32(return_data.size) + 361] = mem[idx + _3154 + 228]
                                    idx = idx + 32
                                    continue 
                                mem[_3154 + ceil32(return_data.size) + 393] = mem[_3154 + ceil32(return_data.size) + 407 len 18]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            mem[_3154 + ceil32(return_data.size) + 393]
                        else:
                            if 6 * 10^16 * arg1 / 6 * 10^16 != arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if msg.value < 6 * 10^16 * arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x73424e422076616c75652073656e742069732062656c6f77207468652070726963,
                                            mem[197 len 31]
                            idx = 0
                            while idx < arg1:
                                _2956 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2956] = 0
                                if not msg.sender:
                                    revert with 0, 'ERC721: mint to the zero address'
                                if stor3[stor2.length]:
                                    revert with 0, 'ERC721: token already minted'
                                if not tokenOfOwnerByIndex[address(msg.sender)][1][stor2.length]:
                                    tokenOfOwnerByIndex[address(msg.sender)]++
                                    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                                    tokenOfOwnerByIndex[address(msg.sender)][1][stor2.length] = tokenOfOwnerByIndex[address(msg.sender)]
                                    mem[0] = tokenByIndex.length
                                    mem[32] = 3
                                    if stor3[stor2.length]:
                                        require stor3[stor2.length] - 1 < tokenByIndex.length
                                        mem[0] = 2
                                        tokenByIndex[stor3[tokenByIndex.length] - 1].field_256 = msg.sender
                                        tokenByIndex[stor3[tokenByIndex.length] - 1].field_416 = 0
                                        emit Transfer(0, msg.sender, tokenByIndex.length);
                                        if not ext_code.size(msg.sender):
                                            idx = idx + 1
                                            continue 
                                        _3202 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = 0
                                        mem[mem[64] + 100] = tokenByIndex.length
                                        mem[mem[64] + 132] = 128
                                        mem[mem[64] + 164] = 0
                                        s = 0
                                        while s < 0:
                                            mem[s + mem[64] + 196] = mem[s + _2956 + 32]
                                            s = s + 32
                                            continue 
                                        _5919 = mem[64]
                                        mem[mem[64]] = 164
                                        mem[64] = mem[64] + 196
                                        mem[_5919 + 32] = mem[_5919 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                        mem[64] = _3202 + 292
                                        mem[_3202 + 196] = 50
                                        mem[_3202 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                                        if not ext_code.size(msg.sender):
                                            revert with 0, 'Address: call to non-contract'
                                        _6116 = mem[_5919]
                                        t = _5919 + 32
                                        u = _3202 + 292
                                        s = mem[_5919]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_3202 + floor32(mem[_5919]) + 292] = mem[_5919 + -(mem[_5919] % 32) + floor32(mem[_5919]) + 64 len mem[_5919] % 32] or Mask(8 * -(mem[_5919] % 32) + 32, -(8 * -(mem[_5919] % 32) + 32) + 256, mem[_3202 + floor32(mem[_5919]) + 292])
                                        call msg.sender.mem[_3202 + 292 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_3202 + 296 len _6116 - 4]
                                        if not return_data.size:
                                            if ext_call.success:
                                                require mem[96] >= 32
                                                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 
                                                                32,
                                                                50,
                                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                                mem[_3202 + 410 len 14]
                                                idx = idx + 1
                                                continue 
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_3202 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_3202 + 296] = 32
                                            idx = 32
                                            while idx < 50:
                                                mem[idx + _3202 + 360] = mem[idx + _3202 + 228]
                                                idx = idx + 32
                                                continue 
                                            mem[_3202 + 392] = mem[_3202 + 406 len 18]
                                            revert with 0, 32, 50, 0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_3202 + 392]
                                        mem[64] = _3202 + ceil32(return_data.size) + 293
                                        mem[_3202 + 292] = return_data.size
                                        mem[_3202 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if ext_call.success:
                                            require return_data.size >= 32
                                            if Mask(32, 224, mem[_3202 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 
                                                            32,
                                                            50,
                                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                            mem[_3202 + ceil32(return_data.size) + 411 len 14]
                                            idx = idx + 1
                                            continue 
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_3202 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_3202 + ceil32(return_data.size) + 297] = 32
                                        idx = 32
                                        while idx < 50:
                                            mem[idx + _3202 + ceil32(return_data.size) + 361] = mem[idx + _3202 + 228]
                                            idx = idx + 32
                                            continue 
                                        mem[_3202 + ceil32(return_data.size) + 393] = mem[_3202 + ceil32(return_data.size) + 407 len 18]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                                    mem[_3202 + ceil32(return_data.size) + 393]
                                    _3054 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3054] = tokenByIndex.length
                                    mem[_3054 + 32] = msg.sender
                                    tokenByIndex.length++
                                    tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                    tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                                    tokenByIndex[tokenByIndex.length].field_416 = 0
                                    mem[0] = tokenByIndex.length
                                    mem[32] = 3
                                    stor3[stor2.length] = tokenByIndex.length
                                    emit Transfer(0, msg.sender, tokenByIndex.length);
                                    if not ext_code.size(msg.sender):
                                        idx = idx + 1
                                        continue 
                                    _3160 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = 0
                                    mem[mem[64] + 100] = tokenByIndex.length
                                    mem[mem[64] + 132] = 128
                                    mem[mem[64] + 164] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + mem[64] + 196] = mem[s + _2956 + 32]
                                        s = s + 32
                                        continue 
                                    _5923 = mem[64]
                                    mem[mem[64]] = 164
                                    mem[64] = mem[64] + 196
                                    mem[_5923 + 32] = mem[_5923 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[64] = _3160 + 292
                                    mem[_3160 + 196] = 50
                                    mem[_3160 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                                    if not ext_code.size(msg.sender):
                                        revert with 0, 'Address: call to non-contract'
                                    _6120 = mem[_5923]
                                    s = _5923 + 32
                                    t = _3160 + 292
                                    idx = mem[_5923]
                                    while idx >= 32:
                                        mem[t] = mem[s]
                                        s = s + 32
                                        t = t + 32
                                        idx = idx - 32
                                        continue 
                                    mem[_3160 + floor32(mem[_5923]) + 292] = mem[_5923 + -(mem[_5923] % 32) + floor32(mem[_5923]) + 64 len mem[_5923] % 32] or Mask(8 * -(mem[_5923] % 32) + 32, -(8 * -(mem[_5923] % 32) + 32) + 256, mem[_3160 + floor32(mem[_5923]) + 292])
                                    call msg.sender.mem[_3160 + 292 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_3160 + 296 len _6120 - 4]
                                    if not return_data.size:
                                        if ext_call.success:
                                            require mem[96] >= 32
                                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 
                                                            32,
                                                            50,
                                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                            mem[_3160 + 410 len 14]
                                            s = 1
                                            continue 
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_3160 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_3160 + 296] = 32
                                        idx = 32
                                        while idx < 50:
                                            mem[idx + _3160 + 360] = mem[idx + _3160 + 228]
                                            idx = idx + 32
                                            continue 
                                        mem[_3160 + 392] = mem[_3160 + 406 len 18]
                                        revert with 0, 32, 50, 0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_3160 + 392]
                                    mem[64] = _3160 + ceil32(return_data.size) + 293
                                    mem[_3160 + 292] = return_data.size
                                    mem[_3160 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if ext_call.success:
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[_3160 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[_3160 + ceil32(return_data.size) + 411 len 14]
                                        s = 1
                                        continue 
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_3160 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_3160 + ceil32(return_data.size) + 297] = 32
                                    idx = 32
                                    while idx < 50:
                                        mem[idx + _3160 + ceil32(return_data.size) + 361] = mem[idx + _3160 + 228]
                                        idx = idx + 32
                                        continue 
                                    mem[_3160 + ceil32(return_data.size) + 393] = mem[_3160 + ceil32(return_data.size) + 407 len 18]
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                                mem[_3160 + ceil32(return_data.size) + 393]
                                mem[0] = tokenByIndex.length
                                mem[32] = 3
                                if stor3[stor2.length]:
                                    require stor3[stor2.length] - 1 < tokenByIndex.length
                                    mem[0] = 2
                                    tokenByIndex[stor3[tokenByIndex.length] - 1].field_256 = msg.sender
                                    tokenByIndex[stor3[tokenByIndex.length] - 1].field_416 = 0
                                    emit Transfer(0, msg.sender, tokenByIndex.length);
                                    if not ext_code.size(msg.sender):
                                        idx = idx + 1
                                        continue 
                                    _3199 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = 0
                                    mem[mem[64] + 100] = tokenByIndex.length
                                    mem[mem[64] + 132] = 128
                                    mem[mem[64] + 164] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + mem[64] + 196] = mem[s + _2956 + 32]
                                        s = s + 32
                                        continue 
                                    _5911 = mem[64]
                                    mem[mem[64]] = 164
                                    mem[64] = mem[64] + 196
                                    mem[_5911 + 32] = mem[_5911 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[64] = _3199 + 292
                                    mem[_3199 + 196] = 50
                                    mem[_3199 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                                    if not ext_code.size(msg.sender):
                                        revert with 0, 'Address: call to non-contract'
                                    _6108 = mem[_5911]
                                    t = _5911 + 32
                                    u = mem[64]
                                    s = mem[_5911]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_5911])] = mem[_5911 + floor32(mem[_5911]) + -(mem[_5911] % 32) + 64 len mem[_5911] % 32] or Mask(8 * -(mem[_5911] % 32) + 32, -(8 * -(mem[_5911] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_5911])])
                                    call msg.sender.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _6108 + _3199 + -mem[64] + 288]
                                    if not return_data.size:
                                        if ext_call.success:
                                            require mem[96] >= 32
                                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 
                                                            32,
                                                            50,
                                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                            mem[mem[64] + 118 len 14]
                                            idx = idx + 1
                                            continue 
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        _8955 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_3199 + 196]
                                        _8957 = mem[_3199 + 196]
                                        if not mem[_3199 + 196]:
                                            if not mem[_3199 + 196] % 32:
                                                revert with 0, 32, mem[mem[64] + 36 len mem[_3199 + 196] + 32]
                                            mem[floor32(mem[_3199 + 196]) + mem[64] + 68] = mem[floor32(mem[_3199 + 196]) + mem[64] + -(mem[_3199 + 196] % 32) + 100 len mem[_3199 + 196] % 32]
                                            revert with 0, 32, mem[mem[64] + 36 len floor32(_8957) + 64]
                                        mem[mem[64] + 68] = mem[_3199 + 228]
                                        idx = 32
                                        while idx < _8957:
                                            mem[idx + mem[64] + 68] = mem[idx + _3199 + 228]
                                            idx = idx + 32
                                            continue 
                                        if not _8957 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _8957 + _8955 + -mem[64] + 68
                                        mem[floor32(_8957) + _8955 + 68] = mem[floor32(_8957) + _8955 + -(_8957 % 32) + 100 len _8957 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_8957) + _8955 + -mem[64] + 100
                                    _8731 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_8731] = return_data.size
                                    mem[_8731 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if ext_call.success:
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[_8731 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[mem[64] + 118 len 14]
                                        idx = idx + 1
                                        continue 
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8959 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = mem[_3199 + 196]
                                    _8961 = mem[_3199 + 196]
                                    if not mem[_3199 + 196]:
                                        if not mem[_3199 + 196] % 32:
                                            revert with 0, 32, mem[mem[64] + 36 len mem[_3199 + 196] + 32]
                                        mem[floor32(mem[_3199 + 196]) + mem[64] + 68] = mem[floor32(mem[_3199 + 196]) + mem[64] + -(mem[_3199 + 196] % 32) + 100 len mem[_3199 + 196] % 32]
                                        revert with 0, 32, mem[mem[64] + 36 len floor32(_8961) + 64]
                                    mem[mem[64] + 68] = mem[_3199 + 228]
                                    idx = 32
                                    while idx < _8961:
                                        mem[idx + mem[64] + 68] = mem[idx + _3199 + 228]
                                        idx = idx + 32
                                        continue 
                                    if not _8961 % 32:
                                        revert with memory
                                          from mem[64]
                                           len _8961 + _8959 + -mem[64] + 68
                                    mem[floor32(_8961) + _8959 + 68] = mem[floor32(_8961) + _8959 + -(_8961 % 32) + 100 len _8961 % 32]
                                    revert with memory
                                      from mem[64]
                                       len floor32(_8961) + _8959 + -mem[64] + 100
                                _3049 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3049] = tokenByIndex.length
                                mem[_3049 + 32] = msg.sender
                                tokenByIndex.length++
                                tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                                tokenByIndex[tokenByIndex.length].field_416 = 0
                                mem[0] = tokenByIndex.length
                                mem[32] = 3
                                stor3[stor2.length] = tokenByIndex.length
                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                if not ext_code.size(msg.sender):
                                    idx = idx + 1
                                    continue 
                                _3157 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = 0
                                mem[mem[64] + 100] = tokenByIndex.length
                                mem[mem[64] + 132] = 128
                                mem[mem[64] + 164] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 196] = mem[s + _2956 + 32]
                                    s = s + 32
                                    continue 
                                _5915 = mem[64]
                                mem[mem[64]] = 164
                                mem[64] = mem[64] + 196
                                mem[_5915 + 32] = mem[_5915 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[64] = _3157 + 292
                                mem[_3157 + 196] = 50
                                mem[_3157 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                                if not ext_code.size(msg.sender):
                                    revert with 0, 'Address: call to non-contract'
                                _6112 = mem[_5915]
                                s = _5915 + 32
                                t = mem[64]
                                idx = mem[_5915]
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_5915])] = mem[_5915 + floor32(mem[_5915]) + -(mem[_5915] % 32) + 64 len mem[_5915] % 32] or Mask(8 * -(mem[_5915] % 32) + 32, -(8 * -(mem[_5915] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_5915])])
                                call msg.sender.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _6112 + _3157 + -mem[64] + 288]
                                if not return_data.size:
                                    if ext_call.success:
                                        require mem[96] >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[mem[64] + 118 len 14]
                                        s = 1
                                        continue 
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = mem[_3157 + 196]
                                    _8973 = mem[_3157 + 196]
                                    if not mem[_3157 + 196]:
                                        if not mem[_3157 + 196] % 32:
                                            revert with 0, 32, mem[mem[64] + 36 len mem[_3157 + 196] + 32]
                                        mem[floor32(mem[_3157 + 196]) + mem[64] + 68] = mem[floor32(mem[_3157 + 196]) + mem[64] + -(mem[_3157 + 196] % 32) + 100 len mem[_3157 + 196] % 32]
                                    else:
                                        mem[mem[64] + 68] = mem[_3157 + 228]
                                        idx = 32
                                        while idx < _8973:
                                            mem[idx + mem[64] + 68] = mem[idx + _3157 + 228]
                                            idx = idx + 32
                                            continue 
                                        if not _8973 % 32:
                                            revert with 0, 32, mem[mem[64] + 36 len _8973 + 32]
                                        mem[floor32(_8973) + mem[64] + 68] = mem[floor32(_8973) + mem[64] + -(_8973 % 32) + 100 len _8973 % 32]
                                    revert with 0, 32, mem[mem[64] + 36 len floor32(_8973) + 64]
                                _8733 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_8733] = return_data.size
                                mem[_8733 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if ext_call.success:
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[_8733 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[mem[64] + 118 len 14]
                                    s = 1
                                    continue 
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8975 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[_3157 + 196]
                                _8977 = mem[_3157 + 196]
                                if not mem[_3157 + 196]:
                                    if not mem[_3157 + 196] % 32:
                                        revert with 0, 32, mem[mem[64] + 36 len mem[_3157 + 196] + 32]
                                    mem[floor32(mem[_3157 + 196]) + mem[64] + 68] = mem[floor32(mem[_3157 + 196]) + mem[64] + -(mem[_3157 + 196] % 32) + 100 len mem[_3157 + 196] % 32]
                                    revert with 0, 32, mem[mem[64] + 36 len floor32(_8977) + 64]
                                mem[mem[64] + 68] = mem[_3157 + 228]
                                idx = 32
                                while idx < _8977:
                                    mem[idx + mem[64] + 68] = mem[idx + _3157 + 228]
                                    idx = idx + 32
                                    continue 
                                if not _8977 % 32:
                                    revert with memory
                                      from mem[64]
                                       len _8977 + _8975 + -mem[64] + 68
                                mem[floor32(_8977) + _8975 + 68] = mem[floor32(_8977) + _8975 + -(_8977 % 32) + 100 len _8977 % 32]
                                revert with memory
                                  from mem[64]
                                   len floor32(_8977) + _8975 + -mem[64] + 100
}



}
