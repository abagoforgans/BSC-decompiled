contract main {




// =====================  Runtime code  =====================


#
#  - listMultipleItems(uint256[] arg1, uint256 arg2, address arg3)
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
address stor10;
mapping of uint8 stor11;
address stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
mapping of struct priceOf;
address stor18;

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

function isAdmin(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor11[address(arg1)])
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
                    0x794552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    return tokenOfOwnerByIndex[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function priceOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    return priceOf[arg1].field_0
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function tokenExists(uint256 arg1) {
    require calldata.size - 4 >= 32
    return (priceOf[arg1].field_0 > 0)
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    if stor10 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64596f75206d75737420626520746865206f776e657220746f20636f6e74696e75,
                    mem[197 len 31]
    stor10 = arg1
}

function setItemRegistry(address arg1) {
    require calldata.size - 4 >= 32
    if stor10 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64596f75206d75737420626520746865206f776e657220746f20636f6e74696e75,
                    mem[197 len 31]
    stor12 = arg1
}

function addAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if stor10 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64596f75206d75737420626520746865206f776e657220746f20636f6e74696e75,
                    mem[197 len 31]
    stor11[address(arg1)] = 1
}

function removeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if stor10 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64596f75206d75737420626520746865206f776e657220746f20636f6e74696e75,
                    mem[197 len 31]
    stor11[address(arg1)] = 0
}

function approvedFor(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(this.address)
    staticcall this.address.getApproved(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function calculateDevCut(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        return 0
    if 4 * arg1 / arg1 != 4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (4 * arg1 / 100)
}

function withdrawAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor11[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65596f75206d757374206265207468652061646d696e20746f20636f6e74696e75,
                    mem[197 len 31]
    require ext_code.size(stor18)
    call stor18.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function itemsForSaleLimit(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    if arg2:
        mem[128 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
    idx = 0
    while idx < arg2:
        if arg1 + idx >= tokenByIndex.length:
            revert with 0, 32, 34, 0x6e456e756d657261626c654d61703a20696e646578206f7574206f6620626f756e64, mem[(32 * arg2) + 230 len 30]
        mem[0] = 2
        require idx < arg2
        mem[(32 * idx) + 128] = tokenByIndex[arg1 + idx].field_0
        idx = idx + 1
        continue 
    mem[(32 * arg2) + 192 len floor32(arg2)] = mem[128 len floor32(arg2)]
    return Array(len=arg2, data=mem[128 len floor32(arg2)], mem[(32 * arg2) + floor32(arg2) + 192 len (32 * arg2) - floor32(arg2)]), 
}

function withdrawAll() {
    if not stor11[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65596f75206d757374206265207468652061646d696e20746f20636f6e74696e75,
                    mem[197 len 31]
    require ext_code.size(stor18)
    staticcall stor18.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor18)
    call stor18.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function changePrice(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor11[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65596f75206d757374206265207468652061646d696e20746f20636f6e74696e75,
                    mem[197 len 31]
    if arg2 <= 0:
        revert with 0, 'Price cannot <= 0'
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor3[arg1] - 1 < tokenByIndex.length
    if not stor11[stor2[stor3[arg1] - 1].field_256]:
        revert with 0, 'You must be the owner'
    priceOf[arg1].field_0 = arg2
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

function tokensOf(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x794552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    require tokenOfOwnerByIndex[address(arg1)] <= test266151307()
    mem[96] = tokenOfOwnerByIndex[address(arg1)]
    if tokenOfOwnerByIndex[address(arg1)]:
        mem[128 len 32 * tokenOfOwnerByIndex[address(arg1)]] = call.data[calldata.size len 32 * tokenOfOwnerByIndex[address(arg1)]]
    idx = 0
    while idx < mem[96]:
        mem[32] = 1
        if idx >= tokenOfOwnerByIndex[address(arg1)]:
            revert with 0, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 230 len 30]
        mem[0] = sha3(address(arg1), 1)
        require idx < mem[96]
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        idx = idx + 1
        continue 
    mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128] = 32
    mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 160] = mem[96]
    mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 32, mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 160 len (32 * mem[96]) + 32]
}

function calculateNextPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        return 0
    if arg1 < stor13:
        if 200 * arg1 / arg1 != 200:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (200 * arg1 / 95)
    if arg1 < stor14:
        if 135 * arg1 / arg1 != 135:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (135 * arg1 / 96)
    if arg1 < stor15:
        if 125 * arg1 / arg1 != 125:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (125 * arg1 / 97)
    if arg1 >= stor16:
        if 115 * arg1 / arg1 != 115:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (115 * arg1 / 98)
    if 117 * arg1 / arg1 != 117:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (117 * arg1 / 97)
}

function allOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor3[arg1] - 1 < tokenByIndex.length
    if not priceOf[arg1].field_0:
        return tokenByIndex[stor3[arg1] - 1].field_256, priceOf[arg1].field_0, 0
    if priceOf[arg1].field_0 < stor13:
        if 200 * priceOf[arg1].field_0 / priceOf[arg1].field_0 != 200:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
        return tokenByIndex[stor3[arg1] - 1].field_256, priceOf[arg1].field_0, 200 * priceOf[arg1].field_0 / 95
    if priceOf[arg1].field_0 < stor14:
        if 135 * priceOf[arg1].field_0 / priceOf[arg1].field_0 != 135:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
        return tokenByIndex[stor3[arg1] - 1].field_256, priceOf[arg1].field_0, 135 * priceOf[arg1].field_0 / 96
    if priceOf[arg1].field_0 < stor15:
        if 125 * priceOf[arg1].field_0 / priceOf[arg1].field_0 != 125:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
        return tokenByIndex[stor3[arg1] - 1].field_256, priceOf[arg1].field_0, 125 * priceOf[arg1].field_0 / 97
    if priceOf[arg1].field_0 >= stor16:
        if 115 * priceOf[arg1].field_0 / priceOf[arg1].field_0 != 115:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
        return tokenByIndex[stor3[arg1] - 1].field_256, priceOf[arg1].field_0, 115 * priceOf[arg1].field_0 / 98
    if 117 * priceOf[arg1].field_0 / priceOf[arg1].field_0 != 117:
        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
    return tokenByIndex[stor3[arg1] - 1].field_256, priceOf[arg1].field_0, 117 * priceOf[arg1].field_0 / 97
}

function nextPriceOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not priceOf[arg1].field_0:
        return 0
    if priceOf[arg1].field_0 < stor13:
        if 200 * priceOf[arg1].field_0 / priceOf[arg1].field_0 != 200:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (200 * priceOf[arg1].field_0 / 95)
    if priceOf[arg1].field_0 < stor14:
        if 135 * priceOf[arg1].field_0 / priceOf[arg1].field_0 != 135:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (135 * priceOf[arg1].field_0 / 96)
    if priceOf[arg1].field_0 < stor15:
        if 125 * priceOf[arg1].field_0 / priceOf[arg1].field_0 != 125:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (125 * priceOf[arg1].field_0 / 97)
    if priceOf[arg1].field_0 >= stor16:
        if 115 * priceOf[arg1].field_0 / priceOf[arg1].field_0 != 115:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (115 * priceOf[arg1].field_0 / 98)
    if 117 * priceOf[arg1].field_0 / priceOf[arg1].field_0 != 117:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (117 * priceOf[arg1].field_0 / 97)
}

function issueCard(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    if not stor11[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65596f75206d757374206265207468652061646d696e20746f20636f6e74696e75,
                    mem[197 len 31]
    idx = arg1
    while idx <= arg2:
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if stor3[idx]:
            revert with 0, 'ERC721: token already minted'
        if tokenOfOwnerByIndex[address(msg.sender)][1][idx]:
            mem[0] = idx
            mem[32] = 3
            if stor3[idx]:
                require stor3[idx] - 1 < tokenByIndex.length
                tokenByIndex[stor3[idx] - 1].field_256 = msg.sender
                tokenByIndex[stor3[idx] - 1].field_416 = 0
            else:
                _46 = mem[64]
                mem[64] = mem[64] + 64
                mem[_46] = idx
                mem[_46 + 32] = msg.sender
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = idx
                tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                tokenByIndex[tokenByIndex.length].field_416 = 0
                stor3[idx] = tokenByIndex.length
        else:
            tokenOfOwnerByIndex[address(msg.sender)]++
            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = idx
            tokenOfOwnerByIndex[address(msg.sender)][1][idx] = tokenOfOwnerByIndex[address(msg.sender)]
            mem[0] = idx
            mem[32] = 3
            if stor3[idx]:
                require stor3[idx] - 1 < tokenByIndex.length
                tokenByIndex[stor3[idx] - 1].field_256 = msg.sender
                tokenByIndex[stor3[idx] - 1].field_416 = 0
            else:
                _51 = mem[64]
                mem[64] = mem[64] + 64
                mem[_51] = idx
                mem[_51 + 32] = msg.sender
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = idx
                tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                tokenByIndex[tokenByIndex.length].field_416 = 0
                stor3[idx] = tokenByIndex.length
        emit Transfer(0, msg.sender, idx);
        mem[0] = idx
        mem[32] = 17
        priceOf[idx].field_0 = arg3
        idx = idx + 1
        continue 
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor3[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor3[arg2] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[arg2] - 1].field_256 != msg.sender:
        revert with 0, 32, 35, 0x6e596f75206d75737420626520746865206f776e6572206f66207468697320746f6b65, mem[295 len 29]
    if not stor3[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor3[arg2] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[arg2] - 1].field_256 != msg.sender:
        revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[397 len 23]
    if not arg1:
        revert with 0, 32, 36, 0x724552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[392 len 28]
    approved[arg2] = 0
    if not stor3[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[361 len 23],
                    mem[407 len 9]
    require stor3[arg2] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor3[arg2] - 1].field_256, 0, arg2);
    if tokenOfOwnerByIndex[address(msg.sender)][1][arg2]:
        require tokenOfOwnerByIndex[address(msg.sender)] - 1 < tokenOfOwnerByIndex[address(msg.sender)]
        require tokenOfOwnerByIndex[address(msg.sender)][1][arg2] - 1 < tokenOfOwnerByIndex[address(msg.sender)]
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)][1][arg2]] = tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]]
        tokenOfOwnerByIndex[address(msg.sender)][1][tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]]] = tokenOfOwnerByIndex[address(msg.sender)][1][arg2]
        require tokenOfOwnerByIndex[address(msg.sender)]
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = 0
        tokenOfOwnerByIndex[address(msg.sender)]--
        tokenOfOwnerByIndex[address(msg.sender)][1][arg2] = 0
    if not tokenOfOwnerByIndex[address(arg1)][1][arg2]:
        tokenOfOwnerByIndex[address(arg1)]++
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = arg2
        tokenOfOwnerByIndex[address(arg1)][1][arg2] = tokenOfOwnerByIndex[address(arg1)]
    if stor3[arg2]:
        require stor3[arg2] - 1 < tokenByIndex.length
        tokenByIndex[stor3[arg2] - 1].field_256 = arg1
        tokenByIndex[stor3[arg2] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg2
        tokenByIndex[tokenByIndex.length].field_256 = arg1
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor3[arg2] = tokenByIndex.length
    emit Transfer(msg.sender, arg1, arg2);
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

function listItem(uint256 arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    if not stor11[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65596f75206d757374206265207468652061646d696e20746f20636f6e74696e75,
                    mem[197 len 31]
    require arg2 > 0
    require not priceOf[arg1].field_0
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor3[arg1] - 1 < tokenByIndex.length
    require not tokenByIndex[stor3[arg1] - 1].field_256
    if not arg3:
        revert with 0, 'ERC721: mint to the zero address'
    if stor3[arg1]:
        revert with 0, 'ERC721: token already minted'
    if not tokenOfOwnerByIndex[address(arg3)][1][arg1]:
        tokenOfOwnerByIndex[address(arg3)]++
        tokenOfOwnerByIndex[address(arg3)][tokenOfOwnerByIndex[address(arg3)]] = arg1
        tokenOfOwnerByIndex[address(arg3)][1][arg1] = tokenOfOwnerByIndex[address(arg3)]
    if stor3[arg1]:
        require stor3[arg1] - 1 < tokenByIndex.length
        tokenByIndex[stor3[arg1] - 1].field_256 = arg3
        tokenByIndex[stor3[arg1] - 1].field_416 = 0
        emit Transfer(0, arg3, arg1);
        if ext_code.hash(arg3) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            if ext_code.hash(arg3):
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg3):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(arg3):
                    revert with 0, 'Address: call to non-contract'
                mem[516 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, 0, arg1, 128, 0
                mem[704 len 4] = 0
                call arg3.0x80 with:
                     gas gas_remaining wei
                    args 0, mem[676 len 4]
                if not return_data.size:
                    if ext_call.success:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[502 len 14]
                    revert with 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[502 len 14])
                require return_data.size >= 32
                if Mask(32, 224, mem[548]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[ceil32(return_data.size) + 635 len 14]
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg1
        tokenByIndex[tokenByIndex.length].field_256 = arg3
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor3[arg1] = tokenByIndex.length
        emit Transfer(0, arg3, arg1);
        if ext_code.hash(arg3) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            if ext_code.hash(arg3):
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg3):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(arg3):
                    revert with 0, 'Address: call to non-contract'
                mem[580 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, 0, arg1, 128, 0
                mem[768 len 4] = 0
                call arg3.0x80 with:
                     gas gas_remaining wei
                    args 0, mem[740 len 4]
                if not return_data.size:
                    if ext_call.success:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[566 len 14]
                    revert with 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[566 len 14])
                require return_data.size >= 32
                if Mask(32, 224, mem[612]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[ceil32(return_data.size) + 699 len 14]
    priceOf[arg1].field_0 = arg2
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
    if tokenByIndex[stor3[arg3] - 1].field_256 != msg.sender:
        if not stor3[arg3]:
            revert with 0, 32, 44, 0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[336 len 20]
        if approved[arg3] != msg.sender:
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
        revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
    if not arg2:
        revert with 0, 32, 36, 0x724552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
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
        tokenByIndex[tokenByIndex.length].field_256 = arg2
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor3[arg3] = tokenByIndex.length
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
}

function listItemFromRegistry(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor10 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64596f75206d75737420626520746865206f776e657220746f20636f6e74696e75,
                    mem[197 len 31]
    require stor12
    require ext_code.size(stor12)
    staticcall stor12.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20]
    require ext_code.size(stor12)
    staticcall stor12.0xb9186d7d with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(stor12)
    staticcall stor12.0xb9186d7d with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    staticcall stor12.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor11[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65596f75206d757374206265207468652061646d696e20746f20636f6e74696e75,
                    mem[197 len 31]
    require ext_call.return_data[0] > 0
    require not priceOf[arg1].field_0
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor3[arg1] - 1 < tokenByIndex.length
    require not tokenByIndex[stor3[arg1] - 1].field_256
    if not address(ext_call.return_data[0]):
        revert with 0, 'ERC721: mint to the zero address'
    if stor3[arg1]:
        revert with 0, 'ERC721: token already minted'
    if not tokenOfOwnerByIndex[address(ext_call.return_data[0])][1][arg1]:
        tokenOfOwnerByIndex[address(ext_call.return_data[0])]++
        tokenOfOwnerByIndex[address(ext_call.return_data[0])][tokenOfOwnerByIndex[address(ext_call.return_data[0])]] = arg1
        tokenOfOwnerByIndex[address(ext_call.return_data[0])][1][arg1] = tokenOfOwnerByIndex[address(ext_call.return_data[0])]
    if stor3[arg1]:
        require stor3[arg1] - 1 < tokenByIndex.length
        tokenByIndex[stor3[arg1] - 1].field_256 = address(ext_call.return_data[0])
        tokenByIndex[stor3[arg1] - 1].field_416 = 0
        emit Transfer(0, address(ext_call.return_data[0]), arg1);
        if ext_code.hash(address(ext_call.return_data[0])) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            if ext_code.hash(address(ext_call.return_data[0])):
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[516 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, 0, arg1, 128, 0
                mem[704 len 4] = 0
                call address(ext_call.return_data[0]).0x80 with:
                     gas gas_remaining wei
                    args 0, mem[676 len 4]
                if not return_data.size:
                    if ext_call.success:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[502 len 14]
                    revert with 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[502 len 14])
                require return_data.size >= 32
                if Mask(32, 224, mem[548]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[ceil32(return_data.size) + 635 len 14]
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg1
        tokenByIndex[tokenByIndex.length].field_256 = address(ext_call.return_data[0])
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor3[arg1] = tokenByIndex.length
        emit Transfer(0, address(ext_call.return_data[0]), arg1);
        if ext_code.hash(address(ext_call.return_data[0])) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            if ext_code.hash(address(ext_call.return_data[0])):
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[580 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, 0, arg1, 128, 0
                mem[768 len 4] = 0
                call address(ext_call.return_data[0]).0x80 with:
                     gas gas_remaining wei
                    args 0, mem[740 len 4]
                if not return_data.size:
                    if ext_call.success:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[566 len 14]
                    revert with 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[566 len 14])
                require return_data.size >= 32
                if Mask(32, 224, mem[612]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[ceil32(return_data.size) + 699 len 14]
    priceOf[arg1].field_0 = ext_call.return_data[0]
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
    mem[64] = ceil32(stor8[arg1].length) + 128
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
        var24001 = ceil32(stor8[arg1].length)
        return Array(len=stor8[arg1].length, data=mem[128 len stor8[arg1].length])
    if stor8[arg1].length:
        mem[0] = 9
        mem[ceil32(stor8[arg1].length) + 160] = uint256(baseURI.field_0)
        idx = mem[64] + 32
        s = 0
        while ceil32(stor8[arg1].length) + baseURI.length + 128 > idx:
            mem[idx + 32] = baseURI[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor8[arg1].length) + baseURI.length + 160 len floor32(stor8[arg1].length)] = mem[128 len floor32(stor8[arg1].length)]
        mem[ceil32(stor8[arg1].length) + baseURI.length + floor32(stor8[arg1].length) + 160] = mem[floor32(stor8[arg1].length) + -stor8[arg1].length % 32 + 160 len stor8[arg1].length % 32] or Mask(8 * -stor8[arg1].length % 32 + 32, -(8 * -stor8[arg1].length % 32 + 32) + 256, mem[ceil32(stor8[arg1].length) + baseURI.length + floor32(stor8[arg1].length) + 160])
        _1006 = mem[64]
        mem[64] = stor8[arg1].length + ceil32(stor8[arg1].length) + baseURI.length + 160
        mem[stor8[arg1].length + ceil32(stor8[arg1].length) + baseURI.length + 160] = 32
        mem[stor8[arg1].length + ceil32(stor8[arg1].length) + baseURI.length + 192] = mem[_1006]
        _1083 = mem[_1006]
        mem[stor8[arg1].length + ceil32(stor8[arg1].length) + baseURI.length + 224 len ceil32(mem[_1006])] = mem[_1006 + 32 len ceil32(mem[_1006])]
        if not _1083 % 32:
            return 32, mem[stor8[arg1].length + ceil32(stor8[arg1].length) + baseURI.length + 192 len _1083 + 32]
        mem[floor32(_1083) + stor8[arg1].length + ceil32(stor8[arg1].length) + baseURI.length + 224] = mem[floor32(_1083) + stor8[arg1].length + ceil32(stor8[arg1].length) + baseURI.length + -(_1083 % 32) + 256 len _1083 % 32]
        return 32, mem[stor8[arg1].length + ceil32(stor8[arg1].length) + baseURI.length + 192 len floor32(_1083) + 64]
    if not arg1:
        mem[64] = ceil32(stor8[arg1].length) + 192
        mem[ceil32(stor8[arg1].length) + 128] = 1
        mem[ceil32(stor8[arg1].length) + 160] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[0] = 9
        mem[ceil32(stor8[arg1].length) + 224] = uint256(baseURI.field_0)
        idx = mem[64] + 32
        s = 0
        while ceil32(stor8[arg1].length) + baseURI.length + 192 > idx:
            mem[idx + 32] = baseURI[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor8[arg1].length) + baseURI.length + 224 len floor32(mem[ceil32(stor8[arg1].length) + 128])] = mem[ceil32(stor8[arg1].length) + 160 len floor32(mem[ceil32(stor8[arg1].length) + 128])]
        mem[ceil32(stor8[arg1].length) + baseURI.length + floor32(mem[ceil32(stor8[arg1].length) + 128]) + -(mem[ceil32(stor8[arg1].length) + 128] % 32) + 256 len mem[ceil32(stor8[arg1].length) + 128] % 32] = mem[ceil32(stor8[arg1].length) + floor32(mem[ceil32(stor8[arg1].length) + 128]) + -(mem[ceil32(stor8[arg1].length) + 128] % 32) + 192 len mem[ceil32(stor8[arg1].length) + 128] % 32]
        _1002 = mem[64]
        mem[64] = mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + 224
        mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + 224] = 32
        mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + 256] = mem[_1002]
        _1048 = mem[_1002]
        mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + 288 len ceil32(mem[_1002])] = mem[_1002 + 32 len ceil32(mem[_1002])]
        if not _1048 % 32:
            return 32, mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + 256 len _1048 + 32]
        mem[floor32(_1048) + mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + 288] = mem[floor32(_1048) + mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + -(_1048 % 32) + 320 len _1048 % 32]
        return 32, mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + 256 len floor32(_1048) + 64], 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[ceil32(stor8[arg1].length) + 128] = s
    mem[64] = ceil32(stor8[arg1].length) + ceil32(s) + 160
    if not s:
        t = s - 1
        idx = arg1
        while idx:
            require t < s
            mem[t + ceil32(stor8[arg1].length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[0] = 9
        mem[ceil32(stor8[arg1].length) + ceil32(s) + 192] = uint256(baseURI.field_0)
        t = mem[64] + 32
        u = 0
        while ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 160 > t:
            mem[t + 32] = baseURI[u].field_256
            t = t + 32
            u = u + 1
            continue 
        mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 192 len floor32(mem[ceil32(stor8[arg1].length) + 128])] = mem[ceil32(stor8[arg1].length) + 160 len floor32(mem[ceil32(stor8[arg1].length) + 128])]
        mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + floor32(mem[ceil32(stor8[arg1].length) + 128]) + -(mem[ceil32(stor8[arg1].length) + 128] % 32) + 224 len mem[ceil32(stor8[arg1].length) + 128] % 32] = mem[ceil32(stor8[arg1].length) + floor32(mem[ceil32(stor8[arg1].length) + 128]) + -(mem[ceil32(stor8[arg1].length) + 128] % 32) + 192 len mem[ceil32(stor8[arg1].length) + 128] % 32]
        _1232 = mem[64]
        mem[64] = mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 192
        mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 192] = 32
        mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 224] = mem[_1232]
        _1246 = mem[_1232]
        mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 256 len ceil32(mem[_1232])] = mem[_1232 + 32 len ceil32(mem[_1232])]
        if not _1246 % 32:
            return 32, mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 224 len _1246 + 32], 
        mem[floor32(_1246) + mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 256] = mem[floor32(_1246) + mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + -(_1246 % 32) + 288 len _1246 % 32]
        return 32, mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 224 len floor32(_1246) + 64], 
    mem[ceil32(stor8[arg1].length) + 160 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < s
        mem[t + ceil32(stor8[arg1].length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[0] = 9
    mem[ceil32(stor8[arg1].length) + ceil32(s) + 192] = uint256(baseURI.field_0)
    t = mem[64] + 32
    u = 0
    while ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 160 > t:
        mem[t + 32] = baseURI[u].field_256
        t = t + 32
        u = u + 1
        continue 
    mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 192 len floor32(mem[ceil32(stor8[arg1].length) + 128])] = mem[ceil32(stor8[arg1].length) + 160 len floor32(mem[ceil32(stor8[arg1].length) + 128])]
    mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + floor32(mem[ceil32(stor8[arg1].length) + 128]) + -(mem[ceil32(stor8[arg1].length) + 128] % 32) + 224 len mem[ceil32(stor8[arg1].length) + 128] % 32] = mem[ceil32(stor8[arg1].length) + floor32(mem[ceil32(stor8[arg1].length) + 128]) + -(mem[ceil32(stor8[arg1].length) + 128] % 32) + 192 len mem[ceil32(stor8[arg1].length) + 128] % 32]
    _1236 = mem[64]
    mem[64] = mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 192
    mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 192] = 32
    mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 224] = mem[_1236]
    _1249 = mem[_1236]
    mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 256 len ceil32(mem[_1236])] = mem[_1236 + 32 len ceil32(mem[_1236])]
    if not _1249 % 32:
        return 32, mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 224 len _1249 + 32], 
    mem[floor32(_1249) + mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 256] = mem[floor32(_1249) + mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + -(_1249 % 32) + 288 len _1249 % 32]
    return 32, mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 224 len floor32(_1249) + 64], 
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if priceOf[arg1].field_0 <= 0:
        revert with 0, 'Token is not exist'
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor3[arg1] - 1 < tokenByIndex.length
    if not tokenByIndex[stor3[arg1] - 1].field_256:
        revert with 0, 'Token is not exist'
    require ext_code.size(stor18)
    staticcall stor18.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < priceOf[arg1].field_0:
        revert with 0, 
                    32,
                    70,
                    0x73596f7520646f6e2774206861766520736f206d75636820616c6c6f77616e63652c20706c6561736520617070726f7665206669727374207468656e2074727920616761696e,
                    mem[330 len 26]
    require ext_code.size(stor18)
    staticcall stor18.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < priceOf[arg1].field_0:
        revert with 0, 
                    32,
                    68,
                    0x65596f7520646f6e2774206861766520736f206d7563682062616c616e63652c20706c6561736520617070726f7665206669727374207468656e2074727920616761696e,
                    mem[328 len 28]
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor3[arg1] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[arg1] - 1].field_256 == msg.sender:
        revert with 0, 'You can't buy your token'
    if not msg.sender:
        revert with 0, 'You can't be the 0'
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[361 len 23],
                    mem[407 len 9]
    require stor3[arg1] - 1 < tokenByIndex.length
    require ext_code.size(stor18)
    call stor18.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, priceOf[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 
                    32,
                    69,
                    0x6c536f6d657468696e67206261642068617070656e6564207768656e207472616e7366657220746f6b656e206f7574206f6620796f7572206163636f756e7420746f206275,
                    mem[521 len 27]
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    priceOf[arg1].field_32,
                    priceOf[arg1].field_0
    require stor3[arg1] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[arg1] - 1].field_256 != tokenByIndex[stor3[arg1] - 1].field_256:
        revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[589 len 23]
    if not msg.sender:
        revert with 0, 32, 36, 0x724552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[584 len 28]
    approved[arg1] = 0
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[553 len 23],
                    mem[599 len 9]
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
    if not tokenOfOwnerByIndex[address(msg.sender)][1][arg1]:
        tokenOfOwnerByIndex[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = arg1
        tokenOfOwnerByIndex[address(msg.sender)][1][arg1] = tokenOfOwnerByIndex[address(msg.sender)]
    if stor3[arg1]:
        require stor3[arg1] - 1 < tokenByIndex.length
        tokenByIndex[stor3[arg1] - 1].field_256 = msg.sender
        tokenByIndex[stor3[arg1] - 1].field_416 = 0
        emit Transfer(tokenByIndex[stor3[arg1] - 1].field_256, msg.sender, arg1);
        if priceOf[arg1].field_0 < stor13:
            if not priceOf[arg1].field_0:
                priceOf[arg1].field_0 = 0
            else:
                if 200 * priceOf[arg1].field_0 / priceOf[arg1].field_0 != 200:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[677 len 31]
                priceOf[arg1].field_0 = 200 * priceOf[arg1].field_0 / 95
        else:
            if priceOf[arg1].field_0 < stor14:
                if not priceOf[arg1].field_0:
                    priceOf[arg1].field_0 = 0
                else:
                    if 135 * priceOf[arg1].field_0 / priceOf[arg1].field_0 != 135:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[677 len 31]
                    priceOf[arg1].field_0 = 135 * priceOf[arg1].field_0 / 96
            else:
                if priceOf[arg1].field_0 < stor15:
                    if not priceOf[arg1].field_0:
                        priceOf[arg1].field_0 = 0
                    else:
                        if 125 * priceOf[arg1].field_0 / priceOf[arg1].field_0 != 125:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[677 len 31]
                        priceOf[arg1].field_0 = 125 * priceOf[arg1].field_0 / 97
                else:
                    if priceOf[arg1].field_0 >= stor16:
                        if not priceOf[arg1].field_0:
                            priceOf[arg1].field_0 = 0
                        else:
                            if 115 * priceOf[arg1].field_0 / priceOf[arg1].field_0 != 115:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[677 len 31]
                            priceOf[arg1].field_0 = 115 * priceOf[arg1].field_0 / 98
                    else:
                        if not priceOf[arg1].field_0:
                            priceOf[arg1].field_0 = 0
                        else:
                            if 117 * priceOf[arg1].field_0 / priceOf[arg1].field_0 != 117:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[677 len 31]
                            priceOf[arg1].field_0 = 117 * priceOf[arg1].field_0 / 97
        emit Bought(priceOf[arg1].field_0, arg1, msg.sender);
        emit Sold(priceOf[arg1].field_0, arg1, tokenByIndex[stor3[arg1] - 1].field_256);
        if not priceOf[arg1].field_0:
            if 0 > priceOf[arg1].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(stor18)
            call stor18.0xa9059cbb with:
                 gas gas_remaining wei
                args tokenByIndex[stor3[arg1] - 1].field_256, priceOf[arg1].field_0
        else:
            if 4 * priceOf[arg1].field_0 / priceOf[arg1].field_0 != 4:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[741 len 31]
            if 4 * priceOf[arg1].field_0 / 100 > priceOf[arg1].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(stor18)
            call stor18.0xa9059cbb with:
                 gas gas_remaining wei
                args tokenByIndex[stor3[arg1] - 1].field_256, priceOf[arg1].field_0 - (4 * priceOf[arg1].field_0 / 100)
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg1
        tokenByIndex[tokenByIndex.length].field_256 = msg.sender
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor3[arg1] = tokenByIndex.length
        emit Transfer(tokenByIndex[stor3[arg1] - 1].field_256, msg.sender, arg1);
        if priceOf[arg1].field_0 < stor13:
            if not priceOf[arg1].field_0:
                priceOf[arg1].field_0 = 0
            else:
                if 200 * priceOf[arg1].field_0 / priceOf[arg1].field_0 != 200:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[741 len 31]
                priceOf[arg1].field_0 = 200 * priceOf[arg1].field_0 / 95
        else:
            if priceOf[arg1].field_0 < stor14:
                if not priceOf[arg1].field_0:
                    priceOf[arg1].field_0 = 0
                else:
                    if 135 * priceOf[arg1].field_0 / priceOf[arg1].field_0 != 135:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[741 len 31]
                    priceOf[arg1].field_0 = 135 * priceOf[arg1].field_0 / 96
            else:
                if priceOf[arg1].field_0 < stor15:
                    if not priceOf[arg1].field_0:
                        priceOf[arg1].field_0 = 0
                    else:
                        if 125 * priceOf[arg1].field_0 / priceOf[arg1].field_0 != 125:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[741 len 31]
                        priceOf[arg1].field_0 = 125 * priceOf[arg1].field_0 / 97
                else:
                    if priceOf[arg1].field_0 >= stor16:
                        if not priceOf[arg1].field_0:
                            priceOf[arg1].field_0 = 0
                        else:
                            if 115 * priceOf[arg1].field_0 / priceOf[arg1].field_0 != 115:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[741 len 31]
                            priceOf[arg1].field_0 = 115 * priceOf[arg1].field_0 / 98
                    else:
                        if not priceOf[arg1].field_0:
                            priceOf[arg1].field_0 = 0
                        else:
                            if 117 * priceOf[arg1].field_0 / priceOf[arg1].field_0 != 117:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[741 len 31]
                            priceOf[arg1].field_0 = 117 * priceOf[arg1].field_0 / 97
        emit Bought(priceOf[arg1].field_0, arg1, msg.sender);
        emit Sold(priceOf[arg1].field_0, arg1, tokenByIndex[stor3[arg1] - 1].field_256);
        if not priceOf[arg1].field_0:
            if 0 > priceOf[arg1].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(stor18)
            call stor18.0xa9059cbb with:
                 gas gas_remaining wei
                args tokenByIndex[stor3[arg1] - 1].field_256, priceOf[arg1].field_0
        else:
            if 4 * priceOf[arg1].field_0 / priceOf[arg1].field_0 != 4:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[805 len 31]
            if 4 * priceOf[arg1].field_0 / 100 > priceOf[arg1].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(stor18)
            call stor18.0xa9059cbb with:
                 gas gas_remaining wei
                args tokenByIndex[stor3[arg1] - 1].field_256, priceOf[arg1].field_0 - (4 * priceOf[arg1].field_0 / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    44,
                    0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 240 len 20]
    mem[ceil32(arg4.length) + 128] = 41
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 201 len 23],
                    mem[ceil32(arg4.length) + 247 len 9]
    require stor3[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[arg3] - 1].field_256 != msg.sender:
        if not stor3[arg3]:
            revert with 0, 
                        32,
                        44,
                        0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[ceil32(arg4.length) + 336 len 20]
        if approved[arg3] != msg.sender:
            if not stor5[stor2[stor3[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[ceil32(arg4.length) + 341 len 15]
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 297 len 23],
                    mem[ceil32(arg4.length) + 343 len 9]
    require stor3[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[arg3] - 1].field_256 != arg1:
        revert with 0, 
                    32,
                    41,
                    0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77,
                    mem[ceil32(arg4.length) + 429 len 23]
    if not arg2:
        revert with 0, 
                    32,
                    36,
                    0x724552433732313a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[ceil32(arg4.length) + 424 len 28]
    approved[arg3] = 0
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 393 len 23],
                    mem[ceil32(arg4.length) + 439 len 9]
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
        emit Transfer(arg1, arg2, arg3);
        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            if ext_code.hash(arg2):
                mem[ceil32(arg4.length) + 548] = 128
                mem[ceil32(arg4.length) + 580] = arg4.length
                mem[ceil32(arg4.length) + 612 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                if not arg4.length % 32:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg2):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[arg4.length + ceil32(arg4.length) + 708 len floor32(arg4.length + 164)] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 580 len floor32(arg4.length + 164) - 132]
                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 740 len arg4.length + 164 % 32] = Mask(8 * arg4.length + -floor32(arg4.length + 164) + 164, -(8 * floor32(arg4.length + 164) + -arg4.length - 132) + 256, 50) >> -(8 * floor32(arg4.length + 164) + -arg4.length - 132) + 256
                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 416 len 4] with:
                         gas gas_remaining wei
                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 580 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 708 len arg4.length + -floor32(arg4.length + 164) + 164]
                    if not return_data.size:
                        if not ext_call.success:
                            if arg4.length:
                                revert with arg4[all]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[arg4.length + ceil32(arg4.length) + 694 len 14])
                        require arg4.length >= 32
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 580 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                    else:
                        mem[arg4.length + ceil32(arg4.length) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[arg4.length + ceil32(arg4.length) + 694 len 14])
                        require return_data.size >= 32
                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 827 len 14]
                else:
                    mem[floor32(arg4.length) + ceil32(arg4.length) + 612] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 644 len arg4.length % 32]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg2):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[floor32(arg4.length) + ceil32(arg4.length) + 740 len floor32(floor32(arg4.length) + 196)] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 196) - 164]
                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 772 len floor32(arg4.length) + 196 % 32] = Mask(8 * floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196, -(8 * floor32(floor32(arg4.length) + 196) + -floor32(arg4.length) - 164) + 256, 50) >> -(8 * floor32(floor32(arg4.length) + 196) + -floor32(arg4.length) - 164) + 256
                    call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 416 len 4] with:
                         gas gas_remaining wei
                        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 740 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                    if not return_data.size:
                        if not ext_call.success:
                            if arg4.length:
                                revert with arg4[all]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[floor32(arg4.length) + ceil32(arg4.length) + 726 len 14])
                        require arg4.length >= 32
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                    else:
                        mem[floor32(arg4.length) + ceil32(arg4.length) + 772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[floor32(arg4.length) + ceil32(arg4.length) + 726 len 14])
                        require return_data.size >= 32
                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 772]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 859 len 14]
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        tokenByIndex[tokenByIndex.length].field_256 = arg2
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor3[arg3] = tokenByIndex.length
        emit Transfer(arg1, arg2, arg3);
        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            if ext_code.hash(arg2):
                mem[ceil32(arg4.length) + 612] = 128
                mem[ceil32(arg4.length) + 644] = arg4.length
                mem[ceil32(arg4.length) + 676 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                if not arg4.length % 32:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg2):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[arg4.length + ceil32(arg4.length) + 772 len floor32(arg4.length + 164)] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 644 len floor32(arg4.length + 164) - 132]
                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 804 len arg4.length + 164 % 32] = Mask(8 * arg4.length + -floor32(arg4.length + 164) + 164, -(8 * floor32(arg4.length + 164) + -arg4.length - 132) + 256, 50) >> -(8 * floor32(arg4.length + 164) + -arg4.length - 132) + 256
                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 480 len 4] with:
                         gas gas_remaining wei
                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 644 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 772 len arg4.length + -floor32(arg4.length + 164) + 164]
                    if not return_data.size:
                        if not ext_call.success:
                            if arg4.length:
                                revert with arg4[all]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[arg4.length + ceil32(arg4.length) + 758 len 14])
                        require arg4.length >= 32
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 644 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                    else:
                        mem[arg4.length + ceil32(arg4.length) + 804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[arg4.length + ceil32(arg4.length) + 758 len 14])
                        require return_data.size >= 32
                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 891 len 14]
                else:
                    mem[floor32(arg4.length) + ceil32(arg4.length) + 676] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 708 len arg4.length % 32]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg2):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[floor32(arg4.length) + ceil32(arg4.length) + 804 len floor32(floor32(arg4.length) + 196)] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 676 len floor32(floor32(arg4.length) + 196) - 164]
                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 836 len floor32(arg4.length) + 196 % 32] = Mask(8 * floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196, -(8 * floor32(floor32(arg4.length) + 196) + -floor32(arg4.length) - 164) + 256, 50) >> -(8 * floor32(floor32(arg4.length) + 196) + -floor32(arg4.length) - 164) + 256
                    call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 480 len 4] with:
                         gas gas_remaining wei
                        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 676 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 804 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                    if not return_data.size:
                        if not ext_call.success:
                            if arg4.length:
                                revert with arg4[all]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[floor32(arg4.length) + ceil32(arg4.length) + 790 len 14])
                        require arg4.length >= 32
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 676 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                    else:
                        mem[floor32(arg4.length) + ceil32(arg4.length) + 836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[floor32(arg4.length) + ceil32(arg4.length) + 790 len 14])
                        require return_data.size >= 32
                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 836]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 923 len 14]
}

function populateFromItemRegistry(uint256[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if stor10 != msg.sender:
        revert with 0, 32, 33, 0x64596f75206d75737420626520746865206f776e657220746f20636f6e74696e75, mem[(32 * arg1.length) + 229 len 31]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 17
        if priceOf[mem[(32 * idx) + 128]].field_0 <= 0:
            require idx < mem[96]
            _509 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(stor12)
            staticcall stor12.0xb9186d7d with:
                    gas gas_remaining wei
                   args _509
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require idx < mem[96]
                _515 = mem[(32 * idx) + 128]
                if stor10 != msg.sender:
                    revert with 0, 32, 33, 0x64596f75206d75737420626520746865206f776e657220746f20636f6e74696e75, mem[mem[64] + 101 len 31]
                require stor12
                require ext_code.size(stor12)
                staticcall stor12.0x6352211e with:
                        gas gas_remaining wei
                       args mem[(32 * idx) + 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require address(ext_call.return_data[0])
                require ext_code.size(stor12)
                staticcall stor12.0xb9186d7d with:
                        gas gas_remaining wei
                       args mem[(32 * idx) + 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] > 0
                require ext_code.size(stor12)
                staticcall stor12.0xb9186d7d with:
                        gas gas_remaining wei
                       args mem[(32 * idx) + 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor12)
                staticcall stor12.0x6352211e with:
                        gas gas_remaining wei
                       args _515
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not stor11[msg.sender]:
                    revert with 0, 32, 33, 0x65596f75206d757374206265207468652061646d696e20746f20636f6e74696e75, mem[mem[64] + 101 len 31]
                require ext_call.return_data[0] > 0
                mem[0] = _515
                mem[32] = 17
                require not priceOf[_515].field_0
                _538 = mem[64]
                mem[64] = mem[64] + 96
                mem[_538] = 41
                mem[_538 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                mem[32] = 3
                if not stor3[_515]:
                    _540 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 41
                    idx = 0
                    while idx < 41:
                        mem[idx + _540 + 68] = mem[idx + _538 + 32]
                        idx = idx + 32
                        continue 
                    mem[_540 + 100] = mem[_540 + 123 len 9]
                    revert with memory
                      from mem[64]
                       len _540 + -mem[64] + 132
                require stor3[_515] - 1 < tokenByIndex.length
                mem[0] = 2
                require not tokenByIndex[stor3[_515] - 1].field_256
                _548 = mem[64]
                mem[64] = mem[64] + 32
                mem[_548] = 0
                if not address(ext_call.return_data[0]):
                    revert with 0, 'ERC721: mint to the zero address'
                if stor3[_515]:
                    revert with 0, 'ERC721: token already minted'
                if tokenOfOwnerByIndex[address(ext_call.return_data[0])][1][_515]:
                    mem[0] = _515
                    mem[32] = 3
                    if stor3[_515]:
                        require stor3[_515] - 1 < tokenByIndex.length
                        mem[0] = 2
                        tokenByIndex[stor3[_515] - 1].field_256 = address(ext_call.return_data[0])
                        tokenByIndex[stor3[_515] - 1].field_416 = 0
                        emit Transfer(0, address(ext_call.return_data[0]), _515);
                        if ext_code.hash(address(ext_call.return_data[0])) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(address(ext_call.return_data[0])):
                                _582 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = 0
                                mem[mem[64] + 100] = _515
                                mem[mem[64] + 132] = 128
                                mem[mem[64] + 164] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 196] = mem[s + _548 + 32]
                                    s = s + 32
                                    continue 
                                _1009 = mem[64]
                                mem[mem[64]] = 164
                                mem[64] = mem[64] + 196
                                mem[_1009 + 32] = mem[_1009 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[64] = _582 + 292
                                mem[_582 + 196] = 50
                                mem[_582 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(address(ext_call.return_data[0])):
                                    revert with 0, 'Address: call to non-contract'
                                _1043 = mem[_1009]
                                t = _1009 + 32
                                u = _582 + 292
                                s = mem[_1009]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_582 + floor32(mem[_1009]) + 292] = mem[_1009 + -(mem[_1009] % 32) + floor32(mem[_1009]) + 64 len mem[_1009] % 32] or Mask(8 * -(mem[_1009] % 32) + 32, -(8 * -(mem[_1009] % 32) + 32) + 256, mem[_582 + floor32(mem[_1009]) + 292])
                                call address(ext_call.return_data[0]).mem[_582 + 292 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_582 + 296 len _1043 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_582 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_582 + 296] = 32
                                        idx = 32
                                        while idx < 50:
                                            mem[idx + _582 + 360] = mem[idx + _582 + 228]
                                            idx = idx + 32
                                            continue 
                                        mem[_582 + 392] = mem[_582 + 406 len 18]
                                        revert with 0, 32, 50, 0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_582 + 392]
                                    require mem[96] >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[_582 + 410 len 14]
                                else:
                                    mem[64] = _582 + ceil32(return_data.size) + 293
                                    mem[_582 + 292] = return_data.size
                                    mem[_582 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_582 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_582 + ceil32(return_data.size) + 297] = 32
                                        idx = 32
                                        while idx < 50:
                                            mem[idx + _582 + ceil32(return_data.size) + 361] = mem[idx + _582 + 228]
                                            idx = idx + 32
                                            continue 
                                        mem[_582 + ceil32(return_data.size) + 393] = mem[_582 + ceil32(return_data.size) + 407 len 18]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                                    mem[_582 + ceil32(return_data.size) + 393]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[_582 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[_582 + ceil32(return_data.size) + 411 len 14]
                    else:
                        _560 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_560] = _515
                        mem[_560 + 32] = address(ext_call.return_data[0])
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = _515
                        tokenByIndex[tokenByIndex.length].field_256 = address(ext_call.return_data[0])
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        mem[0] = _515
                        mem[32] = 3
                        stor3[_515] = tokenByIndex.length
                        emit Transfer(0, address(ext_call.return_data[0]), _515);
                        if ext_code.hash(address(ext_call.return_data[0])) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(address(ext_call.return_data[0])):
                                _576 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = 0
                                mem[mem[64] + 100] = _515
                                mem[mem[64] + 132] = 128
                                mem[mem[64] + 164] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 196] = mem[s + _548 + 32]
                                    s = s + 32
                                    continue 
                                _1013 = mem[64]
                                mem[mem[64]] = 164
                                mem[64] = mem[64] + 196
                                mem[_1013 + 32] = mem[_1013 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[64] = _576 + 292
                                mem[_576 + 196] = 50
                                mem[_576 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(address(ext_call.return_data[0])):
                                    revert with 0, 'Address: call to non-contract'
                                _1049 = mem[_1013]
                                t = _1013 + 32
                                u = _576 + 292
                                s = mem[_1013]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_576 + floor32(mem[_1013]) + 292] = mem[_1013 + -(mem[_1013] % 32) + floor32(mem[_1013]) + 64 len mem[_1013] % 32] or Mask(8 * -(mem[_1013] % 32) + 32, -(8 * -(mem[_1013] % 32) + 32) + 256, mem[_576 + floor32(mem[_1013]) + 292])
                                call address(ext_call.return_data[0]).mem[_576 + 292 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_576 + 296 len _1049 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_576 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_576 + 296] = 32
                                        idx = 32
                                        while idx < 50:
                                            mem[idx + _576 + 360] = mem[idx + _576 + 228]
                                            idx = idx + 32
                                            continue 
                                        mem[_576 + 392] = mem[_576 + 406 len 18]
                                        revert with 0, 32, 50, 0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_576 + 392]
                                    require mem[96] >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[_576 + 410 len 14]
                                else:
                                    mem[64] = _576 + ceil32(return_data.size) + 293
                                    mem[_576 + 292] = return_data.size
                                    mem[_576 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_576 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_576 + ceil32(return_data.size) + 297] = 32
                                        idx = 32
                                        while idx < 50:
                                            mem[idx + _576 + ceil32(return_data.size) + 361] = mem[idx + _576 + 228]
                                            idx = idx + 32
                                            continue 
                                        mem[_576 + ceil32(return_data.size) + 393] = mem[_576 + ceil32(return_data.size) + 407 len 18]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                                    mem[_576 + ceil32(return_data.size) + 393]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[_576 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[_576 + ceil32(return_data.size) + 411 len 14]
                else:
                    tokenOfOwnerByIndex[address(ext_call.return_data[0])]++
                    tokenOfOwnerByIndex[address(ext_call.return_data[0])][tokenOfOwnerByIndex[address(ext_call.return_data[0])]] = _515
                    tokenOfOwnerByIndex[address(ext_call.return_data[0])][1][_515] = tokenOfOwnerByIndex[address(ext_call.return_data[0])]
                    mem[0] = _515
                    mem[32] = 3
                    if stor3[_515]:
                        require stor3[_515] - 1 < tokenByIndex.length
                        mem[0] = 2
                        tokenByIndex[stor3[_515] - 1].field_256 = address(ext_call.return_data[0])
                        tokenByIndex[stor3[_515] - 1].field_416 = 0
                        emit Transfer(0, address(ext_call.return_data[0]), _515);
                        if ext_code.hash(address(ext_call.return_data[0])) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(address(ext_call.return_data[0])):
                                _585 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = 0
                                mem[mem[64] + 100] = _515
                                mem[mem[64] + 132] = 128
                                mem[mem[64] + 164] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 196] = mem[s + _548 + 32]
                                    s = s + 32
                                    continue 
                                _1017 = mem[64]
                                mem[mem[64]] = 164
                                mem[64] = mem[64] + 196
                                mem[_1017 + 32] = mem[_1017 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[64] = _585 + 292
                                mem[_585 + 196] = 50
                                mem[_585 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(address(ext_call.return_data[0])):
                                    revert with 0, 'Address: call to non-contract'
                                _1055 = mem[_1017]
                                t = _1017 + 32
                                u = _585 + 292
                                s = mem[_1017]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_585 + floor32(mem[_1017]) + 292] = mem[_1017 + -(mem[_1017] % 32) + floor32(mem[_1017]) + 64 len mem[_1017] % 32] or Mask(8 * -(mem[_1017] % 32) + 32, -(8 * -(mem[_1017] % 32) + 32) + 256, mem[_585 + floor32(mem[_1017]) + 292])
                                call address(ext_call.return_data[0]).mem[_585 + 292 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_585 + 296 len _1055 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_585 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_585 + 296] = 32
                                        idx = 32
                                        while idx < 50:
                                            mem[idx + _585 + 360] = mem[idx + _585 + 228]
                                            idx = idx + 32
                                            continue 
                                        mem[_585 + 392] = mem[_585 + 406 len 18]
                                        revert with 0, 32, 50, 0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_585 + 392]
                                    require mem[96] >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[_585 + 410 len 14]
                                else:
                                    mem[64] = _585 + ceil32(return_data.size) + 293
                                    mem[_585 + 292] = return_data.size
                                    mem[_585 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_585 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_585 + ceil32(return_data.size) + 297] = 32
                                        idx = 32
                                        while idx < 50:
                                            mem[idx + _585 + ceil32(return_data.size) + 361] = mem[idx + _585 + 228]
                                            idx = idx + 32
                                            continue 
                                        mem[_585 + ceil32(return_data.size) + 393] = mem[_585 + ceil32(return_data.size) + 407 len 18]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                                    mem[_585 + ceil32(return_data.size) + 393]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[_585 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[_585 + ceil32(return_data.size) + 411 len 14]
                    else:
                        _565 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_565] = _515
                        mem[_565 + 32] = address(ext_call.return_data[0])
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = _515
                        tokenByIndex[tokenByIndex.length].field_256 = address(ext_call.return_data[0])
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        mem[0] = _515
                        mem[32] = 3
                        stor3[_515] = tokenByIndex.length
                        emit Transfer(0, address(ext_call.return_data[0]), _515);
                        if ext_code.hash(address(ext_call.return_data[0])) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(address(ext_call.return_data[0])):
                                _579 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = 0
                                mem[mem[64] + 100] = _515
                                mem[mem[64] + 132] = 128
                                mem[mem[64] + 164] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 196] = mem[s + _548 + 32]
                                    s = s + 32
                                    continue 
                                _1021 = mem[64]
                                mem[mem[64]] = 164
                                mem[64] = mem[64] + 196
                                mem[_1021 + 32] = mem[_1021 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[64] = _579 + 292
                                mem[_579 + 196] = 50
                                mem[_579 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(address(ext_call.return_data[0])):
                                    revert with 0, 'Address: call to non-contract'
                                _1061 = mem[_1021]
                                t = _1021 + 32
                                u = _579 + 292
                                s = mem[_1021]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_579 + floor32(mem[_1021]) + 292] = mem[_1021 + -(mem[_1021] % 32) + floor32(mem[_1021]) + 64 len mem[_1021] % 32] or Mask(8 * -(mem[_1021] % 32) + 32, -(8 * -(mem[_1021] % 32) + 32) + 256, mem[_579 + floor32(mem[_1021]) + 292])
                                call address(ext_call.return_data[0]).mem[_579 + 292 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_579 + 296 len _1061 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_579 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_579 + 296] = 32
                                        idx = 32
                                        while idx < 50:
                                            mem[idx + _579 + 360] = mem[idx + _579 + 228]
                                            idx = idx + 32
                                            continue 
                                        mem[_579 + 392] = mem[_579 + 406 len 18]
                                        revert with 0, 32, 50, 0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_579 + 392]
                                    require mem[96] >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[_579 + 410 len 14]
                                else:
                                    mem[64] = _579 + ceil32(return_data.size) + 293
                                    mem[_579 + 292] = return_data.size
                                    mem[_579 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_579 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_579 + ceil32(return_data.size) + 297] = 32
                                        idx = 32
                                        while idx < 50:
                                            mem[idx + _579 + ceil32(return_data.size) + 361] = mem[idx + _579 + 228]
                                            idx = idx + 32
                                            continue 
                                        mem[_579 + ceil32(return_data.size) + 393] = mem[_579 + ceil32(return_data.size) + 407 len 18]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                                    mem[_579 + ceil32(return_data.size) + 393]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[_579 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[_579 + ceil32(return_data.size) + 411 len 14]
                mem[0] = _515
                mem[32] = 17
                priceOf[_515].field_0 = ext_call.return_data[0]
        idx = idx + 1
        continue 
}



}
