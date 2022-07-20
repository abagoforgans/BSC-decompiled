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
mapping of uint8 stor6;
address ownerContract;
array of struct stor8;
uint256 totalItems;
array of uint256 name;
array of uint256 symbol;
array of struct stor12;
array of struct baseURI;
address stor14;
address stor15;
address stor16;
address stor17;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function totalItems() {
    return totalItems
}

function forSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[arg1])
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if tokenOfOwnerByIndex[address(arg1)] <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenByIndex.length <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableMap: index out of bounds'
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1].field_0
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    require stor3[arg1] - 1 < tokenByIndex.length
    return tokenByIndex[stor3[arg1] - 1].field_256
}

function baseURI() {
    return baseURI[0 len baseURI.length].field_0
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return tokenOfOwnerByIndex[address(arg1)]
}

function ownerContract() {
    return ownerContract
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function changeSigner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ownerContract != msg.sender:
        revert with 0, 'Only Owner'
    stor14 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ownerContract != msg.sender:
        revert with 0, 'Only Owner'
    ownerContract = arg1
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

function itemsForSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stor8.length
    mem[128] = stor[sha3((5 * arg1) + ('name', 'stor8', 8) + 4)].field_0
    idx = 128
    s = 0
    while stor[(5 * arg1) + ('name', 'stor8', 8) + 4].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor8', 8) + 4)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor8[arg1].field_0, 
           stor8[arg1].field_256,
           stor8[arg1].field_512,
           bool(stor8[arg1].field_768),
           Array(len=stor[(5 * arg1) + ('name', 'stor8', 8) + 4].length, data=mem[128 len ceil32(stor[(5 * arg1) + ('name', 'stor8', 8) + 4].length)])
}

function removeFromSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stor8.length
    idx = 288
    s = 0
    while stor[(5 * arg1) + ('name', 'stor8', 8) + 4].length + 256 > idx:
        mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor8', 8) + 4)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not stor3[stor8[arg1].field_256]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(stor[(5 * arg1) + ('name', 'stor8', 8) + 4].length) + 361 len 23] >> 72,
                    0
    require stor3[stor8[arg1].field_256] - 1 < tokenByIndex.length
    require stor3[stor8[arg1].field_256]
    require tokenByIndex[stor3[stor8[arg1].field_256] - 1].field_256 == msg.sender
    if bool(stor6[stor8[arg1].field_256]) != 1:
        revert with 0, 'Token not for Sale'
    stor6[stor8[arg1].field_256] = 0
    require arg1 < stor8.length
    stor8[arg1].field_768 = 0
    emit UnListedForSale(stor8[arg1].field_256);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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

function setForSale(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    require stor3[arg1] - 1 < tokenByIndex.length
    if arg2 <= 0:
        revert with 0, 'Sale Price Cant be zero'
    if stor6[arg1]:
        revert with 0, 'Token already for Sale'
    require stor3[arg1]
    require tokenByIndex[stor3[arg1] - 1].field_256 == msg.sender
    approved[arg1] = this.address
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    require stor3[arg1] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor3[arg1] - 1].field_256, this.address, arg1);
    stor6[arg1] = 1
    stor8.length++
    stor8[stor8.length].field_0 = stor8.length
    stor8[stor8.length].field_256 = arg1
    stor8[stor8.length].field_512 = arg2
    stor8[stor8.length].field_768 = 1
    stor8[stor8.length].field_1024 = 0
    stor8[stor8.length].field_1025 = 1
    stor8[stor8.length].field_1032 = '$' / 256
    idx = 0
    while stor[(5 * stor8.length) + ('name', 'stor8', 8) + 4].length + 31 / 32 > idx:
        stor[idx + sha3((5 * stor8.length) + ('name', 'stor8', 8) + 4)].field_0 = 0
        idx = idx + 1
        continue 
    totalItems++
    emit ListedForSale(arg2, arg1);
    emit Approval(tokenByIndex[stor3[arg1] - 1].field_256, this.address, arg1);
    return stor8.length
}

function allItems() {
    mem[96] = 1
    mem[64] = 320
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 96
    mem[128] = 160
    idx = 0
    while idx < totalItems:
        require idx < stor8.length
        mem[0] = 8
        _23 = mem[64]
        mem[64] = mem[64] + 160
        mem[_23] = stor8[idx].field_0
        mem[_23 + 32] = stor8[idx].field_256
        mem[_23 + 64] = stor8[idx].field_512
        mem[_23 + 96] = bool(stor8[idx].field_768)
        _24 = mem[64]
        mem[64] = mem[64] + ceil32(stor[(5 * idx) + ('name', 'stor8', 8) + 4].length) + 32
        mem[_24] = stor[(5 * idx) + ('name', 'stor8', 8) + 4].length
        mem[0] = (5 * idx) + sha3(8) + 4
        mem[_24 + 32] = stor[sha3((5 * idx) + ('name', 'stor8', 8) + 4)].field_0
        s = _24 + 32
        t = sha3(mem[0])
        while _24 + stor[(5 * s) + ('name', 'stor8', 8) + 4].length > s:
            mem[s + 32] = tokenOfOwnerByIndex[t]
            s = s + 32
            t = t + 1
            continue 
        mem[_23 + 128] = _24
        require s < mem[96]
        mem[(32 * s) + 128] = _23
        s = s + 1
        continue 
    _21 = mem[64]
    mem[mem[64]] = 32
    _27 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _27:
        mem[u] = t + -_21 - 64
        _39 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_39 + 32]
        mem[t + 64] = mem[_39 + 64]
        mem[t + 96] = bool(mem[_39 + 96])
        _46 = mem[_39 + 128]
        mem[t + 128] = 160
        _47 = mem[_46]
        mem[t + 160] = mem[_46]
        v = 0
        while v < _47:
            mem[t + v + 192] = mem[_46 + v + 32]
            v = v + 32
            continue 
        if ceil32(_47) > _47:
            mem[t + _47 + 192] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_47) + 192
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function mintNFT(address arg1, string arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    if ownerContract != msg.sender:
        revert with 0, 'Only Owner'
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if stor3[arg3]:
        revert with 0, 'ERC721: token already minted'
    if not tokenOfOwnerByIndex[address(arg1)][1][arg3]:
        tokenOfOwnerByIndex[address(arg1)]++
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = arg3
        tokenOfOwnerByIndex[address(arg1)][1][arg3] = tokenOfOwnerByIndex[address(arg1)]
    if stor3[arg3]:
        require stor3[arg3] - 1 < tokenByIndex.length
        tokenByIndex[stor3[arg3] - 1].field_256 = arg1
        tokenByIndex[stor3[arg3] - 1].field_416 = 0
        emit Transfer(0, arg1, arg3);
        if not stor3[arg3]:
            revert with 0, 'ERC721Metadata: URI set of nonexistent token'
        if arg2.length:
            stor12[arg3][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor12[arg3].field_0 = 0
            idx = 0
            while stor12[arg3].length + 31 / 32 > idx:
                stor12[arg3][idx].field_0 = 0
                idx = idx + 1
                continue 
        mem[ceil32(arg2.length) + 128] = arg3
        return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length].field_0 = arg3
    tokenByIndex[tokenByIndex.length].field_256 = arg1
    tokenByIndex[tokenByIndex.length].field_416 = 0
    stor3[arg3] = tokenByIndex.length
    emit Transfer(0, arg1, arg3);
    if not stor3[arg3]:
        revert with 0, 'ERC721Metadata: URI set of nonexistent token'
    if arg2.length:
        stor12[arg3][].field_0 = Array(len=arg2.length, data=arg2[all])
    else:
        stor12[arg3].field_0 = 0
        idx = 0
        while stor12[arg3].length + 31 / 32 > idx:
            stor12[arg3][idx].field_0 = 0
            idx = idx + 1
            continue 
    return arg3
}

function sub_9890b322(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    require arg4 == uint8(arg4)
    require arg5 == arg5
    require arg6 == arg6
    mem[ceil32(arg2.length) + 160] = address(this.address)
    mem[ceil32(arg2.length) + 180] = arg3
    mem[ceil32(arg2.length) + 128] = 52
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if stor14 != address(signer):
        revert with 0, 'owner should sign tokenId'
    call ownerContract with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(arg1):
        revert with 0, 'ERC721: mint to the zero address'
    if stor3[arg3]:
        revert with 0, 'ERC721: token already minted'
    if not tokenOfOwnerByIndex[address(arg1)][1][arg3]:
        tokenOfOwnerByIndex[address(arg1)]++
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = arg3
        tokenOfOwnerByIndex[address(arg1)][1][arg3] = tokenOfOwnerByIndex[address(arg1)]
    if stor3[arg3]:
        require stor3[arg3] - 1 < tokenByIndex.length
        tokenByIndex[stor3[arg3] - 1].field_256 = address(arg1)
        tokenByIndex[stor3[arg3] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        tokenByIndex[tokenByIndex.length].field_256 = address(arg1)
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor3[arg3] = tokenByIndex.length
    emit Transfer(0, address(arg1), arg3);
    if not stor3[arg3]:
        revert with 0, 'ERC721Metadata: URI set of nonexistent token'
    if arg2.length:
        stor12[arg3][].field_0 = Array(len=arg2.length, data=arg2[all])
    else:
        stor12[arg3].field_0 = 0
        idx = 0
        while stor12[arg3].length + 31 / 32 > idx:
            stor12[arg3][idx].field_0 = 0
            idx = idx + 1
            continue 
    return arg3
}

function sub_146aa99b(?) {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == uint8(arg5)
    require arg6 == arg6
    require arg7 == arg7
    mem[ceil32(arg2.length) + 160] = address(this.address)
    mem[ceil32(arg2.length) + 180] = arg4
    mem[ceil32(arg2.length) + 128] = 52
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if stor14 != address(signer):
        revert with 0, 'owner should sign tokenId'
    require ext_code.size(stor16)
    staticcall stor16.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg3:
        revert with 0, 'amount exceeds allowance'
    require ext_code.size(stor16)
    call stor16.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, ownerContract, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not address(arg1):
        revert with 0, 'ERC721: mint to the zero address'
    if stor3[arg4]:
        revert with 0, 'ERC721: token already minted'
    if not tokenOfOwnerByIndex[address(arg1)][1][arg4]:
        tokenOfOwnerByIndex[address(arg1)]++
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = arg4
        tokenOfOwnerByIndex[address(arg1)][1][arg4] = tokenOfOwnerByIndex[address(arg1)]
    if stor3[arg4]:
        require stor3[arg4] - 1 < tokenByIndex.length
        tokenByIndex[stor3[arg4] - 1].field_256 = address(arg1)
        tokenByIndex[stor3[arg4] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg4
        tokenByIndex[tokenByIndex.length].field_256 = address(arg1)
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor3[arg4] = tokenByIndex.length
    emit Transfer(0, address(arg1), arg4);
    if not stor3[arg4]:
        revert with 0, 'ERC721Metadata: URI set of nonexistent token'
    if arg2.length:
        stor12[arg4][].field_0 = Array(len=arg2.length, data=arg2[all])
    else:
        stor12[arg4].field_0 = 0
        idx = 0
        while stor12[arg4].length + 31 / 32 > idx:
            stor12[arg4][idx].field_0 = 0
            idx = idx + 1
            continue 
    return arg4
}

function sub_41355219(?) {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == uint8(arg5)
    require arg6 == arg6
    require arg7 == arg7
    mem[ceil32(arg2.length) + 160] = address(this.address)
    mem[ceil32(arg2.length) + 180] = arg4
    mem[ceil32(arg2.length) + 128] = 52
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if stor14 != address(signer):
        revert with 0, 'owner should sign tokenId'
    require ext_code.size(stor15)
    staticcall stor15.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg3:
        revert with 0, 'amount exceeds allowance'
    require ext_code.size(stor15)
    call stor15.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, ownerContract, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not address(arg1):
        revert with 0, 'ERC721: mint to the zero address'
    if stor3[arg4]:
        revert with 0, 'ERC721: token already minted'
    if not tokenOfOwnerByIndex[address(arg1)][1][arg4]:
        tokenOfOwnerByIndex[address(arg1)]++
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = arg4
        tokenOfOwnerByIndex[address(arg1)][1][arg4] = tokenOfOwnerByIndex[address(arg1)]
    if stor3[arg4]:
        require stor3[arg4] - 1 < tokenByIndex.length
        tokenByIndex[stor3[arg4] - 1].field_256 = address(arg1)
        tokenByIndex[stor3[arg4] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg4
        tokenByIndex[tokenByIndex.length].field_256 = address(arg1)
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor3[arg4] = tokenByIndex.length
    emit Transfer(0, address(arg1), arg4);
    if not stor3[arg4]:
        revert with 0, 'ERC721Metadata: URI set of nonexistent token'
    if arg2.length:
        stor12[arg4][].field_0 = Array(len=arg2.length, data=arg2[all])
    else:
        stor12[arg4].field_0 = 0
        idx = 0
        while stor12[arg4].length + 31 / 32 > idx:
            stor12[arg4][idx].field_0 = 0
            idx = idx + 1
            continue 
    return arg4
}

function sub_9e4fc835(?) {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == uint8(arg5)
    require arg6 == arg6
    require arg7 == arg7
    mem[ceil32(arg2.length) + 160] = address(this.address)
    mem[ceil32(arg2.length) + 180] = arg4
    mem[ceil32(arg2.length) + 128] = 52
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if stor14 != address(signer):
        revert with 0, 'owner should sign tokenId'
    require ext_code.size(stor17)
    staticcall stor17.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg3:
        revert with 0, 'amount exceeds allowance'
    require ext_code.size(stor17)
    call stor17.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, ownerContract, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not address(arg1):
        revert with 0, 'ERC721: mint to the zero address'
    if stor3[arg4]:
        revert with 0, 'ERC721: token already minted'
    if not tokenOfOwnerByIndex[address(arg1)][1][arg4]:
        tokenOfOwnerByIndex[address(arg1)]++
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = arg4
        tokenOfOwnerByIndex[address(arg1)][1][arg4] = tokenOfOwnerByIndex[address(arg1)]
    if stor3[arg4]:
        require stor3[arg4] - 1 < tokenByIndex.length
        tokenByIndex[stor3[arg4] - 1].field_256 = address(arg1)
        tokenByIndex[stor3[arg4] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg4
        tokenByIndex[tokenByIndex.length].field_256 = address(arg1)
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor3[arg4] = tokenByIndex.length
    emit Transfer(0, address(arg1), arg4);
    if not stor3[arg4]:
        revert with 0, 'ERC721Metadata: URI set of nonexistent token'
    if arg2.length:
        stor12[arg4][].field_0 = Array(len=arg2.length, data=arg2[all])
    else:
        stor12[arg4].field_0 = 0
        idx = 0
        while stor12[arg4].length + 31 / 32 > idx:
            stor12[arg4][idx].field_0 = 0
            idx = idx + 1
            continue 
    return arg4
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
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
    stor6[arg3] = 0
    emit Transfer(arg1, arg2, arg3);
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    mem[128] = stor12[arg1].field_0
    idx = 128
    s = 0
    while stor12[arg1].length + 96 > idx:
        mem[idx + 32] = stor12[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor12[arg1].length) + 160] = uint256(baseURI.field_0)
    idx = ceil32(stor12[arg1].length) + 160
    s = 0
    while ceil32(stor12[arg1].length) + baseURI.length + 128 > idx:
        mem[idx + 32] = baseURI[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not baseURI.length:
        var47001 = ceil32(stor12[arg1].length)
        return Array(len=stor12[arg1].length, data=mem[128 len ceil32(stor12[arg1].length)])
    if stor12[arg1].length > 0:
        mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + 192 len ceil32(baseURI.length)] = mem[ceil32(stor12[arg1].length) + 160 len ceil32(baseURI.length)]
        var46001 = ceil32(baseURI.length)
        if ceil32(baseURI.length) > baseURI.length:
            mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + baseURI.length + 192] = 0
        mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + baseURI.length + 192 len ceil32(stor12[arg1].length)] = mem[128 len ceil32(stor12[arg1].length)]
        mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + baseURI.length + stor12[arg1].length + 192] = 32
        mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + baseURI.length + stor12[arg1].length + 224] = mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + 160]
        mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + baseURI.length + stor12[arg1].length + 256 len ceil32(mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + 160])] = mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + 192 len ceil32(mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + 160])]
        if ceil32(mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + 160]) > mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + 160]:
            mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + baseURI.length + stor12[arg1].length + mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + 160] + 256] = 0
        return Array(len=mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + 160], data=mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + baseURI.length + stor12[arg1].length + 256 len ceil32(mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + 160])]), 
    if not arg1:
        mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + 256 len ceil32(baseURI.length)] = mem[ceil32(stor12[arg1].length) + 160 len ceil32(baseURI.length)]
        var50001 = ceil32(baseURI.length)
        mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256] = '0'
        mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + baseURI.length + 257] = 32
        mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + baseURI.length + 289] = mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + 224]
        mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + baseURI.length + 321 len ceil32(mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + 224])] = mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + 256 len ceil32(mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + 224])]
        if ceil32(mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + 224]) > mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + 224]:
            mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + baseURI.length + mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + 224] + 321] = 0
        return Array(len=mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + 224], data=mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + baseURI.length + 321 len ceil32(mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + 224])]), 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    if s:
        mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + 192 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < s
        mem[t + ceil32(stor12[arg1].length) + ceil32(baseURI.length) + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224 len ceil32(baseURI.length)] = mem[ceil32(stor12[arg1].length) + 160 len ceil32(baseURI.length)]
    if ceil32(baseURI.length) > baseURI.length:
        mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224] = 0
    mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224 len ceil32(s)] = mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + 192 len ceil32(s)]
    mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + s + 224] = 32
    mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + s + 256] = mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]
    mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + s + 288 len ceil32(mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])] = mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224 len ceil32(mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])]
    if ceil32(mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) <= mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]:
        return Array(len=mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192], data=mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + s + 288 len ceil32(mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])]), 
    mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + s + mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] + 288] = 0
    return 32, mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + s + 256 len ceil32(mem[ceil32(stor12[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) + 32], 
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stor8.length
    idx = 288
    s = 0
    while stor[(5 * arg1) + ('name', 'stor8', 8) + 4].length + 256 > idx:
        mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor8', 8) + 4)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require stor3[stor8[arg1].field_256]
    if not stor3[stor8[arg1].field_256]:
        revert with 0, 'ERC721: approved query for nonexistent token'
    require approved[stor8[arg1].field_256] == this.address
    if bool(stor6[stor8[arg1].field_256]) != 1:
        revert with 0, 'Not for Sale'
    require arg1 < stor8.length
    if bool(stor8[arg1].field_768) != 1:
        revert with 0, 'Not for Sale'
    require arg1 < stor8.length
    if msg.value < stor8[arg1].field_512:
        revert with 0, 'Not enough amount to buy'
    if not msg.value:
        if 0 > msg.value:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stor3[stor8[arg1].field_256]:
            revert with 0, 
                        32,
                        41,
                        0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(stor[(5 * arg1) + ('name', 'stor8', 8) + 4].length) + 361 len 23] >> 72,
                        0
        require stor3[stor8[arg1].field_256] - 1 < tokenByIndex.length
        call tokenByIndex[stor3[stor8[arg1].field_256] - 1].field_256 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call ownerContract with:
             gas 2300 wei
    else:
        require msg.value
        if 4 * 10^18 * msg.value / msg.value != 4 * 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if 4 * 10^18 * msg.value / 100 * 10^18 > msg.value:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stor3[stor8[arg1].field_256]:
            revert with 0, 
                        32,
                        41,
                        0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(stor[(5 * arg1) + ('name', 'stor8', 8) + 4].length) + 361 len 23] >> 72,
                        0
        require stor3[stor8[arg1].field_256] - 1 < tokenByIndex.length
        call tokenByIndex[stor3[stor8[arg1].field_256] - 1].field_256 with:
           value msg.value - (4 * 10^18 * msg.value / 100 * 10^18) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call ownerContract with:
           value 4 * 10^18 * msg.value / 100 * 10^18 wei
             gas 2300 * is_zero(value) wei
    if not stor3[stor8[arg1].field_256]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(stor[(5 * arg1) + ('name', 'stor8', 8) + 4].length) + 457 len 23] >> 72,
                    0
    require stor3[stor8[arg1].field_256] - 1 < tokenByIndex.length
    if not stor3[stor8[arg1].field_256]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not stor3[stor8[arg1].field_256]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(stor[(5 * arg1) + ('name', 'stor8', 8) + 4].length) + 553 len 23] >> 72,
                    0
    require stor3[stor8[arg1].field_256] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[stor8[arg1].field_256] - 1].field_256 != msg.sender:
        if not stor3[stor8[arg1].field_256]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[stor8[arg1].field_256] != msg.sender:
            if not stor5[stor2[stor3[stor8[arg1].field_256] - 1].field_256][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not stor3[stor8[arg1].field_256]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(stor[(5 * arg1) + ('name', 'stor8', 8) + 4].length) + 649 len 23] >> 72,
                    0
    require stor3[stor8[arg1].field_256] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[stor8[arg1].field_256] - 1].field_256 != tokenByIndex[stor3[stor8[arg1].field_256] - 1].field_256:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not msg.sender:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[stor8[arg1].field_256] = 0
    if not stor3[stor8[arg1].field_256]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(stor[(5 * arg1) + ('name', 'stor8', 8) + 4].length) + 745 len 23] >> 72,
                    0
    require stor3[stor8[arg1].field_256] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor3[stor8[arg1].field_256] - 1].field_256, 0, stor8[arg1].field_256);
    if tokenOfOwnerByIndex[stor2[stor3[stor8[arg1].field_256] - 1].field_256][1][stor8[arg1].field_256]:
        require tokenOfOwnerByIndex[stor2[stor3[stor8[arg1].field_256] - 1].field_256] - 1 < tokenOfOwnerByIndex[stor2[stor3[stor8[arg1].field_256] - 1].field_256]
        require tokenOfOwnerByIndex[stor2[stor3[stor8[arg1].field_256] - 1].field_256][1][stor8[arg1].field_256] - 1 < tokenOfOwnerByIndex[stor2[stor3[stor8[arg1].field_256] - 1].field_256]
        tokenOfOwnerByIndex[stor2[stor3[stor8[arg1].field_256] - 1].field_256][tokenOfOwnerByIndex[stor2[stor3[stor8[arg1].field_256] - 1].field_256][1][stor8[arg1].field_256]] = tokenOfOwnerByIndex[stor2[stor3[stor8[arg1].field_256] - 1].field_256][tokenOfOwnerByIndex[stor2[stor3[stor8[arg1].field_256] - 1].field_256]]
        tokenOfOwnerByIndex[stor2[stor3[stor8[arg1].field_256] - 1].field_256][1][tokenOfOwnerByIndex[stor2[stor3[stor8[arg1].field_256] - 1].field_256][tokenOfOwnerByIndex[stor2[stor3[stor8[arg1].field_256] - 1].field_256]]] = tokenOfOwnerByIndex[stor2[stor3[stor8[arg1].field_256] - 1].field_256][1][stor8[arg1].field_256]
        require tokenOfOwnerByIndex[stor2[stor3[stor8[arg1].field_256] - 1].field_256]
        tokenOfOwnerByIndex[stor2[stor3[stor8[arg1].field_256] - 1].field_256][tokenOfOwnerByIndex[stor2[stor3[stor8[arg1].field_256] - 1].field_256]] = 0
        tokenOfOwnerByIndex[stor2[stor3[stor8[arg1].field_256] - 1].field_256]--
        tokenOfOwnerByIndex[stor2[stor3[stor8[arg1].field_256] - 1].field_256][1][stor8[arg1].field_256] = 0
    if not tokenOfOwnerByIndex[address(msg.sender)][1][stor8[arg1].field_256]:
        tokenOfOwnerByIndex[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor8[arg1].field_256
        tokenOfOwnerByIndex[address(msg.sender)][1][stor8[arg1].field_256] = tokenOfOwnerByIndex[address(msg.sender)]
    if stor3[stor8[arg1].field_256]:
        require stor3[stor8[arg1].field_256] - 1 < tokenByIndex.length
        tokenByIndex[stor3[stor8[arg1].field_256] - 1].field_256 = msg.sender
        tokenByIndex[stor3[stor8[arg1].field_256] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = stor8[arg1].field_256
        tokenByIndex[tokenByIndex.length].field_256 = msg.sender
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor3[stor8[arg1].field_256] = tokenByIndex.length
    stor6[stor8[arg1].field_256] = 0
    emit Transfer(tokenByIndex[stor3[stor8[arg1].field_256] - 1].field_256, msg.sender, stor8[arg1].field_256);
    stor6[stor8[arg1].field_256] = 0
    require arg1 < stor8.length
    stor8[arg1].field_768 = 0
    emit Sold(msg.sender, stor8[arg1].field_256, msg.value);
}



}
