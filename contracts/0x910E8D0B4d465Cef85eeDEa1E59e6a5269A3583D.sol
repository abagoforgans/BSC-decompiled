contract main {




// =====================  Runtime code  =====================


#
#  - sub_48200604(?)
#
array of struct stor0;
array of struct stor1;
mapping of address rawOwnerOf;
mapping of uint256 balanceOf;
mapping of uint256 sub_b7304eff;
mapping of address approved;
mapping of uint8 stor6;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor8;
array of uint256 tokenByIndex;
mapping of uint256 stor10;
address owner;
address janitorAddress;
address sub_0cd5a495Address;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
mapping of struct stor20;
array of uint256 stor21;
array of uint256 stor22;
uint256 sub_d5738d88;
uint256 sub_20207bb0;
uint256 PRICE;
uint256 sub_754e6c93;
uint256 sub_e8563f1a;
uint256 sub_b0479a80;
uint256 sub_9810aaf8;
uint256 totalToken;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not rawOwnerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_0cd5a495(?) {
    return sub_0cd5a495Address
}

function totalSupply() {
    return tokenByIndex.length
}

function sub_20207bb0(?) {
    return sub_20207bb0
}

function janitor() {
    return janitorAddress
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function totalToken() {
    return totalToken
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not rawOwnerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return rawOwnerOf[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function sub_754e6c93(?) {
    return sub_754e6c93
}

function rawOwnerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rawOwnerOf[arg1]
}

function PRICE() {
    return PRICE
}

function owner() {
    return owner
}

function sub_9810aaf8(?) {
    return sub_9810aaf8
}

function sub_b0479a80(?) {
    return sub_b0479a80
}

function sub_b7304eff(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return sub_b7304eff[address(arg1)]
}

function sub_d5738d88(?) {
    return sub_d5738d88
}

function sub_e8563f1a(?) {
    return sub_e8563f1a
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor6[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function sub_87e1e145(?) {
    return stor15, stor16, stor17, stor18, stor19
}

function renounceOwnership() {
    if owner != msg.sender:
        if janitorAddress != msg.sender:
            if sub_0cd5a495Address != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_bc20a8e3(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if janitorAddress != msg.sender:
            if sub_0cd5a495Address != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
    sub_9810aaf8 = arg1
}

function sub_e4420e4c(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if janitorAddress != msg.sender:
            if sub_0cd5a495Address != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
    sub_754e6c93 = arg1
}

function sub_7ca9e414(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if janitorAddress != msg.sender:
            if sub_0cd5a495Address != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
    sub_e8563f1a = 0
    PRICE = arg1
}

function sub_962bd1d1(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if janitorAddress != msg.sender:
            if sub_0cd5a495Address != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
    sub_b0479a80 = arg1
    sub_e8563f1a = 0
}

function sub_a311d802(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 != msg.value:
        revert with 0, 'EDITH NFT: the value is error'
    if stor17 > -msg.value - 1:
        revert with 'NH{q', 17
    stor17 += msg.value
    emit 0xe375e50a: msg.sender, msg.value
    return 1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor6[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_71f9f200(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if janitorAddress != msg.sender:
            if sub_0cd5a495Address != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
    if sub_d5738d88 >= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EDITH NFT: Cannot decrease max elements'
    sub_d5738d88 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if janitorAddress != msg.sender:
            if sub_0cd5a495Address != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function transferJanitorship(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if janitorAddress != msg.sender:
            if sub_0cd5a495Address != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    janitorAddress = arg1
    emit 0x38f0c98a: janitorAddress, arg1
}

function sub_1ad4bad3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if janitorAddress != msg.sender:
            if sub_0cd5a495Address != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    sub_0cd5a495Address = address(arg1)
    emit 0xd5cb4431: sub_0cd5a495Address, address(arg1)
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x780e9d6300000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_967adf3d(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        if janitorAddress != msg.sender:
            if sub_0cd5a495Address != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
    if arg2 <= 0:
        revert with 0, 'EDITH NFT: the value must > 0'
    if stor20[arg1].field_512 < arg2:
        revert with 'NH{q', 17
    stor20[arg1].field_512 -= arg2
    if stor16 < arg2:
        revert with 'NH{q', 17
    stor16 -= arg2
    if arg2 > sub_9810aaf8:
        if not sub_9810aaf8:
            revert with 'NH{q', 18
        if stor20[arg1].field_256 < arg2 / sub_9810aaf8:
            revert with 'NH{q', 17
        stor20[arg1].field_256 -= arg2 / sub_9810aaf8
        if stor15 < arg2 / sub_9810aaf8:
            revert with 'NH{q', 17
        stor15 -= arg2 / sub_9810aaf8
        emit 0xabcde0e3: arg1, arg2 / sub_9810aaf8
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not rawOwnerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == rawOwnerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if rawOwnerOf[arg2] != msg.sender:
        if not stor6[stor2[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not rawOwnerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(rawOwnerOf[arg2], arg1, arg2);
}

function sub_fe4651a0(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        if janitorAddress != msg.sender:
            if sub_0cd5a495Address != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
    if arg2 <= 0:
        revert with 0, 'EDITH NFT: the value must > 0'
    if stor20[arg1].field_512 > -arg2 - 1:
        revert with 'NH{q', 17
    stor20[arg1].field_512 += arg2
    if stor16 > -arg2 - 1:
        revert with 'NH{q', 17
    stor16 += arg2
    if arg2 > sub_9810aaf8:
        if not sub_9810aaf8:
            revert with 'NH{q', 18
        if stor20[arg1].field_256 > -(arg2 / sub_9810aaf8) - 1:
            revert with 'NH{q', 17
        stor20[arg1].field_256 += arg2 / sub_9810aaf8
        if stor15 > -(arg2 / sub_9810aaf8) - 1:
            revert with 'NH{q', 17
        stor15 += arg2 / sub_9810aaf8
        emit 0x368add10: arg1, arg2 / sub_9810aaf8
}

function sub_830c6e2f(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        if janitorAddress != msg.sender:
            if sub_0cd5a495Address != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
    if arg2 <= 0:
        revert with 0, 'EDITH NFT: the value must > 0'
    if not rawOwnerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EDITH NFT: URI query for nonexistent token'
    if not rawOwnerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if stor20[arg1].field_768 > -arg2 - 1:
        revert with 'NH{q', 17
    stor20[arg1].field_768 += arg2
    if stor19 > -arg2 - 1:
        revert with 'NH{q', 17
    stor19 += arg2
    emit 0x410a0d84: rawOwnerOf[arg1], arg2
    call rawOwnerOf[arg1] with:
       value arg2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'withdraw failed.'
}

function _setTokenURI(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        if janitorAddress != msg.sender:
            if sub_0cd5a495Address != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
    if not rawOwnerOf[arg1]:
        revert with 0, 'EDITH NFT: URI set of nonexistent token'
    if bool(stor20[arg1].field_1024):
        if bool(stor20[arg1].field_1024) == uint255(stor20[arg1].field_1025) < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor20[arg1][4][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor20[arg1].field_1024 = 0
            idx = 0
            while uint255(stor20[arg1].field_1025) + 31 / 32 > idx:
                stor20[arg1][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor20[arg1].field_1024) == stor20[arg1].field_1025 % 128 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor20[arg1][4][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor20[arg1].field_1024 = 0
            idx = 0
            while stor20[arg1].field_1025 % 128 + 31 / 32 > idx:
                stor20[arg1][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
}

function setBaseURI(string arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307() or ceil32(ceil32(arg2.length)) + 98 < 97:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        if janitorAddress != msg.sender:
            if sub_0cd5a495Address != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
    if bool(stor21.length):
        if bool(stor21.length) == uint255(stor21.length.field_1) < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor21.length = 0
            idx = 0
            while uint255(stor21.length.field_1) + 31 / 32 > idx:
                stor21[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor21.length) == stor21.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor21.length = 0
            idx = 0
            while stor21.length.field_1 % 128 + 31 / 32 > idx:
                stor21[idx].field_0 = 0
                idx = idx + 1
                continue 
    if bool(stor22.length):
        if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor22[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor22.length = 0
            idx = 0
            while uint255(stor22.length.field_1) + 31 / 32 > idx:
                stor22[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor22[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor22.length = 0
            idx = 0
            while stor22.length.field_1 % 128 + 31 / 32 > idx:
                stor22[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_57c250ec(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor20[arg1].field_1024):
        if bool(stor20[arg1].field_1024) == uint255(stor20[arg1].field_1025) < 32:
            revert with 'NH{q', 34
        if bool(stor20[arg1].field_1024):
            if bool(stor20[arg1].field_1024) == uint255(stor20[arg1].field_1025) < 32:
                revert with 'NH{q', 34
            if uint255(stor20[arg1].field_1025):
                if 31 >= uint255(stor20[arg1].field_1025):
                    mem[128] = 256 * Mask(248, 0, stor20[arg1].field_1032)
                else:
                    mem[128] = stor20[arg1][4].field_0
                    idx = 128
                    s = 0
                    while uint255(stor20[arg1].field_1025) + 96 > idx:
                        mem[idx + 32] = stor20[arg1][s + 4].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor20[arg1].field_1024) == stor20[arg1].field_1025 % 128 < 32:
                revert with 'NH{q', 34
            if stor20[arg1].field_1025 % 128:
                if 31 >= stor20[arg1].field_1025 % 128:
                    mem[128] = 256 * Mask(248, 0, stor20[arg1].field_1032)
                else:
                    mem[128] = stor20[arg1][4].field_0
                    idx = 128
                    s = 0
                    while stor20[arg1].field_1025 % 128 + 96 > idx:
                        mem[idx + 32] = stor20[arg1][s + 4].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor20[arg1].field_0, 
               stor20[arg1].field_256,
               stor20[arg1].field_512,
               stor20[arg1].field_768,
               Array(len=2 * Mask(256, -1, uint255(stor20[arg1].field_1025)), data=mem[128 len ceil32(uint255(stor20[arg1].field_1025))])
    if bool(stor20[arg1].field_1024) == stor20[arg1].field_1025 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor20[arg1].field_1024):
        if bool(stor20[arg1].field_1024) == uint255(stor20[arg1].field_1025) < 32:
            revert with 'NH{q', 34
        if uint255(stor20[arg1].field_1025):
            if 31 >= uint255(stor20[arg1].field_1025):
                mem[128] = 256 * Mask(248, 0, stor20[arg1].field_1032)
            else:
                mem[128] = stor20[arg1][4].field_0
                idx = 128
                s = 0
                while uint255(stor20[arg1].field_1025) + 96 > idx:
                    mem[idx + 32] = stor20[arg1][s + 4].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor20[arg1].field_1024) == stor20[arg1].field_1025 % 128 < 32:
            revert with 'NH{q', 34
        if stor20[arg1].field_1025 % 128:
            if 31 >= stor20[arg1].field_1025 % 128:
                mem[128] = 256 * Mask(248, 0, stor20[arg1].field_1032)
            else:
                mem[128] = stor20[arg1][4].field_0
                idx = 128
                s = 0
                while stor20[arg1].field_1025 % 128 + 96 > idx:
                    mem[idx + 32] = stor20[arg1][s + 4].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor20[arg1].field_0, 
           stor20[arg1].field_256,
           stor20[arg1].field_512,
           stor20[arg1].field_768,
           Array(len=stor20[arg1].field_1024 % 128, data=mem[128 len ceil32(stor20[arg1].field_1025 % 128)])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not rawOwnerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not rawOwnerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if rawOwnerOf[arg3] != msg.sender:
        if not rawOwnerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor6[stor2[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not rawOwnerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if rawOwnerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if balanceOf[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EDITH Equity NFT: Maximum of 1 per address'
    sub_b7304eff[address(arg1)] = 0
    sub_b7304eff[address(arg2)] = arg3
    if not arg1:
        stor10[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor8[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor8[stor7[address(arg1)][stor3[address(arg1)] - 1]] = stor8[arg3]
            stor8[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor8[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor10[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[arg3]
        stor10[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not rawOwnerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(rawOwnerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    rawOwnerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not rawOwnerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not rawOwnerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if rawOwnerOf[arg3] != msg.sender:
        if not rawOwnerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor6[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not rawOwnerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if rawOwnerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if balanceOf[address(arg2)]:
        revert with 0, 'EDITH Equity NFT: Maximum of 1 per address'
    sub_b7304eff[address(arg1)] = 0
    sub_b7304eff[address(arg2)] = arg3
    if not arg1:
        stor10[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor8[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor8[stor7[address(arg1)][stor3[address(arg1)] - 1]] = stor8[arg3]
            stor8[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor8[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor10[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[arg3]
        stor10[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not rawOwnerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(rawOwnerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    rawOwnerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
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

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor0.length.field_1):
                if 31 < uint255(stor0.length.field_1):
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor0.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor0.length.field_1)), data=mem[128 len ceil32(uint255(stor0.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        else:
            if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1 % 128:
                if 31 < stor0.length.field_1 % 128:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor0.length.field_1)), data=mem[128 len ceil32(uint255(stor0.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        mem[ceil32(uint255(stor0.length.field_1)) + 192 len ceil32(uint255(stor0.length.field_1))] = mem[128 len ceil32(uint255(stor0.length.field_1))]
        if ceil32(uint255(stor0.length.field_1)) > uint255(stor0.length.field_1):
            mem[ceil32(uint255(stor0.length.field_1)) + uint255(stor0.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor0.length.field_1)), data=mem[128 len ceil32(uint255(stor0.length.field_1))], mem[(2 * ceil32(uint255(stor0.length.field_1))) + 192 len 2 * ceil32(uint255(stor0.length.field_1))]), 
    if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor0.length.field_1):
            if 31 < uint255(stor0.length.field_1):
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while uint255(stor0.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    else:
        if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1 % 128:
            if 31 < stor0.length.field_1 % 128:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    mem[ceil32(stor0.length.field_1 % 128) + 192 len ceil32(stor0.length.field_1 % 128)] = mem[128 len ceil32(stor0.length.field_1 % 128)]
    if ceil32(stor0.length.field_1 % 128) > stor0.length.field_1 % 128:
        mem[ceil32(stor0.length.field_1 % 128) + stor0.length.field_1 % 128 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)], mem[(2 * ceil32(stor0.length.field_1 % 128)) + 192 len 2 * ceil32(stor0.length.field_1 % 128)]), 
}

function symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor1.length.field_1):
                if 31 < uint255(stor1.length.field_1):
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor1.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor1.length.field_1)), data=mem[128 len ceil32(uint255(stor1.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        else:
            if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1 % 128:
                if 31 < stor1.length.field_1 % 128:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor1.length.field_1)), data=mem[128 len ceil32(uint255(stor1.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        mem[ceil32(uint255(stor1.length.field_1)) + 192 len ceil32(uint255(stor1.length.field_1))] = mem[128 len ceil32(uint255(stor1.length.field_1))]
        if ceil32(uint255(stor1.length.field_1)) > uint255(stor1.length.field_1):
            mem[ceil32(uint255(stor1.length.field_1)) + uint255(stor1.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor1.length.field_1)), data=mem[128 len ceil32(uint255(stor1.length.field_1))], mem[(2 * ceil32(uint255(stor1.length.field_1))) + 192 len 2 * ceil32(uint255(stor1.length.field_1))]), 
    if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor1.length.field_1):
            if 31 < uint255(stor1.length.field_1):
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while uint255(stor1.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    else:
        if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1 % 128:
            if 31 < stor1.length.field_1 % 128:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    mem[ceil32(stor1.length.field_1 % 128) + 192 len ceil32(stor1.length.field_1 % 128)] = mem[128 len ceil32(stor1.length.field_1 % 128)]
    if ceil32(stor1.length.field_1 % 128) > stor1.length.field_1 % 128:
        mem[ceil32(stor1.length.field_1 % 128) + stor1.length.field_1 % 128 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)], mem[(2 * ceil32(stor1.length.field_1 % 128)) + 192 len 2 * ceil32(stor1.length.field_1 % 128)]), 
}

function sub_89e363aa(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if janitorAddress != msg.sender:
            if sub_0cd5a495Address != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
    if sub_20207bb0 <= -2:
        sub_20207bb0++
        s = 1
        t = totalToken
        while s <= -t - 1:
            mem[0] = s + t
            mem[32] = 2
            totalToken++
            if rawOwnerOf[s + t]:
                s = totalToken
                t = 1
                continue 
            if sub_e8563f1a > -2:
                revert with 'NH{q', 17
            sub_e8563f1a++
            if sub_e8563f1a >= sub_b0479a80:
                sub_e8563f1a = 0
                if PRICE > -sub_754e6c93 - 1:
                    revert with 'NH{q', 17
                PRICE += sub_754e6c93
            stor20[stor30].field_0 = 0
            stor20[stor30].field_256 = 1
            if stor15 > -2:
                revert with 'NH{q', 17
            stor15++
            if not address(arg1):
                revert with 0, 'ERC721: mint to the zero address'
            if rawOwnerOf[stor30]:
                revert with 0, 'ERC721: token already minted'
            if not address(arg1):
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)]:
                revert with 0, 'EDITH Equity NFT: Maximum of 1 per address'
            sub_b7304eff[0] = 0
            sub_b7304eff[address(arg1)] = totalToken
            stor10[stor30] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = totalToken
            if address(arg1):
                tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = totalToken
                stor8[stor30] = balanceOf[address(arg1)]
            else:
                if tokenByIndex.length < 1:
                    revert with 'NH{q', 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 'NH{q', 50
                if stor10[stor30] >= tokenByIndex.length:
                    revert with 'NH{q', 50
                tokenByIndex[stor10[stor30]] = tokenByIndex[tokenByIndex.length]
                stor10[stor9[stor9.length]] = stor10[stor30]
                stor10[stor30] = 0
                if not tokenByIndex.length:
                    revert with 'NH{q', 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            if balanceOf[address(arg1)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(arg1)]++
            rawOwnerOf[stor30] = address(arg1)
            emit Transfer(0, address(arg1), totalToken);
            if ext_code.size(address(arg1)) > 0:
                mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[132] = msg.sender
                idx = 0
                while idx < 0:
                    mem[idx + 292] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                require ext_code.size(address(arg1))
                call address(arg1).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), 0, totalToken, 128, 0
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
            emit 0x8521545c: totalToken
    revert with 'NH{q', 17
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not rawOwnerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not rawOwnerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if rawOwnerOf[arg3] != msg.sender:
        if not rawOwnerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor6[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not rawOwnerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if rawOwnerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if balanceOf[address(arg2)]:
        revert with 0, 'EDITH Equity NFT: Maximum of 1 per address'
    sub_b7304eff[address(arg1)] = 0
    sub_b7304eff[address(arg2)] = arg3
    if not arg1:
        stor10[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor8[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor8[stor7[address(arg1)][stor3[address(arg1)] - 1]] = stor8[arg3]
            stor8[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor8[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor10[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[arg3]
        stor10[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not rawOwnerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(rawOwnerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    rawOwnerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            if not return_data.size:
                if not arg4.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg4[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function mint() payable {
    mem[64] = 96
    if totalToken > sub_d5738d88:
        revert with 0, 'EDITH NFT: Soldout!'
    if PRICE != msg.value:
        revert with 0, 'EDITH NFT: the value is error'
    if stor17 <= -msg.value - 1:
        stor17 += msg.value
        mem[96] = msg.sender
        mem[128] = msg.value
        emit 0xe375e50a: msg.sender, msg.value
        if stor18 <= -PRICE - 1:
            stor18 += PRICE
            s = 1
            t = totalToken
            while s <= -t - 1:
                mem[0] = s + t
                mem[32] = 2
                totalToken++
                if rawOwnerOf[s + t]:
                    s = totalToken
                    t = 1
                    continue 
                if sub_e8563f1a > -2:
                    revert with 'NH{q', 17
                sub_e8563f1a++
                if sub_e8563f1a >= sub_b0479a80:
                    sub_e8563f1a = 0
                    if PRICE > -sub_754e6c93 - 1:
                        revert with 'NH{q', 17
                    PRICE += sub_754e6c93
                stor20[stor30].field_0 = PRICE
                stor20[stor30].field_256 = 1
                if stor15 > -2:
                    revert with 'NH{q', 17
                stor15++
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if rawOwnerOf[stor30]:
                    revert with 0, 'ERC721: token already minted'
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                if balanceOf[address(msg.sender)]:
                    revert with 0, 'EDITH Equity NFT: Maximum of 1 per address'
                sub_b7304eff[0] = 0
                sub_b7304eff[address(msg.sender)] = totalToken
                stor10[stor30] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = totalToken
                if msg.sender:
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = totalToken
                    stor8[stor30] = balanceOf[address(msg.sender)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor10[stor30] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor10[stor30]] = tokenByIndex[tokenByIndex.length]
                    stor10[stor9[stor9.length]] = stor10[stor30]
                    stor10[stor30] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                rawOwnerOf[stor30] = msg.sender
                emit Transfer(0, msg.sender, totalToken);
                if ext_code.size(msg.sender) > 0:
                    mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[132] = msg.sender
                    mem[164] = 0
                    mem[196] = totalToken
                    mem[228] = 128
                    mem[260] = 0
                    idx = 0
                    while idx < 0:
                        mem[idx + 292] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, uint32(msg.sender), 0, totalToken, 128, 0
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not msg.sender:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len msg.sender
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                emit 0x8521545c: totalToken
    revert with 'NH{q', 17
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not rawOwnerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EDITH NFT: URI query for nonexistent token'
    mem[32] = 20
    if bool(stor20[arg1].field_1024):
        if bool(stor20[arg1].field_1024) == uint255(stor20[arg1].field_1025) < 32:
            revert with 'NH{q', 34
        mem[64] = ceil32(uint255(stor20[arg1].field_1025)) + 128
        mem[96] = uint255(stor20[arg1].field_1025)
        if bool(stor20[arg1].field_1024):
            if bool(stor20[arg1].field_1024) == uint255(stor20[arg1].field_1025) < 32:
                revert with 'NH{q', 34
            if not uint255(stor20[arg1].field_1025):
                if uint255(stor20[arg1].field_1025) > 0:
                    if bool(stor21.length):
                        if bool(stor21.length) == uint255(stor21.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor21.length):
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + 160] = Mask(248, 8, stor21.length)
                        else:
                            if bool(stor21.length) != 1:
                                mem[64] = uint255(stor20[arg1].field_1025)
                                if ceil32(uint255(stor20[arg1].field_1025)) <= uint255(stor20[arg1].field_1025):
                                    _4604 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                                    mem[uint255(stor20[arg1].field_1025) + 32] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                                    mem[uint255(stor20[arg1].field_1025) + 64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                                    if ceil32(_4604) > _4604:
                                        mem[uint255(stor20[arg1].field_1025) + _4604 + 64] = 0
                                    return 32, mem[uint255(stor20[arg1].field_1025) + 32 len ceil32(_4604) + 32]
                                _4637 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                                mem[uint255(stor20[arg1].field_1025) + 32] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                                mem[uint255(stor20[arg1].field_1025) + 64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                                if ceil32(_4637) > _4637:
                                    mem[uint255(stor20[arg1].field_1025) + _4637 + 64] = 0
                                return 32, mem[uint255(stor20[arg1].field_1025) + 32 len ceil32(_4637) + 32]
                            idx = 0
                            s = 0
                            while idx < uint255(stor21.length.field_1):
                                mem[ceil32(uint255(stor20[arg1].field_1025)) + idx + 160] = stor21[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + 160 len ceil32(uint255(stor20[arg1].field_1025))] = mem[128 len ceil32(uint255(stor20[arg1].field_1025))]
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor20[arg1].field_1025) + 160] = 32
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor20[arg1].field_1025) + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor20[arg1].field_1025) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                        if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor20[arg1].field_1025) + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                        return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor20[arg1].field_1025) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                    if bool(stor21.length) == stor21.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor21.length):
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + 160] = Mask(248, 8, stor21.length)
                    else:
                        if bool(stor21.length) != 1:
                            mem[64] = uint255(stor20[arg1].field_1025)
                            if ceil32(uint255(stor20[arg1].field_1025)) <= uint255(stor20[arg1].field_1025):
                                _4606 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                                mem[uint255(stor20[arg1].field_1025) + 32] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                                mem[uint255(stor20[arg1].field_1025) + 64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                                if ceil32(_4606) > _4606:
                                    mem[uint255(stor20[arg1].field_1025) + _4606 + 64] = 0
                                return 32, mem[uint255(stor20[arg1].field_1025) + 32 len ceil32(_4606) + 32]
                            _4640 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                            mem[uint255(stor20[arg1].field_1025) + 32] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                            mem[uint255(stor20[arg1].field_1025) + 64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                            if ceil32(_4640) > _4640:
                                mem[uint255(stor20[arg1].field_1025) + _4640 + 64] = 0
                            return 32, mem[uint255(stor20[arg1].field_1025) + 32 len ceil32(_4640) + 32]
                        idx = 0
                        s = 0
                        while idx < stor21.length.field_1 % 128:
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + idx + 160] = stor21[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + 160 len ceil32(uint255(stor20[arg1].field_1025))] = mem[128 len ceil32(uint255(stor20[arg1].field_1025))]
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor20[arg1].field_1025) + 160] = 32
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor20[arg1].field_1025) + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor20[arg1].field_1025) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor20[arg1].field_1025) + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor20[arg1].field_1025) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                if bool(stor21.length):
                    if bool(stor21.length) == uint255(stor21.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor21.length):
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + 160] = Mask(248, 8, stor21.length)
                        if bool(stor22.length):
                            if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                                revert with 'NH{q', 34
                            if not bool(stor22.length):
                                mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                                mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 160] = 32
                                return Array(len=uint255(stor21.length.field_1) + uint255(stor22.length.field_1), data=mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len floor32(uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 31)]), 
                            if bool(stor22.length) != 1:
                                return Array(len=-ceil32(uint255(stor20[arg1].field_1025)) - 160, data=ceil32(uint255(stor20[arg1].field_1025)) + 128, 2 * Mask(256, -1, uint255(stor20[arg1].field_1025)), mem[128 len ceil32(uint255(stor20[arg1].field_1025)) + 32], Mask(248, 8, stor21.length), mem[ceil32(uint255(stor20[arg1].field_1025)) + 192 len floor32(-ceil32(uint255(stor20[arg1].field_1025)) - 129) + -ceil32(uint255(stor20[arg1].field_1025)) - 128]), 
                            idx = 0
                            s = 0
                            while idx < uint255(stor22.length.field_1):
                                mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 160] = 32
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                            if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                                mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                            return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                        if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor22.length):
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 160] = 32
                            return Array(len=uint255(stor21.length.field_1) + stor22.length.field_1 % 128, data=mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len floor32(uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 31)]), 
                        if bool(stor22.length) != 1:
                            return Array(len=-ceil32(uint255(stor20[arg1].field_1025)) - 160, data=ceil32(uint255(stor20[arg1].field_1025)) + 128, 2 * Mask(256, -1, uint255(stor20[arg1].field_1025)), mem[128 len ceil32(uint255(stor20[arg1].field_1025)) + 32], Mask(248, 8, stor21.length), mem[ceil32(uint255(stor20[arg1].field_1025)) + 192 len floor32(-ceil32(uint255(stor20[arg1].field_1025)) - 129) + -ceil32(uint255(stor20[arg1].field_1025)) - 128]), 
                        idx = 0
                        s = 0
                        while idx < stor22.length.field_1 % 128:
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 160] = 32
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                        if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                        return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                    if bool(stor21.length) == 1:
                        idx = 0
                        s = 0
                        while idx < uint255(stor21.length.field_1):
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + idx + 160] = stor21[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if bool(stor22.length):
                            if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                                revert with 'NH{q', 34
                            if not bool(stor22.length):
                                mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                            else:
                                if bool(stor22.length) != 1:
                                    mem[64] = 0
                                    _5099 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                                    mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                                    if ceil32(_5099) > _5099:
                                        mem[_5099 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_5099) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < uint255(stor22.length.field_1):
                                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 160] = 32
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                            if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                                mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                            return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                        if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor22.length):
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                        else:
                            if bool(stor22.length) != 1:
                                mem[64] = 0
                                _5166 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                                mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                                if ceil32(_5166) > _5166:
                                    mem[_5166 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_5166) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor22.length.field_1 % 128:
                                mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 160] = 32
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                        if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                        return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                    if bool(stor22.length):
                        if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor22.length):
                            mem[0] = Mask(248, 8, stor22.length)
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] = uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 160
                            mem[64] = uint255(stor22.length.field_1)
                            mem[uint255(stor22.length.field_1)] = 32
                            mem[uint255(stor22.length.field_1) + 32] = uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 160
                            mem[uint255(stor22.length.field_1) + 64 len floor32(uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 129)] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len floor32(uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 129)]
                            return Array(len=uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 160, data=mem[uint255(stor22.length.field_1) + 64 len floor32(uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 129)]), 
                        if bool(stor22.length) != 1:
                            return Array(len=-ceil32(uint255(stor20[arg1].field_1025)) - 160, data=ceil32(uint255(stor20[arg1].field_1025)) + 128, 2 * Mask(256, -1, uint255(stor20[arg1].field_1025)), mem[128 len floor32(-ceil32(uint255(stor20[arg1].field_1025)) - 129) - 64]), 
                        mem[0] = 22
                        idx = 0
                        s = 0
                        while idx < uint255(stor22.length.field_1):
                            mem[idx] = stor[s + sha3(mem[0])]
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _4013 = mem[64]
                        mem[64] = uint255(stor22.length.field_1)
                        mem[uint255(stor22.length.field_1)] = 32
                        _4541 = mem[_4013]
                        mem[uint255(stor22.length.field_1) + 32] = mem[_4013]
                        mem[uint255(stor22.length.field_1) + 64 len ceil32(_4541)] = mem[_4013 + 32 len ceil32(_4541)]
                        if ceil32(_4541) > _4541:
                            mem[uint255(stor22.length.field_1) + _4541 + 64] = 0
                        return 32, mem[uint255(stor22.length.field_1) + 32 len ceil32(_4541) + 32]
                    if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[0] = Mask(248, 8, stor22.length)
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] = stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 160
                        mem[64] = stor22.length.field_1 % 128
                        mem[stor22.length.field_1 % 128] = 32
                        mem[stor22.length.field_1 % 128 + 32] = stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 160
                        mem[stor22.length.field_1 % 128 + 64 len floor32(stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 129)] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len floor32(stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 129)]
                        return Array(len=stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 160, data=mem[stor22.length.field_1 % 128 + 64 len floor32(stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 129)]), 
                    if bool(stor22.length) != 1:
                        return Array(len=-ceil32(uint255(stor20[arg1].field_1025)) - 160, data=ceil32(uint255(stor20[arg1].field_1025)) + 128, 2 * Mask(256, -1, uint255(stor20[arg1].field_1025)), mem[128 len floor32(-ceil32(uint255(stor20[arg1].field_1025)) - 129) - 64]), 
                    mem[0] = 22
                    idx = 0
                    s = 0
                    while idx < stor22.length.field_1 % 128:
                        mem[idx] = stor[s + sha3(mem[0])]
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _4014 = mem[64]
                    mem[64] = stor22.length.field_1 % 128
                    mem[stor22.length.field_1 % 128] = 32
                    _4542 = mem[_4014]
                    mem[stor22.length.field_1 % 128 + 32] = mem[_4014]
                    mem[stor22.length.field_1 % 128 + 64 len ceil32(_4542)] = mem[_4014 + 32 len ceil32(_4542)]
                    if ceil32(_4542) > _4542:
                        mem[stor22.length.field_1 % 128 + _4542 + 64] = 0
                    return 32, mem[stor22.length.field_1 % 128 + 32 len ceil32(_4542) + 32]
                if bool(stor21.length) == stor21.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor21.length):
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + 160] = Mask(248, 8, stor21.length)
                    if bool(stor22.length):
                        if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor22.length):
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 160] = 32
                            return Array(len=stor21.length.field_1 % 128 + uint255(stor22.length.field_1), data=mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len floor32(stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 31)]), 
                        if bool(stor22.length) != 1:
                            return Array(len=-ceil32(uint255(stor20[arg1].field_1025)) - 160, data=ceil32(uint255(stor20[arg1].field_1025)) + 128, 2 * Mask(256, -1, uint255(stor20[arg1].field_1025)), mem[128 len ceil32(uint255(stor20[arg1].field_1025)) + 32], Mask(248, 8, stor21.length), mem[ceil32(uint255(stor20[arg1].field_1025)) + 192 len floor32(-ceil32(uint255(stor20[arg1].field_1025)) - 129) + -ceil32(uint255(stor20[arg1].field_1025)) - 128]), 
                        idx = 0
                        s = 0
                        while idx < uint255(stor22.length.field_1):
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 160] = 32
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                        if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                        return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                    if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 160] = 32
                        return Array(len=stor21.length.field_1 % 128 + stor22.length.field_1 % 128, data=mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len floor32(stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 31)]), 
                    if bool(stor22.length) != 1:
                        return Array(len=-ceil32(uint255(stor20[arg1].field_1025)) - 160, data=ceil32(uint255(stor20[arg1].field_1025)) + 128, 2 * Mask(256, -1, uint255(stor20[arg1].field_1025)), mem[128 len ceil32(uint255(stor20[arg1].field_1025)) + 32], Mask(248, 8, stor21.length), mem[ceil32(uint255(stor20[arg1].field_1025)) + 192 len floor32(-ceil32(uint255(stor20[arg1].field_1025)) - 129) + -ceil32(uint255(stor20[arg1].field_1025)) - 128]), 
                    idx = 0
                    s = 0
                    while idx < stor22.length.field_1 % 128:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 160] = 32
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                if bool(stor21.length) == 1:
                    idx = 0
                    s = 0
                    while idx < stor21.length.field_1 % 128:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + idx + 160] = stor21[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if bool(stor22.length):
                        if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor22.length):
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                        else:
                            if bool(stor22.length) != 1:
                                mem[64] = 0
                                _5102 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                                mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                                if ceil32(_5102) > _5102:
                                    mem[_5102 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_5102) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < uint255(stor22.length.field_1):
                                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 160] = 32
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                        if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                        return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                    if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                    else:
                        if bool(stor22.length) != 1:
                            mem[64] = 0
                            _5172 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                            mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                            if ceil32(_5172) > _5172:
                                mem[_5172 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_5172) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor22.length.field_1 % 128:
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 160] = 32
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                if bool(stor22.length):
                    if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[0] = Mask(248, 8, stor22.length)
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] = uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 160
                        mem[64] = uint255(stor22.length.field_1)
                        mem[uint255(stor22.length.field_1)] = 32
                        mem[uint255(stor22.length.field_1) + 32] = uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 160
                        mem[uint255(stor22.length.field_1) + 64 len floor32(uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 129)] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len floor32(uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 129)]
                        return Array(len=uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 160, data=mem[uint255(stor22.length.field_1) + 64 len floor32(uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 129)]), 
                    if bool(stor22.length) != 1:
                        return Array(len=-ceil32(uint255(stor20[arg1].field_1025)) - 160, data=ceil32(uint255(stor20[arg1].field_1025)) + 128, 2 * Mask(256, -1, uint255(stor20[arg1].field_1025)), mem[128 len floor32(-ceil32(uint255(stor20[arg1].field_1025)) - 129) - 64]), 
                    mem[0] = 22
                    idx = 0
                    s = 0
                    while idx < uint255(stor22.length.field_1):
                        mem[idx] = stor[s + sha3(mem[0])]
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _4017 = mem[64]
                    mem[64] = uint255(stor22.length.field_1)
                    mem[uint255(stor22.length.field_1)] = 32
                    _4545 = mem[_4017]
                    mem[uint255(stor22.length.field_1) + 32] = mem[_4017]
                    mem[uint255(stor22.length.field_1) + 64 len ceil32(_4545)] = mem[_4017 + 32 len ceil32(_4545)]
                    if ceil32(_4545) > _4545:
                        mem[uint255(stor22.length.field_1) + _4545 + 64] = 0
                    return 32, mem[uint255(stor22.length.field_1) + 32 len ceil32(_4545) + 32]
                if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[0] = Mask(248, 8, stor22.length)
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] = stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 160
                    mem[64] = stor22.length.field_1 % 128
                    mem[stor22.length.field_1 % 128] = 32
                    mem[stor22.length.field_1 % 128 + 32] = stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 160
                    mem[stor22.length.field_1 % 128 + 64 len floor32(stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 129)] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len floor32(stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 129)]
                    return Array(len=stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 160, data=mem[stor22.length.field_1 % 128 + 64 len floor32(stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 129)]), 
                if bool(stor22.length) != 1:
                    return Array(len=-ceil32(uint255(stor20[arg1].field_1025)) - 160, data=ceil32(uint255(stor20[arg1].field_1025)) + 128, 2 * Mask(256, -1, uint255(stor20[arg1].field_1025)), mem[128 len floor32(-ceil32(uint255(stor20[arg1].field_1025)) - 129) - 64]), 
                mem[0] = 22
                idx = 0
                s = 0
                while idx < stor22.length.field_1 % 128:
                    mem[idx] = stor[s + sha3(mem[0])]
                    idx = idx + 32
                    s = s + 1
                    continue 
                _4018 = mem[64]
                mem[64] = stor22.length.field_1 % 128
                mem[stor22.length.field_1 % 128] = 32
                _4546 = mem[_4018]
                mem[stor22.length.field_1 % 128 + 32] = mem[_4018]
                mem[stor22.length.field_1 % 128 + 64 len ceil32(_4546)] = mem[_4018 + 32 len ceil32(_4546)]
                if ceil32(_4546) > _4546:
                    mem[stor22.length.field_1 % 128 + _4546 + 64] = 0
                return 32, mem[stor22.length.field_1 % 128 + 32 len ceil32(_4546) + 32]
            if 31 >= uint255(stor20[arg1].field_1025):
                mem[128] = 256 * Mask(248, 0, stor20[arg1].field_1032)
                if uint255(stor20[arg1].field_1025) > 0:
                    if bool(stor21.length):
                        if bool(stor21.length) == uint255(stor21.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor21.length):
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + 160] = Mask(248, 8, stor21.length)
                        else:
                            if bool(stor21.length) != 1:
                                mem[64] = uint255(stor20[arg1].field_1025)
                                if ceil32(uint255(stor20[arg1].field_1025)) <= uint255(stor20[arg1].field_1025):
                                    _4608 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                                    mem[uint255(stor20[arg1].field_1025) + 32] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                                    mem[uint255(stor20[arg1].field_1025) + 64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                                    if ceil32(_4608) > _4608:
                                        mem[uint255(stor20[arg1].field_1025) + _4608 + 64] = 0
                                    return 32, mem[uint255(stor20[arg1].field_1025) + 32 len ceil32(_4608) + 32]
                                _4643 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                                mem[uint255(stor20[arg1].field_1025) + 32] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                                mem[uint255(stor20[arg1].field_1025) + 64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                                if ceil32(_4643) > _4643:
                                    mem[uint255(stor20[arg1].field_1025) + _4643 + 64] = 0
                                return 32, mem[uint255(stor20[arg1].field_1025) + 32 len ceil32(_4643) + 32]
                            idx = 0
                            s = 0
                            while idx < uint255(stor21.length.field_1):
                                mem[ceil32(uint255(stor20[arg1].field_1025)) + idx + 160] = stor21[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + 160 len ceil32(uint255(stor20[arg1].field_1025))] = mem[128 len ceil32(uint255(stor20[arg1].field_1025))]
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor20[arg1].field_1025) + 160] = 32
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor20[arg1].field_1025) + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor20[arg1].field_1025) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                        if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor20[arg1].field_1025) + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                        return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor20[arg1].field_1025) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                    if bool(stor21.length) == stor21.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor21.length):
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + 160] = Mask(248, 8, stor21.length)
                    else:
                        if bool(stor21.length) != 1:
                            mem[64] = uint255(stor20[arg1].field_1025)
                            if ceil32(uint255(stor20[arg1].field_1025)) <= uint255(stor20[arg1].field_1025):
                                _4610 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                                mem[uint255(stor20[arg1].field_1025) + 32] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                                mem[uint255(stor20[arg1].field_1025) + 64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                                if ceil32(_4610) > _4610:
                                    mem[uint255(stor20[arg1].field_1025) + _4610 + 64] = 0
                                return 32, mem[uint255(stor20[arg1].field_1025) + 32 len ceil32(_4610) + 32]
                            _4646 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                            mem[uint255(stor20[arg1].field_1025) + 32] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                            mem[uint255(stor20[arg1].field_1025) + 64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                            if ceil32(_4646) > _4646:
                                mem[uint255(stor20[arg1].field_1025) + _4646 + 64] = 0
                            return 32, mem[uint255(stor20[arg1].field_1025) + 32 len ceil32(_4646) + 32]
                        idx = 0
                        s = 0
                        while idx < stor21.length.field_1 % 128:
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + idx + 160] = stor21[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + 160 len ceil32(uint255(stor20[arg1].field_1025))] = mem[128 len ceil32(uint255(stor20[arg1].field_1025))]
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor20[arg1].field_1025) + 160] = 32
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor20[arg1].field_1025) + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor20[arg1].field_1025) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor20[arg1].field_1025) + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor20[arg1].field_1025) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                if bool(stor21.length):
                    if bool(stor21.length) == uint255(stor21.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor21.length):
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + 160] = Mask(248, 8, stor21.length)
                        if bool(stor22.length):
                            if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                                revert with 'NH{q', 34
                            if not bool(stor22.length):
                                mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                                mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 160] = 32
                                return Array(len=uint255(stor21.length.field_1) + uint255(stor22.length.field_1), data=mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len floor32(uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 31)]), 
                            if bool(stor22.length) != 1:
                                return Array(len=-ceil32(uint255(stor20[arg1].field_1025)) - 160, data=ceil32(uint255(stor20[arg1].field_1025)) + 128, 2 * Mask(256, -1, uint255(stor20[arg1].field_1025)), 256 * Mask(248, 0, stor20[arg1].field_1032), mem[160 len floor32(-ceil32(uint255(stor20[arg1].field_1025)) - 129) - 96]), 
                            idx = 0
                            s = 0
                            while idx < uint255(stor22.length.field_1):
                                mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 160] = 32
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                            if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                                mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                            return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                        if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor22.length):
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 160] = 32
                            return Array(len=uint255(stor21.length.field_1) + stor22.length.field_1 % 128, data=mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len floor32(uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 31)]), 
                        if bool(stor22.length) != 1:
                            return Array(len=-ceil32(uint255(stor20[arg1].field_1025)) - 160, data=ceil32(uint255(stor20[arg1].field_1025)) + 128, 2 * Mask(256, -1, uint255(stor20[arg1].field_1025)), 256 * Mask(248, 0, stor20[arg1].field_1032), mem[160 len floor32(-ceil32(uint255(stor20[arg1].field_1025)) - 129) - 96]), 
                        idx = 0
                        s = 0
                        while idx < stor22.length.field_1 % 128:
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 160] = 32
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                        if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                        return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                    if bool(stor21.length) == 1:
                        idx = 0
                        s = 0
                        while idx < uint255(stor21.length.field_1):
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + idx + 160] = stor21[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if bool(stor22.length):
                            if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                                revert with 'NH{q', 34
                            if not bool(stor22.length):
                                mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                            else:
                                if bool(stor22.length) != 1:
                                    mem[64] = 0
                                    _5107 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                                    mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                                    if ceil32(_5107) > _5107:
                                        mem[_5107 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_5107) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < uint255(stor22.length.field_1):
                                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 160] = 32
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                            if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                                mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                            return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                        if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor22.length):
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                        else:
                            if bool(stor22.length) != 1:
                                mem[64] = 0
                                _5181 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                                mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                                if ceil32(_5181) > _5181:
                                    mem[_5181 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_5181) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor22.length.field_1 % 128:
                                mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 160] = 32
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                        if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                        return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                    if bool(stor22.length):
                        if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor22.length):
                            mem[0] = Mask(248, 8, stor22.length)
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] = uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 160
                            mem[64] = uint255(stor22.length.field_1)
                            mem[uint255(stor22.length.field_1)] = 32
                            mem[uint255(stor22.length.field_1) + 32] = uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 160
                            mem[uint255(stor22.length.field_1) + 64 len floor32(uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 129)] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len floor32(uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 129)]
                            return Array(len=uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 160, data=mem[uint255(stor22.length.field_1) + 64 len floor32(uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 129)]), 
                        if bool(stor22.length) != 1:
                            return Array(len=-ceil32(uint255(stor20[arg1].field_1025)) - 160, data=ceil32(uint255(stor20[arg1].field_1025)) + 128, 2 * Mask(256, -1, uint255(stor20[arg1].field_1025)), 256 * Mask(248, 0, stor20[arg1].field_1032), mem[160 len floor32(-ceil32(uint255(stor20[arg1].field_1025)) - 129) - 96]), 
                        mem[0] = 22
                        idx = 0
                        s = 0
                        while idx < uint255(stor22.length.field_1):
                            mem[idx] = stor[s + sha3(mem[0])]
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _4021 = mem[64]
                        mem[64] = uint255(stor22.length.field_1)
                        mem[uint255(stor22.length.field_1)] = 32
                        _4549 = mem[_4021]
                        mem[uint255(stor22.length.field_1) + 32] = mem[_4021]
                        mem[uint255(stor22.length.field_1) + 64 len ceil32(_4549)] = mem[_4021 + 32 len ceil32(_4549)]
                        if ceil32(_4549) > _4549:
                            mem[uint255(stor22.length.field_1) + _4549 + 64] = 0
                        return 32, mem[uint255(stor22.length.field_1) + 32 len ceil32(_4549) + 32]
                    if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[0] = Mask(248, 8, stor22.length)
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] = stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 160
                        mem[64] = stor22.length.field_1 % 128
                        mem[stor22.length.field_1 % 128] = 32
                        mem[stor22.length.field_1 % 128 + 32] = stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 160
                        mem[stor22.length.field_1 % 128 + 64 len floor32(stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 129)] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len floor32(stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 129)]
                        return Array(len=stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 160, data=mem[stor22.length.field_1 % 128 + 64 len floor32(stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 129)]), 
                    if bool(stor22.length) != 1:
                        return Array(len=-ceil32(uint255(stor20[arg1].field_1025)) - 160, data=ceil32(uint255(stor20[arg1].field_1025)) + 128, 2 * Mask(256, -1, uint255(stor20[arg1].field_1025)), 256 * Mask(248, 0, stor20[arg1].field_1032), mem[160 len floor32(-ceil32(uint255(stor20[arg1].field_1025)) - 129) - 96]), 
                    mem[0] = 22
                    idx = 0
                    s = 0
                    while idx < stor22.length.field_1 % 128:
                        mem[idx] = stor[s + sha3(mem[0])]
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _4022 = mem[64]
                    mem[64] = stor22.length.field_1 % 128
                    mem[stor22.length.field_1 % 128] = 32
                    _4550 = mem[_4022]
                    mem[stor22.length.field_1 % 128 + 32] = mem[_4022]
                    mem[stor22.length.field_1 % 128 + 64 len ceil32(_4550)] = mem[_4022 + 32 len ceil32(_4550)]
                    if ceil32(_4550) > _4550:
                        mem[stor22.length.field_1 % 128 + _4550 + 64] = 0
                    return 32, mem[stor22.length.field_1 % 128 + 32 len ceil32(_4550) + 32]
                if bool(stor21.length) == stor21.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor21.length):
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + 160] = Mask(248, 8, stor21.length)
                    if bool(stor22.length):
                        if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor22.length):
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 160] = 32
                            return Array(len=stor21.length.field_1 % 128 + uint255(stor22.length.field_1), data=mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len floor32(stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 31)]), 
                        if bool(stor22.length) != 1:
                            return Array(len=-ceil32(uint255(stor20[arg1].field_1025)) - 160, data=ceil32(uint255(stor20[arg1].field_1025)) + 128, 2 * Mask(256, -1, uint255(stor20[arg1].field_1025)), 256 * Mask(248, 0, stor20[arg1].field_1032), mem[160 len floor32(-ceil32(uint255(stor20[arg1].field_1025)) - 129) - 96]), 
                        idx = 0
                        s = 0
                        while idx < uint255(stor22.length.field_1):
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 160] = 32
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                        if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                        return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                    if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 160] = 32
                        return Array(len=stor21.length.field_1 % 128 + stor22.length.field_1 % 128, data=mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len floor32(stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 31)]), 
                    if bool(stor22.length) != 1:
                        return Array(len=-ceil32(uint255(stor20[arg1].field_1025)) - 160, data=ceil32(uint255(stor20[arg1].field_1025)) + 128, 2 * Mask(256, -1, uint255(stor20[arg1].field_1025)), 256 * Mask(248, 0, stor20[arg1].field_1032), mem[160 len floor32(-ceil32(uint255(stor20[arg1].field_1025)) - 129) - 96]), 
                    idx = 0
                    s = 0
                    while idx < stor22.length.field_1 % 128:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 160] = 32
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                if bool(stor21.length) == 1:
                    idx = 0
                    s = 0
                    while idx < stor21.length.field_1 % 128:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + idx + 160] = stor21[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if bool(stor22.length):
                        if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor22.length):
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                        else:
                            if bool(stor22.length) != 1:
                                mem[64] = 0
                                _5110 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                                mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                                if ceil32(_5110) > _5110:
                                    mem[_5110 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_5110) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < uint255(stor22.length.field_1):
                                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 160] = 32
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                        if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                        return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                    if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                    else:
                        if bool(stor22.length) != 1:
                            mem[64] = 0
                            _5187 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                            mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                            if ceil32(_5187) > _5187:
                                mem[_5187 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_5187) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor22.length.field_1 % 128:
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 160] = 32
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                if bool(stor22.length):
                    if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[0] = Mask(248, 8, stor22.length)
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] = uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 160
                        mem[64] = uint255(stor22.length.field_1)
                        mem[uint255(stor22.length.field_1)] = 32
                        mem[uint255(stor22.length.field_1) + 32] = uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 160
                        mem[uint255(stor22.length.field_1) + 64 len floor32(uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 129)] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len floor32(uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 129)]
                        return Array(len=uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 160, data=mem[uint255(stor22.length.field_1) + 64 len floor32(uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 129)]), 
                    if bool(stor22.length) != 1:
                        return Array(len=-ceil32(uint255(stor20[arg1].field_1025)) - 160, data=ceil32(uint255(stor20[arg1].field_1025)) + 128, 2 * Mask(256, -1, uint255(stor20[arg1].field_1025)), 256 * Mask(248, 0, stor20[arg1].field_1032), mem[160 len floor32(-ceil32(uint255(stor20[arg1].field_1025)) - 129) - 96]), 
                    mem[0] = 22
                    idx = 0
                    s = 0
                    while idx < uint255(stor22.length.field_1):
                        mem[idx] = stor[s + sha3(mem[0])]
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _4025 = mem[64]
                    mem[64] = uint255(stor22.length.field_1)
                    mem[uint255(stor22.length.field_1)] = 32
                    _4553 = mem[_4025]
                    mem[uint255(stor22.length.field_1) + 32] = mem[_4025]
                    mem[uint255(stor22.length.field_1) + 64 len ceil32(_4553)] = mem[_4025 + 32 len ceil32(_4553)]
                    if ceil32(_4553) > _4553:
                        mem[uint255(stor22.length.field_1) + _4553 + 64] = 0
                    return 32, mem[uint255(stor22.length.field_1) + 32 len ceil32(_4553) + 32]
                if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[0] = Mask(248, 8, stor22.length)
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] = stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 160
                    mem[64] = stor22.length.field_1 % 128
                    mem[stor22.length.field_1 % 128] = 32
                    mem[stor22.length.field_1 % 128 + 32] = stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 160
                    mem[stor22.length.field_1 % 128 + 64 len floor32(stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 129)] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len floor32(stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 129)]
                    return Array(len=stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 160, data=mem[stor22.length.field_1 % 128 + 64 len floor32(stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 129)]), 
                if bool(stor22.length) != 1:
                    return Array(len=-ceil32(uint255(stor20[arg1].field_1025)) - 160, data=ceil32(uint255(stor20[arg1].field_1025)) + 128, 2 * Mask(256, -1, uint255(stor20[arg1].field_1025)), 256 * Mask(248, 0, stor20[arg1].field_1032), mem[160 len floor32(-ceil32(uint255(stor20[arg1].field_1025)) - 129) - 96]), 
                mem[0] = 22
                idx = 0
                s = 0
                while idx < stor22.length.field_1 % 128:
                    mem[idx] = stor[s + sha3(mem[0])]
                    idx = idx + 32
                    s = s + 1
                    continue 
                _4026 = mem[64]
                mem[64] = stor22.length.field_1 % 128
                mem[stor22.length.field_1 % 128] = 32
                _4554 = mem[_4026]
                mem[stor22.length.field_1 % 128 + 32] = mem[_4026]
                mem[stor22.length.field_1 % 128 + 64 len ceil32(_4554)] = mem[_4026 + 32 len ceil32(_4554)]
                if ceil32(_4554) > _4554:
                    mem[stor22.length.field_1 % 128 + _4554 + 64] = 0
                return 32, mem[stor22.length.field_1 % 128 + 32 len ceil32(_4554) + 32]
            mem[128] = stor20[arg1][4].field_0
            idx = 128
            s = 0
            while uint255(stor20[arg1].field_1025) + 96 > idx:
                mem[idx + 32] = stor20[arg1][s + 4].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if uint255(stor20[arg1].field_1025) > 0:
                if bool(stor21.length):
                    if bool(stor21.length) == uint255(stor21.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor21.length):
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + 160] = Mask(248, 8, stor21.length)
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + 160 len ceil32(uint255(stor20[arg1].field_1025))] = mem[128 len ceil32(uint255(stor20[arg1].field_1025))]
                    else:
                        if bool(stor21.length) != 1:
                            mem[64] = uint255(stor20[arg1].field_1025)
                            if ceil32(uint255(stor20[arg1].field_1025)) <= uint255(stor20[arg1].field_1025):
                                _8262 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                                mem[uint255(stor20[arg1].field_1025) + 32] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                                mem[uint255(stor20[arg1].field_1025) + 64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                                if ceil32(_8262) > _8262:
                                    mem[uint255(stor20[arg1].field_1025) + _8262 + 64] = 0
                                return 32, mem[uint255(stor20[arg1].field_1025) + 32 len ceil32(_8262) + 32]
                            _8295 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                            mem[uint255(stor20[arg1].field_1025) + 32] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                            mem[uint255(stor20[arg1].field_1025) + 64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                            if ceil32(_8295) > _8295:
                                mem[uint255(stor20[arg1].field_1025) + _8295 + 64] = 0
                            return 32, mem[uint255(stor20[arg1].field_1025) + 32 len ceil32(_8295) + 32]
                        idx = 0
                        s = 0
                        while idx < uint255(stor21.length.field_1):
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + idx + 160] = stor21[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + 160 len ceil32(uint255(stor20[arg1].field_1025))] = mem[128 len ceil32(uint255(stor20[arg1].field_1025))]
                        var57001 = ceil32(uint255(stor20[arg1].field_1025))
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor20[arg1].field_1025) + 160] = 32
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor20[arg1].field_1025) + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor20[arg1].field_1025) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor20[arg1].field_1025) + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor20[arg1].field_1025) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                if bool(stor21.length) == stor21.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor21.length):
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + 160] = Mask(248, 8, stor21.length)
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + 160 len ceil32(uint255(stor20[arg1].field_1025))] = mem[128 len ceil32(uint255(stor20[arg1].field_1025))]
                else:
                    if bool(stor21.length) != 1:
                        mem[64] = uint255(stor20[arg1].field_1025)
                        if ceil32(uint255(stor20[arg1].field_1025)) <= uint255(stor20[arg1].field_1025):
                            _8264 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                            mem[uint255(stor20[arg1].field_1025) + 32] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                            mem[uint255(stor20[arg1].field_1025) + 64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                            if ceil32(_8264) > _8264:
                                mem[uint255(stor20[arg1].field_1025) + _8264 + 64] = 0
                            return 32, mem[uint255(stor20[arg1].field_1025) + 32 len ceil32(_8264) + 32]
                        _8298 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                        mem[uint255(stor20[arg1].field_1025) + 32] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                        mem[uint255(stor20[arg1].field_1025) + 64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                        if ceil32(_8298) > _8298:
                            mem[uint255(stor20[arg1].field_1025) + _8298 + 64] = 0
                        return 32, mem[uint255(stor20[arg1].field_1025) + 32 len ceil32(_8298) + 32]
                    idx = 0
                    s = 0
                    while idx < stor21.length.field_1 % 128:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + idx + 160] = stor21[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + 160 len ceil32(uint255(stor20[arg1].field_1025))] = mem[128 len ceil32(uint255(stor20[arg1].field_1025))]
                    var58001 = ceil32(uint255(stor20[arg1].field_1025))
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor20[arg1].field_1025) + 160] = 32
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor20[arg1].field_1025) + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor20[arg1].field_1025) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor20[arg1].field_1025) + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor20[arg1].field_1025) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
            if bool(stor21.length):
                if bool(stor21.length) == uint255(stor21.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor21.length):
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + 160] = Mask(248, 8, stor21.length)
                    if bool(stor22.length):
                        if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor22.length):
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                        else:
                            if bool(stor22.length) != 1:
                                mem[64] = 0
                                _5903 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                                mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                                if ceil32(_5903) > _5903:
                                    mem[_5903 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_5903) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < uint255(stor22.length.field_1):
                                mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 160] = 32
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                        if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                        return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                    if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                    else:
                        if bool(stor22.length) != 1:
                            mem[64] = 0
                            _6000 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                            mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                            if ceil32(_6000) > _6000:
                                mem[_6000 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_6000) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor22.length.field_1 % 128:
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 160] = 32
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                if bool(stor21.length) == 1:
                    idx = 0
                    s = 0
                    while idx < uint255(stor21.length.field_1):
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + idx + 160] = stor21[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if bool(stor22.length):
                        if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor22.length):
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                        else:
                            if bool(stor22.length) != 1:
                                mem[64] = 0
                                _8587 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                                mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                                if ceil32(_8587) > _8587:
                                    mem[_8587 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_8587) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < uint255(stor22.length.field_1):
                                mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 160] = 32
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                        if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                        return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                    if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                    else:
                        if bool(stor22.length) != 1:
                            mem[64] = 0
                            _8626 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                            mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                            if ceil32(_8626) > _8626:
                                mem[_8626 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_8626) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor22.length.field_1 % 128:
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 160] = 32
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                if bool(stor22.length):
                    if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[0] = Mask(248, 8, stor22.length)
                        mem[64] = uint255(stor22.length.field_1)
                        mem[uint255(stor22.length.field_1)] = 32
                        _5908 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                        mem[uint255(stor22.length.field_1) + 32] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                        mem[uint255(stor22.length.field_1) + 64 len ceil32(_5908)] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(_5908)]
                        if ceil32(_5908) > _5908:
                            mem[uint255(stor22.length.field_1) + _5908 + 64] = 0
                        return 32, mem[uint255(stor22.length.field_1) + 32 len ceil32(_5908) + 32]
                    if bool(stor22.length) != 1:
                        mem[64] = 0
                        _6003 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                        mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                        if ceil32(_6003) > _6003:
                            mem[_6003 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_6003) + -mem[64] + 64
                    mem[0] = 22
                    idx = 0
                    s = 0
                    while idx < uint255(stor22.length.field_1):
                        mem[idx] = stor[s + sha3(mem[0])]
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _7425 = mem[64]
                    mem[64] = uint255(stor22.length.field_1)
                    mem[uint255(stor22.length.field_1)] = 32
                    _8201 = mem[_7425]
                    mem[uint255(stor22.length.field_1) + 32] = mem[_7425]
                    mem[uint255(stor22.length.field_1) + 64 len ceil32(_8201)] = mem[_7425 + 32 len ceil32(_8201)]
                    if ceil32(_8201) > _8201:
                        mem[uint255(stor22.length.field_1) + _8201 + 64] = 0
                    return 32, mem[uint255(stor22.length.field_1) + 32 len ceil32(_8201) + 32]
                if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[0] = Mask(248, 8, stor22.length)
                    mem[64] = stor22.length.field_1 % 128
                    mem[stor22.length.field_1 % 128] = 32
                    _6004 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                    mem[stor22.length.field_1 % 128 + 32] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                    mem[stor22.length.field_1 % 128 + 64 len ceil32(_6004)] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(_6004)]
                    if ceil32(_6004) > _6004:
                        mem[stor22.length.field_1 % 128 + _6004 + 64] = 0
                    return 32, mem[stor22.length.field_1 % 128 + 32 len ceil32(_6004) + 32]
                if bool(stor22.length) != 1:
                    mem[64] = 0
                    _6145 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                    mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                    if ceil32(_6145) > _6145:
                        mem[_6145 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_6145) + -mem[64] + 64
                mem[0] = 22
                idx = 0
                s = 0
                while idx < stor22.length.field_1 % 128:
                    mem[idx] = stor[s + sha3(mem[0])]
                    idx = idx + 32
                    s = s + 1
                    continue 
                _7426 = mem[64]
                mem[64] = stor22.length.field_1 % 128
                mem[stor22.length.field_1 % 128] = 32
                _8202 = mem[_7426]
                mem[stor22.length.field_1 % 128 + 32] = mem[_7426]
                mem[stor22.length.field_1 % 128 + 64 len ceil32(_8202)] = mem[_7426 + 32 len ceil32(_8202)]
                if ceil32(_8202) > _8202:
                    mem[stor22.length.field_1 % 128 + _8202 + 64] = 0
                return 32, mem[stor22.length.field_1 % 128 + 32 len ceil32(_8202) + 32]
            if bool(stor21.length) == stor21.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor21.length):
                mem[ceil32(uint255(stor20[arg1].field_1025)) + 160] = Mask(248, 8, stor21.length)
                if bool(stor22.length):
                    if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                    else:
                        if bool(stor22.length) != 1:
                            mem[64] = 0
                            _6006 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                            mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                            if ceil32(_6006) > _6006:
                                mem[_6006 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_6006) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < uint255(stor22.length.field_1):
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 160] = 32
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                else:
                    if bool(stor22.length) != 1:
                        mem[64] = 0
                        _6147 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                        mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                        if ceil32(_6147) > _6147:
                            mem[_6147 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_6147) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor22.length.field_1 % 128:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 160] = 32
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
            if bool(stor21.length) == 1:
                idx = 0
                s = 0
                while idx < stor21.length.field_1 % 128:
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + idx + 160] = stor21[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if bool(stor22.length):
                    if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                    else:
                        if bool(stor22.length) != 1:
                            mem[64] = 0
                            _8590 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                            mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                            if ceil32(_8590) > _8590:
                                mem[_8590 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_8590) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < uint255(stor22.length.field_1):
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 160] = 32
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                else:
                    if bool(stor22.length) != 1:
                        mem[64] = 0
                        _8632 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                        mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                        if ceil32(_8632) > _8632:
                            mem[_8632 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_8632) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor22.length.field_1 % 128:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 160] = 32
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
            if bool(stor22.length):
                if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[0] = Mask(248, 8, stor22.length)
                    mem[64] = uint255(stor22.length.field_1)
                    mem[uint255(stor22.length.field_1)] = 32
                    _6011 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                    mem[uint255(stor22.length.field_1) + 32] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                    mem[uint255(stor22.length.field_1) + 64 len ceil32(_6011)] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(_6011)]
                    if ceil32(_6011) > _6011:
                        mem[uint255(stor22.length.field_1) + _6011 + 64] = 0
                    return 32, mem[uint255(stor22.length.field_1) + 32 len ceil32(_6011) + 32]
                if bool(stor22.length) != 1:
                    mem[64] = 0
                    _6150 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                    mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                    if ceil32(_6150) > _6150:
                        mem[_6150 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_6150) + -mem[64] + 64
                mem[0] = 22
                idx = 0
                s = 0
                while idx < uint255(stor22.length.field_1):
                    mem[idx] = stor[s + sha3(mem[0])]
                    idx = idx + 32
                    s = s + 1
                    continue 
                _7429 = mem[64]
                mem[64] = uint255(stor22.length.field_1)
                mem[uint255(stor22.length.field_1)] = 32
                _8205 = mem[_7429]
                mem[uint255(stor22.length.field_1) + 32] = mem[_7429]
                mem[uint255(stor22.length.field_1) + 64 len ceil32(_8205)] = mem[_7429 + 32 len ceil32(_8205)]
                if ceil32(_8205) > _8205:
                    mem[uint255(stor22.length.field_1) + _8205 + 64] = 0
                return 32, mem[uint255(stor22.length.field_1) + 32 len ceil32(_8205) + 32]
            if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor22.length):
                mem[0] = Mask(248, 8, stor22.length)
                mem[64] = stor22.length.field_1 % 128
                mem[stor22.length.field_1 % 128] = 32
                _6151 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                mem[stor22.length.field_1 % 128 + 32] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                mem[stor22.length.field_1 % 128 + 64 len ceil32(_6151)] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(_6151)]
                if ceil32(_6151) > _6151:
                    mem[stor22.length.field_1 % 128 + _6151 + 64] = 0
                return 32, mem[stor22.length.field_1 % 128 + 32 len ceil32(_6151) + 32]
            if bool(stor22.length) != 1:
                mem[64] = 0
                _6289 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                if ceil32(_6289) > _6289:
                    mem[_6289 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_6289) + -mem[64] + 64
            mem[0] = 22
            idx = 0
            s = 0
            while idx < stor22.length.field_1 % 128:
                mem[idx] = stor[s + sha3(mem[0])]
                idx = idx + 32
                s = s + 1
                continue 
            _7430 = mem[64]
            mem[64] = stor22.length.field_1 % 128
            mem[stor22.length.field_1 % 128] = 32
            _8206 = mem[_7430]
            mem[stor22.length.field_1 % 128 + 32] = mem[_7430]
            mem[stor22.length.field_1 % 128 + 64 len ceil32(_8206)] = mem[_7430 + 32 len ceil32(_8206)]
            if ceil32(_8206) > _8206:
                mem[stor22.length.field_1 % 128 + _8206 + 64] = 0
            return 32, mem[stor22.length.field_1 % 128 + 32 len ceil32(_8206) + 32]
        if bool(stor20[arg1].field_1024) == stor20[arg1].field_1025 % 128 < 32:
            revert with 'NH{q', 34
        if not stor20[arg1].field_1025 % 128:
            if uint255(stor20[arg1].field_1025) > 0:
                if bool(stor21.length):
                    if bool(stor21.length) == uint255(stor21.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor21.length):
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + 160] = Mask(248, 8, stor21.length)
                    else:
                        if bool(stor21.length) != 1:
                            mem[64] = uint255(stor20[arg1].field_1025)
                            if ceil32(uint255(stor20[arg1].field_1025)) <= uint255(stor20[arg1].field_1025):
                                _4612 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                                mem[uint255(stor20[arg1].field_1025) + 32] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                                mem[uint255(stor20[arg1].field_1025) + 64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                                if ceil32(_4612) > _4612:
                                    mem[uint255(stor20[arg1].field_1025) + _4612 + 64] = 0
                                return 32, mem[uint255(stor20[arg1].field_1025) + 32 len ceil32(_4612) + 32]
                            _4649 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                            mem[uint255(stor20[arg1].field_1025) + 32] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                            mem[uint255(stor20[arg1].field_1025) + 64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                            if ceil32(_4649) > _4649:
                                mem[uint255(stor20[arg1].field_1025) + _4649 + 64] = 0
                            return 32, mem[uint255(stor20[arg1].field_1025) + 32 len ceil32(_4649) + 32]
                        idx = 0
                        s = 0
                        while idx < uint255(stor21.length.field_1):
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + idx + 160] = stor21[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + 160 len ceil32(uint255(stor20[arg1].field_1025))] = mem[128 len ceil32(uint255(stor20[arg1].field_1025))]
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor20[arg1].field_1025) + 160] = 32
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor20[arg1].field_1025) + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor20[arg1].field_1025) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor20[arg1].field_1025) + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor20[arg1].field_1025) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                if bool(stor21.length) == stor21.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor21.length):
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + 160] = Mask(248, 8, stor21.length)
                else:
                    if bool(stor21.length) != 1:
                        mem[64] = uint255(stor20[arg1].field_1025)
                        if ceil32(uint255(stor20[arg1].field_1025)) <= uint255(stor20[arg1].field_1025):
                            _4614 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                            mem[uint255(stor20[arg1].field_1025) + 32] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                            mem[uint255(stor20[arg1].field_1025) + 64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                            if ceil32(_4614) > _4614:
                                mem[uint255(stor20[arg1].field_1025) + _4614 + 64] = 0
                            return 32, mem[uint255(stor20[arg1].field_1025) + 32 len ceil32(_4614) + 32]
                        _4652 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                        mem[uint255(stor20[arg1].field_1025) + 32] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                        mem[uint255(stor20[arg1].field_1025) + 64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                        if ceil32(_4652) > _4652:
                            mem[uint255(stor20[arg1].field_1025) + _4652 + 64] = 0
                        return 32, mem[uint255(stor20[arg1].field_1025) + 32 len ceil32(_4652) + 32]
                    idx = 0
                    s = 0
                    while idx < stor21.length.field_1 % 128:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + idx + 160] = stor21[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + 160 len ceil32(uint255(stor20[arg1].field_1025))] = mem[128 len ceil32(uint255(stor20[arg1].field_1025))]
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor20[arg1].field_1025) + 160] = 32
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor20[arg1].field_1025) + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor20[arg1].field_1025) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor20[arg1].field_1025) + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor20[arg1].field_1025) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
            if bool(stor21.length):
                if bool(stor21.length) == uint255(stor21.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor21.length):
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + 160] = Mask(248, 8, stor21.length)
                    if bool(stor22.length):
                        if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor22.length):
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 160] = 32
                            return Array(len=uint255(stor21.length.field_1) + uint255(stor22.length.field_1), data=mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len floor32(uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 31)]), 
                        if bool(stor22.length) != 1:
                            return Array(len=-ceil32(uint255(stor20[arg1].field_1025)) - 160, data=ceil32(uint255(stor20[arg1].field_1025)) + 128, 2 * Mask(256, -1, uint255(stor20[arg1].field_1025)), mem[128 len ceil32(uint255(stor20[arg1].field_1025)) + 32], Mask(248, 8, stor21.length), mem[ceil32(uint255(stor20[arg1].field_1025)) + 192 len floor32(-ceil32(uint255(stor20[arg1].field_1025)) - 129) + -ceil32(uint255(stor20[arg1].field_1025)) - 128]), 
                        idx = 0
                        s = 0
                        while idx < uint255(stor22.length.field_1):
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 160] = 32
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                        if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                        return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                    if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 160] = 32
                        return Array(len=uint255(stor21.length.field_1) + stor22.length.field_1 % 128, data=mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len floor32(uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 31)]), 
                    if bool(stor22.length) != 1:
                        return Array(len=-ceil32(uint255(stor20[arg1].field_1025)) - 160, data=ceil32(uint255(stor20[arg1].field_1025)) + 128, 2 * Mask(256, -1, uint255(stor20[arg1].field_1025)), mem[128 len ceil32(uint255(stor20[arg1].field_1025)) + 32], Mask(248, 8, stor21.length), mem[ceil32(uint255(stor20[arg1].field_1025)) + 192 len floor32(-ceil32(uint255(stor20[arg1].field_1025)) - 129) + -ceil32(uint255(stor20[arg1].field_1025)) - 128]), 
                    idx = 0
                    s = 0
                    while idx < stor22.length.field_1 % 128:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 160] = 32
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                if bool(stor21.length) == 1:
                    idx = 0
                    s = 0
                    while idx < uint255(stor21.length.field_1):
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + idx + 160] = stor21[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if bool(stor22.length):
                        if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor22.length):
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                        else:
                            if bool(stor22.length) != 1:
                                mem[64] = 0
                                _5115 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                                mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                                if ceil32(_5115) > _5115:
                                    mem[_5115 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_5115) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < uint255(stor22.length.field_1):
                                mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 160] = 32
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                        if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                        return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                    if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                    else:
                        if bool(stor22.length) != 1:
                            mem[64] = 0
                            _5195 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                            mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                            if ceil32(_5195) > _5195:
                                mem[_5195 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_5195) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor22.length.field_1 % 128:
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 160] = 32
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                if bool(stor22.length):
                    if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[0] = Mask(248, 8, stor22.length)
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] = uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 160
                        mem[64] = uint255(stor22.length.field_1)
                        mem[uint255(stor22.length.field_1)] = 32
                        mem[uint255(stor22.length.field_1) + 32] = uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 160
                        mem[uint255(stor22.length.field_1) + 64 len floor32(uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 129)] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len floor32(uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 129)]
                        return Array(len=uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 160, data=mem[uint255(stor22.length.field_1) + 64 len floor32(uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 129)]), 
                    if bool(stor22.length) != 1:
                        return Array(len=-ceil32(uint255(stor20[arg1].field_1025)) - 160, data=ceil32(uint255(stor20[arg1].field_1025)) + 128, 2 * Mask(256, -1, uint255(stor20[arg1].field_1025)), mem[128 len floor32(-ceil32(uint255(stor20[arg1].field_1025)) - 129) - 64]), 
                    mem[0] = 22
                    idx = 0
                    s = 0
                    while idx < uint255(stor22.length.field_1):
                        mem[idx] = stor[s + sha3(mem[0])]
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _4029 = mem[64]
                    mem[64] = uint255(stor22.length.field_1)
                    mem[uint255(stor22.length.field_1)] = 32
                    _4557 = mem[_4029]
                    mem[uint255(stor22.length.field_1) + 32] = mem[_4029]
                    mem[uint255(stor22.length.field_1) + 64 len ceil32(_4557)] = mem[_4029 + 32 len ceil32(_4557)]
                    if ceil32(_4557) > _4557:
                        mem[uint255(stor22.length.field_1) + _4557 + 64] = 0
                    return 32, mem[uint255(stor22.length.field_1) + 32 len ceil32(_4557) + 32]
                if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[0] = Mask(248, 8, stor22.length)
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] = stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 160
                    mem[64] = stor22.length.field_1 % 128
                    mem[stor22.length.field_1 % 128] = 32
                    mem[stor22.length.field_1 % 128 + 32] = stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 160
                    mem[stor22.length.field_1 % 128 + 64 len floor32(stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 129)] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len floor32(stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 129)]
                    return Array(len=stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 160, data=mem[stor22.length.field_1 % 128 + 64 len floor32(stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 129)]), 
                if bool(stor22.length) != 1:
                    return Array(len=-ceil32(uint255(stor20[arg1].field_1025)) - 160, data=ceil32(uint255(stor20[arg1].field_1025)) + 128, 2 * Mask(256, -1, uint255(stor20[arg1].field_1025)), mem[128 len floor32(-ceil32(uint255(stor20[arg1].field_1025)) - 129) - 64]), 
                mem[0] = 22
                idx = 0
                s = 0
                while idx < stor22.length.field_1 % 128:
                    mem[idx] = stor[s + sha3(mem[0])]
                    idx = idx + 32
                    s = s + 1
                    continue 
                _4030 = mem[64]
                mem[64] = stor22.length.field_1 % 128
                mem[stor22.length.field_1 % 128] = 32
                _4558 = mem[_4030]
                mem[stor22.length.field_1 % 128 + 32] = mem[_4030]
                mem[stor22.length.field_1 % 128 + 64 len ceil32(_4558)] = mem[_4030 + 32 len ceil32(_4558)]
                if ceil32(_4558) > _4558:
                    mem[stor22.length.field_1 % 128 + _4558 + 64] = 0
                return 32, mem[stor22.length.field_1 % 128 + 32 len ceil32(_4558) + 32]
            if bool(stor21.length) == stor21.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor21.length):
                mem[ceil32(uint255(stor20[arg1].field_1025)) + 160] = Mask(248, 8, stor21.length)
                if bool(stor22.length):
                    if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 160] = 32
                        return Array(len=stor21.length.field_1 % 128 + uint255(stor22.length.field_1), data=mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len floor32(stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 31)]), 
                    if bool(stor22.length) != 1:
                        return Array(len=-ceil32(uint255(stor20[arg1].field_1025)) - 160, data=ceil32(uint255(stor20[arg1].field_1025)) + 128, 2 * Mask(256, -1, uint255(stor20[arg1].field_1025)), mem[128 len ceil32(uint255(stor20[arg1].field_1025)) + 32], Mask(248, 8, stor21.length), mem[ceil32(uint255(stor20[arg1].field_1025)) + 192 len floor32(-ceil32(uint255(stor20[arg1].field_1025)) - 129) + -ceil32(uint255(stor20[arg1].field_1025)) - 128]), 
                    idx = 0
                    s = 0
                    while idx < uint255(stor22.length.field_1):
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 160] = 32
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 160] = 32
                    return Array(len=stor21.length.field_1 % 128 + stor22.length.field_1 % 128, data=mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len floor32(stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 31)]), 
                if bool(stor22.length) != 1:
                    return Array(len=-ceil32(uint255(stor20[arg1].field_1025)) - 160, data=ceil32(uint255(stor20[arg1].field_1025)) + 128, 2 * Mask(256, -1, uint255(stor20[arg1].field_1025)), mem[128 len ceil32(uint255(stor20[arg1].field_1025)) + 32], Mask(248, 8, stor21.length), mem[ceil32(uint255(stor20[arg1].field_1025)) + 192 len floor32(-ceil32(uint255(stor20[arg1].field_1025)) - 129) + -ceil32(uint255(stor20[arg1].field_1025)) - 128]), 
                idx = 0
                s = 0
                while idx < stor22.length.field_1 % 128:
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 160] = 32
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
            if bool(stor21.length) == 1:
                idx = 0
                s = 0
                while idx < stor21.length.field_1 % 128:
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + idx + 160] = stor21[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if bool(stor22.length):
                    if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                    else:
                        if bool(stor22.length) != 1:
                            mem[64] = 0
                            _5118 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                            mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                            if ceil32(_5118) > _5118:
                                mem[_5118 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_5118) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < uint255(stor22.length.field_1):
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 160] = 32
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                else:
                    if bool(stor22.length) != 1:
                        mem[64] = 0
                        _5201 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                        mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                        if ceil32(_5201) > _5201:
                            mem[_5201 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_5201) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor22.length.field_1 % 128:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 160] = 32
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
            if bool(stor22.length):
                if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[0] = Mask(248, 8, stor22.length)
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] = uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 160
                    mem[64] = uint255(stor22.length.field_1)
                    mem[uint255(stor22.length.field_1)] = 32
                    mem[uint255(stor22.length.field_1) + 32] = uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 160
                    mem[uint255(stor22.length.field_1) + 64 len floor32(uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 129)] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len floor32(uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 129)]
                    return Array(len=uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 160, data=mem[uint255(stor22.length.field_1) + 64 len floor32(uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 129)]), 
                if bool(stor22.length) != 1:
                    return Array(len=-ceil32(uint255(stor20[arg1].field_1025)) - 160, data=ceil32(uint255(stor20[arg1].field_1025)) + 128, 2 * Mask(256, -1, uint255(stor20[arg1].field_1025)), mem[128 len floor32(-ceil32(uint255(stor20[arg1].field_1025)) - 129) - 64]), 
                mem[0] = 22
                idx = 0
                s = 0
                while idx < uint255(stor22.length.field_1):
                    mem[idx] = stor[s + sha3(mem[0])]
                    idx = idx + 32
                    s = s + 1
                    continue 
                _4033 = mem[64]
                mem[64] = uint255(stor22.length.field_1)
                mem[uint255(stor22.length.field_1)] = 32
                _4561 = mem[_4033]
                mem[uint255(stor22.length.field_1) + 32] = mem[_4033]
                mem[uint255(stor22.length.field_1) + 64 len ceil32(_4561)] = mem[_4033 + 32 len ceil32(_4561)]
                if ceil32(_4561) > _4561:
                    mem[uint255(stor22.length.field_1) + _4561 + 64] = 0
                return 32, mem[uint255(stor22.length.field_1) + 32 len ceil32(_4561) + 32]
            if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor22.length):
                mem[0] = Mask(248, 8, stor22.length)
                mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] = stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 160
                mem[64] = stor22.length.field_1 % 128
                mem[stor22.length.field_1 % 128] = 32
                mem[stor22.length.field_1 % 128 + 32] = stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 160
                mem[stor22.length.field_1 % 128 + 64 len floor32(stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 129)] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len floor32(stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 129)]
                return Array(len=stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 160, data=mem[stor22.length.field_1 % 128 + 64 len floor32(stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 129)]), 
            if bool(stor22.length) != 1:
                return Array(len=-ceil32(uint255(stor20[arg1].field_1025)) - 160, data=ceil32(uint255(stor20[arg1].field_1025)) + 128, 2 * Mask(256, -1, uint255(stor20[arg1].field_1025)), mem[128 len floor32(-ceil32(uint255(stor20[arg1].field_1025)) - 129) - 64]), 
            mem[0] = 22
            idx = 0
            s = 0
            while idx < stor22.length.field_1 % 128:
                mem[idx] = stor[s + sha3(mem[0])]
                idx = idx + 32
                s = s + 1
                continue 
            _4034 = mem[64]
            mem[64] = stor22.length.field_1 % 128
            mem[stor22.length.field_1 % 128] = 32
            _4562 = mem[_4034]
            mem[stor22.length.field_1 % 128 + 32] = mem[_4034]
            mem[stor22.length.field_1 % 128 + 64 len ceil32(_4562)] = mem[_4034 + 32 len ceil32(_4562)]
            if ceil32(_4562) > _4562:
                mem[stor22.length.field_1 % 128 + _4562 + 64] = 0
            return 32, mem[stor22.length.field_1 % 128 + 32 len ceil32(_4562) + 32]
        if 31 >= stor20[arg1].field_1025 % 128:
            mem[128] = 256 * Mask(248, 0, stor20[arg1].field_1032)
            if uint255(stor20[arg1].field_1025) > 0:
                if bool(stor21.length):
                    if bool(stor21.length) == uint255(stor21.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor21.length):
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + 160] = Mask(248, 8, stor21.length)
                    else:
                        if bool(stor21.length) != 1:
                            mem[64] = uint255(stor20[arg1].field_1025)
                            if ceil32(uint255(stor20[arg1].field_1025)) <= uint255(stor20[arg1].field_1025):
                                _4616 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                                mem[uint255(stor20[arg1].field_1025) + 32] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                                mem[uint255(stor20[arg1].field_1025) + 64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                                if ceil32(_4616) > _4616:
                                    mem[uint255(stor20[arg1].field_1025) + _4616 + 64] = 0
                                return 32, mem[uint255(stor20[arg1].field_1025) + 32 len ceil32(_4616) + 32]
                            _4655 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                            mem[uint255(stor20[arg1].field_1025) + 32] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                            mem[uint255(stor20[arg1].field_1025) + 64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                            if ceil32(_4655) > _4655:
                                mem[uint255(stor20[arg1].field_1025) + _4655 + 64] = 0
                            return 32, mem[uint255(stor20[arg1].field_1025) + 32 len ceil32(_4655) + 32]
                        idx = 0
                        s = 0
                        while idx < uint255(stor21.length.field_1):
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + idx + 160] = stor21[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + 160 len ceil32(uint255(stor20[arg1].field_1025))] = mem[128 len ceil32(uint255(stor20[arg1].field_1025))]
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor20[arg1].field_1025) + 160] = 32
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor20[arg1].field_1025) + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor20[arg1].field_1025) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor20[arg1].field_1025) + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor20[arg1].field_1025) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                if bool(stor21.length) == stor21.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor21.length):
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + 160] = Mask(248, 8, stor21.length)
                else:
                    if bool(stor21.length) != 1:
                        mem[64] = uint255(stor20[arg1].field_1025)
                        if ceil32(uint255(stor20[arg1].field_1025)) <= uint255(stor20[arg1].field_1025):
                            _4618 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                            mem[uint255(stor20[arg1].field_1025) + 32] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                            mem[uint255(stor20[arg1].field_1025) + 64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                            if ceil32(_4618) > _4618:
                                mem[uint255(stor20[arg1].field_1025) + _4618 + 64] = 0
                            return 32, mem[uint255(stor20[arg1].field_1025) + 32 len ceil32(_4618) + 32]
                        _4658 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                        mem[uint255(stor20[arg1].field_1025) + 32] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                        mem[uint255(stor20[arg1].field_1025) + 64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                        if ceil32(_4658) > _4658:
                            mem[uint255(stor20[arg1].field_1025) + _4658 + 64] = 0
                        return 32, mem[uint255(stor20[arg1].field_1025) + 32 len ceil32(_4658) + 32]
                    idx = 0
                    s = 0
                    while idx < stor21.length.field_1 % 128:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + idx + 160] = stor21[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + 160 len ceil32(uint255(stor20[arg1].field_1025))] = mem[128 len ceil32(uint255(stor20[arg1].field_1025))]
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor20[arg1].field_1025) + 160] = 32
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor20[arg1].field_1025) + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor20[arg1].field_1025) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor20[arg1].field_1025) + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor20[arg1].field_1025) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
            if bool(stor21.length):
                if bool(stor21.length) == uint255(stor21.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor21.length):
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + 160] = Mask(248, 8, stor21.length)
                    if bool(stor22.length):
                        if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor22.length):
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 160] = 32
                            return Array(len=uint255(stor21.length.field_1) + uint255(stor22.length.field_1), data=mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len floor32(uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 31)]), 
                        if bool(stor22.length) != 1:
                            return Array(len=-ceil32(uint255(stor20[arg1].field_1025)) - 160, data=ceil32(uint255(stor20[arg1].field_1025)) + 128, 2 * Mask(256, -1, uint255(stor20[arg1].field_1025)), 256 * Mask(248, 0, stor20[arg1].field_1032), mem[160 len floor32(-ceil32(uint255(stor20[arg1].field_1025)) - 129) - 96]), 
                        idx = 0
                        s = 0
                        while idx < uint255(stor22.length.field_1):
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 160] = 32
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                        if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                        return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                    if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 160] = 32
                        return Array(len=uint255(stor21.length.field_1) + stor22.length.field_1 % 128, data=mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len floor32(uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 31)]), 
                    if bool(stor22.length) != 1:
                        return Array(len=-ceil32(uint255(stor20[arg1].field_1025)) - 160, data=ceil32(uint255(stor20[arg1].field_1025)) + 128, 2 * Mask(256, -1, uint255(stor20[arg1].field_1025)), 256 * Mask(248, 0, stor20[arg1].field_1032), mem[160 len floor32(-ceil32(uint255(stor20[arg1].field_1025)) - 129) - 96]), 
                    idx = 0
                    s = 0
                    while idx < stor22.length.field_1 % 128:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 160] = 32
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                if bool(stor21.length) == 1:
                    idx = 0
                    s = 0
                    while idx < uint255(stor21.length.field_1):
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + idx + 160] = stor21[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if bool(stor22.length):
                        if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor22.length):
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                        else:
                            if bool(stor22.length) != 1:
                                mem[64] = 0
                                _5123 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                                mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                                if ceil32(_5123) > _5123:
                                    mem[_5123 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_5123) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < uint255(stor22.length.field_1):
                                mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 160] = 32
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                        if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                        return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                    if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                    else:
                        if bool(stor22.length) != 1:
                            mem[64] = 0
                            _5210 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                            mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                            if ceil32(_5210) > _5210:
                                mem[_5210 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_5210) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor22.length.field_1 % 128:
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 160] = 32
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                if bool(stor22.length):
                    if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[0] = Mask(248, 8, stor22.length)
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] = uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 160
                        mem[64] = uint255(stor22.length.field_1)
                        mem[uint255(stor22.length.field_1)] = 32
                        mem[uint255(stor22.length.field_1) + 32] = uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 160
                        mem[uint255(stor22.length.field_1) + 64 len floor32(uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 129)] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len floor32(uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 129)]
                        return Array(len=uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 160, data=mem[uint255(stor22.length.field_1) + 64 len floor32(uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 129)]), 
                    if bool(stor22.length) != 1:
                        return Array(len=-ceil32(uint255(stor20[arg1].field_1025)) - 160, data=ceil32(uint255(stor20[arg1].field_1025)) + 128, 2 * Mask(256, -1, uint255(stor20[arg1].field_1025)), 256 * Mask(248, 0, stor20[arg1].field_1032), mem[160 len floor32(-ceil32(uint255(stor20[arg1].field_1025)) - 129) - 96]), 
                    mem[0] = 22
                    idx = 0
                    s = 0
                    while idx < uint255(stor22.length.field_1):
                        mem[idx] = stor[s + sha3(mem[0])]
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _4037 = mem[64]
                    mem[64] = uint255(stor22.length.field_1)
                    mem[uint255(stor22.length.field_1)] = 32
                    _4565 = mem[_4037]
                    mem[uint255(stor22.length.field_1) + 32] = mem[_4037]
                    mem[uint255(stor22.length.field_1) + 64 len ceil32(_4565)] = mem[_4037 + 32 len ceil32(_4565)]
                    if ceil32(_4565) > _4565:
                        mem[uint255(stor22.length.field_1) + _4565 + 64] = 0
                    return 32, mem[uint255(stor22.length.field_1) + 32 len ceil32(_4565) + 32]
                if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[0] = Mask(248, 8, stor22.length)
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] = stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 160
                    mem[64] = stor22.length.field_1 % 128
                    mem[stor22.length.field_1 % 128] = 32
                    mem[stor22.length.field_1 % 128 + 32] = stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 160
                    mem[stor22.length.field_1 % 128 + 64 len floor32(stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 129)] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len floor32(stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 129)]
                    return Array(len=stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 160, data=mem[stor22.length.field_1 % 128 + 64 len floor32(stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 129)]), 
                if bool(stor22.length) != 1:
                    return Array(len=-ceil32(uint255(stor20[arg1].field_1025)) - 160, data=ceil32(uint255(stor20[arg1].field_1025)) + 128, 2 * Mask(256, -1, uint255(stor20[arg1].field_1025)), 256 * Mask(248, 0, stor20[arg1].field_1032), mem[160 len floor32(-ceil32(uint255(stor20[arg1].field_1025)) - 129) - 96]), 
                mem[0] = 22
                idx = 0
                s = 0
                while idx < stor22.length.field_1 % 128:
                    mem[idx] = stor[s + sha3(mem[0])]
                    idx = idx + 32
                    s = s + 1
                    continue 
                _4038 = mem[64]
                mem[64] = stor22.length.field_1 % 128
                mem[stor22.length.field_1 % 128] = 32
                _4566 = mem[_4038]
                mem[stor22.length.field_1 % 128 + 32] = mem[_4038]
                mem[stor22.length.field_1 % 128 + 64 len ceil32(_4566)] = mem[_4038 + 32 len ceil32(_4566)]
                if ceil32(_4566) > _4566:
                    mem[stor22.length.field_1 % 128 + _4566 + 64] = 0
                return 32, mem[stor22.length.field_1 % 128 + 32 len ceil32(_4566) + 32]
            if bool(stor21.length) == stor21.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor21.length):
                mem[ceil32(uint255(stor20[arg1].field_1025)) + 160] = Mask(248, 8, stor21.length)
                if bool(stor22.length):
                    if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 160] = 32
                        return Array(len=stor21.length.field_1 % 128 + uint255(stor22.length.field_1), data=mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len floor32(stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 31)]), 
                    if bool(stor22.length) != 1:
                        return Array(len=-ceil32(uint255(stor20[arg1].field_1025)) - 160, data=ceil32(uint255(stor20[arg1].field_1025)) + 128, 2 * Mask(256, -1, uint255(stor20[arg1].field_1025)), 256 * Mask(248, 0, stor20[arg1].field_1032), mem[160 len floor32(-ceil32(uint255(stor20[arg1].field_1025)) - 129) - 96]), 
                    idx = 0
                    s = 0
                    while idx < uint255(stor22.length.field_1):
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 160] = 32
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 160] = 32
                    return Array(len=stor21.length.field_1 % 128 + stor22.length.field_1 % 128, data=mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len floor32(stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 31)]), 
                if bool(stor22.length) != 1:
                    return Array(len=-ceil32(uint255(stor20[arg1].field_1025)) - 160, data=ceil32(uint255(stor20[arg1].field_1025)) + 128, 2 * Mask(256, -1, uint255(stor20[arg1].field_1025)), 256 * Mask(248, 0, stor20[arg1].field_1032), mem[160 len floor32(-ceil32(uint255(stor20[arg1].field_1025)) - 129) - 96]), 
                idx = 0
                s = 0
                while idx < stor22.length.field_1 % 128:
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 160] = 32
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
            if bool(stor21.length) == 1:
                idx = 0
                s = 0
                while idx < stor21.length.field_1 % 128:
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + idx + 160] = stor21[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if bool(stor22.length):
                    if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                    else:
                        if bool(stor22.length) != 1:
                            mem[64] = 0
                            _5126 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                            mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                            if ceil32(_5126) > _5126:
                                mem[_5126 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_5126) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < uint255(stor22.length.field_1):
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 160] = 32
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                else:
                    if bool(stor22.length) != 1:
                        mem[64] = 0
                        _5216 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                        mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                        if ceil32(_5216) > _5216:
                            mem[_5216 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_5216) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor22.length.field_1 % 128:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 160] = 32
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
            if bool(stor22.length):
                if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[0] = Mask(248, 8, stor22.length)
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] = uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 160
                    mem[64] = uint255(stor22.length.field_1)
                    mem[uint255(stor22.length.field_1)] = 32
                    mem[uint255(stor22.length.field_1) + 32] = uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 160
                    mem[uint255(stor22.length.field_1) + 64 len floor32(uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 129)] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len floor32(uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 129)]
                    return Array(len=uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 160, data=mem[uint255(stor22.length.field_1) + 64 len floor32(uint255(stor22.length.field_1) + -ceil32(uint255(stor20[arg1].field_1025)) - 129)]), 
                if bool(stor22.length) != 1:
                    return Array(len=-ceil32(uint255(stor20[arg1].field_1025)) - 160, data=ceil32(uint255(stor20[arg1].field_1025)) + 128, 2 * Mask(256, -1, uint255(stor20[arg1].field_1025)), 256 * Mask(248, 0, stor20[arg1].field_1032), mem[160 len floor32(-ceil32(uint255(stor20[arg1].field_1025)) - 129) - 96]), 
                mem[0] = 22
                idx = 0
                s = 0
                while idx < uint255(stor22.length.field_1):
                    mem[idx] = stor[s + sha3(mem[0])]
                    idx = idx + 32
                    s = s + 1
                    continue 
                _4041 = mem[64]
                mem[64] = uint255(stor22.length.field_1)
                mem[uint255(stor22.length.field_1)] = 32
                _4569 = mem[_4041]
                mem[uint255(stor22.length.field_1) + 32] = mem[_4041]
                mem[uint255(stor22.length.field_1) + 64 len ceil32(_4569)] = mem[_4041 + 32 len ceil32(_4569)]
                if ceil32(_4569) > _4569:
                    mem[uint255(stor22.length.field_1) + _4569 + 64] = 0
                return 32, mem[uint255(stor22.length.field_1) + 32 len ceil32(_4569) + 32]
            if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor22.length):
                mem[0] = Mask(248, 8, stor22.length)
                mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] = stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 160
                mem[64] = stor22.length.field_1 % 128
                mem[stor22.length.field_1 % 128] = 32
                mem[stor22.length.field_1 % 128 + 32] = stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 160
                mem[stor22.length.field_1 % 128 + 64 len floor32(stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 129)] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len floor32(stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 129)]
                return Array(len=stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 160, data=mem[stor22.length.field_1 % 128 + 64 len floor32(stor22.length.field_1 % 128 + -ceil32(uint255(stor20[arg1].field_1025)) - 129)]), 
            if bool(stor22.length) != 1:
                return Array(len=-ceil32(uint255(stor20[arg1].field_1025)) - 160, data=ceil32(uint255(stor20[arg1].field_1025)) + 128, 2 * Mask(256, -1, uint255(stor20[arg1].field_1025)), 256 * Mask(248, 0, stor20[arg1].field_1032), mem[160 len floor32(-ceil32(uint255(stor20[arg1].field_1025)) - 129) - 96]), 
            mem[0] = 22
            idx = 0
            s = 0
            while idx < stor22.length.field_1 % 128:
                mem[idx] = stor[s + sha3(mem[0])]
                idx = idx + 32
                s = s + 1
                continue 
            _4042 = mem[64]
            mem[64] = stor22.length.field_1 % 128
            mem[stor22.length.field_1 % 128] = 32
            _4570 = mem[_4042]
            mem[stor22.length.field_1 % 128 + 32] = mem[_4042]
            mem[stor22.length.field_1 % 128 + 64 len ceil32(_4570)] = mem[_4042 + 32 len ceil32(_4570)]
            if ceil32(_4570) > _4570:
                mem[stor22.length.field_1 % 128 + _4570 + 64] = 0
            return 32, mem[stor22.length.field_1 % 128 + 32 len ceil32(_4570) + 32]
        mem[128] = stor20[arg1][4].field_0
        idx = 128
        s = 0
        while stor20[arg1].field_1025 % 128 + 96 > idx:
            mem[idx + 32] = stor20[arg1][s + 4].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if uint255(stor20[arg1].field_1025) > 0:
            if bool(stor21.length):
                if bool(stor21.length) == uint255(stor21.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor21.length):
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + 160] = Mask(248, 8, stor21.length)
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + 160 len ceil32(uint255(stor20[arg1].field_1025))] = mem[128 len ceil32(uint255(stor20[arg1].field_1025))]
                else:
                    if bool(stor21.length) != 1:
                        mem[64] = uint255(stor20[arg1].field_1025)
                        if ceil32(uint255(stor20[arg1].field_1025)) <= uint255(stor20[arg1].field_1025):
                            _8270 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                            mem[uint255(stor20[arg1].field_1025) + 32] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                            mem[uint255(stor20[arg1].field_1025) + 64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                            if ceil32(_8270) > _8270:
                                mem[uint255(stor20[arg1].field_1025) + _8270 + 64] = 0
                            return 32, mem[uint255(stor20[arg1].field_1025) + 32 len ceil32(_8270) + 32]
                        _8305 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                        mem[uint255(stor20[arg1].field_1025) + 32] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                        mem[uint255(stor20[arg1].field_1025) + 64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                        if ceil32(_8305) > _8305:
                            mem[uint255(stor20[arg1].field_1025) + _8305 + 64] = 0
                        return 32, mem[uint255(stor20[arg1].field_1025) + 32 len ceil32(_8305) + 32]
                    idx = 0
                    s = 0
                    while idx < uint255(stor21.length.field_1):
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + idx + 160] = stor21[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + 160 len ceil32(uint255(stor20[arg1].field_1025))] = mem[128 len ceil32(uint255(stor20[arg1].field_1025))]
                    var58001 = ceil32(uint255(stor20[arg1].field_1025))
                mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor20[arg1].field_1025) + 160] = 32
                mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor20[arg1].field_1025) + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor20[arg1].field_1025) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor20[arg1].field_1025) + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor20[arg1].field_1025) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
            if bool(stor21.length) == stor21.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor21.length):
                mem[ceil32(uint255(stor20[arg1].field_1025)) + 160] = Mask(248, 8, stor21.length)
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + 160 len ceil32(uint255(stor20[arg1].field_1025))] = mem[128 len ceil32(uint255(stor20[arg1].field_1025))]
            else:
                if bool(stor21.length) != 1:
                    mem[64] = uint255(stor20[arg1].field_1025)
                    if ceil32(uint255(stor20[arg1].field_1025)) <= uint255(stor20[arg1].field_1025):
                        _8272 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                        mem[uint255(stor20[arg1].field_1025) + 32] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                        mem[uint255(stor20[arg1].field_1025) + 64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                        if ceil32(_8272) > _8272:
                            mem[uint255(stor20[arg1].field_1025) + _8272 + 64] = 0
                        return 32, mem[uint255(stor20[arg1].field_1025) + 32 len ceil32(_8272) + 32]
                    _8308 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                    mem[uint255(stor20[arg1].field_1025) + 32] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                    mem[uint255(stor20[arg1].field_1025) + 64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                    if ceil32(_8308) > _8308:
                        mem[uint255(stor20[arg1].field_1025) + _8308 + 64] = 0
                    return 32, mem[uint255(stor20[arg1].field_1025) + 32 len ceil32(_8308) + 32]
                idx = 0
                s = 0
                while idx < stor21.length.field_1 % 128:
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + idx + 160] = stor21[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + 160 len ceil32(uint255(stor20[arg1].field_1025))] = mem[128 len ceil32(uint255(stor20[arg1].field_1025))]
                var59001 = ceil32(uint255(stor20[arg1].field_1025))
            mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor20[arg1].field_1025) + 160] = 32
            mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor20[arg1].field_1025) + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
            mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor20[arg1].field_1025) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
            if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor20[arg1].field_1025) + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
            return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor20[arg1].field_1025) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
        if bool(stor21.length):
            if bool(stor21.length) == uint255(stor21.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor21.length):
                mem[ceil32(uint255(stor20[arg1].field_1025)) + 160] = Mask(248, 8, stor21.length)
                if bool(stor22.length):
                    if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                    else:
                        if bool(stor22.length) != 1:
                            mem[64] = 0
                            _5926 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                            mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                            if ceil32(_5926) > _5926:
                                mem[_5926 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_5926) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < uint255(stor22.length.field_1):
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 160] = 32
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                else:
                    if bool(stor22.length) != 1:
                        mem[64] = 0
                        _6035 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                        mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                        if ceil32(_6035) > _6035:
                            mem[_6035 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_6035) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor22.length.field_1 % 128:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 160] = 32
                mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
            if bool(stor21.length) == 1:
                idx = 0
                s = 0
                while idx < uint255(stor21.length.field_1):
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + idx + 160] = stor21[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if bool(stor22.length):
                    if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                    else:
                        if bool(stor22.length) != 1:
                            mem[64] = 0
                            _8595 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                            mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                            if ceil32(_8595) > _8595:
                                mem[_8595 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_8595) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < uint255(stor22.length.field_1):
                            mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 160] = 32
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
                if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                else:
                    if bool(stor22.length) != 1:
                        mem[64] = 0
                        _8648 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                        mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                        if ceil32(_8648) > _8648:
                            mem[_8648 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_8648) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor22.length.field_1 % 128:
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 160] = 32
                mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
            if bool(stor22.length):
                if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[0] = Mask(248, 8, stor22.length)
                    mem[64] = uint255(stor22.length.field_1)
                    mem[uint255(stor22.length.field_1)] = 32
                    _5931 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                    mem[uint255(stor22.length.field_1) + 32] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                    mem[uint255(stor22.length.field_1) + 64 len ceil32(_5931)] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(_5931)]
                    if ceil32(_5931) > _5931:
                        mem[uint255(stor22.length.field_1) + _5931 + 64] = 0
                    return 32, mem[uint255(stor22.length.field_1) + 32 len ceil32(_5931) + 32]
                if bool(stor22.length) != 1:
                    mem[64] = 0
                    _6038 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                    mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                    if ceil32(_6038) > _6038:
                        mem[_6038 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_6038) + -mem[64] + 64
                mem[0] = 22
                idx = 0
                s = 0
                while idx < uint255(stor22.length.field_1):
                    mem[idx] = stor[s + sha3(mem[0])]
                    idx = idx + 32
                    s = s + 1
                    continue 
                _7441 = mem[64]
                mem[64] = uint255(stor22.length.field_1)
                mem[uint255(stor22.length.field_1)] = 32
                _8217 = mem[_7441]
                mem[uint255(stor22.length.field_1) + 32] = mem[_7441]
                mem[uint255(stor22.length.field_1) + 64 len ceil32(_8217)] = mem[_7441 + 32 len ceil32(_8217)]
                if ceil32(_8217) > _8217:
                    mem[uint255(stor22.length.field_1) + _8217 + 64] = 0
                return 32, mem[uint255(stor22.length.field_1) + 32 len ceil32(_8217) + 32]
            if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor22.length):
                mem[0] = Mask(248, 8, stor22.length)
                mem[64] = stor22.length.field_1 % 128
                mem[stor22.length.field_1 % 128] = 32
                _6039 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                mem[stor22.length.field_1 % 128 + 32] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                mem[stor22.length.field_1 % 128 + 64 len ceil32(_6039)] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(_6039)]
                if ceil32(_6039) > _6039:
                    mem[stor22.length.field_1 % 128 + _6039 + 64] = 0
                return 32, mem[stor22.length.field_1 % 128 + 32 len ceil32(_6039) + 32]
            if bool(stor22.length) != 1:
                mem[64] = 0
                _6182 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                if ceil32(_6182) > _6182:
                    mem[_6182 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_6182) + -mem[64] + 64
            mem[0] = 22
            idx = 0
            s = 0
            while idx < stor22.length.field_1 % 128:
                mem[idx] = stor[s + sha3(mem[0])]
                idx = idx + 32
                s = s + 1
                continue 
            _7442 = mem[64]
            mem[64] = stor22.length.field_1 % 128
            mem[stor22.length.field_1 % 128] = 32
            _8218 = mem[_7442]
            mem[stor22.length.field_1 % 128 + 32] = mem[_7442]
            mem[stor22.length.field_1 % 128 + 64 len ceil32(_8218)] = mem[_7442 + 32 len ceil32(_8218)]
            if ceil32(_8218) > _8218:
                mem[stor22.length.field_1 % 128 + _8218 + 64] = 0
            return 32, mem[stor22.length.field_1 % 128 + 32 len ceil32(_8218) + 32]
        if bool(stor21.length) == stor21.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor21.length):
            mem[ceil32(uint255(stor20[arg1].field_1025)) + 160] = Mask(248, 8, stor21.length)
            if bool(stor22.length):
                if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                else:
                    if bool(stor22.length) != 1:
                        mem[64] = 0
                        _6041 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                        mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                        if ceil32(_6041) > _6041:
                            mem[_6041 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_6041) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < uint255(stor22.length.field_1):
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 160] = 32
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
            if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor22.length):
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
            else:
                if bool(stor22.length) != 1:
                    mem[64] = 0
                    _6184 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                    mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                    if ceil32(_6184) > _6184:
                        mem[_6184 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_6184) + -mem[64] + 64
                idx = 0
                s = 0
                while idx < stor22.length.field_1 % 128:
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 160] = 32
            mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
            mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
            if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
            return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
        if bool(stor21.length) == 1:
            idx = 0
            s = 0
            while idx < stor21.length.field_1 % 128:
                mem[ceil32(uint255(stor20[arg1].field_1025)) + idx + 160] = stor21[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            if bool(stor22.length):
                if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                else:
                    if bool(stor22.length) != 1:
                        mem[64] = 0
                        _8598 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                        mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                        if ceil32(_8598) > _8598:
                            mem[_8598 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_8598) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < uint255(stor22.length.field_1):
                        mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 160] = 32
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
                return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
            if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor22.length):
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
            else:
                if bool(stor22.length) != 1:
                    mem[64] = 0
                    _8654 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                    mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                    if ceil32(_8654) > _8654:
                        mem[_8654 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_8654) + -mem[64] + 64
                idx = 0
                s = 0
                while idx < stor22.length.field_1 % 128:
                    mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 160] = 32
            mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
            mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
            if ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]) > mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]:
                mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + mem[ceil32(uint255(stor20[arg1].field_1025)) + 128] + 224] = 0
            return Array(len=mem[ceil32(uint255(stor20[arg1].field_1025)) + 128], data=mem[ceil32(uint255(stor20[arg1].field_1025)) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]), 
        if bool(stor22.length):
            if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor22.length):
                mem[0] = Mask(248, 8, stor22.length)
                mem[64] = uint255(stor22.length.field_1)
                mem[uint255(stor22.length.field_1)] = 32
                _6046 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                mem[uint255(stor22.length.field_1) + 32] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                mem[uint255(stor22.length.field_1) + 64 len ceil32(_6046)] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(_6046)]
                if ceil32(_6046) > _6046:
                    mem[uint255(stor22.length.field_1) + _6046 + 64] = 0
                return 32, mem[uint255(stor22.length.field_1) + 32 len ceil32(_6046) + 32]
            if bool(stor22.length) != 1:
                mem[64] = 0
                _6187 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
                mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
                if ceil32(_6187) > _6187:
                    mem[_6187 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_6187) + -mem[64] + 64
            mem[0] = 22
            idx = 0
            s = 0
            while idx < uint255(stor22.length.field_1):
                mem[idx] = stor[s + sha3(mem[0])]
                idx = idx + 32
                s = s + 1
                continue 
            _7445 = mem[64]
            mem[64] = uint255(stor22.length.field_1)
            mem[uint255(stor22.length.field_1)] = 32
            _8221 = mem[_7445]
            mem[uint255(stor22.length.field_1) + 32] = mem[_7445]
            mem[uint255(stor22.length.field_1) + 64 len ceil32(_8221)] = mem[_7445 + 32 len ceil32(_8221)]
            if ceil32(_8221) > _8221:
                mem[uint255(stor22.length.field_1) + _8221 + 64] = 0
            return 32, mem[uint255(stor22.length.field_1) + 32 len ceil32(_8221) + 32]
        if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor22.length):
            mem[0] = Mask(248, 8, stor22.length)
            mem[64] = stor22.length.field_1 % 128
            mem[stor22.length.field_1 % 128] = 32
            _6188 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
            mem[stor22.length.field_1 % 128 + 32] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
            mem[stor22.length.field_1 % 128 + 64 len ceil32(_6188)] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(_6188)]
            if ceil32(_6188) > _6188:
                mem[stor22.length.field_1 % 128 + _6188 + 64] = 0
            return 32, mem[stor22.length.field_1 % 128 + 32 len ceil32(_6188) + 32]
        if bool(stor22.length) != 1:
            mem[64] = 0
            _6307 = mem[ceil32(uint255(stor20[arg1].field_1025)) + 128]
            mem[64 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])] = mem[ceil32(uint255(stor20[arg1].field_1025)) + 160 len ceil32(mem[ceil32(uint255(stor20[arg1].field_1025)) + 128])]
            if ceil32(_6307) > _6307:
                mem[_6307 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_6307) + -mem[64] + 64
        mem[0] = 22
        idx = 0
        s = 0
        while idx < stor22.length.field_1 % 128:
            mem[idx] = stor[s + sha3(mem[0])]
            idx = idx + 32
            s = s + 1
            continue 
        _7446 = mem[64]
        mem[64] = stor22.length.field_1 % 128
        mem[stor22.length.field_1 % 128] = 32
        _8222 = mem[_7446]
        mem[stor22.length.field_1 % 128 + 32] = mem[_7446]
        mem[stor22.length.field_1 % 128 + 64 len ceil32(_8222)] = mem[_7446 + 32 len ceil32(_8222)]
        if ceil32(_8222) > _8222:
            mem[stor22.length.field_1 % 128 + _8222 + 64] = 0
        return 32, mem[stor22.length.field_1 % 128 + 32 len ceil32(_8222) + 32]
    if bool(stor20[arg1].field_1024) == stor20[arg1].field_1025 % 128 < 32:
        revert with 'NH{q', 34
    mem[64] = ceil32(stor20[arg1].field_1025 % 128) + 128
    mem[96] = stor20[arg1].field_1025 % 128
    if bool(stor20[arg1].field_1024):
        if bool(stor20[arg1].field_1024) == uint255(stor20[arg1].field_1025) < 32:
            revert with 'NH{q', 34
        if not uint255(stor20[arg1].field_1025):
            if stor20[arg1].field_1025 % 128 > 0:
                if bool(stor21.length):
                    if bool(stor21.length) == uint255(stor21.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor21.length):
                        mem[ceil32(stor20[arg1].field_1025 % 128) + 160] = Mask(248, 8, stor21.length)
                    else:
                        if bool(stor21.length) != 1:
                            mem[64] = stor20[arg1].field_1025 % 128
                            if ceil32(stor20[arg1].field_1025 % 128) <= stor20[arg1].field_1025 % 128:
                                _4620 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                                mem[stor20[arg1].field_1025 % 128 + 32] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                                mem[stor20[arg1].field_1025 % 128 + 64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                                if ceil32(_4620) > _4620:
                                    mem[stor20[arg1].field_1025 % 128 + _4620 + 64] = 0
                                return 32, mem[stor20[arg1].field_1025 % 128 + 32 len ceil32(_4620) + 32]
                            _4661 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                            mem[stor20[arg1].field_1025 % 128 + 32] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                            mem[stor20[arg1].field_1025 % 128 + 64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                            if ceil32(_4661) > _4661:
                                mem[stor20[arg1].field_1025 % 128 + _4661 + 64] = 0
                            return 32, mem[stor20[arg1].field_1025 % 128 + 32 len ceil32(_4661) + 32]
                        idx = 0
                        s = 0
                        while idx < uint255(stor21.length.field_1):
                            mem[ceil32(stor20[arg1].field_1025 % 128) + idx + 160] = stor21[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + 160 len ceil32(stor20[arg1].field_1025 % 128)] = mem[128 len ceil32(stor20[arg1].field_1025 % 128)]
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor20[arg1].field_1025 % 128 + 160] = 32
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor20[arg1].field_1025 % 128 + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor20[arg1].field_1025 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                    if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) <= mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                        return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor20[arg1].field_1025 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor20[arg1].field_1025 % 128 + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                    return 32, mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor20[arg1].field_1025 % 128 + 192 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) + 32], 
                if bool(stor21.length) == stor21.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor21.length):
                    mem[ceil32(stor20[arg1].field_1025 % 128) + 160] = Mask(248, 8, stor21.length)
                else:
                    if bool(stor21.length) != 1:
                        mem[64] = stor20[arg1].field_1025 % 128
                        if ceil32(stor20[arg1].field_1025 % 128) <= stor20[arg1].field_1025 % 128:
                            _4622 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                            mem[stor20[arg1].field_1025 % 128 + 32] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                            mem[stor20[arg1].field_1025 % 128 + 64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                            if ceil32(_4622) > _4622:
                                mem[stor20[arg1].field_1025 % 128 + _4622 + 64] = 0
                            return 32, mem[stor20[arg1].field_1025 % 128 + 32 len ceil32(_4622) + 32]
                        _4664 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                        mem[stor20[arg1].field_1025 % 128 + 32] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                        mem[stor20[arg1].field_1025 % 128 + 64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                        if ceil32(_4664) > _4664:
                            mem[stor20[arg1].field_1025 % 128 + _4664 + 64] = 0
                        return 32, mem[stor20[arg1].field_1025 % 128 + 32 len ceil32(_4664) + 32]
                    idx = 0
                    s = 0
                    while idx < stor21.length.field_1 % 128:
                        mem[ceil32(stor20[arg1].field_1025 % 128) + idx + 160] = stor21[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + 160 len ceil32(stor20[arg1].field_1025 % 128)] = mem[128 len ceil32(stor20[arg1].field_1025 % 128)]
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor20[arg1].field_1025 % 128 + 160] = 32
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor20[arg1].field_1025 % 128 + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor20[arg1].field_1025 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) <= mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                    return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor20[arg1].field_1025 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor20[arg1].field_1025 % 128 + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                return 32, mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor20[arg1].field_1025 % 128 + 192 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) + 32], 
            if bool(stor21.length):
                if bool(stor21.length) == uint255(stor21.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor21.length):
                    mem[ceil32(stor20[arg1].field_1025 % 128) + 160] = Mask(248, 8, stor21.length)
                    if bool(stor22.length):
                        if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor22.length):
                            mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                            mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 160] = 32
                            return Array(len=uint255(stor21.length.field_1) + uint255(stor22.length.field_1), data=mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len floor32(uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 31)]), 
                        if bool(stor22.length) != 1:
                            return Array(len=-ceil32(stor20[arg1].field_1025 % 128) - 160, data=ceil32(stor20[arg1].field_1025 % 128) + 128, stor20[arg1].field_1024 % 128, mem[128 len ceil32(stor20[arg1].field_1025 % 128) + 32], Mask(248, 8, stor21.length), mem[ceil32(stor20[arg1].field_1025 % 128) + 192 len floor32(-ceil32(stor20[arg1].field_1025 % 128) - 129) + -ceil32(stor20[arg1].field_1025 % 128) - 128]), 
                        idx = 0
                        s = 0
                        while idx < uint255(stor22.length.field_1):
                            mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 160] = 32
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                        if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                            mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                        return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
                    if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 160] = 32
                        return Array(len=uint255(stor21.length.field_1) + stor22.length.field_1 % 128, data=mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len floor32(uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 31)]), 
                    if bool(stor22.length) != 1:
                        return Array(len=-ceil32(stor20[arg1].field_1025 % 128) - 160, data=ceil32(stor20[arg1].field_1025 % 128) + 128, stor20[arg1].field_1024 % 128, mem[128 len ceil32(stor20[arg1].field_1025 % 128) + 32], Mask(248, 8, stor21.length), mem[ceil32(stor20[arg1].field_1025 % 128) + 192 len floor32(-ceil32(stor20[arg1].field_1025 % 128) - 129) + -ceil32(stor20[arg1].field_1025 % 128) - 128]), 
                    idx = 0
                    s = 0
                    while idx < stor22.length.field_1 % 128:
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 160] = 32
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                    if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                    return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
                if bool(stor21.length) == 1:
                    idx = 0
                    s = 0
                    while idx < uint255(stor21.length.field_1):
                        mem[ceil32(stor20[arg1].field_1025 % 128) + idx + 160] = stor21[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if bool(stor22.length):
                        if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor22.length):
                            mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                        else:
                            if bool(stor22.length) != 1:
                                mem[64] = 0
                                _5131 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                                mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                                if ceil32(_5131) > _5131:
                                    mem[_5131 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_5131) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < uint255(stor22.length.field_1):
                                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 160] = 32
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                        if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                            mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                        return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
                    if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                    else:
                        if bool(stor22.length) != 1:
                            mem[64] = 0
                            _5224 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                            mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                            if ceil32(_5224) > _5224:
                                mem[_5224 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_5224) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor22.length.field_1 % 128:
                            mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 160] = 32
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                    if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                    return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
                if bool(stor22.length):
                    if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[0] = Mask(248, 8, stor22.length)
                        mem[ceil32(stor20[arg1].field_1025 % 128) + 128] = uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 160
                        mem[64] = uint255(stor22.length.field_1)
                        mem[uint255(stor22.length.field_1)] = 32
                        mem[uint255(stor22.length.field_1) + 32] = uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 160
                        mem[uint255(stor22.length.field_1) + 64 len floor32(uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 129)] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len floor32(uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 129)]
                        return Array(len=uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 160, data=mem[uint255(stor22.length.field_1) + 64 len floor32(uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 129)]), 
                    if bool(stor22.length) != 1:
                        return Array(len=-ceil32(stor20[arg1].field_1025 % 128) - 160, data=ceil32(stor20[arg1].field_1025 % 128) + 128, stor20[arg1].field_1024 % 128, mem[128 len floor32(-ceil32(stor20[arg1].field_1025 % 128) - 129) - 64]), 
                    mem[0] = 22
                    idx = 0
                    s = 0
                    while idx < uint255(stor22.length.field_1):
                        mem[idx] = stor[s + sha3(mem[0])]
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _4045 = mem[64]
                    mem[64] = uint255(stor22.length.field_1)
                    mem[uint255(stor22.length.field_1)] = 32
                    _4573 = mem[_4045]
                    mem[uint255(stor22.length.field_1) + 32] = mem[_4045]
                    mem[uint255(stor22.length.field_1) + 64 len ceil32(_4573)] = mem[_4045 + 32 len ceil32(_4573)]
                    if ceil32(_4573) > _4573:
                        mem[uint255(stor22.length.field_1) + _4573 + 64] = 0
                    return 32, mem[uint255(stor22.length.field_1) + 32 len ceil32(_4573) + 32]
                if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[0] = Mask(248, 8, stor22.length)
                    mem[ceil32(stor20[arg1].field_1025 % 128) + 128] = stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 160
                    mem[64] = stor22.length.field_1 % 128
                    mem[stor22.length.field_1 % 128] = 32
                    mem[stor22.length.field_1 % 128 + 32] = stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 160
                    mem[stor22.length.field_1 % 128 + 64 len floor32(stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 129)] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len floor32(stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 129)]
                    return Array(len=stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 160, data=mem[stor22.length.field_1 % 128 + 64 len floor32(stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 129)]), 
                if bool(stor22.length) != 1:
                    return Array(len=-ceil32(stor20[arg1].field_1025 % 128) - 160, data=ceil32(stor20[arg1].field_1025 % 128) + 128, stor20[arg1].field_1024 % 128, mem[128 len floor32(-ceil32(stor20[arg1].field_1025 % 128) - 129) - 64]), 
                mem[0] = 22
                idx = 0
                s = 0
                while idx < stor22.length.field_1 % 128:
                    mem[idx] = stor[s + sha3(mem[0])]
                    idx = idx + 32
                    s = s + 1
                    continue 
                _4046 = mem[64]
                mem[64] = stor22.length.field_1 % 128
                mem[stor22.length.field_1 % 128] = 32
                _4574 = mem[_4046]
                mem[stor22.length.field_1 % 128 + 32] = mem[_4046]
                mem[stor22.length.field_1 % 128 + 64 len ceil32(_4574)] = mem[_4046 + 32 len ceil32(_4574)]
                if ceil32(_4574) > _4574:
                    mem[stor22.length.field_1 % 128 + _4574 + 64] = 0
                return 32, mem[stor22.length.field_1 % 128 + 32 len ceil32(_4574) + 32]
            if bool(stor21.length) == stor21.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor21.length):
                mem[ceil32(stor20[arg1].field_1025 % 128) + 160] = Mask(248, 8, stor21.length)
                if bool(stor22.length):
                    if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                        mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 160] = 32
                        return Array(len=stor21.length.field_1 % 128 + uint255(stor22.length.field_1), data=mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len floor32(stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 31)]), 
                    if bool(stor22.length) != 1:
                        return Array(len=-ceil32(stor20[arg1].field_1025 % 128) - 160, data=ceil32(stor20[arg1].field_1025 % 128) + 128, stor20[arg1].field_1024 % 128, mem[128 len ceil32(stor20[arg1].field_1025 % 128) + 32], Mask(248, 8, stor21.length), mem[ceil32(stor20[arg1].field_1025 % 128) + 192 len floor32(-ceil32(stor20[arg1].field_1025 % 128) - 129) + -ceil32(stor20[arg1].field_1025 % 128) - 128]), 
                    idx = 0
                    s = 0
                    while idx < uint255(stor22.length.field_1):
                        mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 160] = 32
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                    if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                        mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                    return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
                if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 160] = 32
                    return Array(len=stor21.length.field_1 % 128 + stor22.length.field_1 % 128, data=mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len floor32(stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 31)]), 
                if bool(stor22.length) != 1:
                    return Array(len=-ceil32(stor20[arg1].field_1025 % 128) - 160, data=ceil32(stor20[arg1].field_1025 % 128) + 128, stor20[arg1].field_1024 % 128, mem[128 len ceil32(stor20[arg1].field_1025 % 128) + 32], Mask(248, 8, stor21.length), mem[ceil32(stor20[arg1].field_1025 % 128) + 192 len floor32(-ceil32(stor20[arg1].field_1025 % 128) - 129) + -ceil32(stor20[arg1].field_1025 % 128) - 128]), 
                idx = 0
                s = 0
                while idx < stor22.length.field_1 % 128:
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 160] = 32
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
            if bool(stor21.length) == 1:
                idx = 0
                s = 0
                while idx < stor21.length.field_1 % 128:
                    mem[ceil32(stor20[arg1].field_1025 % 128) + idx + 160] = stor21[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if bool(stor22.length):
                    if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                    else:
                        if bool(stor22.length) != 1:
                            mem[64] = 0
                            _5134 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                            mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                            if ceil32(_5134) > _5134:
                                mem[_5134 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_5134) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < uint255(stor22.length.field_1):
                            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 160] = 32
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                    if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                        mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                    return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
                if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                else:
                    if bool(stor22.length) != 1:
                        mem[64] = 0
                        _5230 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                        mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                        if ceil32(_5230) > _5230:
                            mem[_5230 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_5230) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor22.length.field_1 % 128:
                        mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 160] = 32
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
            if bool(stor22.length):
                if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[0] = Mask(248, 8, stor22.length)
                    mem[ceil32(stor20[arg1].field_1025 % 128) + 128] = uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 160
                    mem[64] = uint255(stor22.length.field_1)
                    mem[uint255(stor22.length.field_1)] = 32
                    mem[uint255(stor22.length.field_1) + 32] = uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 160
                    mem[uint255(stor22.length.field_1) + 64 len floor32(uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 129)] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len floor32(uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 129)]
                    return Array(len=uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 160, data=mem[uint255(stor22.length.field_1) + 64 len floor32(uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 129)]), 
                if bool(stor22.length) != 1:
                    return Array(len=-ceil32(stor20[arg1].field_1025 % 128) - 160, data=ceil32(stor20[arg1].field_1025 % 128) + 128, stor20[arg1].field_1024 % 128, mem[128 len floor32(-ceil32(stor20[arg1].field_1025 % 128) - 129) - 64]), 
                mem[0] = 22
                idx = 0
                s = 0
                while idx < uint255(stor22.length.field_1):
                    mem[idx] = stor[s + sha3(mem[0])]
                    idx = idx + 32
                    s = s + 1
                    continue 
                _4049 = mem[64]
                mem[64] = uint255(stor22.length.field_1)
                mem[uint255(stor22.length.field_1)] = 32
                _4577 = mem[_4049]
                mem[uint255(stor22.length.field_1) + 32] = mem[_4049]
                mem[uint255(stor22.length.field_1) + 64 len ceil32(_4577)] = mem[_4049 + 32 len ceil32(_4577)]
                if ceil32(_4577) > _4577:
                    mem[uint255(stor22.length.field_1) + _4577 + 64] = 0
                return 32, mem[uint255(stor22.length.field_1) + 32 len ceil32(_4577) + 32]
            if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor22.length):
                mem[0] = Mask(248, 8, stor22.length)
                mem[ceil32(stor20[arg1].field_1025 % 128) + 128] = stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 160
                mem[64] = stor22.length.field_1 % 128
                mem[stor22.length.field_1 % 128] = 32
                mem[stor22.length.field_1 % 128 + 32] = stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 160
                mem[stor22.length.field_1 % 128 + 64 len floor32(stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 129)] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len floor32(stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 129)]
                return Array(len=stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 160, data=mem[stor22.length.field_1 % 128 + 64 len floor32(stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 129)]), 
            if bool(stor22.length) != 1:
                return Array(len=-ceil32(stor20[arg1].field_1025 % 128) - 160, data=ceil32(stor20[arg1].field_1025 % 128) + 128, stor20[arg1].field_1024 % 128, mem[128 len floor32(-ceil32(stor20[arg1].field_1025 % 128) - 129) - 64]), 
            mem[0] = 22
            idx = 0
            s = 0
            while idx < stor22.length.field_1 % 128:
                mem[idx] = stor[s + sha3(mem[0])]
                idx = idx + 32
                s = s + 1
                continue 
            _4050 = mem[64]
            mem[64] = stor22.length.field_1 % 128
            mem[stor22.length.field_1 % 128] = 32
            _4578 = mem[_4050]
            mem[stor22.length.field_1 % 128 + 32] = mem[_4050]
            mem[stor22.length.field_1 % 128 + 64 len ceil32(_4578)] = mem[_4050 + 32 len ceil32(_4578)]
            if ceil32(_4578) > _4578:
                mem[stor22.length.field_1 % 128 + _4578 + 64] = 0
            return 32, mem[stor22.length.field_1 % 128 + 32 len ceil32(_4578) + 32]
        if 31 >= uint255(stor20[arg1].field_1025):
            mem[128] = 256 * Mask(248, 0, stor20[arg1].field_1032)
            if stor20[arg1].field_1025 % 128 > 0:
                if bool(stor21.length):
                    if bool(stor21.length) == uint255(stor21.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor21.length):
                        mem[ceil32(stor20[arg1].field_1025 % 128) + 160] = Mask(248, 8, stor21.length)
                    else:
                        if bool(stor21.length) != 1:
                            mem[64] = stor20[arg1].field_1025 % 128
                            if ceil32(stor20[arg1].field_1025 % 128) <= stor20[arg1].field_1025 % 128:
                                _4624 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                                mem[stor20[arg1].field_1025 % 128 + 32] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                                mem[stor20[arg1].field_1025 % 128 + 64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                                if ceil32(_4624) > _4624:
                                    mem[stor20[arg1].field_1025 % 128 + _4624 + 64] = 0
                                return 32, mem[stor20[arg1].field_1025 % 128 + 32 len ceil32(_4624) + 32]
                            _4667 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                            mem[stor20[arg1].field_1025 % 128 + 32] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                            mem[stor20[arg1].field_1025 % 128 + 64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                            if ceil32(_4667) > _4667:
                                mem[stor20[arg1].field_1025 % 128 + _4667 + 64] = 0
                            return 32, mem[stor20[arg1].field_1025 % 128 + 32 len ceil32(_4667) + 32]
                        idx = 0
                        s = 0
                        while idx < uint255(stor21.length.field_1):
                            mem[ceil32(stor20[arg1].field_1025 % 128) + idx + 160] = stor21[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + 160 len ceil32(stor20[arg1].field_1025 % 128)] = mem[128 len ceil32(stor20[arg1].field_1025 % 128)]
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor20[arg1].field_1025 % 128 + 160] = 32
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor20[arg1].field_1025 % 128 + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor20[arg1].field_1025 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                    if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) <= mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                        return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor20[arg1].field_1025 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor20[arg1].field_1025 % 128 + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                    return 32, mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor20[arg1].field_1025 % 128 + 192 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) + 32], 
                if bool(stor21.length) == stor21.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor21.length):
                    mem[ceil32(stor20[arg1].field_1025 % 128) + 160] = Mask(248, 8, stor21.length)
                else:
                    if bool(stor21.length) != 1:
                        mem[64] = stor20[arg1].field_1025 % 128
                        if ceil32(stor20[arg1].field_1025 % 128) <= stor20[arg1].field_1025 % 128:
                            _4626 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                            mem[stor20[arg1].field_1025 % 128 + 32] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                            mem[stor20[arg1].field_1025 % 128 + 64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                            if ceil32(_4626) > _4626:
                                mem[stor20[arg1].field_1025 % 128 + _4626 + 64] = 0
                            return 32, mem[stor20[arg1].field_1025 % 128 + 32 len ceil32(_4626) + 32]
                        _4670 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                        mem[stor20[arg1].field_1025 % 128 + 32] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                        mem[stor20[arg1].field_1025 % 128 + 64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                        if ceil32(_4670) > _4670:
                            mem[stor20[arg1].field_1025 % 128 + _4670 + 64] = 0
                        return 32, mem[stor20[arg1].field_1025 % 128 + 32 len ceil32(_4670) + 32]
                    idx = 0
                    s = 0
                    while idx < stor21.length.field_1 % 128:
                        mem[ceil32(stor20[arg1].field_1025 % 128) + idx + 160] = stor21[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + 160 len ceil32(stor20[arg1].field_1025 % 128)] = mem[128 len ceil32(stor20[arg1].field_1025 % 128)]
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor20[arg1].field_1025 % 128 + 160] = 32
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor20[arg1].field_1025 % 128 + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor20[arg1].field_1025 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) <= mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                    return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor20[arg1].field_1025 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor20[arg1].field_1025 % 128 + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                return 32, mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor20[arg1].field_1025 % 128 + 192 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) + 32], 
            if bool(stor21.length):
                if bool(stor21.length) == uint255(stor21.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor21.length):
                    mem[ceil32(stor20[arg1].field_1025 % 128) + 160] = Mask(248, 8, stor21.length)
                    if bool(stor22.length):
                        if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor22.length):
                            mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                            mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 160] = 32
                            return Array(len=uint255(stor21.length.field_1) + uint255(stor22.length.field_1), data=mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len floor32(uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 31)]), 
                        if bool(stor22.length) != 1:
                            return Array(len=-ceil32(stor20[arg1].field_1025 % 128) - 160, data=ceil32(stor20[arg1].field_1025 % 128) + 128, stor20[arg1].field_1024 % 128, 256 * Mask(248, 0, stor20[arg1].field_1032), mem[160 len floor32(-ceil32(stor20[arg1].field_1025 % 128) - 129) - 96]), 
                        idx = 0
                        s = 0
                        while idx < uint255(stor22.length.field_1):
                            mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 160] = 32
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                        if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                            mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                        return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
                    if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 160] = 32
                        return Array(len=uint255(stor21.length.field_1) + stor22.length.field_1 % 128, data=mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len floor32(uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 31)]), 
                    if bool(stor22.length) != 1:
                        return Array(len=-ceil32(stor20[arg1].field_1025 % 128) - 160, data=ceil32(stor20[arg1].field_1025 % 128) + 128, stor20[arg1].field_1024 % 128, 256 * Mask(248, 0, stor20[arg1].field_1032), mem[160 len floor32(-ceil32(stor20[arg1].field_1025 % 128) - 129) - 96]), 
                    idx = 0
                    s = 0
                    while idx < stor22.length.field_1 % 128:
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 160] = 32
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                    if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                    return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
                if bool(stor21.length) == 1:
                    idx = 0
                    s = 0
                    while idx < uint255(stor21.length.field_1):
                        mem[ceil32(stor20[arg1].field_1025 % 128) + idx + 160] = stor21[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if bool(stor22.length):
                        if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor22.length):
                            mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                        else:
                            if bool(stor22.length) != 1:
                                mem[64] = 0
                                _5139 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                                mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                                if ceil32(_5139) > _5139:
                                    mem[_5139 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_5139) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < uint255(stor22.length.field_1):
                                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 160] = 32
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                        if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                            mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                        return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
                    if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                    else:
                        if bool(stor22.length) != 1:
                            mem[64] = 0
                            _5239 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                            mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                            if ceil32(_5239) > _5239:
                                mem[_5239 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_5239) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor22.length.field_1 % 128:
                            mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 160] = 32
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                    if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                    return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
                if bool(stor22.length):
                    if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[0] = Mask(248, 8, stor22.length)
                        mem[ceil32(stor20[arg1].field_1025 % 128) + 128] = uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 160
                        mem[64] = uint255(stor22.length.field_1)
                        mem[uint255(stor22.length.field_1)] = 32
                        mem[uint255(stor22.length.field_1) + 32] = uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 160
                        mem[uint255(stor22.length.field_1) + 64 len floor32(uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 129)] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len floor32(uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 129)]
                        return Array(len=uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 160, data=mem[uint255(stor22.length.field_1) + 64 len floor32(uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 129)]), 
                    if bool(stor22.length) != 1:
                        return Array(len=-ceil32(stor20[arg1].field_1025 % 128) - 160, data=ceil32(stor20[arg1].field_1025 % 128) + 128, stor20[arg1].field_1024 % 128, 256 * Mask(248, 0, stor20[arg1].field_1032), mem[160 len floor32(-ceil32(stor20[arg1].field_1025 % 128) - 129) - 96]), 
                    mem[0] = 22
                    idx = 0
                    s = 0
                    while idx < uint255(stor22.length.field_1):
                        mem[idx] = stor[s + sha3(mem[0])]
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _4053 = mem[64]
                    mem[64] = uint255(stor22.length.field_1)
                    mem[uint255(stor22.length.field_1)] = 32
                    _4581 = mem[_4053]
                    mem[uint255(stor22.length.field_1) + 32] = mem[_4053]
                    mem[uint255(stor22.length.field_1) + 64 len ceil32(_4581)] = mem[_4053 + 32 len ceil32(_4581)]
                    if ceil32(_4581) > _4581:
                        mem[uint255(stor22.length.field_1) + _4581 + 64] = 0
                    return 32, mem[uint255(stor22.length.field_1) + 32 len ceil32(_4581) + 32]
                if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[0] = Mask(248, 8, stor22.length)
                    mem[ceil32(stor20[arg1].field_1025 % 128) + 128] = stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 160
                    mem[64] = stor22.length.field_1 % 128
                    mem[stor22.length.field_1 % 128] = 32
                    mem[stor22.length.field_1 % 128 + 32] = stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 160
                    mem[stor22.length.field_1 % 128 + 64 len floor32(stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 129)] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len floor32(stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 129)]
                    return Array(len=stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 160, data=mem[stor22.length.field_1 % 128 + 64 len floor32(stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 129)]), 
                if bool(stor22.length) != 1:
                    return Array(len=-ceil32(stor20[arg1].field_1025 % 128) - 160, data=ceil32(stor20[arg1].field_1025 % 128) + 128, stor20[arg1].field_1024 % 128, 256 * Mask(248, 0, stor20[arg1].field_1032), mem[160 len floor32(-ceil32(stor20[arg1].field_1025 % 128) - 129) - 96]), 
                mem[0] = 22
                idx = 0
                s = 0
                while idx < stor22.length.field_1 % 128:
                    mem[idx] = stor[s + sha3(mem[0])]
                    idx = idx + 32
                    s = s + 1
                    continue 
                _4054 = mem[64]
                mem[64] = stor22.length.field_1 % 128
                mem[stor22.length.field_1 % 128] = 32
                _4582 = mem[_4054]
                mem[stor22.length.field_1 % 128 + 32] = mem[_4054]
                mem[stor22.length.field_1 % 128 + 64 len ceil32(_4582)] = mem[_4054 + 32 len ceil32(_4582)]
                if ceil32(_4582) > _4582:
                    mem[stor22.length.field_1 % 128 + _4582 + 64] = 0
                return 32, mem[stor22.length.field_1 % 128 + 32 len ceil32(_4582) + 32]
            if bool(stor21.length) == stor21.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor21.length):
                mem[ceil32(stor20[arg1].field_1025 % 128) + 160] = Mask(248, 8, stor21.length)
                if bool(stor22.length):
                    if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                        mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 160] = 32
                        return Array(len=stor21.length.field_1 % 128 + uint255(stor22.length.field_1), data=mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len floor32(stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 31)]), 
                    if bool(stor22.length) != 1:
                        return Array(len=-ceil32(stor20[arg1].field_1025 % 128) - 160, data=ceil32(stor20[arg1].field_1025 % 128) + 128, stor20[arg1].field_1024 % 128, 256 * Mask(248, 0, stor20[arg1].field_1032), mem[160 len floor32(-ceil32(stor20[arg1].field_1025 % 128) - 129) - 96]), 
                    idx = 0
                    s = 0
                    while idx < uint255(stor22.length.field_1):
                        mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 160] = 32
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                    if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                        mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                    return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
                if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 160] = 32
                    return Array(len=stor21.length.field_1 % 128 + stor22.length.field_1 % 128, data=mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len floor32(stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 31)]), 
                if bool(stor22.length) != 1:
                    return Array(len=-ceil32(stor20[arg1].field_1025 % 128) - 160, data=ceil32(stor20[arg1].field_1025 % 128) + 128, stor20[arg1].field_1024 % 128, 256 * Mask(248, 0, stor20[arg1].field_1032), mem[160 len floor32(-ceil32(stor20[arg1].field_1025 % 128) - 129) - 96]), 
                idx = 0
                s = 0
                while idx < stor22.length.field_1 % 128:
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 160] = 32
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
            if bool(stor21.length) == 1:
                idx = 0
                s = 0
                while idx < stor21.length.field_1 % 128:
                    mem[ceil32(stor20[arg1].field_1025 % 128) + idx + 160] = stor21[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if bool(stor22.length):
                    if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                    else:
                        if bool(stor22.length) != 1:
                            mem[64] = 0
                            _5142 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                            mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                            if ceil32(_5142) > _5142:
                                mem[_5142 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_5142) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < uint255(stor22.length.field_1):
                            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 160] = 32
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                    if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                        mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                    return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
                if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                else:
                    if bool(stor22.length) != 1:
                        mem[64] = 0
                        _5245 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                        mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                        if ceil32(_5245) > _5245:
                            mem[_5245 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_5245) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor22.length.field_1 % 128:
                        mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 160] = 32
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
            if bool(stor22.length):
                if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[0] = Mask(248, 8, stor22.length)
                    mem[ceil32(stor20[arg1].field_1025 % 128) + 128] = uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 160
                    mem[64] = uint255(stor22.length.field_1)
                    mem[uint255(stor22.length.field_1)] = 32
                    mem[uint255(stor22.length.field_1) + 32] = uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 160
                    mem[uint255(stor22.length.field_1) + 64 len floor32(uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 129)] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len floor32(uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 129)]
                    return Array(len=uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 160, data=mem[uint255(stor22.length.field_1) + 64 len floor32(uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 129)]), 
                if bool(stor22.length) != 1:
                    return Array(len=-ceil32(stor20[arg1].field_1025 % 128) - 160, data=ceil32(stor20[arg1].field_1025 % 128) + 128, stor20[arg1].field_1024 % 128, 256 * Mask(248, 0, stor20[arg1].field_1032), mem[160 len floor32(-ceil32(stor20[arg1].field_1025 % 128) - 129) - 96]), 
                mem[0] = 22
                idx = 0
                s = 0
                while idx < uint255(stor22.length.field_1):
                    mem[idx] = stor[s + sha3(mem[0])]
                    idx = idx + 32
                    s = s + 1
                    continue 
                _4057 = mem[64]
                mem[64] = uint255(stor22.length.field_1)
                mem[uint255(stor22.length.field_1)] = 32
                _4585 = mem[_4057]
                mem[uint255(stor22.length.field_1) + 32] = mem[_4057]
                mem[uint255(stor22.length.field_1) + 64 len ceil32(_4585)] = mem[_4057 + 32 len ceil32(_4585)]
                if ceil32(_4585) > _4585:
                    mem[uint255(stor22.length.field_1) + _4585 + 64] = 0
                return 32, mem[uint255(stor22.length.field_1) + 32 len ceil32(_4585) + 32]
            if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor22.length):
                mem[0] = Mask(248, 8, stor22.length)
                mem[ceil32(stor20[arg1].field_1025 % 128) + 128] = stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 160
                mem[64] = stor22.length.field_1 % 128
                mem[stor22.length.field_1 % 128] = 32
                mem[stor22.length.field_1 % 128 + 32] = stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 160
                mem[stor22.length.field_1 % 128 + 64 len floor32(stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 129)] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len floor32(stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 129)]
                return Array(len=stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 160, data=mem[stor22.length.field_1 % 128 + 64 len floor32(stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 129)]), 
            if bool(stor22.length) != 1:
                return Array(len=-ceil32(stor20[arg1].field_1025 % 128) - 160, data=ceil32(stor20[arg1].field_1025 % 128) + 128, stor20[arg1].field_1024 % 128, 256 * Mask(248, 0, stor20[arg1].field_1032), mem[160 len floor32(-ceil32(stor20[arg1].field_1025 % 128) - 129) - 96]), 
            mem[0] = 22
            idx = 0
            s = 0
            while idx < stor22.length.field_1 % 128:
                mem[idx] = stor[s + sha3(mem[0])]
                idx = idx + 32
                s = s + 1
                continue 
            _4058 = mem[64]
            mem[64] = stor22.length.field_1 % 128
            mem[stor22.length.field_1 % 128] = 32
            _4586 = mem[_4058]
            mem[stor22.length.field_1 % 128 + 32] = mem[_4058]
            mem[stor22.length.field_1 % 128 + 64 len ceil32(_4586)] = mem[_4058 + 32 len ceil32(_4586)]
            if ceil32(_4586) > _4586:
                mem[stor22.length.field_1 % 128 + _4586 + 64] = 0
            return 32, mem[stor22.length.field_1 % 128 + 32 len ceil32(_4586) + 32]
        mem[128] = stor20[arg1][4].field_0
        idx = 128
        s = 0
        while uint255(stor20[arg1].field_1025) + 96 > idx:
            mem[idx + 32] = stor20[arg1][s + 4].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor20[arg1].field_1025 % 128 > 0:
            if bool(stor21.length):
                if bool(stor21.length) == uint255(stor21.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor21.length):
                    mem[ceil32(stor20[arg1].field_1025 % 128) + 160] = Mask(248, 8, stor21.length)
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + 160 len ceil32(stor20[arg1].field_1025 % 128)] = mem[128 len ceil32(stor20[arg1].field_1025 % 128)]
                else:
                    if bool(stor21.length) != 1:
                        mem[64] = stor20[arg1].field_1025 % 128
                        if ceil32(stor20[arg1].field_1025 % 128) <= stor20[arg1].field_1025 % 128:
                            _8278 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                            mem[stor20[arg1].field_1025 % 128 + 32] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                            mem[stor20[arg1].field_1025 % 128 + 64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                            if ceil32(_8278) > _8278:
                                mem[stor20[arg1].field_1025 % 128 + _8278 + 64] = 0
                            return 32, mem[stor20[arg1].field_1025 % 128 + 32 len ceil32(_8278) + 32]
                        _8315 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                        mem[stor20[arg1].field_1025 % 128 + 32] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                        mem[stor20[arg1].field_1025 % 128 + 64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                        if ceil32(_8315) > _8315:
                            mem[stor20[arg1].field_1025 % 128 + _8315 + 64] = 0
                        return 32, mem[stor20[arg1].field_1025 % 128 + 32 len ceil32(_8315) + 32]
                    idx = 0
                    s = 0
                    while idx < uint255(stor21.length.field_1):
                        mem[ceil32(stor20[arg1].field_1025 % 128) + idx + 160] = stor21[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + 160 len ceil32(stor20[arg1].field_1025 % 128)] = mem[128 len ceil32(stor20[arg1].field_1025 % 128)]
                    var58001 = ceil32(stor20[arg1].field_1025 % 128)
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor20[arg1].field_1025 % 128 + 160] = 32
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor20[arg1].field_1025 % 128 + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor20[arg1].field_1025 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) <= mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                    return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor20[arg1].field_1025 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor20[arg1].field_1025 % 128 + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                return 32, mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor20[arg1].field_1025 % 128 + 192 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) + 32], 
            if bool(stor21.length) == stor21.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor21.length):
                mem[ceil32(stor20[arg1].field_1025 % 128) + 160] = Mask(248, 8, stor21.length)
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + 160 len ceil32(stor20[arg1].field_1025 % 128)] = mem[128 len ceil32(stor20[arg1].field_1025 % 128)]
            else:
                if bool(stor21.length) != 1:
                    mem[64] = stor20[arg1].field_1025 % 128
                    if ceil32(stor20[arg1].field_1025 % 128) <= stor20[arg1].field_1025 % 128:
                        _8280 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                        mem[stor20[arg1].field_1025 % 128 + 32] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                        mem[stor20[arg1].field_1025 % 128 + 64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                        if ceil32(_8280) > _8280:
                            mem[stor20[arg1].field_1025 % 128 + _8280 + 64] = 0
                        return 32, mem[stor20[arg1].field_1025 % 128 + 32 len ceil32(_8280) + 32]
                    _8318 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                    mem[stor20[arg1].field_1025 % 128 + 32] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                    mem[stor20[arg1].field_1025 % 128 + 64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                    if ceil32(_8318) > _8318:
                        mem[stor20[arg1].field_1025 % 128 + _8318 + 64] = 0
                    return 32, mem[stor20[arg1].field_1025 % 128 + 32 len ceil32(_8318) + 32]
                idx = 0
                s = 0
                while idx < stor21.length.field_1 % 128:
                    mem[ceil32(stor20[arg1].field_1025 % 128) + idx + 160] = stor21[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + 160 len ceil32(stor20[arg1].field_1025 % 128)] = mem[128 len ceil32(stor20[arg1].field_1025 % 128)]
                var59001 = ceil32(stor20[arg1].field_1025 % 128)
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor20[arg1].field_1025 % 128 + 160] = 32
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor20[arg1].field_1025 % 128 + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor20[arg1].field_1025 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
            if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) <= mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor20[arg1].field_1025 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor20[arg1].field_1025 % 128 + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
            return 32, mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor20[arg1].field_1025 % 128 + 192 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) + 32], 
        if bool(stor21.length):
            if bool(stor21.length) == uint255(stor21.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor21.length):
                mem[ceil32(stor20[arg1].field_1025 % 128) + 160] = Mask(248, 8, stor21.length)
                if bool(stor22.length):
                    if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                    else:
                        if bool(stor22.length) != 1:
                            mem[64] = 0
                            _5949 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                            mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                            if ceil32(_5949) > _5949:
                                mem[_5949 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_5949) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < uint255(stor22.length.field_1):
                            mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 160] = 32
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                    if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                    return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
                if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                else:
                    if bool(stor22.length) != 1:
                        mem[64] = 0
                        _6070 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                        mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                        if ceil32(_6070) > _6070:
                            mem[_6070 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_6070) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor22.length.field_1 % 128:
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 160] = 32
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
            if bool(stor21.length) == 1:
                idx = 0
                s = 0
                while idx < uint255(stor21.length.field_1):
                    mem[ceil32(stor20[arg1].field_1025 % 128) + idx + 160] = stor21[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if bool(stor22.length):
                    if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                    else:
                        if bool(stor22.length) != 1:
                            mem[64] = 0
                            _8603 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                            mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                            if ceil32(_8603) > _8603:
                                mem[_8603 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_8603) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < uint255(stor22.length.field_1):
                            mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 160] = 32
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                    if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                    return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
                if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                else:
                    if bool(stor22.length) != 1:
                        mem[64] = 0
                        _8670 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                        mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                        if ceil32(_8670) > _8670:
                            mem[_8670 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_8670) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor22.length.field_1 % 128:
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 160] = 32
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
            if bool(stor22.length):
                if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[0] = Mask(248, 8, stor22.length)
                    mem[64] = uint255(stor22.length.field_1)
                    mem[uint255(stor22.length.field_1)] = 32
                    _5954 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                    mem[uint255(stor22.length.field_1) + 32] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                    mem[uint255(stor22.length.field_1) + 64 len ceil32(_5954)] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(_5954)]
                    if ceil32(_5954) > _5954:
                        mem[uint255(stor22.length.field_1) + _5954 + 64] = 0
                    return 32, mem[uint255(stor22.length.field_1) + 32 len ceil32(_5954) + 32]
                if bool(stor22.length) != 1:
                    mem[64] = 0
                    _6073 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                    mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                    if ceil32(_6073) > _6073:
                        mem[_6073 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_6073) + -mem[64] + 64
                mem[0] = 22
                idx = 0
                s = 0
                while idx < uint255(stor22.length.field_1):
                    mem[idx] = stor[s + sha3(mem[0])]
                    idx = idx + 32
                    s = s + 1
                    continue 
                _7457 = mem[64]
                mem[64] = uint255(stor22.length.field_1)
                mem[uint255(stor22.length.field_1)] = 32
                _8233 = mem[_7457]
                mem[uint255(stor22.length.field_1) + 32] = mem[_7457]
                mem[uint255(stor22.length.field_1) + 64 len ceil32(_8233)] = mem[_7457 + 32 len ceil32(_8233)]
                if ceil32(_8233) > _8233:
                    mem[uint255(stor22.length.field_1) + _8233 + 64] = 0
                return 32, mem[uint255(stor22.length.field_1) + 32 len ceil32(_8233) + 32]
            if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor22.length):
                mem[0] = Mask(248, 8, stor22.length)
                mem[64] = stor22.length.field_1 % 128
                mem[stor22.length.field_1 % 128] = 32
                _6074 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                mem[stor22.length.field_1 % 128 + 32] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                mem[stor22.length.field_1 % 128 + 64 len ceil32(_6074)] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(_6074)]
                if ceil32(_6074) > _6074:
                    mem[stor22.length.field_1 % 128 + _6074 + 64] = 0
                return 32, mem[stor22.length.field_1 % 128 + 32 len ceil32(_6074) + 32]
            if bool(stor22.length) != 1:
                mem[64] = 0
                _6219 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                if ceil32(_6219) > _6219:
                    mem[_6219 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_6219) + -mem[64] + 64
            mem[0] = 22
            idx = 0
            s = 0
            while idx < stor22.length.field_1 % 128:
                mem[idx] = stor[s + sha3(mem[0])]
                idx = idx + 32
                s = s + 1
                continue 
            _7458 = mem[64]
            mem[64] = stor22.length.field_1 % 128
            mem[stor22.length.field_1 % 128] = 32
            _8234 = mem[_7458]
            mem[stor22.length.field_1 % 128 + 32] = mem[_7458]
            mem[stor22.length.field_1 % 128 + 64 len ceil32(_8234)] = mem[_7458 + 32 len ceil32(_8234)]
            if ceil32(_8234) > _8234:
                mem[stor22.length.field_1 % 128 + _8234 + 64] = 0
            return 32, mem[stor22.length.field_1 % 128 + 32 len ceil32(_8234) + 32]
        if bool(stor21.length) == stor21.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor21.length):
            mem[ceil32(stor20[arg1].field_1025 % 128) + 160] = Mask(248, 8, stor21.length)
            if bool(stor22.length):
                if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                else:
                    if bool(stor22.length) != 1:
                        mem[64] = 0
                        _6076 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                        mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                        if ceil32(_6076) > _6076:
                            mem[_6076 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_6076) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < uint255(stor22.length.field_1):
                        mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 160] = 32
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
            if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor22.length):
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
            else:
                if bool(stor22.length) != 1:
                    mem[64] = 0
                    _6221 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                    mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                    if ceil32(_6221) > _6221:
                        mem[_6221 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_6221) + -mem[64] + 64
                idx = 0
                s = 0
                while idx < stor22.length.field_1 % 128:
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 160] = 32
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
            if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
            return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
        if bool(stor21.length) == 1:
            idx = 0
            s = 0
            while idx < stor21.length.field_1 % 128:
                mem[ceil32(stor20[arg1].field_1025 % 128) + idx + 160] = stor21[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            if bool(stor22.length):
                if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                else:
                    if bool(stor22.length) != 1:
                        mem[64] = 0
                        _8606 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                        mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                        if ceil32(_8606) > _8606:
                            mem[_8606 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_8606) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < uint255(stor22.length.field_1):
                        mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 160] = 32
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
            if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor22.length):
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
            else:
                if bool(stor22.length) != 1:
                    mem[64] = 0
                    _8676 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                    mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                    if ceil32(_8676) > _8676:
                        mem[_8676 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_8676) + -mem[64] + 64
                idx = 0
                s = 0
                while idx < stor22.length.field_1 % 128:
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 160] = 32
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
            if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
            return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
        if bool(stor22.length):
            if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor22.length):
                mem[0] = Mask(248, 8, stor22.length)
                mem[64] = uint255(stor22.length.field_1)
                mem[uint255(stor22.length.field_1)] = 32
                _6081 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                mem[uint255(stor22.length.field_1) + 32] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                mem[uint255(stor22.length.field_1) + 64 len ceil32(_6081)] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(_6081)]
                if ceil32(_6081) > _6081:
                    mem[uint255(stor22.length.field_1) + _6081 + 64] = 0
                return 32, mem[uint255(stor22.length.field_1) + 32 len ceil32(_6081) + 32]
            if bool(stor22.length) != 1:
                mem[64] = 0
                _6224 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                if ceil32(_6224) > _6224:
                    mem[_6224 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_6224) + -mem[64] + 64
            mem[0] = 22
            idx = 0
            s = 0
            while idx < uint255(stor22.length.field_1):
                mem[idx] = stor[s + sha3(mem[0])]
                idx = idx + 32
                s = s + 1
                continue 
            _7461 = mem[64]
            mem[64] = uint255(stor22.length.field_1)
            mem[uint255(stor22.length.field_1)] = 32
            _8237 = mem[_7461]
            mem[uint255(stor22.length.field_1) + 32] = mem[_7461]
            mem[uint255(stor22.length.field_1) + 64 len ceil32(_8237)] = mem[_7461 + 32 len ceil32(_8237)]
            if ceil32(_8237) > _8237:
                mem[uint255(stor22.length.field_1) + _8237 + 64] = 0
            return 32, mem[uint255(stor22.length.field_1) + 32 len ceil32(_8237) + 32]
        if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor22.length):
            mem[0] = Mask(248, 8, stor22.length)
            mem[64] = stor22.length.field_1 % 128
            mem[stor22.length.field_1 % 128] = 32
            _6225 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
            mem[stor22.length.field_1 % 128 + 32] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
            mem[stor22.length.field_1 % 128 + 64 len ceil32(_6225)] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(_6225)]
            if ceil32(_6225) > _6225:
                mem[stor22.length.field_1 % 128 + _6225 + 64] = 0
            return 32, mem[stor22.length.field_1 % 128 + 32 len ceil32(_6225) + 32]
        if bool(stor22.length) != 1:
            mem[64] = 0
            _6325 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
            mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
            if ceil32(_6325) > _6325:
                mem[_6325 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_6325) + -mem[64] + 64
        mem[0] = 22
        idx = 0
        s = 0
        while idx < stor22.length.field_1 % 128:
            mem[idx] = stor[s + sha3(mem[0])]
            idx = idx + 32
            s = s + 1
            continue 
        _7462 = mem[64]
        mem[64] = stor22.length.field_1 % 128
        mem[stor22.length.field_1 % 128] = 32
        _8238 = mem[_7462]
        mem[stor22.length.field_1 % 128 + 32] = mem[_7462]
        mem[stor22.length.field_1 % 128 + 64 len ceil32(_8238)] = mem[_7462 + 32 len ceil32(_8238)]
        if ceil32(_8238) > _8238:
            mem[stor22.length.field_1 % 128 + _8238 + 64] = 0
        return 32, mem[stor22.length.field_1 % 128 + 32 len ceil32(_8238) + 32]
    if bool(stor20[arg1].field_1024) == stor20[arg1].field_1025 % 128 < 32:
        revert with 'NH{q', 34
    if not stor20[arg1].field_1025 % 128:
        if stor20[arg1].field_1025 % 128 > 0:
            if bool(stor21.length):
                if bool(stor21.length) == uint255(stor21.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor21.length):
                    mem[ceil32(stor20[arg1].field_1025 % 128) + 160] = Mask(248, 8, stor21.length)
                else:
                    if bool(stor21.length) != 1:
                        mem[64] = stor20[arg1].field_1025 % 128
                        if ceil32(stor20[arg1].field_1025 % 128) <= stor20[arg1].field_1025 % 128:
                            _4628 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                            mem[stor20[arg1].field_1025 % 128 + 32] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                            mem[stor20[arg1].field_1025 % 128 + 64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                            if ceil32(_4628) > _4628:
                                mem[stor20[arg1].field_1025 % 128 + _4628 + 64] = 0
                            return 32, mem[stor20[arg1].field_1025 % 128 + 32 len ceil32(_4628) + 32]
                        _4673 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                        mem[stor20[arg1].field_1025 % 128 + 32] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                        mem[stor20[arg1].field_1025 % 128 + 64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                        if ceil32(_4673) > _4673:
                            mem[stor20[arg1].field_1025 % 128 + _4673 + 64] = 0
                        return 32, mem[stor20[arg1].field_1025 % 128 + 32 len ceil32(_4673) + 32]
                    idx = 0
                    s = 0
                    while idx < uint255(stor21.length.field_1):
                        mem[ceil32(stor20[arg1].field_1025 % 128) + idx + 160] = stor21[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + 160 len ceil32(stor20[arg1].field_1025 % 128)] = mem[128 len ceil32(stor20[arg1].field_1025 % 128)]
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor20[arg1].field_1025 % 128 + 160] = 32
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor20[arg1].field_1025 % 128 + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor20[arg1].field_1025 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) <= mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                    return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor20[arg1].field_1025 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor20[arg1].field_1025 % 128 + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                return 32, mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor20[arg1].field_1025 % 128 + 192 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) + 32], 
            if bool(stor21.length) == stor21.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor21.length):
                mem[ceil32(stor20[arg1].field_1025 % 128) + 160] = Mask(248, 8, stor21.length)
            else:
                if bool(stor21.length) != 1:
                    mem[64] = stor20[arg1].field_1025 % 128
                    if ceil32(stor20[arg1].field_1025 % 128) <= stor20[arg1].field_1025 % 128:
                        _4630 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                        mem[stor20[arg1].field_1025 % 128 + 32] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                        mem[stor20[arg1].field_1025 % 128 + 64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                        if ceil32(_4630) > _4630:
                            mem[stor20[arg1].field_1025 % 128 + _4630 + 64] = 0
                        return 32, mem[stor20[arg1].field_1025 % 128 + 32 len ceil32(_4630) + 32]
                    _4676 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                    mem[stor20[arg1].field_1025 % 128 + 32] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                    mem[stor20[arg1].field_1025 % 128 + 64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                    if ceil32(_4676) > _4676:
                        mem[stor20[arg1].field_1025 % 128 + _4676 + 64] = 0
                    return 32, mem[stor20[arg1].field_1025 % 128 + 32 len ceil32(_4676) + 32]
                idx = 0
                s = 0
                while idx < stor21.length.field_1 % 128:
                    mem[ceil32(stor20[arg1].field_1025 % 128) + idx + 160] = stor21[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + 160 len ceil32(stor20[arg1].field_1025 % 128)] = mem[128 len ceil32(stor20[arg1].field_1025 % 128)]
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor20[arg1].field_1025 % 128 + 160] = 32
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor20[arg1].field_1025 % 128 + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor20[arg1].field_1025 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
            if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) <= mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor20[arg1].field_1025 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor20[arg1].field_1025 % 128 + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
            return 32, mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor20[arg1].field_1025 % 128 + 192 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) + 32], 
        if bool(stor21.length):
            if bool(stor21.length) == uint255(stor21.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor21.length):
                mem[ceil32(stor20[arg1].field_1025 % 128) + 160] = Mask(248, 8, stor21.length)
                if bool(stor22.length):
                    if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 160] = 32
                        return Array(len=uint255(stor21.length.field_1) + uint255(stor22.length.field_1), data=mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len floor32(uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 31)]), 
                    if bool(stor22.length) != 1:
                        return Array(len=-ceil32(stor20[arg1].field_1025 % 128) - 160, data=ceil32(stor20[arg1].field_1025 % 128) + 128, stor20[arg1].field_1024 % 128, mem[128 len ceil32(stor20[arg1].field_1025 % 128) + 32], Mask(248, 8, stor21.length), mem[ceil32(stor20[arg1].field_1025 % 128) + 192 len floor32(-ceil32(stor20[arg1].field_1025 % 128) - 129) + -ceil32(stor20[arg1].field_1025 % 128) - 128]), 
                    idx = 0
                    s = 0
                    while idx < uint255(stor22.length.field_1):
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 160] = 32
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                    if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                    return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
                if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 160] = 32
                    return Array(len=uint255(stor21.length.field_1) + stor22.length.field_1 % 128, data=mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len floor32(uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 31)]), 
                if bool(stor22.length) != 1:
                    return Array(len=-ceil32(stor20[arg1].field_1025 % 128) - 160, data=ceil32(stor20[arg1].field_1025 % 128) + 128, stor20[arg1].field_1024 % 128, mem[128 len ceil32(stor20[arg1].field_1025 % 128) + 32], Mask(248, 8, stor21.length), mem[ceil32(stor20[arg1].field_1025 % 128) + 192 len floor32(-ceil32(stor20[arg1].field_1025 % 128) - 129) + -ceil32(stor20[arg1].field_1025 % 128) - 128]), 
                idx = 0
                s = 0
                while idx < stor22.length.field_1 % 128:
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 160] = 32
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
            if bool(stor21.length) == 1:
                idx = 0
                s = 0
                while idx < uint255(stor21.length.field_1):
                    mem[ceil32(stor20[arg1].field_1025 % 128) + idx + 160] = stor21[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if bool(stor22.length):
                    if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                    else:
                        if bool(stor22.length) != 1:
                            mem[64] = 0
                            _5147 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                            mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                            if ceil32(_5147) > _5147:
                                mem[_5147 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_5147) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < uint255(stor22.length.field_1):
                            mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 160] = 32
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                    if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                    return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
                if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                else:
                    if bool(stor22.length) != 1:
                        mem[64] = 0
                        _5253 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                        mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                        if ceil32(_5253) > _5253:
                            mem[_5253 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_5253) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor22.length.field_1 % 128:
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 160] = 32
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
            if bool(stor22.length):
                if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[0] = Mask(248, 8, stor22.length)
                    mem[ceil32(stor20[arg1].field_1025 % 128) + 128] = uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 160
                    mem[64] = uint255(stor22.length.field_1)
                    mem[uint255(stor22.length.field_1)] = 32
                    mem[uint255(stor22.length.field_1) + 32] = uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 160
                    mem[uint255(stor22.length.field_1) + 64 len floor32(uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 129)] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len floor32(uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 129)]
                    return Array(len=uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 160, data=mem[uint255(stor22.length.field_1) + 64 len floor32(uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 129)]), 
                if bool(stor22.length) != 1:
                    return Array(len=-ceil32(stor20[arg1].field_1025 % 128) - 160, data=ceil32(stor20[arg1].field_1025 % 128) + 128, stor20[arg1].field_1024 % 128, mem[128 len floor32(-ceil32(stor20[arg1].field_1025 % 128) - 129) - 64]), 
                mem[0] = 22
                idx = 0
                s = 0
                while idx < uint255(stor22.length.field_1):
                    mem[idx] = stor[s + sha3(mem[0])]
                    idx = idx + 32
                    s = s + 1
                    continue 
                _4061 = mem[64]
                mem[64] = uint255(stor22.length.field_1)
                mem[uint255(stor22.length.field_1)] = 32
                _4589 = mem[_4061]
                mem[uint255(stor22.length.field_1) + 32] = mem[_4061]
                mem[uint255(stor22.length.field_1) + 64 len ceil32(_4589)] = mem[_4061 + 32 len ceil32(_4589)]
                if ceil32(_4589) > _4589:
                    mem[uint255(stor22.length.field_1) + _4589 + 64] = 0
                return 32, mem[uint255(stor22.length.field_1) + 32 len ceil32(_4589) + 32]
            if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor22.length):
                mem[0] = Mask(248, 8, stor22.length)
                mem[ceil32(stor20[arg1].field_1025 % 128) + 128] = stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 160
                mem[64] = stor22.length.field_1 % 128
                mem[stor22.length.field_1 % 128] = 32
                mem[stor22.length.field_1 % 128 + 32] = stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 160
                mem[stor22.length.field_1 % 128 + 64 len floor32(stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 129)] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len floor32(stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 129)]
                return Array(len=stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 160, data=mem[stor22.length.field_1 % 128 + 64 len floor32(stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 129)]), 
            if bool(stor22.length) != 1:
                return Array(len=-ceil32(stor20[arg1].field_1025 % 128) - 160, data=ceil32(stor20[arg1].field_1025 % 128) + 128, stor20[arg1].field_1024 % 128, mem[128 len floor32(-ceil32(stor20[arg1].field_1025 % 128) - 129) - 64]), 
            mem[0] = 22
            idx = 0
            s = 0
            while idx < stor22.length.field_1 % 128:
                mem[idx] = stor[s + sha3(mem[0])]
                idx = idx + 32
                s = s + 1
                continue 
            _4062 = mem[64]
            mem[64] = stor22.length.field_1 % 128
            mem[stor22.length.field_1 % 128] = 32
            _4590 = mem[_4062]
            mem[stor22.length.field_1 % 128 + 32] = mem[_4062]
            mem[stor22.length.field_1 % 128 + 64 len ceil32(_4590)] = mem[_4062 + 32 len ceil32(_4590)]
            if ceil32(_4590) > _4590:
                mem[stor22.length.field_1 % 128 + _4590 + 64] = 0
            return 32, mem[stor22.length.field_1 % 128 + 32 len ceil32(_4590) + 32]
        if bool(stor21.length) == stor21.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor21.length):
            mem[ceil32(stor20[arg1].field_1025 % 128) + 160] = Mask(248, 8, stor21.length)
            if bool(stor22.length):
                if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 160] = 32
                    return Array(len=stor21.length.field_1 % 128 + uint255(stor22.length.field_1), data=mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len floor32(stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 31)]), 
                if bool(stor22.length) != 1:
                    return Array(len=-ceil32(stor20[arg1].field_1025 % 128) - 160, data=ceil32(stor20[arg1].field_1025 % 128) + 128, stor20[arg1].field_1024 % 128, mem[128 len ceil32(stor20[arg1].field_1025 % 128) + 32], Mask(248, 8, stor21.length), mem[ceil32(stor20[arg1].field_1025 % 128) + 192 len floor32(-ceil32(stor20[arg1].field_1025 % 128) - 129) + -ceil32(stor20[arg1].field_1025 % 128) - 128]), 
                idx = 0
                s = 0
                while idx < uint255(stor22.length.field_1):
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 160] = 32
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
            if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor22.length):
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 160] = 32
                return Array(len=stor21.length.field_1 % 128 + stor22.length.field_1 % 128, data=mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len floor32(stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 31)]), 
            if bool(stor22.length) != 1:
                return Array(len=-ceil32(stor20[arg1].field_1025 % 128) - 160, data=ceil32(stor20[arg1].field_1025 % 128) + 128, stor20[arg1].field_1024 % 128, mem[128 len ceil32(stor20[arg1].field_1025 % 128) + 32], Mask(248, 8, stor21.length), mem[ceil32(stor20[arg1].field_1025 % 128) + 192 len floor32(-ceil32(stor20[arg1].field_1025 % 128) - 129) + -ceil32(stor20[arg1].field_1025 % 128) - 128]), 
            idx = 0
            s = 0
            while idx < stor22.length.field_1 % 128:
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 160] = 32
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
            if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
            return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
        if bool(stor21.length) == 1:
            idx = 0
            s = 0
            while idx < stor21.length.field_1 % 128:
                mem[ceil32(stor20[arg1].field_1025 % 128) + idx + 160] = stor21[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            if bool(stor22.length):
                if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                else:
                    if bool(stor22.length) != 1:
                        mem[64] = 0
                        _5150 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                        mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                        if ceil32(_5150) > _5150:
                            mem[_5150 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_5150) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < uint255(stor22.length.field_1):
                        mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 160] = 32
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
            if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor22.length):
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
            else:
                if bool(stor22.length) != 1:
                    mem[64] = 0
                    _5259 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                    mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                    if ceil32(_5259) > _5259:
                        mem[_5259 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_5259) + -mem[64] + 64
                idx = 0
                s = 0
                while idx < stor22.length.field_1 % 128:
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 160] = 32
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
            if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
            return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
        if bool(stor22.length):
            if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor22.length):
                mem[0] = Mask(248, 8, stor22.length)
                mem[ceil32(stor20[arg1].field_1025 % 128) + 128] = uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 160
                mem[64] = uint255(stor22.length.field_1)
                mem[uint255(stor22.length.field_1)] = 32
                mem[uint255(stor22.length.field_1) + 32] = uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 160
                mem[uint255(stor22.length.field_1) + 64 len floor32(uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 129)] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len floor32(uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 129)]
                return Array(len=uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 160, data=mem[uint255(stor22.length.field_1) + 64 len floor32(uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 129)]), 
            if bool(stor22.length) != 1:
                return Array(len=-ceil32(stor20[arg1].field_1025 % 128) - 160, data=ceil32(stor20[arg1].field_1025 % 128) + 128, stor20[arg1].field_1024 % 128, mem[128 len floor32(-ceil32(stor20[arg1].field_1025 % 128) - 129) - 64]), 
            mem[0] = 22
            idx = 0
            s = 0
            while idx < uint255(stor22.length.field_1):
                mem[idx] = stor[s + sha3(mem[0])]
                idx = idx + 32
                s = s + 1
                continue 
            _4065 = mem[64]
            mem[64] = uint255(stor22.length.field_1)
            mem[uint255(stor22.length.field_1)] = 32
            _4593 = mem[_4065]
            mem[uint255(stor22.length.field_1) + 32] = mem[_4065]
            mem[uint255(stor22.length.field_1) + 64 len ceil32(_4593)] = mem[_4065 + 32 len ceil32(_4593)]
            if ceil32(_4593) > _4593:
                mem[uint255(stor22.length.field_1) + _4593 + 64] = 0
            return 32, mem[uint255(stor22.length.field_1) + 32 len ceil32(_4593) + 32]
        if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor22.length):
            mem[0] = Mask(248, 8, stor22.length)
            mem[ceil32(stor20[arg1].field_1025 % 128) + 128] = stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 160
            mem[64] = stor22.length.field_1 % 128
            mem[stor22.length.field_1 % 128] = 32
            mem[stor22.length.field_1 % 128 + 32] = stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 160
            mem[stor22.length.field_1 % 128 + 64 len floor32(stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 129)] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len floor32(stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 129)]
            return Array(len=stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 160, data=mem[stor22.length.field_1 % 128 + 64 len floor32(stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 129)]), 
        if bool(stor22.length) != 1:
            return Array(len=-ceil32(stor20[arg1].field_1025 % 128) - 160, data=ceil32(stor20[arg1].field_1025 % 128) + 128, stor20[arg1].field_1024 % 128, mem[128 len floor32(-ceil32(stor20[arg1].field_1025 % 128) - 129) - 64]), 
        mem[0] = 22
        idx = 0
        s = 0
        while idx < stor22.length.field_1 % 128:
            mem[idx] = stor[s + sha3(mem[0])]
            idx = idx + 32
            s = s + 1
            continue 
        _4066 = mem[64]
        mem[64] = stor22.length.field_1 % 128
        mem[stor22.length.field_1 % 128] = 32
        _4594 = mem[_4066]
        mem[stor22.length.field_1 % 128 + 32] = mem[_4066]
        mem[stor22.length.field_1 % 128 + 64 len ceil32(_4594)] = mem[_4066 + 32 len ceil32(_4594)]
        if ceil32(_4594) > _4594:
            mem[stor22.length.field_1 % 128 + _4594 + 64] = 0
        return 32, mem[stor22.length.field_1 % 128 + 32 len ceil32(_4594) + 32]
    if 31 >= stor20[arg1].field_1025 % 128:
        mem[128] = 256 * Mask(248, 0, stor20[arg1].field_1032)
        if stor20[arg1].field_1025 % 128 > 0:
            if bool(stor21.length):
                if bool(stor21.length) == uint255(stor21.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor21.length):
                    mem[ceil32(stor20[arg1].field_1025 % 128) + 160] = Mask(248, 8, stor21.length)
                else:
                    if bool(stor21.length) != 1:
                        mem[64] = stor20[arg1].field_1025 % 128
                        if ceil32(stor20[arg1].field_1025 % 128) <= stor20[arg1].field_1025 % 128:
                            _4632 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                            mem[stor20[arg1].field_1025 % 128 + 32] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                            mem[stor20[arg1].field_1025 % 128 + 64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                            if ceil32(_4632) > _4632:
                                mem[stor20[arg1].field_1025 % 128 + _4632 + 64] = 0
                            return 32, mem[stor20[arg1].field_1025 % 128 + 32 len ceil32(_4632) + 32]
                        _4679 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                        mem[stor20[arg1].field_1025 % 128 + 32] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                        mem[stor20[arg1].field_1025 % 128 + 64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                        if ceil32(_4679) > _4679:
                            mem[stor20[arg1].field_1025 % 128 + _4679 + 64] = 0
                        return 32, mem[stor20[arg1].field_1025 % 128 + 32 len ceil32(_4679) + 32]
                    idx = 0
                    s = 0
                    while idx < uint255(stor21.length.field_1):
                        mem[ceil32(stor20[arg1].field_1025 % 128) + idx + 160] = stor21[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + 160 len ceil32(stor20[arg1].field_1025 % 128)] = mem[128 len ceil32(stor20[arg1].field_1025 % 128)]
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor20[arg1].field_1025 % 128 + 160] = 32
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor20[arg1].field_1025 % 128 + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor20[arg1].field_1025 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) <= mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                    return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor20[arg1].field_1025 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor20[arg1].field_1025 % 128 + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                return 32, mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor20[arg1].field_1025 % 128 + 192 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) + 32], 
            if bool(stor21.length) == stor21.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor21.length):
                mem[ceil32(stor20[arg1].field_1025 % 128) + 160] = Mask(248, 8, stor21.length)
            else:
                if bool(stor21.length) != 1:
                    mem[64] = stor20[arg1].field_1025 % 128
                    if ceil32(stor20[arg1].field_1025 % 128) <= stor20[arg1].field_1025 % 128:
                        _4634 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                        mem[stor20[arg1].field_1025 % 128 + 32] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                        mem[stor20[arg1].field_1025 % 128 + 64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                        if ceil32(_4634) > _4634:
                            mem[stor20[arg1].field_1025 % 128 + _4634 + 64] = 0
                        return 32, mem[stor20[arg1].field_1025 % 128 + 32 len ceil32(_4634) + 32]
                    _4682 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                    mem[stor20[arg1].field_1025 % 128 + 32] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                    mem[stor20[arg1].field_1025 % 128 + 64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                    if ceil32(_4682) > _4682:
                        mem[stor20[arg1].field_1025 % 128 + _4682 + 64] = 0
                    return 32, mem[stor20[arg1].field_1025 % 128 + 32 len ceil32(_4682) + 32]
                idx = 0
                s = 0
                while idx < stor21.length.field_1 % 128:
                    mem[ceil32(stor20[arg1].field_1025 % 128) + idx + 160] = stor21[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + 160 len ceil32(stor20[arg1].field_1025 % 128)] = mem[128 len ceil32(stor20[arg1].field_1025 % 128)]
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor20[arg1].field_1025 % 128 + 160] = 32
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor20[arg1].field_1025 % 128 + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor20[arg1].field_1025 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
            if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) <= mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor20[arg1].field_1025 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor20[arg1].field_1025 % 128 + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
            return 32, mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor20[arg1].field_1025 % 128 + 192 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) + 32], 
        if bool(stor21.length):
            if bool(stor21.length) == uint255(stor21.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor21.length):
                mem[ceil32(stor20[arg1].field_1025 % 128) + 160] = Mask(248, 8, stor21.length)
                if bool(stor22.length):
                    if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 160] = 32
                        return Array(len=uint255(stor21.length.field_1) + uint255(stor22.length.field_1), data=mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len floor32(uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 31)]), 
                    if bool(stor22.length) != 1:
                        return Array(len=-ceil32(stor20[arg1].field_1025 % 128) - 160, data=ceil32(stor20[arg1].field_1025 % 128) + 128, stor20[arg1].field_1024 % 128, 256 * Mask(248, 0, stor20[arg1].field_1032), mem[160 len floor32(-ceil32(stor20[arg1].field_1025 % 128) - 129) - 96]), 
                    idx = 0
                    s = 0
                    while idx < uint255(stor22.length.field_1):
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 160] = 32
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                    if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                    return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
                if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 160] = 32
                    return Array(len=uint255(stor21.length.field_1) + stor22.length.field_1 % 128, data=mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len floor32(uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 31)]), 
                if bool(stor22.length) != 1:
                    return Array(len=-ceil32(stor20[arg1].field_1025 % 128) - 160, data=ceil32(stor20[arg1].field_1025 % 128) + 128, stor20[arg1].field_1024 % 128, 256 * Mask(248, 0, stor20[arg1].field_1032), mem[160 len floor32(-ceil32(stor20[arg1].field_1025 % 128) - 129) - 96]), 
                idx = 0
                s = 0
                while idx < stor22.length.field_1 % 128:
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 160] = 32
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
            if bool(stor21.length) == 1:
                idx = 0
                s = 0
                while idx < uint255(stor21.length.field_1):
                    mem[ceil32(stor20[arg1].field_1025 % 128) + idx + 160] = stor21[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if bool(stor22.length):
                    if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor22.length):
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                    else:
                        if bool(stor22.length) != 1:
                            mem[64] = 0
                            _5155 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                            mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                            if ceil32(_5155) > _5155:
                                mem[_5155 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_5155) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < uint255(stor22.length.field_1):
                            mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 160] = 32
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                    if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                    return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
                if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                else:
                    if bool(stor22.length) != 1:
                        mem[64] = 0
                        _5268 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                        mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                        if ceil32(_5268) > _5268:
                            mem[_5268 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_5268) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor22.length.field_1 % 128:
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 160] = 32
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
            if bool(stor22.length):
                if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[0] = Mask(248, 8, stor22.length)
                    mem[ceil32(stor20[arg1].field_1025 % 128) + 128] = uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 160
                    mem[64] = uint255(stor22.length.field_1)
                    mem[uint255(stor22.length.field_1)] = 32
                    mem[uint255(stor22.length.field_1) + 32] = uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 160
                    mem[uint255(stor22.length.field_1) + 64 len floor32(uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 129)] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len floor32(uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 129)]
                    return Array(len=uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 160, data=mem[uint255(stor22.length.field_1) + 64 len floor32(uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 129)]), 
                if bool(stor22.length) != 1:
                    return Array(len=-ceil32(stor20[arg1].field_1025 % 128) - 160, data=ceil32(stor20[arg1].field_1025 % 128) + 128, stor20[arg1].field_1024 % 128, 256 * Mask(248, 0, stor20[arg1].field_1032), mem[160 len floor32(-ceil32(stor20[arg1].field_1025 % 128) - 129) - 96]), 
                mem[0] = 22
                idx = 0
                s = 0
                while idx < uint255(stor22.length.field_1):
                    mem[idx] = stor[s + sha3(mem[0])]
                    idx = idx + 32
                    s = s + 1
                    continue 
                _4069 = mem[64]
                mem[64] = uint255(stor22.length.field_1)
                mem[uint255(stor22.length.field_1)] = 32
                _4597 = mem[_4069]
                mem[uint255(stor22.length.field_1) + 32] = mem[_4069]
                mem[uint255(stor22.length.field_1) + 64 len ceil32(_4597)] = mem[_4069 + 32 len ceil32(_4597)]
                if ceil32(_4597) > _4597:
                    mem[uint255(stor22.length.field_1) + _4597 + 64] = 0
                return 32, mem[uint255(stor22.length.field_1) + 32 len ceil32(_4597) + 32]
            if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor22.length):
                mem[0] = Mask(248, 8, stor22.length)
                mem[ceil32(stor20[arg1].field_1025 % 128) + 128] = stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 160
                mem[64] = stor22.length.field_1 % 128
                mem[stor22.length.field_1 % 128] = 32
                mem[stor22.length.field_1 % 128 + 32] = stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 160
                mem[stor22.length.field_1 % 128 + 64 len floor32(stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 129)] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len floor32(stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 129)]
                return Array(len=stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 160, data=mem[stor22.length.field_1 % 128 + 64 len floor32(stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 129)]), 
            if bool(stor22.length) != 1:
                return Array(len=-ceil32(stor20[arg1].field_1025 % 128) - 160, data=ceil32(stor20[arg1].field_1025 % 128) + 128, stor20[arg1].field_1024 % 128, 256 * Mask(248, 0, stor20[arg1].field_1032), mem[160 len floor32(-ceil32(stor20[arg1].field_1025 % 128) - 129) - 96]), 
            mem[0] = 22
            idx = 0
            s = 0
            while idx < stor22.length.field_1 % 128:
                mem[idx] = stor[s + sha3(mem[0])]
                idx = idx + 32
                s = s + 1
                continue 
            _4070 = mem[64]
            mem[64] = stor22.length.field_1 % 128
            mem[stor22.length.field_1 % 128] = 32
            _4598 = mem[_4070]
            mem[stor22.length.field_1 % 128 + 32] = mem[_4070]
            mem[stor22.length.field_1 % 128 + 64 len ceil32(_4598)] = mem[_4070 + 32 len ceil32(_4598)]
            if ceil32(_4598) > _4598:
                mem[stor22.length.field_1 % 128 + _4598 + 64] = 0
            return 32, mem[stor22.length.field_1 % 128 + 32 len ceil32(_4598) + 32]
        if bool(stor21.length) == stor21.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor21.length):
            mem[ceil32(stor20[arg1].field_1025 % 128) + 160] = Mask(248, 8, stor21.length)
            if bool(stor22.length):
                if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 160] = 32
                    return Array(len=stor21.length.field_1 % 128 + uint255(stor22.length.field_1), data=mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len floor32(stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 31)]), 
                if bool(stor22.length) != 1:
                    return Array(len=-ceil32(stor20[arg1].field_1025 % 128) - 160, data=ceil32(stor20[arg1].field_1025 % 128) + 128, stor20[arg1].field_1024 % 128, 256 * Mask(248, 0, stor20[arg1].field_1032), mem[160 len floor32(-ceil32(stor20[arg1].field_1025 % 128) - 129) - 96]), 
                idx = 0
                s = 0
                while idx < uint255(stor22.length.field_1):
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 160] = 32
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
            if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor22.length):
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 160] = 32
                return Array(len=stor21.length.field_1 % 128 + stor22.length.field_1 % 128, data=mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len floor32(stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 31)]), 
            if bool(stor22.length) != 1:
                return Array(len=-ceil32(stor20[arg1].field_1025 % 128) - 160, data=ceil32(stor20[arg1].field_1025 % 128) + 128, stor20[arg1].field_1024 % 128, 256 * Mask(248, 0, stor20[arg1].field_1032), mem[160 len floor32(-ceil32(stor20[arg1].field_1025 % 128) - 129) - 96]), 
            idx = 0
            s = 0
            while idx < stor22.length.field_1 % 128:
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 160] = 32
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
            if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
            return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
        if bool(stor21.length) == 1:
            idx = 0
            s = 0
            while idx < stor21.length.field_1 % 128:
                mem[ceil32(stor20[arg1].field_1025 % 128) + idx + 160] = stor21[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            if bool(stor22.length):
                if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
                else:
                    if bool(stor22.length) != 1:
                        mem[64] = 0
                        _5158 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                        mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                        if ceil32(_5158) > _5158:
                            mem[_5158 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_5158) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < uint255(stor22.length.field_1):
                        mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 160] = 32
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
            if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor22.length):
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
            else:
                if bool(stor22.length) != 1:
                    mem[64] = 0
                    _5274 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                    mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                    if ceil32(_5274) > _5274:
                        mem[_5274 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_5274) + -mem[64] + 64
                idx = 0
                s = 0
                while idx < stor22.length.field_1 % 128:
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 160] = 32
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
            if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
            return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
        if bool(stor22.length):
            if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor22.length):
                mem[0] = Mask(248, 8, stor22.length)
                mem[ceil32(stor20[arg1].field_1025 % 128) + 128] = uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 160
                mem[64] = uint255(stor22.length.field_1)
                mem[uint255(stor22.length.field_1)] = 32
                mem[uint255(stor22.length.field_1) + 32] = uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 160
                mem[uint255(stor22.length.field_1) + 64 len floor32(uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 129)] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len floor32(uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 129)]
                return Array(len=uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 160, data=mem[uint255(stor22.length.field_1) + 64 len floor32(uint255(stor22.length.field_1) + -ceil32(stor20[arg1].field_1025 % 128) - 129)]), 
            if bool(stor22.length) != 1:
                return Array(len=-ceil32(stor20[arg1].field_1025 % 128) - 160, data=ceil32(stor20[arg1].field_1025 % 128) + 128, stor20[arg1].field_1024 % 128, 256 * Mask(248, 0, stor20[arg1].field_1032), mem[160 len floor32(-ceil32(stor20[arg1].field_1025 % 128) - 129) - 96]), 
            mem[0] = 22
            idx = 0
            s = 0
            while idx < uint255(stor22.length.field_1):
                mem[idx] = stor[s + sha3(mem[0])]
                idx = idx + 32
                s = s + 1
                continue 
            _4073 = mem[64]
            mem[64] = uint255(stor22.length.field_1)
            mem[uint255(stor22.length.field_1)] = 32
            _4601 = mem[_4073]
            mem[uint255(stor22.length.field_1) + 32] = mem[_4073]
            mem[uint255(stor22.length.field_1) + 64 len ceil32(_4601)] = mem[_4073 + 32 len ceil32(_4601)]
            if ceil32(_4601) > _4601:
                mem[uint255(stor22.length.field_1) + _4601 + 64] = 0
            return 32, mem[uint255(stor22.length.field_1) + 32 len ceil32(_4601) + 32]
        if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor22.length):
            mem[0] = Mask(248, 8, stor22.length)
            mem[ceil32(stor20[arg1].field_1025 % 128) + 128] = stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 160
            mem[64] = stor22.length.field_1 % 128
            mem[stor22.length.field_1 % 128] = 32
            mem[stor22.length.field_1 % 128 + 32] = stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 160
            mem[stor22.length.field_1 % 128 + 64 len floor32(stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 129)] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len floor32(stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 129)]
            return Array(len=stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 160, data=mem[stor22.length.field_1 % 128 + 64 len floor32(stor22.length.field_1 % 128 + -ceil32(stor20[arg1].field_1025 % 128) - 129)]), 
        if bool(stor22.length) != 1:
            return Array(len=-ceil32(stor20[arg1].field_1025 % 128) - 160, data=ceil32(stor20[arg1].field_1025 % 128) + 128, stor20[arg1].field_1024 % 128, 256 * Mask(248, 0, stor20[arg1].field_1032), mem[160 len floor32(-ceil32(stor20[arg1].field_1025 % 128) - 129) - 96]), 
        mem[0] = 22
        idx = 0
        s = 0
        while idx < stor22.length.field_1 % 128:
            mem[idx] = stor[s + sha3(mem[0])]
            idx = idx + 32
            s = s + 1
            continue 
        _4074 = mem[64]
        mem[64] = stor22.length.field_1 % 128
        mem[stor22.length.field_1 % 128] = 32
        _4602 = mem[_4074]
        mem[stor22.length.field_1 % 128 + 32] = mem[_4074]
        mem[stor22.length.field_1 % 128 + 64 len ceil32(_4602)] = mem[_4074 + 32 len ceil32(_4602)]
        if ceil32(_4602) > _4602:
            mem[stor22.length.field_1 % 128 + _4602 + 64] = 0
        return 32, mem[stor22.length.field_1 % 128 + 32 len ceil32(_4602) + 32]
    mem[128] = stor20[arg1][4].field_0
    idx = 128
    s = 0
    while stor20[arg1].field_1025 % 128 + 96 > idx:
        mem[idx + 32] = stor20[arg1][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor20[arg1].field_1025 % 128 > 0:
        if bool(stor21.length):
            if bool(stor21.length) == uint255(stor21.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor21.length):
                mem[ceil32(stor20[arg1].field_1025 % 128) + 160] = Mask(248, 8, stor21.length)
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + 160 len ceil32(stor20[arg1].field_1025 % 128)] = mem[128 len ceil32(stor20[arg1].field_1025 % 128)]
            else:
                if bool(stor21.length) != 1:
                    mem[64] = stor20[arg1].field_1025 % 128
                    if ceil32(stor20[arg1].field_1025 % 128) <= stor20[arg1].field_1025 % 128:
                        _8286 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                        mem[stor20[arg1].field_1025 % 128 + 32] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                        mem[stor20[arg1].field_1025 % 128 + 64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                        if ceil32(_8286) > _8286:
                            mem[stor20[arg1].field_1025 % 128 + _8286 + 64] = 0
                        return 32, mem[stor20[arg1].field_1025 % 128 + 32 len ceil32(_8286) + 32]
                    _8325 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                    mem[stor20[arg1].field_1025 % 128 + 32] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                    mem[stor20[arg1].field_1025 % 128 + 64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                    if ceil32(_8325) > _8325:
                        mem[stor20[arg1].field_1025 % 128 + _8325 + 64] = 0
                    return 32, mem[stor20[arg1].field_1025 % 128 + 32 len ceil32(_8325) + 32]
                idx = 0
                s = 0
                while idx < uint255(stor21.length.field_1):
                    mem[ceil32(stor20[arg1].field_1025 % 128) + idx + 160] = stor21[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + 160 len ceil32(stor20[arg1].field_1025 % 128)] = mem[128 len ceil32(stor20[arg1].field_1025 % 128)]
                var59001 = ceil32(stor20[arg1].field_1025 % 128)
            mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor20[arg1].field_1025 % 128 + 160] = 32
            mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor20[arg1].field_1025 % 128 + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
            mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor20[arg1].field_1025 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
            if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) <= mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor20[arg1].field_1025 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
            mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor20[arg1].field_1025 % 128 + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
            return 32, mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor20[arg1].field_1025 % 128 + 192 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) + 32], 
        if bool(stor21.length) == stor21.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor21.length):
            mem[ceil32(stor20[arg1].field_1025 % 128) + 160] = Mask(248, 8, stor21.length)
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + 160 len ceil32(stor20[arg1].field_1025 % 128)] = mem[128 len ceil32(stor20[arg1].field_1025 % 128)]
        else:
            if bool(stor21.length) != 1:
                mem[64] = stor20[arg1].field_1025 % 128
                if ceil32(stor20[arg1].field_1025 % 128) <= stor20[arg1].field_1025 % 128:
                    _8288 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                    mem[stor20[arg1].field_1025 % 128 + 32] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                    mem[stor20[arg1].field_1025 % 128 + 64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                    if ceil32(_8288) > _8288:
                        mem[stor20[arg1].field_1025 % 128 + _8288 + 64] = 0
                    return 32, mem[stor20[arg1].field_1025 % 128 + 32 len ceil32(_8288) + 32]
                _8328 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                mem[stor20[arg1].field_1025 % 128 + 32] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                mem[stor20[arg1].field_1025 % 128 + 64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                if ceil32(_8328) > _8328:
                    mem[stor20[arg1].field_1025 % 128 + _8328 + 64] = 0
                return 32, mem[stor20[arg1].field_1025 % 128 + 32 len ceil32(_8328) + 32]
            idx = 0
            s = 0
            while idx < stor21.length.field_1 % 128:
                mem[ceil32(stor20[arg1].field_1025 % 128) + idx + 160] = stor21[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + 160 len ceil32(stor20[arg1].field_1025 % 128)] = mem[128 len ceil32(stor20[arg1].field_1025 % 128)]
            var60001 = ceil32(stor20[arg1].field_1025 % 128)
        mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor20[arg1].field_1025 % 128 + 160] = 32
        mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor20[arg1].field_1025 % 128 + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
        mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor20[arg1].field_1025 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
        if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) <= mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
            return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor20[arg1].field_1025 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
        mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor20[arg1].field_1025 % 128 + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
        return 32, mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor20[arg1].field_1025 % 128 + 192 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) + 32], 
    if bool(stor21.length):
        if bool(stor21.length) == uint255(stor21.length.field_1) < 32:
            revert with 'NH{q', 34
        if not bool(stor21.length):
            mem[ceil32(stor20[arg1].field_1025 % 128) + 160] = Mask(248, 8, stor21.length)
            if bool(stor22.length):
                if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                else:
                    if bool(stor22.length) != 1:
                        mem[64] = 0
                        _5972 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                        mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                        if ceil32(_5972) > _5972:
                            mem[_5972 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_5972) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < uint255(stor22.length.field_1):
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 160] = 32
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
            if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor22.length):
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
            else:
                if bool(stor22.length) != 1:
                    mem[64] = 0
                    _6105 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                    mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                    if ceil32(_6105) > _6105:
                        mem[_6105 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_6105) + -mem[64] + 64
                idx = 0
                s = 0
                while idx < stor22.length.field_1 % 128:
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 160] = 32
            mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
            mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
            if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
            return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
        if bool(stor21.length) == 1:
            idx = 0
            s = 0
            while idx < uint255(stor21.length.field_1):
                mem[ceil32(stor20[arg1].field_1025 % 128) + idx + 160] = stor21[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            if bool(stor22.length):
                if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor22.length):
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
                else:
                    if bool(stor22.length) != 1:
                        mem[64] = 0
                        _8611 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                        mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                        if ceil32(_8611) > _8611:
                            mem[_8611 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_8611) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < uint255(stor22.length.field_1):
                        mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 160] = 32
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
                return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
            if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor22.length):
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + 160] = Mask(248, 8, stor22.length)
            else:
                if bool(stor22.length) != 1:
                    mem[64] = 0
                    _8692 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                    mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                    if ceil32(_8692) > _8692:
                        mem[_8692 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_8692) + -mem[64] + 64
                idx = 0
                s = 0
                while idx < stor22.length.field_1 % 128:
                    mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + idx + 160] = stor22[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 160] = 32
            mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
            mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
            if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
            return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + uint255(stor21.length.field_1) + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
        if bool(stor22.length):
            if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor22.length):
                mem[0] = Mask(248, 8, stor22.length)
                mem[64] = uint255(stor22.length.field_1)
                mem[uint255(stor22.length.field_1)] = 32
                _5977 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                mem[uint255(stor22.length.field_1) + 32] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                mem[uint255(stor22.length.field_1) + 64 len ceil32(_5977)] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(_5977)]
                if ceil32(_5977) > _5977:
                    mem[uint255(stor22.length.field_1) + _5977 + 64] = 0
                return 32, mem[uint255(stor22.length.field_1) + 32 len ceil32(_5977) + 32]
            if bool(stor22.length) != 1:
                mem[64] = 0
                _6108 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                if ceil32(_6108) > _6108:
                    mem[_6108 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_6108) + -mem[64] + 64
            mem[0] = 22
            idx = 0
            s = 0
            while idx < uint255(stor22.length.field_1):
                mem[idx] = stor[s + sha3(mem[0])]
                idx = idx + 32
                s = s + 1
                continue 
            _7473 = mem[64]
            mem[64] = uint255(stor22.length.field_1)
            mem[uint255(stor22.length.field_1)] = 32
            _8249 = mem[_7473]
            mem[uint255(stor22.length.field_1) + 32] = mem[_7473]
            mem[uint255(stor22.length.field_1) + 64 len ceil32(_8249)] = mem[_7473 + 32 len ceil32(_8249)]
            if ceil32(_8249) > _8249:
                mem[uint255(stor22.length.field_1) + _8249 + 64] = 0
            return 32, mem[uint255(stor22.length.field_1) + 32 len ceil32(_8249) + 32]
        if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor22.length):
            mem[0] = Mask(248, 8, stor22.length)
            mem[64] = stor22.length.field_1 % 128
            mem[stor22.length.field_1 % 128] = 32
            _6109 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
            mem[stor22.length.field_1 % 128 + 32] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
            mem[stor22.length.field_1 % 128 + 64 len ceil32(_6109)] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(_6109)]
            if ceil32(_6109) > _6109:
                mem[stor22.length.field_1 % 128 + _6109 + 64] = 0
            return 32, mem[stor22.length.field_1 % 128 + 32 len ceil32(_6109) + 32]
        if bool(stor22.length) != 1:
            mem[64] = 0
            _6256 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
            mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
            if ceil32(_6256) > _6256:
                mem[_6256 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_6256) + -mem[64] + 64
        mem[0] = 22
        idx = 0
        s = 0
        while idx < stor22.length.field_1 % 128:
            mem[idx] = stor[s + sha3(mem[0])]
            idx = idx + 32
            s = s + 1
            continue 
        _7474 = mem[64]
        mem[64] = stor22.length.field_1 % 128
        mem[stor22.length.field_1 % 128] = 32
        _8250 = mem[_7474]
        mem[stor22.length.field_1 % 128 + 32] = mem[_7474]
        mem[stor22.length.field_1 % 128 + 64 len ceil32(_8250)] = mem[_7474 + 32 len ceil32(_8250)]
        if ceil32(_8250) > _8250:
            mem[stor22.length.field_1 % 128 + _8250 + 64] = 0
        return 32, mem[stor22.length.field_1 % 128 + 32 len ceil32(_8250) + 32]
    if bool(stor21.length) == stor21.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if not bool(stor21.length):
        mem[ceil32(stor20[arg1].field_1025 % 128) + 160] = Mask(248, 8, stor21.length)
        if bool(stor22.length):
            if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor22.length):
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
            else:
                if bool(stor22.length) != 1:
                    mem[64] = 0
                    _6111 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                    mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                    if ceil32(_6111) > _6111:
                        mem[_6111 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_6111) + -mem[64] + 64
                idx = 0
                s = 0
                while idx < uint255(stor22.length.field_1):
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 160] = 32
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
            if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
            return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
        if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor22.length):
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
        else:
            if bool(stor22.length) != 1:
                mem[64] = 0
                _6258 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                if ceil32(_6258) > _6258:
                    mem[_6258 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_6258) + -mem[64] + 64
            idx = 0
            s = 0
            while idx < stor22.length.field_1 % 128:
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 160] = 32
        mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
        mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
        if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
        return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
    if bool(stor21.length) == 1:
        idx = 0
        s = 0
        while idx < stor21.length.field_1 % 128:
            mem[ceil32(stor20[arg1].field_1025 % 128) + idx + 160] = stor21[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        if bool(stor22.length):
            if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor22.length):
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
            else:
                if bool(stor22.length) != 1:
                    mem[64] = 0
                    _8614 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                    mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                    if ceil32(_8614) > _8614:
                        mem[_8614 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_8614) + -mem[64] + 64
                idx = 0
                s = 0
                while idx < uint255(stor22.length.field_1):
                    mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 160] = 32
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
            if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
            return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + uint255(stor22.length.field_1) + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
        if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor22.length):
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + 160] = Mask(248, 8, stor22.length)
        else:
            if bool(stor22.length) != 1:
                mem[64] = 0
                _8698 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
                mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
                if ceil32(_8698) > _8698:
                    mem[_8698 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_8698) + -mem[64] + 64
            idx = 0
            s = 0
            while idx < stor22.length.field_1 % 128:
                mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + idx + 160] = stor22[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 160] = 32
        mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 192] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
        mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
        if ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128]) > mem[ceil32(stor20[arg1].field_1025 % 128) + 128]:
            mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + mem[ceil32(stor20[arg1].field_1025 % 128) + 128] + 224] = 0
        return Array(len=mem[ceil32(stor20[arg1].field_1025 % 128) + 128], data=mem[ceil32(stor20[arg1].field_1025 % 128) + stor21.length.field_1 % 128 + stor22.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]), 
    if bool(stor22.length):
        if bool(stor22.length) == uint255(stor22.length.field_1) < 32:
            revert with 'NH{q', 34
        if not bool(stor22.length):
            mem[0] = Mask(248, 8, stor22.length)
            mem[64] = uint255(stor22.length.field_1)
            mem[uint255(stor22.length.field_1)] = 32
            _6116 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
            mem[uint255(stor22.length.field_1) + 32] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
            mem[uint255(stor22.length.field_1) + 64 len ceil32(_6116)] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(_6116)]
            if ceil32(_6116) > _6116:
                mem[uint255(stor22.length.field_1) + _6116 + 64] = 0
            return 32, mem[uint255(stor22.length.field_1) + 32 len ceil32(_6116) + 32]
        if bool(stor22.length) != 1:
            mem[64] = 0
            _6261 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
            mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
            if ceil32(_6261) > _6261:
                mem[_6261 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_6261) + -mem[64] + 64
        mem[0] = 22
        idx = 0
        s = 0
        while idx < uint255(stor22.length.field_1):
            mem[idx] = stor[s + sha3(mem[0])]
            idx = idx + 32
            s = s + 1
            continue 
        _7477 = mem[64]
        mem[64] = uint255(stor22.length.field_1)
        mem[uint255(stor22.length.field_1)] = 32
        _8253 = mem[_7477]
        mem[uint255(stor22.length.field_1) + 32] = mem[_7477]
        mem[uint255(stor22.length.field_1) + 64 len ceil32(_8253)] = mem[_7477 + 32 len ceil32(_8253)]
        if ceil32(_8253) > _8253:
            mem[uint255(stor22.length.field_1) + _8253 + 64] = 0
        return 32, mem[uint255(stor22.length.field_1) + 32 len ceil32(_8253) + 32]
    if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if not bool(stor22.length):
        mem[0] = Mask(248, 8, stor22.length)
        mem[64] = stor22.length.field_1 % 128
        mem[stor22.length.field_1 % 128] = 32
        _6262 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
        mem[stor22.length.field_1 % 128 + 32] = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
        mem[stor22.length.field_1 % 128 + 64 len ceil32(_6262)] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(_6262)]
        if ceil32(_6262) > _6262:
            mem[stor22.length.field_1 % 128 + _6262 + 64] = 0
        return 32, mem[stor22.length.field_1 % 128 + 32 len ceil32(_6262) + 32]
    if bool(stor22.length) != 1:
        mem[64] = 0
        _6343 = mem[ceil32(stor20[arg1].field_1025 % 128) + 128]
        mem[64 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])] = mem[ceil32(stor20[arg1].field_1025 % 128) + 160 len ceil32(mem[ceil32(stor20[arg1].field_1025 % 128) + 128])]
        if ceil32(_6343) > _6343:
            mem[_6343 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_6343) + -mem[64] + 64
    mem[0] = 22
    idx = 0
    s = 0
    while idx < stor22.length.field_1 % 128:
        mem[idx] = stor[s + sha3(mem[0])]
        idx = idx + 32
        s = s + 1
        continue 
    _7478 = mem[64]
    mem[64] = stor22.length.field_1 % 128
    mem[stor22.length.field_1 % 128] = 32
    _8254 = mem[_7478]
    mem[stor22.length.field_1 % 128 + 32] = mem[_7478]
    mem[stor22.length.field_1 % 128 + 64 len ceil32(_8254)] = mem[_7478 + 32 len ceil32(_8254)]
    if ceil32(_8254) > _8254:
        mem[stor22.length.field_1 % 128 + _8254 + 64] = 0
    return 32, mem[stor22.length.field_1 % 128 + 32 len ceil32(_8254) + 32]
}



}
