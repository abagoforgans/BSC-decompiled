contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor7;
array of uint256 tokenByIndex;
mapping of uint256 stor9;
uint8 stor10; offset 160
address owner;
array of uint256 stor11;
mapping of struct stor12;
mapping of struct stor13;
mapping of struct stor14;
mapping of struct stor15;
mapping of struct stor16;
mapping of struct stor17;
mapping of struct stor18;
mapping of uint8 stor19;
uint256 sub_6a886782;
uint256 sub_fd1d29e2;
uint256 sub_028ccea8;
uint256 sub_a849d24b;
uint256 sub_303d36ac;
mapping of uint256 sub_27b76a70;
mapping of address requestIdToSender;
mapping of uint256 sub_9bef9200;
mapping of uint256 sub_a75ecd8f;
mapping of uint256 sub_02906ee7;
mapping of uint256 sub_7562ebe8;
uint256 sub_89de38c4;
address sub_002a61b8Address;
address marketplaceAddress;
address stor34;
uint256 stor35;
uint256 randomResult;
uint256 stor38;
mapping of address originalMinter;
mapping of struct stor99;
uint256 stor6DE7;
uint256 storF5B6;

function sub_002a61b8(?) {
    return sub_002a61b8Address
}

function sub_028ccea8(?) {
    return sub_028ccea8
}

function sub_02906ee7(?) {
    require calldata.size - 4 >= 32
    return sub_02906ee7[arg1]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function requestIdToSender(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return requestIdToSender[arg1]
}

function sub_27b76a70(?) {
    require calldata.size - 4 >= 32
    return sub_27b76a70[arg1]
}

function originalMinter(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, 'Nonexistent token'
    return originalMinter[arg1]
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function sub_303d36ac(?) {
    return sub_303d36ac
}

function randomResult() {
    return randomResult
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function sub_6a886782(?) {
    return sub_6a886782
}

function sub_6be88980(?) {
    require calldata.size - 4 >= 32
    return sub_7562ebe8[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function sub_7562ebe8(?) {
    require calldata.size - 4 >= 32
    return sub_7562ebe8[arg1]
}

function sub_89de38c4(?) {
    return sub_89de38c4
}

function owner() {
    return owner
}

function sub_9bef9200(?) {
    require calldata.size - 4 >= 32
    return sub_9bef9200[arg1]
}

function sub_a75ecd8f(?) {
    require calldata.size - 4 >= 32
    return sub_a75ecd8f[arg1]
}

function sub_a849d24b(?) {
    return sub_a849d24b
}

function marketplaceAddress() {
    return marketplaceAddress
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function sub_fd1d29e2(?) {
    return sub_fd1d29e2
}

function _fallback() payable {
    emit 0x75756668: msg.sender, msg.value
}

function startMinting() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10 = 1
}

function sub_fcf49f73(?) {
    require calldata.size - 4 >= 64
    if not arg2:
        revert with 0, 18
    return (arg1 % arg2)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_cc8a62d5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_002a61b8Address = address(arg1)
}

function setMarketplaceAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketplaceAddress = arg1
}

function sub_81adc294(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor19[address(arg1)] = uint8(bool(arg2))
}

function emergencyWithdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function withdrawERC20(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor5[stor2[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function getMyNFTs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(arg1)] > test266151307():
        revert with 0, 65
    if balanceOf[address(arg1)]:
        mem[128 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
    idx = 0
    s = 0
    while idx < stor38:
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 2
        if not ownerOf[idx + 1]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[idx + 1] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 1 > !idx:
            revert with 0, 17
        if s >= balanceOf[address(arg1)]:
            revert with 0, 50
        mem[(32 * s) + 128] = idx + 1
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    return Array(len=balanceOf[address(arg1)], data=mem[128 len 32 * balanceOf[address(arg1)]])
}

function setAssetsBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1.length <= 0:
        revert with 0, 'Empty value'
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            uint256(stor11[].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            stor11.length = 0
            idx = 0
            while (uint255(stor11.length) * 0.5) + 31 / 32 > idx:
                uint256(stor11[idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 0, 34
        if arg1.length:
            uint256(stor11[].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            stor11.length = 0
            idx = 0
            while stor11.length.field_1 % 128 + 31 / 32 > idx:
                uint256(stor11[idx].field_0) = 0
                idx = idx + 1
                continue 
}

function sub_1c85eeb7(?) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor14[arg1].field_0):
        if bool(stor14[arg1].field_0) == uint255(uint256(stor14[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor14[arg1][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor14[arg1].field_0) = 0
            idx = 0
            while (uint255(uint256(stor14[arg1].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor14[arg1][idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor14[arg1].field_0) == stor14[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor14[arg1][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor14[arg1].field_0) = 0
            idx = 0
            while stor14[arg1].field_1 % 128 + 31 / 32 > idx:
                uint256(stor14[arg1][idx].field_0) = 0
                idx = idx + 1
                continue 
}

function sub_74092070(?) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor18[arg1].field_0):
        if bool(stor18[arg1].field_0) == uint255(uint256(stor18[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor18[arg1][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor18[arg1].field_0) = 0
            idx = 0
            while (uint255(uint256(stor18[arg1].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor18[arg1][idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor18[arg1][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor18[arg1].field_0) = 0
            idx = 0
            while stor18[arg1].field_1 % 128 + 31 / 32 > idx:
                uint256(stor18[arg1][idx].field_0) = 0
                idx = idx + 1
                continue 
}

function sub_cd1f0ec2(?) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor15[arg1].field_0):
        if bool(stor15[arg1].field_0) == uint255(uint256(stor15[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor15[arg1][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor15[arg1].field_0) = 0
            idx = 0
            while (uint255(uint256(stor15[arg1].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor15[arg1][idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor15[arg1].field_0) == stor15[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor15[arg1][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor15[arg1].field_0) = 0
            idx = 0
            while stor15[arg1].field_1 % 128 + 31 / 32 > idx:
                uint256(stor15[arg1][idx].field_0) = 0
                idx = idx + 1
                continue 
}

function sub_ce8a0d7e(?) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor16[arg1].field_0):
        if bool(stor16[arg1].field_0) == uint255(uint256(stor16[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor16[arg1][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor16[arg1].field_0) = 0
            idx = 0
            while (uint255(uint256(stor16[arg1].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor16[arg1][idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor16[arg1].field_0) == stor16[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor16[arg1][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor16[arg1].field_0) = 0
            idx = 0
            while stor16[arg1].field_1 % 128 + 31 / 32 > idx:
                uint256(stor16[arg1][idx].field_0) = 0
                idx = idx + 1
                continue 
}

function sub_dd936378(?) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor17[arg1].field_0):
        if bool(stor17[arg1].field_0) == uint255(uint256(stor17[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor17[arg1][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor17[arg1].field_0) = 0
            idx = 0
            while (uint255(uint256(stor17[arg1].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor17[arg1][idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor17[arg1].field_0) == stor17[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor17[arg1][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor17[arg1].field_0) = 0
            idx = 0
            while stor17[arg1].field_1 % 128 + 31 / 32 > idx:
                uint256(stor17[arg1][idx].field_0) = 0
                idx = idx + 1
                continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function sub_11564f5d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require stor19[msg.sender]
    requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))] = address(arg1)
    sub_02906ee7[stor35][sha3(stor35, 0, msg.sender, address(arg1))] = 4
    storF5B6 = sha3(stor35, sha3(stor35, 0, msg.sender, address(arg1)))
    randomResult = sha3(block.difficulty, block.timestamp)
    emit 0xe9a9868f: sha3(block.difficulty, block.timestamp)
    sub_9bef9200[stor35][sha3(stor35, 0, msg.sender, address(arg1))] = randomResult
    stor38++
    if not requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))]:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor38]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor38] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor38
    if requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))]:
        if requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))]:
            if not requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))]:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[stor26[stor35][sha3(stor35, 0, msg.sender, address(arg1))]][stor3[stor26[stor35][sha3(stor35, 0, msg.sender, address(arg1))]]] = stor38
            stor7[stor38] = balanceOf[stor26[stor35][sha3(stor35, 0, msg.sender, address(arg1))]]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[stor38] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[stor38]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor38]
        stor9[stor38] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[stor26[stor35][sha3(stor35, 0, msg.sender, address(arg1))]] > -2:
        revert with 0, 17
    balanceOf[stor26[stor35][sha3(stor35, 0, msg.sender, address(arg1))]]++
    ownerOf[stor38] = requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))]
    emit Transfer(0, requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))], stor38);
    originalMinter[stor38] = requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))]
    if not sub_02906ee7[stor35][sha3(stor35, 0, msg.sender, address(arg1))]:
        if not sub_6a886782:
            revert with 0, 18
        sub_27b76a70[stor38] = randomResult % sub_6a886782
        sub_7562ebe8[stor38] = 0
    else:
        if 1 == sub_02906ee7[stor35][sha3(stor35, 0, msg.sender, address(arg1))]:
            if not sub_fd1d29e2:
                revert with 0, 18
            sub_27b76a70[stor38] = randomResult % sub_fd1d29e2
            sub_7562ebe8[stor38] = 1
        else:
            if 2 == sub_02906ee7[stor35][sha3(stor35, 0, msg.sender, address(arg1))]:
                if not sub_028ccea8:
                    revert with 0, 18
                sub_27b76a70[stor38] = randomResult % sub_028ccea8
                sub_7562ebe8[stor38] = 2
            else:
                if sub_02906ee7[stor35][sha3(stor35, 0, msg.sender, address(arg1))] != 3:
                    if not sub_303d36ac:
                        revert with 0, 18
                    sub_27b76a70[stor38] = randomResult % sub_303d36ac
                    sub_7562ebe8[stor38] = 4
                else:
                    if not sub_a849d24b:
                        revert with 0, 18
                    sub_27b76a70[stor38] = randomResult % sub_a849d24b
                    sub_7562ebe8[stor38] = 3
    if msg.sender == marketplaceAddress:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][stor33] = 1
    emit ApprovalForAll(1, msg.sender, marketplaceAddress);
    emit TokensMinted(stor38);
    return sha3(stor35, sha3(stor35, 0, msg.sender, address(arg1)))
}

function sub_24575a74(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require stor19[msg.sender]
    requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))] = address(arg1)
    sub_02906ee7[stor35][sha3(stor35, 0, msg.sender, address(arg1))] = 0
    storF5B6 = sha3(stor35, sha3(stor35, 0, msg.sender, address(arg1)))
    randomResult = sha3(block.difficulty, block.timestamp)
    emit 0xe9a9868f: sha3(block.difficulty, block.timestamp)
    sub_9bef9200[stor35][sha3(stor35, 0, msg.sender, address(arg1))] = randomResult
    stor38++
    if not requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))]:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor38]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor38] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor38
    if requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))]:
        if requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))]:
            if not requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))]:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[stor26[stor35][sha3(stor35, 0, msg.sender, address(arg1))]][stor3[stor26[stor35][sha3(stor35, 0, msg.sender, address(arg1))]]] = stor38
            stor7[stor38] = balanceOf[stor26[stor35][sha3(stor35, 0, msg.sender, address(arg1))]]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[stor38] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[stor38]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor38]
        stor9[stor38] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[stor26[stor35][sha3(stor35, 0, msg.sender, address(arg1))]] > -2:
        revert with 0, 17
    balanceOf[stor26[stor35][sha3(stor35, 0, msg.sender, address(arg1))]]++
    ownerOf[stor38] = requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))]
    emit Transfer(0, requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))], stor38);
    originalMinter[stor38] = requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))]
    if not sub_02906ee7[stor35][sha3(stor35, 0, msg.sender, address(arg1))]:
        if not sub_6a886782:
            revert with 0, 18
        sub_27b76a70[stor38] = randomResult % sub_6a886782
        sub_7562ebe8[stor38] = 0
    else:
        if 1 == sub_02906ee7[stor35][sha3(stor35, 0, msg.sender, address(arg1))]:
            if not sub_fd1d29e2:
                revert with 0, 18
            sub_27b76a70[stor38] = randomResult % sub_fd1d29e2
            sub_7562ebe8[stor38] = 1
        else:
            if 2 == sub_02906ee7[stor35][sha3(stor35, 0, msg.sender, address(arg1))]:
                if not sub_028ccea8:
                    revert with 0, 18
                sub_27b76a70[stor38] = randomResult % sub_028ccea8
                sub_7562ebe8[stor38] = 2
            else:
                if sub_02906ee7[stor35][sha3(stor35, 0, msg.sender, address(arg1))] != 3:
                    if not sub_303d36ac:
                        revert with 0, 18
                    sub_27b76a70[stor38] = randomResult % sub_303d36ac
                    sub_7562ebe8[stor38] = 4
                else:
                    if not sub_a849d24b:
                        revert with 0, 18
                    sub_27b76a70[stor38] = randomResult % sub_a849d24b
                    sub_7562ebe8[stor38] = 3
    if msg.sender == marketplaceAddress:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][stor33] = 1
    emit ApprovalForAll(1, msg.sender, marketplaceAddress);
    emit TokensMinted(stor38);
    return sha3(stor35, sha3(stor35, 0, msg.sender, address(arg1)))
}

function sub_bc6c786f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require stor19[msg.sender]
    requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))] = address(arg1)
    sub_02906ee7[stor35][sha3(stor35, 0, msg.sender, address(arg1))] = 2
    storF5B6 = sha3(stor35, sha3(stor35, 0, msg.sender, address(arg1)))
    randomResult = sha3(block.difficulty, block.timestamp)
    emit 0xe9a9868f: sha3(block.difficulty, block.timestamp)
    sub_9bef9200[stor35][sha3(stor35, 0, msg.sender, address(arg1))] = randomResult
    stor38++
    if not requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))]:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor38]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor38] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor38
    if requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))]:
        if requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))]:
            if not requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))]:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[stor26[stor35][sha3(stor35, 0, msg.sender, address(arg1))]][stor3[stor26[stor35][sha3(stor35, 0, msg.sender, address(arg1))]]] = stor38
            stor7[stor38] = balanceOf[stor26[stor35][sha3(stor35, 0, msg.sender, address(arg1))]]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[stor38] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[stor38]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor38]
        stor9[stor38] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[stor26[stor35][sha3(stor35, 0, msg.sender, address(arg1))]] > -2:
        revert with 0, 17
    balanceOf[stor26[stor35][sha3(stor35, 0, msg.sender, address(arg1))]]++
    ownerOf[stor38] = requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))]
    emit Transfer(0, requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))], stor38);
    originalMinter[stor38] = requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))]
    if not sub_02906ee7[stor35][sha3(stor35, 0, msg.sender, address(arg1))]:
        if not sub_6a886782:
            revert with 0, 18
        sub_27b76a70[stor38] = randomResult % sub_6a886782
        sub_7562ebe8[stor38] = 0
    else:
        if 1 == sub_02906ee7[stor35][sha3(stor35, 0, msg.sender, address(arg1))]:
            if not sub_fd1d29e2:
                revert with 0, 18
            sub_27b76a70[stor38] = randomResult % sub_fd1d29e2
            sub_7562ebe8[stor38] = 1
        else:
            if 2 == sub_02906ee7[stor35][sha3(stor35, 0, msg.sender, address(arg1))]:
                if not sub_028ccea8:
                    revert with 0, 18
                sub_27b76a70[stor38] = randomResult % sub_028ccea8
                sub_7562ebe8[stor38] = 2
            else:
                if sub_02906ee7[stor35][sha3(stor35, 0, msg.sender, address(arg1))] != 3:
                    if not sub_303d36ac:
                        revert with 0, 18
                    sub_27b76a70[stor38] = randomResult % sub_303d36ac
                    sub_7562ebe8[stor38] = 4
                else:
                    if not sub_a849d24b:
                        revert with 0, 18
                    sub_27b76a70[stor38] = randomResult % sub_a849d24b
                    sub_7562ebe8[stor38] = 3
    if msg.sender == marketplaceAddress:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][stor33] = 1
    emit ApprovalForAll(1, msg.sender, marketplaceAddress);
    emit TokensMinted(stor38);
    return sha3(stor35, sha3(stor35, 0, msg.sender, address(arg1)))
}

function sub_d69d61d8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require stor19[msg.sender]
    requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))] = address(arg1)
    sub_02906ee7[stor35][sha3(stor35, 0, msg.sender, address(arg1))] = 1
    storF5B6 = sha3(stor35, sha3(stor35, 0, msg.sender, address(arg1)))
    randomResult = sha3(block.difficulty, block.timestamp)
    emit 0xe9a9868f: sha3(block.difficulty, block.timestamp)
    sub_9bef9200[stor35][sha3(stor35, 0, msg.sender, address(arg1))] = randomResult
    stor38++
    if not requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))]:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor38]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor38] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor38
    if requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))]:
        if requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))]:
            if not requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))]:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[stor26[stor35][sha3(stor35, 0, msg.sender, address(arg1))]][stor3[stor26[stor35][sha3(stor35, 0, msg.sender, address(arg1))]]] = stor38
            stor7[stor38] = balanceOf[stor26[stor35][sha3(stor35, 0, msg.sender, address(arg1))]]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[stor38] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[stor38]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor38]
        stor9[stor38] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[stor26[stor35][sha3(stor35, 0, msg.sender, address(arg1))]] > -2:
        revert with 0, 17
    balanceOf[stor26[stor35][sha3(stor35, 0, msg.sender, address(arg1))]]++
    ownerOf[stor38] = requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))]
    emit Transfer(0, requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))], stor38);
    originalMinter[stor38] = requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))]
    if not sub_02906ee7[stor35][sha3(stor35, 0, msg.sender, address(arg1))]:
        if not sub_6a886782:
            revert with 0, 18
        sub_27b76a70[stor38] = randomResult % sub_6a886782
        sub_7562ebe8[stor38] = 0
    else:
        if 1 == sub_02906ee7[stor35][sha3(stor35, 0, msg.sender, address(arg1))]:
            if not sub_fd1d29e2:
                revert with 0, 18
            sub_27b76a70[stor38] = randomResult % sub_fd1d29e2
            sub_7562ebe8[stor38] = 1
        else:
            if 2 == sub_02906ee7[stor35][sha3(stor35, 0, msg.sender, address(arg1))]:
                if not sub_028ccea8:
                    revert with 0, 18
                sub_27b76a70[stor38] = randomResult % sub_028ccea8
                sub_7562ebe8[stor38] = 2
            else:
                if sub_02906ee7[stor35][sha3(stor35, 0, msg.sender, address(arg1))] != 3:
                    if not sub_303d36ac:
                        revert with 0, 18
                    sub_27b76a70[stor38] = randomResult % sub_303d36ac
                    sub_7562ebe8[stor38] = 4
                else:
                    if not sub_a849d24b:
                        revert with 0, 18
                    sub_27b76a70[stor38] = randomResult % sub_a849d24b
                    sub_7562ebe8[stor38] = 3
    if msg.sender == marketplaceAddress:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][stor33] = 1
    emit ApprovalForAll(1, msg.sender, marketplaceAddress);
    emit TokensMinted(stor38);
    return sha3(stor35, sha3(stor35, 0, msg.sender, address(arg1)))
}

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor0.length):
                if 31 < uint255(stor0.length) * 0.5:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor0.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor0[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        else:
            if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor0.length.field_1 % 128:
                if 31 < stor0.length.field_1 % 128:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor0[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[(uint255(stor0.length) * 0.5) + ceil32(uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor0.length):
            if 31 < uint255(stor0.length) * 0.5:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while (uint255(stor0.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor0[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    else:
        if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor0.length.field_1 % 128:
            if 31 < stor0.length.field_1 % 128:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor0[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    mem[ceil32(stor0.length.field_1 % 128) + 192 len ceil32(stor0.length.field_1 % 128)] = mem[128 len ceil32(stor0.length.field_1 % 128)]
    if ceil32(stor0.length.field_1 % 128) > stor0.length.field_1 % 128:
        mem[stor0.length.field_1 % 128 + ceil32(stor0.length.field_1 % 128) + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)], mem[(2 * ceil32(stor0.length.field_1 % 128)) + 192 len 2 * ceil32(stor0.length.field_1 % 128)]), 
}

function symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor1[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        else:
            if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor1.length.field_1 % 128:
                if 31 < stor1.length.field_1 % 128:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor1[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[(uint255(stor1.length) * 0.5) + ceil32(uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor1[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    else:
        if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor1.length.field_1 % 128:
            if 31 < stor1.length.field_1 % 128:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor1[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    mem[ceil32(stor1.length.field_1 % 128) + 192 len ceil32(stor1.length.field_1 % 128)] = mem[128 len ceil32(stor1.length.field_1 % 128)]
    if ceil32(stor1.length.field_1 % 128) > stor1.length.field_1 % 128:
        mem[stor1.length.field_1 % 128 + ceil32(stor1.length.field_1 % 128) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)], mem[(2 * ceil32(stor1.length.field_1 % 128)) + 192 len 2 * ceil32(stor1.length.field_1 % 128)]), 
}

function sub_864fec3b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require stor19[msg.sender]
    requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))] = address(arg1)
    sub_02906ee7[stor35][sha3(stor35, 0, msg.sender, address(arg1))] = 3
    storF5B6 = sha3(stor35, sha3(stor35, 0, msg.sender, address(arg1)))
    randomResult = sha3(block.difficulty, block.timestamp)
    emit 0xe9a9868f: sha3(block.difficulty, block.timestamp)
    sub_9bef9200[stor35][sha3(stor35, 0, msg.sender, address(arg1))] = randomResult
    stor38++
    if not requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))]:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor38]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor38] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor38
    if requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))]:
        if requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))]:
            if not requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))]:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[stor26[stor35][sha3(stor35, 0, msg.sender, address(arg1))]][stor3[stor26[stor35][sha3(stor35, 0, msg.sender, address(arg1))]]] = stor38
            stor7[stor38] = balanceOf[stor26[stor35][sha3(stor35, 0, msg.sender, address(arg1))]]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[stor38] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[stor38]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor38]
        stor9[stor38] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[stor26[stor35][sha3(stor35, 0, msg.sender, address(arg1))]] > -2:
        revert with 0, 17
    balanceOf[stor26[stor35][sha3(stor35, 0, msg.sender, address(arg1))]]++
    ownerOf[stor38] = requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))]
    emit Transfer(0, requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))], stor38);
    originalMinter[stor38] = requestIdToSender[stor35][sha3(stor35, 0, msg.sender, address(arg1))]
    if not sub_02906ee7[stor35][sha3(stor35, 0, msg.sender, address(arg1))]:
        if not sub_6a886782:
            revert with 0, 18
        sub_27b76a70[stor38] = randomResult % sub_6a886782
        sub_7562ebe8[stor38] = 0
    else:
        if 1 == sub_02906ee7[stor35][sha3(stor35, 0, msg.sender, address(arg1))]:
            if not sub_fd1d29e2:
                revert with 0, 18
            sub_27b76a70[stor38] = randomResult % sub_fd1d29e2
            sub_7562ebe8[stor38] = 1
        else:
            if 2 == sub_02906ee7[stor35][sha3(stor35, 0, msg.sender, address(arg1))]:
                if not sub_028ccea8:
                    revert with 0, 18
                sub_27b76a70[stor38] = randomResult % sub_028ccea8
                sub_7562ebe8[stor38] = 2
            else:
                if sub_02906ee7[stor35][sha3(stor35, 0, msg.sender, address(arg1))] != 3:
                    if not sub_303d36ac:
                        revert with 0, 18
                    sub_27b76a70[stor38] = randomResult % sub_303d36ac
                    sub_7562ebe8[stor38] = 4
                else:
                    if not sub_a849d24b:
                        revert with 0, 18
                    sub_27b76a70[stor38] = randomResult % sub_a849d24b
                    sub_7562ebe8[stor38] = 3
    if msg.sender == marketplaceAddress:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][stor33] = 1
    emit ApprovalForAll(1, msg.sender, marketplaceAddress);
    emit TokensMinted(stor38);
    stor6DE7 = sha3(stor35, sha3(stor35, 0, msg.sender, address(arg1)))
    return sha3(stor35, sha3(stor35, 0, msg.sender, address(arg1)))
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg1] != msg.sender:
            if not stor5[stor2[arg1]][address(msg.sender)]:
                revert with 0, 'Not owner nor approved'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg1] != msg.sender:
            if not stor5[stor2[arg1]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not stor34:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not msg.sender:
        stor9[arg1] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg1
    else:
        if stor34 != msg.sender:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(msg.sender)] < 1:
                revert with 0, 17
            if balanceOf[address(msg.sender)] - 1 != stor7[arg1]:
                tokenOfOwnerByIndex[address(msg.sender)][stor7[arg1]] = tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)] - 1]
                stor7[stor6[address(msg.sender)][stor3[address(msg.sender)] - 1]] = stor7[arg1]
            stor7[arg1] = 0
            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)] - 1] = 0
    if stor34:
        if stor34 != msg.sender:
            if not stor34:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[stor34][stor3[stor34]] = arg1
            stor7[arg1] = balanceOf[stor34]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg1] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg1]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg1]
        stor9[arg1] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[address(msg.sender)] < 1:
        revert with 0, 17
    balanceOf[address(msg.sender)]--
    if balanceOf[stor34] > -2:
        revert with 0, 17
    balanceOf[stor34]++
    ownerOf[arg1] = stor34
    emit Transfer(msg.sender, stor34, arg1);
    emit TokensBurned(arg1);
}

function sub_003dbe7e(?) {
    require calldata.size - 4 >= 32
    if bool(stor16[arg1].field_0):
        if bool(stor16[arg1].field_0) == uint255(uint256(stor16[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if bool(stor16[arg1].field_0):
            if bool(stor16[arg1].field_0) == uint255(uint256(stor16[arg1].field_0)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor16[arg1].field_0)):
                if 31 < uint255(uint256(stor16[arg1].field_0)) * 0.5:
                    mem[128] = uint256(stor16[arg1].field_0)
                    idx = 128
                    s = 0
                    while (uint255(uint256(stor16[arg1].field_0)) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor16[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor16[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor16[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor16[arg1].field_8)
        else:
            if bool(stor16[arg1].field_0) == stor16[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor16[arg1].field_1 % 128:
                if 31 < stor16[arg1].field_1 % 128:
                    mem[128] = uint256(stor16[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor16[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor16[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor16[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor16[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor16[arg1].field_8)
        mem[ceil32(uint255(uint256(stor16[arg1].field_0)) * 0.5) + 192 len ceil32(uint255(uint256(stor16[arg1].field_0)) * 0.5)] = mem[128 len ceil32(uint255(uint256(stor16[arg1].field_0)) * 0.5)]
        if ceil32(uint255(uint256(stor16[arg1].field_0)) * 0.5) > uint255(uint256(stor16[arg1].field_0)) * 0.5:
            mem[(uint255(uint256(stor16[arg1].field_0)) * 0.5) + ceil32(uint255(uint256(stor16[arg1].field_0)) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint256(stor16[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor16[arg1].field_0)) * 0.5)], mem[(2 * ceil32(uint255(uint256(stor16[arg1].field_0)) * 0.5)) + 192 len 2 * ceil32(uint255(uint256(stor16[arg1].field_0)) * 0.5)]), 
    if bool(stor16[arg1].field_0) == stor16[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor16[arg1].field_0):
        if bool(stor16[arg1].field_0) == uint255(uint256(stor16[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, uint256(stor16[arg1].field_0)):
            if 31 < uint255(uint256(stor16[arg1].field_0)) * 0.5:
                mem[128] = uint256(stor16[arg1].field_0)
                idx = 128
                s = 0
                while (uint255(uint256(stor16[arg1].field_0)) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor16[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16[arg1].field_0 % 128, data=mem[128 len ceil32(stor16[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor16[arg1].field_8)
    else:
        if bool(stor16[arg1].field_0) == stor16[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor16[arg1].field_1 % 128:
            if 31 < stor16[arg1].field_1 % 128:
                mem[128] = uint256(stor16[arg1].field_0)
                idx = 128
                s = 0
                while stor16[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor16[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16[arg1].field_0 % 128, data=mem[128 len ceil32(stor16[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor16[arg1].field_8)
    mem[ceil32(stor16[arg1].field_1 % 128) + 192 len ceil32(stor16[arg1].field_1 % 128)] = mem[128 len ceil32(stor16[arg1].field_1 % 128)]
    if ceil32(stor16[arg1].field_1 % 128) > stor16[arg1].field_1 % 128:
        mem[stor16[arg1].field_1 % 128 + ceil32(stor16[arg1].field_1 % 128) + 192] = 0
    return Array(len=stor16[arg1].field_0 % 128, data=mem[128 len ceil32(stor16[arg1].field_1 % 128)], mem[(2 * ceil32(stor16[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor16[arg1].field_1 % 128)]), 
}

function sub_082c5a80(?) {
    require calldata.size - 4 >= 32
    if bool(stor15[arg1].field_0):
        if bool(stor15[arg1].field_0) == uint255(uint256(stor15[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if bool(stor15[arg1].field_0):
            if bool(stor15[arg1].field_0) == uint255(uint256(stor15[arg1].field_0)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor15[arg1].field_0)):
                if 31 < uint255(uint256(stor15[arg1].field_0)) * 0.5:
                    mem[128] = uint256(stor15[arg1].field_0)
                    idx = 128
                    s = 0
                    while (uint255(uint256(stor15[arg1].field_0)) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor15[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor15[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor15[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor15[arg1].field_8)
        else:
            if bool(stor15[arg1].field_0) == stor15[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor15[arg1].field_1 % 128:
                if 31 < stor15[arg1].field_1 % 128:
                    mem[128] = uint256(stor15[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor15[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor15[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor15[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor15[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor15[arg1].field_8)
        mem[ceil32(uint255(uint256(stor15[arg1].field_0)) * 0.5) + 192 len ceil32(uint255(uint256(stor15[arg1].field_0)) * 0.5)] = mem[128 len ceil32(uint255(uint256(stor15[arg1].field_0)) * 0.5)]
        if ceil32(uint255(uint256(stor15[arg1].field_0)) * 0.5) > uint255(uint256(stor15[arg1].field_0)) * 0.5:
            mem[(uint255(uint256(stor15[arg1].field_0)) * 0.5) + ceil32(uint255(uint256(stor15[arg1].field_0)) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint256(stor15[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor15[arg1].field_0)) * 0.5)], mem[(2 * ceil32(uint255(uint256(stor15[arg1].field_0)) * 0.5)) + 192 len 2 * ceil32(uint255(uint256(stor15[arg1].field_0)) * 0.5)]), 
    if bool(stor15[arg1].field_0) == stor15[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor15[arg1].field_0):
        if bool(stor15[arg1].field_0) == uint255(uint256(stor15[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, uint256(stor15[arg1].field_0)):
            if 31 < uint255(uint256(stor15[arg1].field_0)) * 0.5:
                mem[128] = uint256(stor15[arg1].field_0)
                idx = 128
                s = 0
                while (uint255(uint256(stor15[arg1].field_0)) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor15[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15[arg1].field_0 % 128, data=mem[128 len ceil32(stor15[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor15[arg1].field_8)
    else:
        if bool(stor15[arg1].field_0) == stor15[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor15[arg1].field_1 % 128:
            if 31 < stor15[arg1].field_1 % 128:
                mem[128] = uint256(stor15[arg1].field_0)
                idx = 128
                s = 0
                while stor15[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor15[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15[arg1].field_0 % 128, data=mem[128 len ceil32(stor15[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor15[arg1].field_8)
    mem[ceil32(stor15[arg1].field_1 % 128) + 192 len ceil32(stor15[arg1].field_1 % 128)] = mem[128 len ceil32(stor15[arg1].field_1 % 128)]
    if ceil32(stor15[arg1].field_1 % 128) > stor15[arg1].field_1 % 128:
        mem[stor15[arg1].field_1 % 128 + ceil32(stor15[arg1].field_1 % 128) + 192] = 0
    return Array(len=stor15[arg1].field_0 % 128, data=mem[128 len ceil32(stor15[arg1].field_1 % 128)], mem[(2 * ceil32(stor15[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor15[arg1].field_1 % 128)]), 
}

function sub_168e8c35(?) {
    require calldata.size - 4 >= 32
    if bool(stor13[arg1].field_0):
        if bool(stor13[arg1].field_0) == uint255(uint256(stor13[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if bool(stor13[arg1].field_0):
            if bool(stor13[arg1].field_0) == uint255(uint256(stor13[arg1].field_0)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor13[arg1].field_0)):
                if 31 < uint255(uint256(stor13[arg1].field_0)) * 0.5:
                    mem[128] = uint256(stor13[arg1].field_0)
                    idx = 128
                    s = 0
                    while (uint255(uint256(stor13[arg1].field_0)) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor13[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor13[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor13[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor13[arg1].field_8)
        else:
            if bool(stor13[arg1].field_0) == stor13[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor13[arg1].field_1 % 128:
                if 31 < stor13[arg1].field_1 % 128:
                    mem[128] = uint256(stor13[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor13[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor13[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor13[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor13[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor13[arg1].field_8)
        mem[ceil32(uint255(uint256(stor13[arg1].field_0)) * 0.5) + 192 len ceil32(uint255(uint256(stor13[arg1].field_0)) * 0.5)] = mem[128 len ceil32(uint255(uint256(stor13[arg1].field_0)) * 0.5)]
        if ceil32(uint255(uint256(stor13[arg1].field_0)) * 0.5) > uint255(uint256(stor13[arg1].field_0)) * 0.5:
            mem[(uint255(uint256(stor13[arg1].field_0)) * 0.5) + ceil32(uint255(uint256(stor13[arg1].field_0)) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint256(stor13[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor13[arg1].field_0)) * 0.5)], mem[(2 * ceil32(uint255(uint256(stor13[arg1].field_0)) * 0.5)) + 192 len 2 * ceil32(uint255(uint256(stor13[arg1].field_0)) * 0.5)]), 
    if bool(stor13[arg1].field_0) == stor13[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor13[arg1].field_0):
        if bool(stor13[arg1].field_0) == uint255(uint256(stor13[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, uint256(stor13[arg1].field_0)):
            if 31 < uint255(uint256(stor13[arg1].field_0)) * 0.5:
                mem[128] = uint256(stor13[arg1].field_0)
                idx = 128
                s = 0
                while (uint255(uint256(stor13[arg1].field_0)) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor13[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13[arg1].field_0 % 128, data=mem[128 len ceil32(stor13[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor13[arg1].field_8)
    else:
        if bool(stor13[arg1].field_0) == stor13[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor13[arg1].field_1 % 128:
            if 31 < stor13[arg1].field_1 % 128:
                mem[128] = uint256(stor13[arg1].field_0)
                idx = 128
                s = 0
                while stor13[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor13[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13[arg1].field_0 % 128, data=mem[128 len ceil32(stor13[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor13[arg1].field_8)
    mem[ceil32(stor13[arg1].field_1 % 128) + 192 len ceil32(stor13[arg1].field_1 % 128)] = mem[128 len ceil32(stor13[arg1].field_1 % 128)]
    if ceil32(stor13[arg1].field_1 % 128) > stor13[arg1].field_1 % 128:
        mem[stor13[arg1].field_1 % 128 + ceil32(stor13[arg1].field_1 % 128) + 192] = 0
    return Array(len=stor13[arg1].field_0 % 128, data=mem[128 len ceil32(stor13[arg1].field_1 % 128)], mem[(2 * ceil32(stor13[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor13[arg1].field_1 % 128)]), 
}

function sub_5e36f6cf(?) {
    require calldata.size - 4 >= 32
    if bool(stor18[arg1].field_0):
        if bool(stor18[arg1].field_0) == uint255(uint256(stor18[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if bool(stor18[arg1].field_0):
            if bool(stor18[arg1].field_0) == uint255(uint256(stor18[arg1].field_0)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor18[arg1].field_0)):
                if 31 < uint255(uint256(stor18[arg1].field_0)) * 0.5:
                    mem[128] = uint256(stor18[arg1].field_0)
                    idx = 128
                    s = 0
                    while (uint255(uint256(stor18[arg1].field_0)) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor18[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor18[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor18[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor18[arg1].field_8)
        else:
            if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor18[arg1].field_1 % 128:
                if 31 < stor18[arg1].field_1 % 128:
                    mem[128] = uint256(stor18[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor18[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor18[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor18[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor18[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor18[arg1].field_8)
        mem[ceil32(uint255(uint256(stor18[arg1].field_0)) * 0.5) + 192 len ceil32(uint255(uint256(stor18[arg1].field_0)) * 0.5)] = mem[128 len ceil32(uint255(uint256(stor18[arg1].field_0)) * 0.5)]
        if ceil32(uint255(uint256(stor18[arg1].field_0)) * 0.5) > uint255(uint256(stor18[arg1].field_0)) * 0.5:
            mem[(uint255(uint256(stor18[arg1].field_0)) * 0.5) + ceil32(uint255(uint256(stor18[arg1].field_0)) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint256(stor18[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor18[arg1].field_0)) * 0.5)], mem[(2 * ceil32(uint255(uint256(stor18[arg1].field_0)) * 0.5)) + 192 len 2 * ceil32(uint255(uint256(stor18[arg1].field_0)) * 0.5)]), 
    if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor18[arg1].field_0):
        if bool(stor18[arg1].field_0) == uint255(uint256(stor18[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, uint256(stor18[arg1].field_0)):
            if 31 < uint255(uint256(stor18[arg1].field_0)) * 0.5:
                mem[128] = uint256(stor18[arg1].field_0)
                idx = 128
                s = 0
                while (uint255(uint256(stor18[arg1].field_0)) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor18[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor18[arg1].field_0 % 128, data=mem[128 len ceil32(stor18[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor18[arg1].field_8)
    else:
        if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor18[arg1].field_1 % 128:
            if 31 < stor18[arg1].field_1 % 128:
                mem[128] = uint256(stor18[arg1].field_0)
                idx = 128
                s = 0
                while stor18[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor18[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor18[arg1].field_0 % 128, data=mem[128 len ceil32(stor18[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor18[arg1].field_8)
    mem[ceil32(stor18[arg1].field_1 % 128) + 192 len ceil32(stor18[arg1].field_1 % 128)] = mem[128 len ceil32(stor18[arg1].field_1 % 128)]
    if ceil32(stor18[arg1].field_1 % 128) > stor18[arg1].field_1 % 128:
        mem[stor18[arg1].field_1 % 128 + ceil32(stor18[arg1].field_1 % 128) + 192] = 0
    return Array(len=stor18[arg1].field_0 % 128, data=mem[128 len ceil32(stor18[arg1].field_1 % 128)], mem[(2 * ceil32(stor18[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor18[arg1].field_1 % 128)]), 
}

function sub_cb7c5878(?) {
    require calldata.size - 4 >= 32
    if bool(stor17[arg1].field_0):
        if bool(stor17[arg1].field_0) == uint255(uint256(stor17[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if bool(stor17[arg1].field_0):
            if bool(stor17[arg1].field_0) == uint255(uint256(stor17[arg1].field_0)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor17[arg1].field_0)):
                if 31 < uint255(uint256(stor17[arg1].field_0)) * 0.5:
                    mem[128] = uint256(stor17[arg1].field_0)
                    idx = 128
                    s = 0
                    while (uint255(uint256(stor17[arg1].field_0)) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor17[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor17[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor17[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor17[arg1].field_8)
        else:
            if bool(stor17[arg1].field_0) == stor17[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor17[arg1].field_1 % 128:
                if 31 < stor17[arg1].field_1 % 128:
                    mem[128] = uint256(stor17[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor17[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor17[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor17[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor17[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor17[arg1].field_8)
        mem[ceil32(uint255(uint256(stor17[arg1].field_0)) * 0.5) + 192 len ceil32(uint255(uint256(stor17[arg1].field_0)) * 0.5)] = mem[128 len ceil32(uint255(uint256(stor17[arg1].field_0)) * 0.5)]
        if ceil32(uint255(uint256(stor17[arg1].field_0)) * 0.5) > uint255(uint256(stor17[arg1].field_0)) * 0.5:
            mem[(uint255(uint256(stor17[arg1].field_0)) * 0.5) + ceil32(uint255(uint256(stor17[arg1].field_0)) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint256(stor17[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor17[arg1].field_0)) * 0.5)], mem[(2 * ceil32(uint255(uint256(stor17[arg1].field_0)) * 0.5)) + 192 len 2 * ceil32(uint255(uint256(stor17[arg1].field_0)) * 0.5)]), 
    if bool(stor17[arg1].field_0) == stor17[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor17[arg1].field_0):
        if bool(stor17[arg1].field_0) == uint255(uint256(stor17[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, uint256(stor17[arg1].field_0)):
            if 31 < uint255(uint256(stor17[arg1].field_0)) * 0.5:
                mem[128] = uint256(stor17[arg1].field_0)
                idx = 128
                s = 0
                while (uint255(uint256(stor17[arg1].field_0)) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor17[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor17[arg1].field_0 % 128, data=mem[128 len ceil32(stor17[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor17[arg1].field_8)
    else:
        if bool(stor17[arg1].field_0) == stor17[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor17[arg1].field_1 % 128:
            if 31 < stor17[arg1].field_1 % 128:
                mem[128] = uint256(stor17[arg1].field_0)
                idx = 128
                s = 0
                while stor17[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor17[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor17[arg1].field_0 % 128, data=mem[128 len ceil32(stor17[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor17[arg1].field_8)
    mem[ceil32(stor17[arg1].field_1 % 128) + 192 len ceil32(stor17[arg1].field_1 % 128)] = mem[128 len ceil32(stor17[arg1].field_1 % 128)]
    if ceil32(stor17[arg1].field_1 % 128) > stor17[arg1].field_1 % 128:
        mem[stor17[arg1].field_1 % 128 + ceil32(stor17[arg1].field_1 % 128) + 192] = 0
    return Array(len=stor17[arg1].field_0 % 128, data=mem[128 len ceil32(stor17[arg1].field_1 % 128)], mem[(2 * ceil32(stor17[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor17[arg1].field_1 % 128)]), 
}

function sub_edd87baf(?) {
    require calldata.size - 4 >= 32
    if bool(stor14[arg1].field_0):
        if bool(stor14[arg1].field_0) == uint255(uint256(stor14[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if bool(stor14[arg1].field_0):
            if bool(stor14[arg1].field_0) == uint255(uint256(stor14[arg1].field_0)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor14[arg1].field_0)):
                if 31 < uint255(uint256(stor14[arg1].field_0)) * 0.5:
                    mem[128] = uint256(stor14[arg1].field_0)
                    idx = 128
                    s = 0
                    while (uint255(uint256(stor14[arg1].field_0)) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor14[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor14[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor14[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor14[arg1].field_8)
        else:
            if bool(stor14[arg1].field_0) == stor14[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor14[arg1].field_1 % 128:
                if 31 < stor14[arg1].field_1 % 128:
                    mem[128] = uint256(stor14[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor14[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor14[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor14[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor14[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor14[arg1].field_8)
        mem[ceil32(uint255(uint256(stor14[arg1].field_0)) * 0.5) + 192 len ceil32(uint255(uint256(stor14[arg1].field_0)) * 0.5)] = mem[128 len ceil32(uint255(uint256(stor14[arg1].field_0)) * 0.5)]
        if ceil32(uint255(uint256(stor14[arg1].field_0)) * 0.5) > uint255(uint256(stor14[arg1].field_0)) * 0.5:
            mem[(uint255(uint256(stor14[arg1].field_0)) * 0.5) + ceil32(uint255(uint256(stor14[arg1].field_0)) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint256(stor14[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor14[arg1].field_0)) * 0.5)], mem[(2 * ceil32(uint255(uint256(stor14[arg1].field_0)) * 0.5)) + 192 len 2 * ceil32(uint255(uint256(stor14[arg1].field_0)) * 0.5)]), 
    if bool(stor14[arg1].field_0) == stor14[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor14[arg1].field_0):
        if bool(stor14[arg1].field_0) == uint255(uint256(stor14[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, uint256(stor14[arg1].field_0)):
            if 31 < uint255(uint256(stor14[arg1].field_0)) * 0.5:
                mem[128] = uint256(stor14[arg1].field_0)
                idx = 128
                s = 0
                while (uint255(uint256(stor14[arg1].field_0)) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor14[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14[arg1].field_0 % 128, data=mem[128 len ceil32(stor14[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor14[arg1].field_8)
    else:
        if bool(stor14[arg1].field_0) == stor14[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor14[arg1].field_1 % 128:
            if 31 < stor14[arg1].field_1 % 128:
                mem[128] = uint256(stor14[arg1].field_0)
                idx = 128
                s = 0
                while stor14[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor14[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14[arg1].field_0 % 128, data=mem[128 len ceil32(stor14[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor14[arg1].field_8)
    mem[ceil32(stor14[arg1].field_1 % 128) + 192 len ceil32(stor14[arg1].field_1 % 128)] = mem[128 len ceil32(stor14[arg1].field_1 % 128)]
    if ceil32(stor14[arg1].field_1 % 128) > stor14[arg1].field_1 % 128:
        mem[stor14[arg1].field_1 % 128 + ceil32(stor14[arg1].field_1 % 128) + 192] = 0
    return Array(len=stor14[arg1].field_0 % 128, data=mem[128 len ceil32(stor14[arg1].field_1 % 128)], mem[(2 * ceil32(stor14[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor14[arg1].field_1 % 128)]), 
}

function sub_a6232fe9(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0):
        if bool(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) == uint255(uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0)) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) = 0
            idx = 0
            while (uint255(uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256][idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) == stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) = 0
            idx = 0
            while stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_1 % 128 + 31 / 32 > idx:
                uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256][idx].field_0) = 0
                idx = idx + 1
                continue 
    if bool(stor15[stor21].field_0):
        if bool(stor15[stor21].field_0) == uint255(uint256(stor15[stor21].field_0)) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor15[stor21][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor15[stor21].field_0) = 0
            idx = 0
            while (uint255(uint256(stor15[stor21].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor15[stor21][idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor15[stor21].field_0) == stor15[stor21].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor15[stor21][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor15[stor21].field_0) = 0
            idx = 0
            while stor15[stor21].field_1 % 128 + 31 / 32 > idx:
                uint256(stor15[stor21][idx].field_0) = 0
                idx = idx + 1
                continue 
    if 1 > !sub_fd1d29e2:
        revert with 0, 17
    sub_fd1d29e2++
}

function sub_abc1d7fa(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0):
        if bool(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) == uint255(uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0)) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) = 0
            idx = 0
            while (uint255(uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256][idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) == stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) = 0
            idx = 0
            while stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_1 % 128 + 31 / 32 > idx:
                uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256][idx].field_0) = 0
                idx = idx + 1
                continue 
    if bool(stor18[stor24].field_0):
        if bool(stor18[stor24].field_0) == uint255(uint256(stor18[stor24].field_0)) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor18[stor24][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor18[stor24].field_0) = 0
            idx = 0
            while (uint255(uint256(stor18[stor24].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor18[stor24][idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor18[stor24].field_0) == stor18[stor24].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor18[stor24][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor18[stor24].field_0) = 0
            idx = 0
            while stor18[stor24].field_1 % 128 + 31 / 32 > idx:
                uint256(stor18[stor24][idx].field_0) = 0
                idx = idx + 1
                continue 
    if 1 > !sub_303d36ac:
        revert with 0, 17
    sub_303d36ac++
}

function sub_e3b81c31(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0):
        if bool(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) == uint255(uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0)) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) = 0
            idx = 0
            while (uint255(uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256][idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) == stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) = 0
            idx = 0
            while stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_1 % 128 + 31 / 32 > idx:
                uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256][idx].field_0) = 0
                idx = idx + 1
                continue 
    if bool(stor14[stor20].field_0):
        if bool(stor14[stor20].field_0) == uint255(uint256(stor14[stor20].field_0)) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor14[stor20][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor14[stor20].field_0) = 0
            idx = 0
            while (uint255(uint256(stor14[stor20].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor14[stor20][idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor14[stor20].field_0) == stor14[stor20].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor14[stor20][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor14[stor20].field_0) = 0
            idx = 0
            while stor14[stor20].field_1 % 128 + 31 / 32 > idx:
                uint256(stor14[stor20][idx].field_0) = 0
                idx = idx + 1
                continue 
    if 1 > !sub_6a886782:
        revert with 0, 17
    sub_6a886782++
}

function sub_f0db3343(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0):
        if bool(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) == uint255(uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0)) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) = 0
            idx = 0
            while (uint255(uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256][idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) == stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) = 0
            idx = 0
            while stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_1 % 128 + 31 / 32 > idx:
                uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256][idx].field_0) = 0
                idx = idx + 1
                continue 
    if bool(stor16[stor22].field_0):
        if bool(stor16[stor22].field_0) == uint255(uint256(stor16[stor22].field_0)) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor16[stor22][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor16[stor22].field_0) = 0
            idx = 0
            while (uint255(uint256(stor16[stor22].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor16[stor22][idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor16[stor22].field_0) == stor16[stor22].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor16[stor22][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor16[stor22].field_0) = 0
            idx = 0
            while stor16[stor22].field_1 % 128 + 31 / 32 > idx:
                uint256(stor16[stor22][idx].field_0) = 0
                idx = idx + 1
                continue 
    if 1 > !sub_028ccea8:
        revert with 0, 17
    sub_028ccea8++
}

function sub_f2ab8e0c(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0):
        if bool(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) == uint255(uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0)) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) = 0
            idx = 0
            while (uint255(uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256][idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) == stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) = 0
            idx = 0
            while stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_1 % 128 + 31 / 32 > idx:
                uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 12)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256][idx].field_0) = 0
                idx = idx + 1
                continue 
    if bool(stor17[stor23].field_0):
        if bool(stor17[stor23].field_0) == uint255(uint256(stor17[stor23].field_0)) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor17[stor23][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor17[stor23].field_0) = 0
            idx = 0
            while (uint255(uint256(stor17[stor23].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor17[stor23][idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor17[stor23].field_0) == stor17[stor23].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor17[stor23][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor17[stor23].field_0) = 0
            idx = 0
            while stor17[stor23].field_1 % 128 + 31 / 32 > idx:
                uint256(stor17[stor23][idx].field_0) = 0
                idx = idx + 1
                continue 
    if 1 > !sub_a849d24b:
        revert with 0, 17
    sub_a849d24b++
}

function sub_d29b492d(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if bool(stor12[arg1[all]].field_0):
        if bool(stor12[arg1[all]].field_0) == uint255(uint256(stor12[arg1[all]].field_0)) * 0.5 < 32:
            revert with 0, 34
        mem[64] = ceil32(ceil32(arg1.length)) + ceil32(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5) + 129
        mem[ceil32(ceil32(arg1.length)) + 97] = uint255(uint256(stor12[arg1[all]].field_0)) * 0.5
        if bool(stor12[arg1[all]].field_0):
            if bool(stor12[arg1[all]].field_0) == uint255(uint256(stor12[arg1[all]].field_0)) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, uint256(stor12[arg1[all]].field_0)):
                mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5) + 193 len ceil32(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5)]
                if ceil32(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5) > uint255(uint256(stor12[arg1[all]].field_0)) * 0.5:
                    mem[(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5) + ceil32(ceil32(arg1.length)) + ceil32(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5) + 193] = 0
                return Array(len=2 * Mask(256, -1, uint256(stor12[arg1[all]].field_0)), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5)], mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5)) + 193 len 2 * ceil32(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5)]), 
            if 31 >= uint255(uint256(stor12[arg1[all]].field_0)) * 0.5:
                mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor12[arg1[all]].field_8)
                mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5) + 193 len ceil32(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5)]
                if ceil32(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5) > uint255(uint256(stor12[arg1[all]].field_0)) * 0.5:
                    mem[(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5) + ceil32(ceil32(arg1.length)) + ceil32(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5) + 193] = 0
                return Array(len=2 * Mask(256, -1, uint256(stor12[arg1[all]].field_0)), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5)], mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5)) + 193 len 2 * ceil32(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5)]), 
            mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor12[arg1[all]].field_0)
            idx = ceil32(ceil32(arg1.length)) + 129
            s = 0
            while ceil32(ceil32(arg1.length)) + (uint255(uint256(stor12[arg1[all]].field_0)) * 0.5) + 97 > idx:
                mem[idx + 32] = uint256(stor12[arg1[all]][s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
        else:
            if bool(stor12[arg1[all]].field_0) == stor12[arg1[all]].field_1 % 128 < 32:
                revert with 0, 34
            if not stor12[arg1[all]].field_1 % 128:
                mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5) + 193 len ceil32(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5)]
                if ceil32(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5) > uint255(uint256(stor12[arg1[all]].field_0)) * 0.5:
                    mem[(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5) + ceil32(ceil32(arg1.length)) + ceil32(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5) + 193] = 0
                return Array(len=2 * Mask(256, -1, uint256(stor12[arg1[all]].field_0)), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5)], mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5)) + 193 len 2 * ceil32(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5)]), 
            if 31 >= stor12[arg1[all]].field_1 % 128:
                mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor12[arg1[all]].field_8)
                mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5) + 193 len ceil32(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5)]
                if ceil32(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5) > uint255(uint256(stor12[arg1[all]].field_0)) * 0.5:
                    mem[(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5) + ceil32(ceil32(arg1.length)) + ceil32(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5) + 193] = 0
                return Array(len=2 * Mask(256, -1, uint256(stor12[arg1[all]].field_0)), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5)], mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5)) + 193 len 2 * ceil32(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5)]), 
            mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor12[arg1[all]].field_0)
            idx = ceil32(ceil32(arg1.length)) + 129
            s = 0
            while ceil32(ceil32(arg1.length)) + stor12[arg1[all]].field_1 % 128 + 97 > idx:
                mem[idx + 32] = uint256(stor12[arg1[all]][s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = uint255(uint256(stor12[arg1[all]].field_0)) * 0.5
        mem[mem[64] + 64 len ceil32(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5)]
        if ceil32(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5) > uint255(uint256(stor12[arg1[all]].field_0)) * 0.5:
            mem[(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5) + mem[64] + 64] = 0
        return Array(len=2 * Mask(256, -1, uint256(stor12[arg1[all]].field_0)), data=mem[mem[64] + 64 len ceil32(uint255(uint256(stor12[arg1[all]].field_0)) * 0.5)]), 
    if bool(stor12[arg1[all]].field_0) == stor12[arg1[all]].field_1 % 128 < 32:
        revert with 0, 34
    mem[64] = ceil32(ceil32(arg1.length)) + ceil32(stor12[arg1[all]].field_1 % 128) + 129
    mem[ceil32(ceil32(arg1.length)) + 97] = stor12[arg1[all]].field_1 % 128
    if bool(stor12[arg1[all]].field_0):
        if bool(stor12[arg1[all]].field_0) == uint255(uint256(stor12[arg1[all]].field_0)) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, uint256(stor12[arg1[all]].field_0)):
            mem[ceil32(ceil32(arg1.length)) + ceil32(stor12[arg1[all]].field_1 % 128) + 193 len ceil32(stor12[arg1[all]].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor12[arg1[all]].field_1 % 128)]
            if ceil32(stor12[arg1[all]].field_1 % 128) > stor12[arg1[all]].field_1 % 128:
                mem[stor12[arg1[all]].field_1 % 128 + ceil32(ceil32(arg1.length)) + ceil32(stor12[arg1[all]].field_1 % 128) + 193] = 0
            return Array(len=stor12[arg1[all]].field_0 % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor12[arg1[all]].field_1 % 128)], mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(stor12[arg1[all]].field_1 % 128)) + 193 len 2 * ceil32(stor12[arg1[all]].field_1 % 128)]), 
        if 31 >= uint255(uint256(stor12[arg1[all]].field_0)) * 0.5:
            mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor12[arg1[all]].field_8)
            mem[ceil32(ceil32(arg1.length)) + ceil32(stor12[arg1[all]].field_1 % 128) + 193 len ceil32(stor12[arg1[all]].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor12[arg1[all]].field_1 % 128)]
            if ceil32(stor12[arg1[all]].field_1 % 128) > stor12[arg1[all]].field_1 % 128:
                mem[stor12[arg1[all]].field_1 % 128 + ceil32(ceil32(arg1.length)) + ceil32(stor12[arg1[all]].field_1 % 128) + 193] = 0
            return Array(len=stor12[arg1[all]].field_0 % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor12[arg1[all]].field_1 % 128)], mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(stor12[arg1[all]].field_1 % 128)) + 193 len 2 * ceil32(stor12[arg1[all]].field_1 % 128)]), 
        mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor12[arg1[all]].field_0)
        idx = ceil32(ceil32(arg1.length)) + 129
        s = 0
        while ceil32(ceil32(arg1.length)) + (uint255(uint256(stor12[arg1[all]].field_0)) * 0.5) + 97 > idx:
            mem[idx + 32] = uint256(stor12[arg1[all]][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    else:
        if bool(stor12[arg1[all]].field_0) == stor12[arg1[all]].field_1 % 128 < 32:
            revert with 0, 34
        if not stor12[arg1[all]].field_1 % 128:
            mem[ceil32(ceil32(arg1.length)) + ceil32(stor12[arg1[all]].field_1 % 128) + 193 len ceil32(stor12[arg1[all]].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor12[arg1[all]].field_1 % 128)]
            if ceil32(stor12[arg1[all]].field_1 % 128) > stor12[arg1[all]].field_1 % 128:
                mem[stor12[arg1[all]].field_1 % 128 + ceil32(ceil32(arg1.length)) + ceil32(stor12[arg1[all]].field_1 % 128) + 193] = 0
            return Array(len=stor12[arg1[all]].field_0 % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor12[arg1[all]].field_1 % 128)], mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(stor12[arg1[all]].field_1 % 128)) + 193 len 2 * ceil32(stor12[arg1[all]].field_1 % 128)]), 
        if 31 >= stor12[arg1[all]].field_1 % 128:
            mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor12[arg1[all]].field_8)
            mem[ceil32(ceil32(arg1.length)) + ceil32(stor12[arg1[all]].field_1 % 128) + 193 len ceil32(stor12[arg1[all]].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor12[arg1[all]].field_1 % 128)]
            if ceil32(stor12[arg1[all]].field_1 % 128) > stor12[arg1[all]].field_1 % 128:
                mem[stor12[arg1[all]].field_1 % 128 + ceil32(ceil32(arg1.length)) + ceil32(stor12[arg1[all]].field_1 % 128) + 193] = 0
            return Array(len=stor12[arg1[all]].field_0 % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor12[arg1[all]].field_1 % 128)], mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(stor12[arg1[all]].field_1 % 128)) + 193 len 2 * ceil32(stor12[arg1[all]].field_1 % 128)]), 
        mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor12[arg1[all]].field_0)
        idx = ceil32(ceil32(arg1.length)) + 129
        s = 0
        while ceil32(ceil32(arg1.length)) + stor12[arg1[all]].field_1 % 128 + 97 > idx:
            mem[idx + 32] = uint256(stor12[arg1[all]][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = stor12[arg1[all]].field_1 % 128
    mem[mem[64] + 64 len ceil32(stor12[arg1[all]].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor12[arg1[all]].field_1 % 128)]
    if ceil32(stor12[arg1[all]].field_1 % 128) > stor12[arg1[all]].field_1 % 128:
        mem[stor12[arg1[all]].field_1 % 128 + mem[64] + 64] = 0
    return Array(len=stor12[arg1[all]].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor12[arg1[all]].field_1 % 128)])
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, 'Nonexistent token'
    if not sub_7562ebe8[arg1]:
        if bool(stor14[stor25[arg1]].field_0):
            if bool(stor14[stor25[arg1]].field_0) == uint255(uint256(stor14[stor25[arg1]].field_0)) * 0.5 < 32:
                revert with 0, 34
            if bool(stor14[stor25[arg1]].field_0):
                if bool(stor14[stor25[arg1]].field_0) == uint255(uint256(stor14[stor25[arg1]].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, uint256(stor14[stor25[arg1]].field_0)):
                    if 31 < uint255(uint256(stor14[stor25[arg1]].field_0)) * 0.5:
                        mem[128] = uint256(stor14[stor25[arg1]].field_0)
                        idx = 128
                        s = 0
                        while (uint255(uint256(stor14[stor25[arg1]].field_0)) * 0.5) + 96 > idx:
                            mem[idx + 32] = uint256(stor14[stor25[arg1]][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if uint255(uint256(stor14[stor25[arg1]].field_0)) * 0.5 <= 0:
                            return ''
                        return Array(len=2 * Mask(256, -1, uint256(stor14[stor25[arg1]].field_0)), data=mem[128 len ceil32(uint255(uint256(stor14[stor25[arg1]].field_0)) * 0.5)]), 
                    mem[128] = 256 * Mask(248, 0, stor14[stor25[arg1]].field_8)
            else:
                if bool(stor14[stor25[arg1]].field_0) == stor14[stor25[arg1]].field_1 % 128 < 32:
                    revert with 0, 34
                if stor14[stor25[arg1]].field_1 % 128:
                    if 31 < stor14[stor25[arg1]].field_1 % 128:
                        mem[128] = uint256(stor14[stor25[arg1]].field_0)
                        idx = 128
                        s = 0
                        while stor14[stor25[arg1]].field_1 % 128 + 96 > idx:
                            mem[idx + 32] = uint256(stor14[stor25[arg1]][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if uint255(uint256(stor14[stor25[arg1]].field_0)) * 0.5 <= 0:
                            return ''
                        return Array(len=2 * Mask(256, -1, uint256(stor14[stor25[arg1]].field_0)), data=mem[128 len ceil32(uint255(uint256(stor14[stor25[arg1]].field_0)) * 0.5)]), 
                    mem[128] = 256 * Mask(248, 0, stor14[stor25[arg1]].field_8)
            if uint255(uint256(stor14[stor25[arg1]].field_0)) * 0.5 <= 0:
                return ''
            mem[ceil32(uint255(uint256(stor14[stor25[arg1]].field_0)) * 0.5) + 192 len ceil32(uint255(uint256(stor14[stor25[arg1]].field_0)) * 0.5)] = mem[128 len ceil32(uint255(uint256(stor14[stor25[arg1]].field_0)) * 0.5)]
            if ceil32(uint255(uint256(stor14[stor25[arg1]].field_0)) * 0.5) > uint255(uint256(stor14[stor25[arg1]].field_0)) * 0.5:
                mem[(uint255(uint256(stor14[stor25[arg1]].field_0)) * 0.5) + ceil32(uint255(uint256(stor14[stor25[arg1]].field_0)) * 0.5) + 192] = 0
            return Array(len=2 * Mask(256, -1, uint256(stor14[stor25[arg1]].field_0)), data=mem[128 len ceil32(uint255(uint256(stor14[stor25[arg1]].field_0)) * 0.5)], mem[(2 * ceil32(uint255(uint256(stor14[stor25[arg1]].field_0)) * 0.5)) + 192 len 2 * ceil32(uint255(uint256(stor14[stor25[arg1]].field_0)) * 0.5)]), 
        if bool(stor14[stor25[arg1]].field_0) == stor14[stor25[arg1]].field_1 % 128 < 32:
            revert with 0, 34
        if bool(stor14[stor25[arg1]].field_0):
            if bool(stor14[stor25[arg1]].field_0) == uint255(uint256(stor14[stor25[arg1]].field_0)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor14[stor25[arg1]].field_0)):
                if 31 < uint255(uint256(stor14[stor25[arg1]].field_0)) * 0.5:
                    mem[128] = uint256(stor14[stor25[arg1]].field_0)
                    idx = 128
                    s = 0
                    while (uint255(uint256(stor14[stor25[arg1]].field_0)) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor14[stor25[arg1]][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor14[stor25[arg1]].field_1 % 128 <= 0:
                        return ''
                    return Array(len=stor14[stor25[arg1]].field_0 % 128, data=mem[128 len ceil32(stor14[stor25[arg1]].field_1 % 128)])
                mem[128] = 256 * Mask(248, 0, stor14[stor25[arg1]].field_8)
        else:
            if bool(stor14[stor25[arg1]].field_0) == stor14[stor25[arg1]].field_1 % 128 < 32:
                revert with 0, 34
            if stor14[stor25[arg1]].field_1 % 128:
                if 31 < stor14[stor25[arg1]].field_1 % 128:
                    mem[128] = uint256(stor14[stor25[arg1]].field_0)
                    idx = 128
                    s = 0
                    while stor14[stor25[arg1]].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor14[stor25[arg1]][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor14[stor25[arg1]].field_1 % 128 <= 0:
                        return ''
                    return Array(len=stor14[stor25[arg1]].field_0 % 128, data=mem[128 len ceil32(stor14[stor25[arg1]].field_1 % 128)])
                mem[128] = 256 * Mask(248, 0, stor14[stor25[arg1]].field_8)
        if stor14[stor25[arg1]].field_1 % 128 <= 0:
            return ''
        mem[ceil32(stor14[stor25[arg1]].field_1 % 128) + 192 len ceil32(stor14[stor25[arg1]].field_1 % 128)] = mem[128 len ceil32(stor14[stor25[arg1]].field_1 % 128)]
        if ceil32(stor14[stor25[arg1]].field_1 % 128) > stor14[stor25[arg1]].field_1 % 128:
            mem[stor14[stor25[arg1]].field_1 % 128 + ceil32(stor14[stor25[arg1]].field_1 % 128) + 192] = 0
        return Array(len=stor14[stor25[arg1]].field_0 % 128, data=mem[128 len ceil32(stor14[stor25[arg1]].field_1 % 128)], mem[(2 * ceil32(stor14[stor25[arg1]].field_1 % 128)) + 192 len 2 * ceil32(stor14[stor25[arg1]].field_1 % 128)]), 
    if 1 == sub_7562ebe8[arg1]:
        if bool(stor15[stor25[arg1]].field_0):
            if bool(stor15[stor25[arg1]].field_0) == uint255(uint256(stor15[stor25[arg1]].field_0)) * 0.5 < 32:
                revert with 0, 34
            if bool(stor15[stor25[arg1]].field_0):
                if bool(stor15[stor25[arg1]].field_0) == uint255(uint256(stor15[stor25[arg1]].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, uint256(stor15[stor25[arg1]].field_0)):
                    if 31 < uint255(uint256(stor15[stor25[arg1]].field_0)) * 0.5:
                        mem[128] = uint256(stor15[stor25[arg1]].field_0)
                        idx = 128
                        s = 0
                        while (uint255(uint256(stor15[stor25[arg1]].field_0)) * 0.5) + 96 > idx:
                            mem[idx + 32] = uint256(stor15[stor25[arg1]][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if uint255(uint256(stor15[stor25[arg1]].field_0)) * 0.5 <= 0:
                            return ''
                        return Array(len=2 * Mask(256, -1, uint256(stor15[stor25[arg1]].field_0)), data=mem[128 len ceil32(uint255(uint256(stor15[stor25[arg1]].field_0)) * 0.5)]), 
                    mem[128] = 256 * Mask(248, 0, stor15[stor25[arg1]].field_8)
            else:
                if bool(stor15[stor25[arg1]].field_0) == stor15[stor25[arg1]].field_1 % 128 < 32:
                    revert with 0, 34
                if stor15[stor25[arg1]].field_1 % 128:
                    if 31 < stor15[stor25[arg1]].field_1 % 128:
                        mem[128] = uint256(stor15[stor25[arg1]].field_0)
                        idx = 128
                        s = 0
                        while stor15[stor25[arg1]].field_1 % 128 + 96 > idx:
                            mem[idx + 32] = uint256(stor15[stor25[arg1]][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if uint255(uint256(stor15[stor25[arg1]].field_0)) * 0.5 <= 0:
                            return ''
                        return Array(len=2 * Mask(256, -1, uint256(stor15[stor25[arg1]].field_0)), data=mem[128 len ceil32(uint255(uint256(stor15[stor25[arg1]].field_0)) * 0.5)]), 
                    mem[128] = 256 * Mask(248, 0, stor15[stor25[arg1]].field_8)
            if uint255(uint256(stor15[stor25[arg1]].field_0)) * 0.5 <= 0:
                return ''
            mem[ceil32(uint255(uint256(stor15[stor25[arg1]].field_0)) * 0.5) + 192 len ceil32(uint255(uint256(stor15[stor25[arg1]].field_0)) * 0.5)] = mem[128 len ceil32(uint255(uint256(stor15[stor25[arg1]].field_0)) * 0.5)]
            if ceil32(uint255(uint256(stor15[stor25[arg1]].field_0)) * 0.5) > uint255(uint256(stor15[stor25[arg1]].field_0)) * 0.5:
                mem[(uint255(uint256(stor15[stor25[arg1]].field_0)) * 0.5) + ceil32(uint255(uint256(stor15[stor25[arg1]].field_0)) * 0.5) + 192] = 0
            return Array(len=2 * Mask(256, -1, uint256(stor15[stor25[arg1]].field_0)), data=mem[128 len ceil32(uint255(uint256(stor15[stor25[arg1]].field_0)) * 0.5)], mem[(2 * ceil32(uint255(uint256(stor15[stor25[arg1]].field_0)) * 0.5)) + 192 len 2 * ceil32(uint255(uint256(stor15[stor25[arg1]].field_0)) * 0.5)]), 
        if bool(stor15[stor25[arg1]].field_0) == stor15[stor25[arg1]].field_1 % 128 < 32:
            revert with 0, 34
        if bool(stor15[stor25[arg1]].field_0):
            if bool(stor15[stor25[arg1]].field_0) == uint255(uint256(stor15[stor25[arg1]].field_0)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor15[stor25[arg1]].field_0)):
                if 31 < uint255(uint256(stor15[stor25[arg1]].field_0)) * 0.5:
                    mem[128] = uint256(stor15[stor25[arg1]].field_0)
                    idx = 128
                    s = 0
                    while (uint255(uint256(stor15[stor25[arg1]].field_0)) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor15[stor25[arg1]][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor15[stor25[arg1]].field_1 % 128 <= 0:
                        return ''
                    return Array(len=stor15[stor25[arg1]].field_0 % 128, data=mem[128 len ceil32(stor15[stor25[arg1]].field_1 % 128)])
                mem[128] = 256 * Mask(248, 0, stor15[stor25[arg1]].field_8)
        else:
            if bool(stor15[stor25[arg1]].field_0) == stor15[stor25[arg1]].field_1 % 128 < 32:
                revert with 0, 34
            if stor15[stor25[arg1]].field_1 % 128:
                if 31 < stor15[stor25[arg1]].field_1 % 128:
                    mem[128] = uint256(stor15[stor25[arg1]].field_0)
                    idx = 128
                    s = 0
                    while stor15[stor25[arg1]].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor15[stor25[arg1]][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor15[stor25[arg1]].field_1 % 128 <= 0:
                        return ''
                    return Array(len=stor15[stor25[arg1]].field_0 % 128, data=mem[128 len ceil32(stor15[stor25[arg1]].field_1 % 128)])
                mem[128] = 256 * Mask(248, 0, stor15[stor25[arg1]].field_8)
        if stor15[stor25[arg1]].field_1 % 128 <= 0:
            return ''
        mem[ceil32(stor15[stor25[arg1]].field_1 % 128) + 192 len ceil32(stor15[stor25[arg1]].field_1 % 128)] = mem[128 len ceil32(stor15[stor25[arg1]].field_1 % 128)]
        if ceil32(stor15[stor25[arg1]].field_1 % 128) > stor15[stor25[arg1]].field_1 % 128:
            mem[stor15[stor25[arg1]].field_1 % 128 + ceil32(stor15[stor25[arg1]].field_1 % 128) + 192] = 0
        return Array(len=stor15[stor25[arg1]].field_0 % 128, data=mem[128 len ceil32(stor15[stor25[arg1]].field_1 % 128)], mem[(2 * ceil32(stor15[stor25[arg1]].field_1 % 128)) + 192 len 2 * ceil32(stor15[stor25[arg1]].field_1 % 128)]), 
    if 2 == sub_7562ebe8[arg1]:
        if bool(stor16[stor25[arg1]].field_0):
            if bool(stor16[stor25[arg1]].field_0) == uint255(uint256(stor16[stor25[arg1]].field_0)) * 0.5 < 32:
                revert with 0, 34
            if bool(stor16[stor25[arg1]].field_0):
                if bool(stor16[stor25[arg1]].field_0) == uint255(uint256(stor16[stor25[arg1]].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, uint256(stor16[stor25[arg1]].field_0)):
                    if 31 < uint255(uint256(stor16[stor25[arg1]].field_0)) * 0.5:
                        mem[128] = uint256(stor16[stor25[arg1]].field_0)
                        idx = 128
                        s = 0
                        while (uint255(uint256(stor16[stor25[arg1]].field_0)) * 0.5) + 96 > idx:
                            mem[idx + 32] = uint256(stor16[stor25[arg1]][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if uint255(uint256(stor16[stor25[arg1]].field_0)) * 0.5 <= 0:
                            return ''
                        return Array(len=2 * Mask(256, -1, uint256(stor16[stor25[arg1]].field_0)), data=mem[128 len ceil32(uint255(uint256(stor16[stor25[arg1]].field_0)) * 0.5)]), 
                    mem[128] = 256 * Mask(248, 0, stor16[stor25[arg1]].field_8)
            else:
                if bool(stor16[stor25[arg1]].field_0) == stor16[stor25[arg1]].field_1 % 128 < 32:
                    revert with 0, 34
                if stor16[stor25[arg1]].field_1 % 128:
                    if 31 < stor16[stor25[arg1]].field_1 % 128:
                        mem[128] = uint256(stor16[stor25[arg1]].field_0)
                        idx = 128
                        s = 0
                        while stor16[stor25[arg1]].field_1 % 128 + 96 > idx:
                            mem[idx + 32] = uint256(stor16[stor25[arg1]][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if uint255(uint256(stor16[stor25[arg1]].field_0)) * 0.5 <= 0:
                            return ''
                        return Array(len=2 * Mask(256, -1, uint256(stor16[stor25[arg1]].field_0)), data=mem[128 len ceil32(uint255(uint256(stor16[stor25[arg1]].field_0)) * 0.5)]), 
                    mem[128] = 256 * Mask(248, 0, stor16[stor25[arg1]].field_8)
            if uint255(uint256(stor16[stor25[arg1]].field_0)) * 0.5 <= 0:
                return ''
            mem[ceil32(uint255(uint256(stor16[stor25[arg1]].field_0)) * 0.5) + 192 len ceil32(uint255(uint256(stor16[stor25[arg1]].field_0)) * 0.5)] = mem[128 len ceil32(uint255(uint256(stor16[stor25[arg1]].field_0)) * 0.5)]
            if ceil32(uint255(uint256(stor16[stor25[arg1]].field_0)) * 0.5) > uint255(uint256(stor16[stor25[arg1]].field_0)) * 0.5:
                mem[(uint255(uint256(stor16[stor25[arg1]].field_0)) * 0.5) + ceil32(uint255(uint256(stor16[stor25[arg1]].field_0)) * 0.5) + 192] = 0
            return Array(len=2 * Mask(256, -1, uint256(stor16[stor25[arg1]].field_0)), data=mem[128 len ceil32(uint255(uint256(stor16[stor25[arg1]].field_0)) * 0.5)], mem[(2 * ceil32(uint255(uint256(stor16[stor25[arg1]].field_0)) * 0.5)) + 192 len 2 * ceil32(uint255(uint256(stor16[stor25[arg1]].field_0)) * 0.5)]), 
        if bool(stor16[stor25[arg1]].field_0) == stor16[stor25[arg1]].field_1 % 128 < 32:
            revert with 0, 34
        if bool(stor16[stor25[arg1]].field_0):
            if bool(stor16[stor25[arg1]].field_0) == uint255(uint256(stor16[stor25[arg1]].field_0)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor16[stor25[arg1]].field_0)):
                if 31 < uint255(uint256(stor16[stor25[arg1]].field_0)) * 0.5:
                    mem[128] = uint256(stor16[stor25[arg1]].field_0)
                    idx = 128
                    s = 0
                    while (uint255(uint256(stor16[stor25[arg1]].field_0)) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor16[stor25[arg1]][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor16[stor25[arg1]].field_1 % 128 <= 0:
                        return ''
                    return Array(len=stor16[stor25[arg1]].field_0 % 128, data=mem[128 len ceil32(stor16[stor25[arg1]].field_1 % 128)])
                mem[128] = 256 * Mask(248, 0, stor16[stor25[arg1]].field_8)
        else:
            if bool(stor16[stor25[arg1]].field_0) == stor16[stor25[arg1]].field_1 % 128 < 32:
                revert with 0, 34
            if stor16[stor25[arg1]].field_1 % 128:
                if 31 < stor16[stor25[arg1]].field_1 % 128:
                    mem[128] = uint256(stor16[stor25[arg1]].field_0)
                    idx = 128
                    s = 0
                    while stor16[stor25[arg1]].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor16[stor25[arg1]][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor16[stor25[arg1]].field_1 % 128 <= 0:
                        return ''
                    return Array(len=stor16[stor25[arg1]].field_0 % 128, data=mem[128 len ceil32(stor16[stor25[arg1]].field_1 % 128)])
                mem[128] = 256 * Mask(248, 0, stor16[stor25[arg1]].field_8)
        if stor16[stor25[arg1]].field_1 % 128 <= 0:
            return ''
        mem[ceil32(stor16[stor25[arg1]].field_1 % 128) + 192 len ceil32(stor16[stor25[arg1]].field_1 % 128)] = mem[128 len ceil32(stor16[stor25[arg1]].field_1 % 128)]
        if ceil32(stor16[stor25[arg1]].field_1 % 128) > stor16[stor25[arg1]].field_1 % 128:
            mem[stor16[stor25[arg1]].field_1 % 128 + ceil32(stor16[stor25[arg1]].field_1 % 128) + 192] = 0
        return Array(len=stor16[stor25[arg1]].field_0 % 128, data=mem[128 len ceil32(stor16[stor25[arg1]].field_1 % 128)], mem[(2 * ceil32(stor16[stor25[arg1]].field_1 % 128)) + 192 len 2 * ceil32(stor16[stor25[arg1]].field_1 % 128)]), 
    if sub_7562ebe8[arg1] != 3:
        if bool(stor18[stor25[arg1]].field_0):
            if bool(stor18[stor25[arg1]].field_0) == uint255(uint256(stor18[stor25[arg1]].field_0)) * 0.5 < 32:
                revert with 0, 34
            if bool(stor18[stor25[arg1]].field_0):
                if bool(stor18[stor25[arg1]].field_0) == uint255(uint256(stor18[stor25[arg1]].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, uint256(stor18[stor25[arg1]].field_0)):
                    if 31 < uint255(uint256(stor18[stor25[arg1]].field_0)) * 0.5:
                        mem[128] = uint256(stor18[stor25[arg1]].field_0)
                        idx = 128
                        s = 0
                        while (uint255(uint256(stor18[stor25[arg1]].field_0)) * 0.5) + 96 > idx:
                            mem[idx + 32] = uint256(stor18[stor25[arg1]][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if uint255(uint256(stor18[stor25[arg1]].field_0)) * 0.5 <= 0:
                            return ''
                        return Array(len=2 * Mask(256, -1, uint256(stor18[stor25[arg1]].field_0)), data=mem[128 len ceil32(uint255(uint256(stor18[stor25[arg1]].field_0)) * 0.5)]), 
                    mem[128] = 256 * Mask(248, 0, stor18[stor25[arg1]].field_8)
            else:
                if bool(stor18[stor25[arg1]].field_0) == stor18[stor25[arg1]].field_1 % 128 < 32:
                    revert with 0, 34
                if stor18[stor25[arg1]].field_1 % 128:
                    if 31 < stor18[stor25[arg1]].field_1 % 128:
                        mem[128] = uint256(stor18[stor25[arg1]].field_0)
                        idx = 128
                        s = 0
                        while stor18[stor25[arg1]].field_1 % 128 + 96 > idx:
                            mem[idx + 32] = uint256(stor18[stor25[arg1]][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if uint255(uint256(stor18[stor25[arg1]].field_0)) * 0.5 <= 0:
                            return ''
                        return Array(len=2 * Mask(256, -1, uint256(stor18[stor25[arg1]].field_0)), data=mem[128 len ceil32(uint255(uint256(stor18[stor25[arg1]].field_0)) * 0.5)]), 
                    mem[128] = 256 * Mask(248, 0, stor18[stor25[arg1]].field_8)
            if uint255(uint256(stor18[stor25[arg1]].field_0)) * 0.5 <= 0:
                return ''
            mem[ceil32(uint255(uint256(stor18[stor25[arg1]].field_0)) * 0.5) + 192 len ceil32(uint255(uint256(stor18[stor25[arg1]].field_0)) * 0.5)] = mem[128 len ceil32(uint255(uint256(stor18[stor25[arg1]].field_0)) * 0.5)]
            if ceil32(uint255(uint256(stor18[stor25[arg1]].field_0)) * 0.5) > uint255(uint256(stor18[stor25[arg1]].field_0)) * 0.5:
                mem[(uint255(uint256(stor18[stor25[arg1]].field_0)) * 0.5) + ceil32(uint255(uint256(stor18[stor25[arg1]].field_0)) * 0.5) + 192] = 0
            return Array(len=2 * Mask(256, -1, uint256(stor18[stor25[arg1]].field_0)), data=mem[128 len ceil32(uint255(uint256(stor18[stor25[arg1]].field_0)) * 0.5)], mem[(2 * ceil32(uint255(uint256(stor18[stor25[arg1]].field_0)) * 0.5)) + 192 len 2 * ceil32(uint255(uint256(stor18[stor25[arg1]].field_0)) * 0.5)]), 
        if bool(stor18[stor25[arg1]].field_0) == stor18[stor25[arg1]].field_1 % 128 < 32:
            revert with 0, 34
        if bool(stor18[stor25[arg1]].field_0):
            if bool(stor18[stor25[arg1]].field_0) == uint255(uint256(stor18[stor25[arg1]].field_0)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor18[stor25[arg1]].field_0)):
                if 31 < uint255(uint256(stor18[stor25[arg1]].field_0)) * 0.5:
                    mem[128] = uint256(stor18[stor25[arg1]].field_0)
                    idx = 128
                    s = 0
                    while (uint255(uint256(stor18[stor25[arg1]].field_0)) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor18[stor25[arg1]][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor18[stor25[arg1]].field_1 % 128 <= 0:
                        return ''
                    return Array(len=stor18[stor25[arg1]].field_0 % 128, data=mem[128 len ceil32(stor18[stor25[arg1]].field_1 % 128)])
                mem[128] = 256 * Mask(248, 0, stor18[stor25[arg1]].field_8)
        else:
            if bool(stor18[stor25[arg1]].field_0) == stor18[stor25[arg1]].field_1 % 128 < 32:
                revert with 0, 34
            if stor18[stor25[arg1]].field_1 % 128:
                if 31 < stor18[stor25[arg1]].field_1 % 128:
                    mem[128] = uint256(stor18[stor25[arg1]].field_0)
                    idx = 128
                    s = 0
                    while stor18[stor25[arg1]].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor18[stor25[arg1]][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor18[stor25[arg1]].field_1 % 128 <= 0:
                        return ''
                    return Array(len=stor18[stor25[arg1]].field_0 % 128, data=mem[128 len ceil32(stor18[stor25[arg1]].field_1 % 128)])
                mem[128] = 256 * Mask(248, 0, stor18[stor25[arg1]].field_8)
        if stor18[stor25[arg1]].field_1 % 128 <= 0:
            return ''
        mem[ceil32(stor18[stor25[arg1]].field_1 % 128) + 192 len ceil32(stor18[stor25[arg1]].field_1 % 128)] = mem[128 len ceil32(stor18[stor25[arg1]].field_1 % 128)]
        if ceil32(stor18[stor25[arg1]].field_1 % 128) > stor18[stor25[arg1]].field_1 % 128:
            mem[stor18[stor25[arg1]].field_1 % 128 + ceil32(stor18[stor25[arg1]].field_1 % 128) + 192] = 0
        return Array(len=stor18[stor25[arg1]].field_0 % 128, data=mem[128 len ceil32(stor18[stor25[arg1]].field_1 % 128)], mem[(2 * ceil32(stor18[stor25[arg1]].field_1 % 128)) + 192 len 2 * ceil32(stor18[stor25[arg1]].field_1 % 128)]), 
    if bool(stor17[stor25[arg1]].field_0):
        if bool(stor17[stor25[arg1]].field_0) == uint255(uint256(stor17[stor25[arg1]].field_0)) * 0.5 < 32:
            revert with 0, 34
        if bool(stor17[stor25[arg1]].field_0):
            if bool(stor17[stor25[arg1]].field_0) == uint255(uint256(stor17[stor25[arg1]].field_0)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor17[stor25[arg1]].field_0)):
                if 31 < uint255(uint256(stor17[stor25[arg1]].field_0)) * 0.5:
                    mem[128] = uint256(stor17[stor25[arg1]].field_0)
                    idx = 128
                    s = 0
                    while (uint255(uint256(stor17[stor25[arg1]].field_0)) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor17[stor25[arg1]][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if uint255(uint256(stor17[stor25[arg1]].field_0)) * 0.5 <= 0:
                        return ''
                    return Array(len=2 * Mask(256, -1, uint256(stor17[stor25[arg1]].field_0)), data=mem[128 len ceil32(uint255(uint256(stor17[stor25[arg1]].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor17[stor25[arg1]].field_8)
        else:
            if bool(stor17[stor25[arg1]].field_0) == stor17[stor25[arg1]].field_1 % 128 < 32:
                revert with 0, 34
            if stor17[stor25[arg1]].field_1 % 128:
                if 31 < stor17[stor25[arg1]].field_1 % 128:
                    mem[128] = uint256(stor17[stor25[arg1]].field_0)
                    idx = 128
                    s = 0
                    while stor17[stor25[arg1]].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor17[stor25[arg1]][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if uint255(uint256(stor17[stor25[arg1]].field_0)) * 0.5 <= 0:
                        return ''
                    return Array(len=2 * Mask(256, -1, uint256(stor17[stor25[arg1]].field_0)), data=mem[128 len ceil32(uint255(uint256(stor17[stor25[arg1]].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor17[stor25[arg1]].field_8)
        if uint255(uint256(stor17[stor25[arg1]].field_0)) * 0.5 <= 0:
            return ''
        mem[ceil32(uint255(uint256(stor17[stor25[arg1]].field_0)) * 0.5) + 192 len ceil32(uint255(uint256(stor17[stor25[arg1]].field_0)) * 0.5)] = mem[128 len ceil32(uint255(uint256(stor17[stor25[arg1]].field_0)) * 0.5)]
        if ceil32(uint255(uint256(stor17[stor25[arg1]].field_0)) * 0.5) > uint255(uint256(stor17[stor25[arg1]].field_0)) * 0.5:
            mem[(uint255(uint256(stor17[stor25[arg1]].field_0)) * 0.5) + ceil32(uint255(uint256(stor17[stor25[arg1]].field_0)) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint256(stor17[stor25[arg1]].field_0)), data=mem[128 len ceil32(uint255(uint256(stor17[stor25[arg1]].field_0)) * 0.5)], mem[(2 * ceil32(uint255(uint256(stor17[stor25[arg1]].field_0)) * 0.5)) + 192 len 2 * ceil32(uint255(uint256(stor17[stor25[arg1]].field_0)) * 0.5)]), 
    if bool(stor17[stor25[arg1]].field_0) == stor17[stor25[arg1]].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor17[stor25[arg1]].field_0):
        if bool(stor17[stor25[arg1]].field_0) == uint255(uint256(stor17[stor25[arg1]].field_0)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, uint256(stor17[stor25[arg1]].field_0)):
            if 31 < uint255(uint256(stor17[stor25[arg1]].field_0)) * 0.5:
                mem[128] = uint256(stor17[stor25[arg1]].field_0)
                idx = 128
                s = 0
                while (uint255(uint256(stor17[stor25[arg1]].field_0)) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor17[stor25[arg1]][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                if stor17[stor25[arg1]].field_1 % 128 <= 0:
                    return ''
                return Array(len=stor17[stor25[arg1]].field_0 % 128, data=mem[128 len ceil32(stor17[stor25[arg1]].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor17[stor25[arg1]].field_8)
    else:
        if bool(stor17[stor25[arg1]].field_0) == stor17[stor25[arg1]].field_1 % 128 < 32:
            revert with 0, 34
        if stor17[stor25[arg1]].field_1 % 128:
            if 31 < stor17[stor25[arg1]].field_1 % 128:
                mem[128] = uint256(stor17[stor25[arg1]].field_0)
                idx = 128
                s = 0
                while stor17[stor25[arg1]].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor17[stor25[arg1]][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                if stor17[stor25[arg1]].field_1 % 128 <= 0:
                    return ''
                return Array(len=stor17[stor25[arg1]].field_0 % 128, data=mem[128 len ceil32(stor17[stor25[arg1]].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor17[stor25[arg1]].field_8)
    if stor17[stor25[arg1]].field_1 % 128 <= 0:
        return ''
    mem[ceil32(stor17[stor25[arg1]].field_1 % 128) + 192 len ceil32(stor17[stor25[arg1]].field_1 % 128)] = mem[128 len ceil32(stor17[stor25[arg1]].field_1 % 128)]
    if ceil32(stor17[stor25[arg1]].field_1 % 128) > stor17[stor25[arg1]].field_1 % 128:
        mem[stor17[stor25[arg1]].field_1 % 128 + ceil32(stor17[stor25[arg1]].field_1 % 128) + 192] = 0
    return Array(len=stor17[stor25[arg1]].field_0 % 128, data=mem[128 len ceil32(stor17[stor25[arg1]].field_1 % 128)], mem[(2 * ceil32(stor17[stor25[arg1]].field_1 % 128)) + 192 len 2 * ceil32(stor17[stor25[arg1]].field_1 % 128)]), 
}



}
