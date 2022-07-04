contract main {




// =====================  Runtime code  =====================


#
#  - buyToken(uint256 arg1)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - sub_52a43071(?)
#  - sub_77fb8a1b(?)
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
array of uint256 collectionName;
array of uint256 collectionNameSymbol;
uint256 sub_95315716;
address sub_17560d85Address;
uint256 buyPrice;
uint256 sub_b17c19a5;
uint256 creator;
mapping of uint256 sub_8ed6639b;
mapping of uint8 stor18;
mapping of struct stor19;
mapping of uint8 stor20;
mapping of uint8 stor21;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor0[Mask(32, 224, arg1)])
}

function creator() {
    return creator
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
                    0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    return approved[arg1]
}

function getTokenExists(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function sub_17560d85(?) {
    return sub_17560d85Address
}

function totalSupply() {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= tokenOfOwnerByIndex[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function getTotalNumberOfTokensOwnedByAnAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    return tokenOfOwnerByIndex[address(arg1)]
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

function collectionNameSymbol() {
    return collectionNameSymbol[0 len collectionNameSymbol.length]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    return tokenOfOwnerByIndex[address(arg1)]
}

function buyPrice() {
    return buyPrice
}

function sub_8ed6639b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_8ed6639b[arg1]
}

function sub_95315716(?) {
    return sub_95315716
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getTokenOwner(uint256 arg1) {
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

function sub_b17c19a5(?) {
    return sub_b17c19a5
}

function getNumberOfTokensMinted() {
    return tokenByIndex.length
}

function collectionName() {
    return collectionName[0 len collectionName.length]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function sub_f4176300(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor18[arg1])
}

function _fallback() payable {
    revert
}

function sub_6f58e03e(?) {
    require calldata.size - 4 >= 32
    require msg.sender == sub_17560d85Address
    creator = arg1
    return 1
}

function sub_d5a42113(?) {
    require calldata.size - 4 >= 32
    require msg.sender == sub_17560d85Address
    sub_b17c19a5 = arg1
    return 1
}

function changeBuyPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == sub_17560d85Address
    buyPrice = arg1
    return 1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_95aefd8f(?) {
    require stor18[msg.sender]
    require sub_8ed6639b[msg.sender]
    sub_8ed6639b[msg.sender] = 0
    call msg.sender with:
       value sub_8ed6639b[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function Levelsmartchain(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if sub_17560d85Address != msg.sender:
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    revert with ext_call.return_data[0 len return_data.size]
}

function tokenURIExists(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require calldata.size >= arg1.length + arg1 + 36
    mem[ceil32(arg1.length) + 128] = bool(stor21[arg1[all]])
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function tokenNameExists(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require calldata.size >= arg1.length + arg1 + 36
    mem[ceil32(arg1.length) + 128] = bool(stor20[arg1[all]])
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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

function sub_f81f9963(?) {
    require calldata.size - 4 >= 32
    mem[128] = stor19[arg1][1].field_0
    idx = 128
    s = 0
    while stor19[arg1][1].length + 96 > idx:
        mem[idx + 32] = stor19[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor19[arg1][1].length) + 160] = stor19[arg1][2].field_0
    idx = ceil32(stor19[arg1][1].length) + 160
    s = 0
    while ceil32(stor19[arg1][1].length) + stor19[arg1][2].length + 128 > idx:
        mem[idx + 32] = stor19[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if ceil32(stor19[arg1][1].length) > stor19[arg1][1].length:
        mem[stor19[arg1][1].length + ceil32(stor19[arg1][1].length) + ceil32(stor19[arg1][2].length) + 480] = 0
    mem[(2 * ceil32(stor19[arg1][1].length)) + ceil32(stor19[arg1][2].length) + 480] = stor19[arg1][2].length
    mem[(2 * ceil32(stor19[arg1][1].length)) + ceil32(stor19[arg1][2].length) + 512 len ceil32(stor19[arg1][2].length)] = mem[ceil32(stor19[arg1][1].length) + 160 len ceil32(stor19[arg1][2].length)]
    if ceil32(stor19[arg1][2].length) > stor19[arg1][2].length:
        mem[stor19[arg1][2].length + (2 * ceil32(stor19[arg1][1].length)) + ceil32(stor19[arg1][2].length) + 512] = 0
    return stor19[arg1].field_0, 
           Array(len=stor19[arg1][1].length, data=mem[128 len ceil32(stor19[arg1][1].length)], stor19[arg1][2].length, mem[ceil32(stor19[arg1][1].length) + 160 len ceil32(stor19[arg1][2].length)]),
           ceil32(stor19[arg1][1].length) + 320,
           stor19[arg1].field_768,
           stor19[arg1].field_1024,
           stor19[arg1].field_1280,
           stor19[arg1].field_1536,
           stor19[arg1].field_1792,
           bool(stor19[arg1].field_2048)
}

function changeTokenPrice(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    require stor3[arg1]
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor3[arg1] - 1 < tokenByIndex.length
    require msg.sender == tokenByIndex[stor3[arg1] - 1].field_256
    mem[512] = stor19[arg1][1].field_0
    idx = 512
    s = 0
    while stor19[arg1][1].length + 480 > idx:
        mem[idx + 32] = stor19[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor19[arg1][1].length) + 544] = stor19[arg1][2].field_0
    idx = ceil32(stor19[arg1][1].length) + 544
    s = 0
    while ceil32(stor19[arg1][1].length) + stor19[arg1][2].length + 512 > idx:
        mem[idx + 32] = stor19[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor19[arg1][1].length:
        stor19[arg1][1][].field_0 = Array(len=stor19[arg1][1].length, data=mem[512 len stor19[arg1][1].length])
    else:
        stor19[arg1].field_256 = 0
        idx = 0
        while stor19[arg1][1].length + 31 / 32 > idx:
            stor19[arg1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    if stor19[arg1][2].length:
        stor19[arg1][2][].field_0 = Array(len=stor19[arg1][2].length, data=mem[ceil32(stor19[arg1][1].length) + 544 len stor19[arg1][2].length])
    else:
        stor19[arg1].field_512 = 0
        idx = 0
        while stor19[arg1][2].length + 31 / 32 > idx:
            stor19[arg1][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    stor19[arg1].field_768 = stor19[arg1].field_768
    stor19[arg1].field_1024 = stor19[arg1].field_1024
    stor19[arg1].field_1280 = stor19[arg1].field_1280
    stor19[arg1].field_1536 = arg2
    stor19[arg1].field_2048 = uint8(bool(stor19[arg1].field_2048))
    emit 0x3ecb158b: arg1, arg2, msg.sender
}

function toggleForSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor3[arg1]
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor3[arg1] - 1 < tokenByIndex.length
    require msg.sender == tokenByIndex[stor3[arg1] - 1].field_256
    mem[512] = stor19[arg1][1].field_0
    idx = 512
    s = 0
    while stor19[arg1][1].length + 480 > idx:
        mem[idx + 32] = stor19[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor19[arg1][1].length) + 544] = stor19[arg1][2].field_0
    idx = ceil32(stor19[arg1][1].length) + 544
    s = 0
    while ceil32(stor19[arg1][1].length) + stor19[arg1][2].length + 512 > idx:
        mem[idx + 32] = stor19[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor19[arg1][1].length:
        stor19[arg1][1][].field_0 = Array(len=stor19[arg1][1].length, data=mem[512 len stor19[arg1][1].length])
    else:
        stor19[arg1].field_256 = 0
        idx = 0
        while stor19[arg1][1].length + 31 / 32 > idx:
            stor19[arg1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    if stor19[arg1][2].length:
        stor19[arg1][2][].field_0 = Array(len=stor19[arg1][2].length, data=mem[ceil32(stor19[arg1][1].length) + 544 len stor19[arg1][2].length])
    else:
        stor19[arg1].field_512 = 0
        idx = 0
        while stor19[arg1][2].length + 31 / 32 > idx:
            stor19[arg1][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    stor19[arg1].field_768 = stor19[arg1].field_768
    stor19[arg1].field_1024 = stor19[arg1].field_1024
    stor19[arg1].field_1280 = stor19[arg1].field_1280
    if not stor19[arg1].field_2048:
        stor19[arg1].field_2048 = 1
        emit 0xa134d32c: arg1, 1, msg.sender
    else:
        stor19[arg1].field_2048 = 0
        emit 0xa134d32c: arg1, 0, msg.sender
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
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
            revert with 0, 32, 44, 0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[304 len 20]
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
        revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[397 len 23]
    if not arg2:
        revert with 0, 32, 36, 0x724552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[392 len 28]
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

function sub_490170b0(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    require msg.sender
    require stor3[arg1]
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor3[arg1] - 1 < tokenByIndex.length
    require tokenByIndex[stor3[arg1] - 1].field_256
    require tokenByIndex[stor3[arg1] - 1].field_256 != address(arg2)
    require msg.sender == sub_17560d85Address
    mem[512] = stor19[arg1][1].field_0
    idx = 512
    s = 0
    while stor19[arg1][1].length + 480 > idx:
        mem[idx + 32] = stor19[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor19[arg1][1].length) + 544] = stor19[arg1][2].field_0
    idx = ceil32(stor19[arg1][1].length) + 544
    s = 0
    while ceil32(stor19[arg1][1].length) + stor19[arg1][2].length + 512 > idx:
        mem[idx + 32] = stor19[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(stor19[arg1][1].length) + ceil32(stor19[arg1][2].length) + 617 len 23],
                    mem[ceil32(stor19[arg1][1].length) + ceil32(stor19[arg1][2].length) + 663 len 9]
    require stor3[arg1] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[arg1] - 1].field_256 != tokenByIndex[stor3[arg1] - 1].field_256:
        revert with 0, 
                    32,
                    41,
                    0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77,
                    mem[ceil32(stor19[arg1][1].length) + ceil32(stor19[arg1][2].length) + 749 len 23]
    if not address(arg2):
        revert with 0, 
                    32,
                    36,
                    0x724552433732313a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[ceil32(stor19[arg1][1].length) + ceil32(stor19[arg1][2].length) + 744 len 28]
    approved[arg1] = 0
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(stor19[arg1][1].length) + ceil32(stor19[arg1][2].length) + 713 len 23],
                    mem[ceil32(stor19[arg1][1].length) + ceil32(stor19[arg1][2].length) + 759 len 9]
    require stor3[arg1] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor3[arg1] - 1].field_256, 0, arg1);
    if tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][1][arg1]:
        require tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256] - 1 < tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256]
        require tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][1][arg1] - 1 < tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256]
        tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][1][arg1]] = tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256]]
        tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][1][tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256]]] = tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][1][arg1]
        require tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256]
        tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256]] = 0
        tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256]--
        tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][1][arg1] = 0
    if not tokenOfOwnerByIndex[address(arg2)][1][arg1]:
        tokenOfOwnerByIndex[address(arg2)]++
        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg1
        tokenOfOwnerByIndex[address(arg2)][1][arg1] = tokenOfOwnerByIndex[address(arg2)]
    if stor3[arg1]:
        require stor3[arg1] - 1 < tokenByIndex.length
        tokenByIndex[stor3[arg1] - 1].field_256 = address(arg2)
        tokenByIndex[stor3[arg1] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg1
        tokenByIndex[tokenByIndex.length].field_256 = address(arg2)
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor3[arg1] = tokenByIndex.length
    emit Transfer(tokenByIndex[stor3[arg1] - 1].field_256, address(arg2), arg1);
    if stor19[arg1][1].length:
        stor19[arg1][1][].field_0 = Array(len=stor19[arg1][1].length, data=mem[512 len stor19[arg1][1].length])
    else:
        stor19[arg1].field_256 = 0
        idx = 0
        while stor19[arg1][1].length + 31 / 32 > idx:
            stor19[arg1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    if stor19[arg1][2].length:
        stor19[arg1][2][].field_0 = Array(len=stor19[arg1][2].length, data=mem[ceil32(stor19[arg1][1].length) + 544 len stor19[arg1][2].length])
    else:
        stor19[arg1].field_512 = 0
        idx = 0
        while stor19[arg1][2].length + 31 / 32 > idx:
            stor19[arg1][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    stor19[arg1].field_768 = stor19[arg1].field_768
    stor19[arg1].field_1024 = address(arg2)
    stor19[arg1].field_1280 = stor19[arg1].field_1024
    stor19[arg1].field_1792++
    stor19[arg1].field_2048 = 0
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
        var37001 = ceil32(stor8[arg1].length)
        return Array(len=stor8[arg1].length, data=mem[128 len ceil32(stor8[arg1].length)])
    if stor8[arg1].length:
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len floor32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 160 len floor32(baseURI.length)]
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 192] = 256^(-baseURI.length % 32 + 32) - 1 and mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 192] or mem[ceil32(stor8[arg1].length) + floor32(baseURI.length) + 160] and !(256^(-baseURI.length % 32 + 32) - 1)
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 192 len floor32(stor8[arg1].length)] = mem[128 len floor32(stor8[arg1].length)]
        var36001 = floor32(stor8[arg1].length) + 128
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + floor32(stor8[arg1].length) + -stor8[arg1].length % 32 + 224 len stor8[arg1].length % 32] = mem[floor32(stor8[arg1].length) + -stor8[arg1].length % 32 + 160 len stor8[arg1].length % 32]
        mem[stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 192] = 32
        mem[stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 224] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]
        mem[stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160])]
        if ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) <= mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]:
            return Array(len=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160], data=mem[stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160])]), 
        mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256] = 0
        return 32, mem[stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 224 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + 32], 
    if not arg1:
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] = 1
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 256 len floor32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 160 len floor32(baseURI.length)]
        var37001 = ceil32(stor8[arg1].length) + floor32(baseURI.length) + 160
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 256] = 256^(-baseURI.length % 32 + 32) - 1 and mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 256] or mem[ceil32(stor8[arg1].length) + floor32(baseURI.length) + 160] and !(256^(-baseURI.length % 32 + 32) - 1)
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256 len 0] = None
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256 len 0] = 0
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 257] = 32
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 289] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 321 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224])]
        if ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]) <= mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]:
            return Array(len=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224], data=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 321 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224])]), 
        mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224] + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 321] = 0
        return 32, mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 289 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]) + 32], 
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
    mem[s + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224] = 32
    mem[s + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 256] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]
    mem[s + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 288 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])]
    if ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) > mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]:
        mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] + s + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 288] = 0
    return Array(len=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192], data=mem[s + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 288 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])]), 
}

function getTokenMetaData(uint256 arg1) {
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
        var39001 = ceil32(stor8[arg1].length)
        return Array(len=stor8[arg1].length, data=mem[128 len ceil32(stor8[arg1].length)])
    if stor8[arg1].length:
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len floor32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 160 len floor32(baseURI.length)]
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 192] = 256^(-baseURI.length % 32 + 32) - 1 and mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 192] or mem[ceil32(stor8[arg1].length) + floor32(baseURI.length) + 160] and !(256^(-baseURI.length % 32 + 32) - 1)
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 192 len floor32(stor8[arg1].length)] = mem[128 len floor32(stor8[arg1].length)]
        var37001 = floor32(stor8[arg1].length) + 128
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + floor32(stor8[arg1].length) + -stor8[arg1].length % 32 + 224 len stor8[arg1].length % 32] = mem[floor32(stor8[arg1].length) + -stor8[arg1].length % 32 + 160 len stor8[arg1].length % 32]
        mem[stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 192] = 32
        mem[stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 224] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]
        mem[stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160])]
        if ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) <= mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]:
            return Array(len=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160], data=mem[stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160])]), 
        mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256] = 0
        return 32, mem[stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 224 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + 32], 
    if not arg1:
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] = 1
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 256 len floor32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 160 len floor32(baseURI.length)]
        var38001 = ceil32(stor8[arg1].length) + floor32(baseURI.length) + 160
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 256] = 256^(-baseURI.length % 32 + 32) - 1 and mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 256] or mem[ceil32(stor8[arg1].length) + floor32(baseURI.length) + 160] and !(256^(-baseURI.length % 32 + 32) - 1)
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256 len 0] = None
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256 len 0] = 0
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 257] = 32
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 289] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 321 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224])]
        if ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]) <= mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]:
            return Array(len=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224], data=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 321 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224])]), 
        mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224] + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 321] = 0
        return 32, mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 289 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]) + 32], 
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
    mem[s + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224] = 32
    mem[s + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 256] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]
    mem[s + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 288 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])]
    if ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) <= mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]:
        return Array(len=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192], data=mem[s + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 288 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])]), 
    mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] + s + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 288] = 0
    return 32, mem[s + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) + 32], 
}



}
