contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - mint(uint256 arg1)
#  - tokenURI(uint256 arg1)
#
const maxNFTPurchase = 1

const sub_9d03e6d0(?) = 3 * 10^17


mapping of uint8 stor0;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor3;
mapping of address approved;
mapping of uint8 stor5;
array of struct stor6;
array of struct stor7;
mapping of struct stor8;
array of struct stor9;
address owner;
uint256 startingIndexBlock;
uint256 startingIndex;
uint256 MAX_NFT;
uint8 stor14;
uint256 stor14;
uint256 REVEAL_TIMESTAMP;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor0[Mask(32, 224, arg1)])
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function REVEAL_TIMESTAMP() {
    return REVEAL_TIMESTAMP
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= tokenOfOwnerByIndex[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableMap: index out of bounds'
    return tokenByIndex[arg1].field_0
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    if stor3[arg1] < 1:
        revert with 0, 17
    if stor3[arg1] - 1 >= tokenByIndex.length:
        revert with 0, 50
    return tokenByIndex[stor3[arg1] - 1].field_256
}

function MAX_NFT() {
    return MAX_NFT
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return tokenOfOwnerByIndex[address(arg1)]
}

function owner() {
    return owner
}

function startingIndex() {
    return startingIndex
}

function startingIndexBlock() {
    return startingIndexBlock
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function saleIsActive() {
    return bool(uint8(stor14))
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function toggleSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor14) = not uint8(stor14) or Mask(248, 8, uint256(stor14))
}

function setRevealTimestamp(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    REVEAL_TIMESTAMP = arg1
}

function emergencySetStartingIndexBlock() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if startingIndex:
        revert with 0, 'Starting index is already set'
    startingIndexBlock = block.number
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setStartingIndex() {
    if startingIndex:
        revert with 0, 'Starting index is already set'
    if not startingIndexBlock:
        revert with 0, 'Starting index block must be set'
    if not MAX_NFT:
        revert with 0, 18
    startingIndex = block.hash(startingIndexBlock) % MAX_NFT
    if startingIndexBlock > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.number < startingIndexBlock:
        revert with 0, 17
    if block.number - startingIndexBlock > 255:
        if block.number < 1:
            revert with 0, 17
        if not MAX_NFT:
            revert with 0, 18
        startingIndex = block.hash(block.number - 1) % MAX_NFT
    if not startingIndex:
        if startingIndex > -2:
            revert with 0, 17
        if startingIndex + 1 < startingIndex:
            revert with 0, 'SafeMath: addition overflow'
        startingIndex++
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor3[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    if stor3[arg2] < 1:
        revert with 0, 17
    if stor3[arg2] - 1 >= tokenByIndex.length:
        revert with 0, 50
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
    if stor3[arg2] < 1:
        revert with 0, 17
    if stor3[arg2] - 1 >= tokenByIndex.length:
        revert with 0, 50
    emit Approval(tokenByIndex[stor3[arg2] - 1].field_256, arg1, arg2);
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor9.length):
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor9[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor9.length = 0
            idx = 0
            while stor9.length.field_1 + 31 / 32 > idx:
                stor9[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor9[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor9.length = 0
            idx = 0
            while stor9.length.field_1 + 31 / 32 > idx:
                stor9[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function name() {
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 0, 34
        if bool(stor6.length):
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 0, 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        else:
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 0, 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
        if ceil32(stor6.length.field_1) > stor6.length.field_1:
            mem[stor6.length.field_1 + ceil32(stor6.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
    if bool(stor6.length) == stor6.length.field_1 < 32:
        revert with 0, 34
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 0, 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 0, 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
    if ceil32(stor6.length.field_1) > stor6.length.field_1:
        mem[stor6.length.field_1 + ceil32(stor6.length.field_1) + 192] = 0
    return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
}

function symbol() {
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 0, 34
        if bool(stor7.length):
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 0, 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)])
                mem[128] = 256 * stor7.length.field_8
        else:
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 0, 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)])
                mem[128] = 256 * stor7.length.field_8
        mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
        if ceil32(stor7.length.field_1) > stor7.length.field_1:
            mem[stor7.length.field_1 + ceil32(stor7.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
    if bool(stor7.length) == stor7.length.field_1 < 32:
        revert with 0, 34
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 0, 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    else:
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 0, 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
    if ceil32(stor7.length.field_1) > stor7.length.field_1:
        mem[stor7.length.field_1 + ceil32(stor7.length.field_1) + 192] = 0
    return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
}

function baseURI() {
    if bool(stor9.length):
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 0, 34
        if bool(stor9.length):
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 0, 34
            if stor9.length.field_1:
                if 31 < stor9.length.field_1:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while stor9.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)])
                mem[128] = 256 * stor9.length.field_8
        else:
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 0, 34
            if stor9.length.field_1:
                if 31 < stor9.length.field_1:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while stor9.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)])
                mem[128] = 256 * stor9.length.field_8
        mem[ceil32(stor9.length.field_1) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
        if ceil32(stor9.length.field_1) > stor9.length.field_1:
            mem[stor9.length.field_1 + ceil32(stor9.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)], mem[(2 * ceil32(stor9.length.field_1)) + 192 len 2 * ceil32(stor9.length.field_1)]), 
    if bool(stor9.length) == stor9.length.field_1 < 32:
        revert with 0, 34
    if bool(stor9.length):
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 0, 34
        if stor9.length.field_1:
            if 31 < stor9.length.field_1:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while stor9.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
            mem[128] = 256 * stor9.length.field_8
    else:
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 0, 34
        if stor9.length.field_1:
            if 31 < stor9.length.field_1:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while stor9.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
            mem[128] = 256 * stor9.length.field_8
    mem[ceil32(stor9.length.field_1) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
    if ceil32(stor9.length.field_1) > stor9.length.field_1:
        mem[stor9.length.field_1 + ceil32(stor9.length.field_1) + 192] = 0
    return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)], mem[(2 * ceil32(stor9.length.field_1)) + 192 len 2 * ceil32(stor9.length.field_1)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not stor3[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    if stor3[arg3] < 1:
        revert with 0, 17
    if stor3[arg3] - 1 >= tokenByIndex.length:
        revert with 0, 50
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
    if stor3[arg3] < 1:
        revert with 0, 17
    if stor3[arg3] - 1 >= tokenByIndex.length:
        revert with 0, 50
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
    if stor3[arg3] < 1:
        revert with 0, 17
    if stor3[arg3] - 1 >= tokenByIndex.length:
        revert with 0, 50
    emit Approval(tokenByIndex[stor3[arg3] - 1].field_256, 0, arg3);
    if tokenOfOwnerByIndex[address(arg1)][1][arg3]:
        if tokenOfOwnerByIndex[address(arg1)][1][arg3] < 1:
            revert with 0, 17
        if tokenOfOwnerByIndex[address(arg1)] < 1:
            revert with 0, 17
        if tokenOfOwnerByIndex[address(arg1)] - 1 >= tokenOfOwnerByIndex[address(arg1)]:
            revert with 0, 50
        if tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 >= tokenOfOwnerByIndex[address(arg1)]:
            revert with 0, 50
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)][1][arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        if 1 > !(tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1):
            revert with 0, 17
        tokenOfOwnerByIndex[address(arg1)][1][tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]] = tokenOfOwnerByIndex[address(arg1)][1][arg3]
        if not tokenOfOwnerByIndex[address(arg1)]:
            revert with 0, 49
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
        tokenOfOwnerByIndex[address(arg1)]--
        tokenOfOwnerByIndex[address(arg1)][1][arg3] = 0
    if not tokenOfOwnerByIndex[address(arg2)][1][arg3]:
        tokenOfOwnerByIndex[address(arg2)]++
        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
        tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
    if stor3[arg3]:
        if stor3[arg3] < 1:
            revert with 0, 17
        if stor3[arg3] - 1 >= tokenByIndex.length:
            revert with 0, 50
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(arg4.length) + 128 < 96 or ceil32(arg4.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg4.length + arg4 + 36
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if not stor3[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    mem[ceil32(arg4.length) + 128] = 41
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg4.length) + 201 len 23] >> 72,
                    0
    if stor3[arg3] < 1:
        revert with 0, 17
    if stor3[arg3] - 1 >= tokenByIndex.length:
        revert with 0, 50
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
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg4.length) + 297 len 23] >> 72,
                    0
    if stor3[arg3] < 1:
        revert with 0, 17
    if stor3[arg3] - 1 >= tokenByIndex.length:
        revert with 0, 50
    if tokenByIndex[stor3[arg3] - 1].field_256 != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg4.length) + 393 len 23] >> 72,
                    0
    if stor3[arg3] < 1:
        revert with 0, 17
    if stor3[arg3] - 1 >= tokenByIndex.length:
        revert with 0, 50
    emit Approval(tokenByIndex[stor3[arg3] - 1].field_256, 0, arg3);
    if tokenOfOwnerByIndex[address(arg1)][1][arg3]:
        if tokenOfOwnerByIndex[address(arg1)][1][arg3] < 1:
            revert with 0, 17
        if tokenOfOwnerByIndex[address(arg1)] < 1:
            revert with 0, 17
        if tokenOfOwnerByIndex[address(arg1)] - 1 >= tokenOfOwnerByIndex[address(arg1)]:
            revert with 0, 50
        if tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 >= tokenOfOwnerByIndex[address(arg1)]:
            revert with 0, 50
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)][1][arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        if 1 > !(tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1):
            revert with 0, 17
        tokenOfOwnerByIndex[address(arg1)][1][tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]] = tokenOfOwnerByIndex[address(arg1)][1][arg3]
        if not tokenOfOwnerByIndex[address(arg1)]:
            revert with 0, 49
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
        tokenOfOwnerByIndex[address(arg1)]--
        tokenOfOwnerByIndex[address(arg1)][1][arg3] = 0
    if not tokenOfOwnerByIndex[address(arg2)][1][arg3]:
        tokenOfOwnerByIndex[address(arg2)]++
        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
        tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
    if stor3[arg3]:
        if stor3[arg3] < 1:
            revert with 0, 17
        if stor3[arg3] - 1 >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor3[arg3] - 1].field_256 = arg2
        tokenByIndex[stor3[arg3] - 1].field_416 = 0
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2):
            mem[ceil32(arg4.length) + 580] = arg4.length
            mem[ceil32(arg4.length) + 612 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if ceil32(arg4.length) > arg4.length:
                mem[arg4.length + ceil32(arg4.length) + 612] = 0
            mem[(2 * ceil32(arg4.length)) + 612] = 50
            mem[(2 * ceil32(arg4.length)) + 644 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if not ext_code.size(arg2):
                mem[(2 * ceil32(arg4.length)) + 708] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg4.length)) + 712] = 32
                mem[(2 * ceil32(arg4.length)) + 744] = 29
                mem[(2 * ceil32(arg4.length)) + 776] = 'Address: call to non-contract'
                revert with memory
                  from (2 * ceil32(arg4.length)) + 708
                   len ceil32(arg4.length) + 100
            mem[(2 * ceil32(arg4.length)) + 708 len floor32(ceil32(arg4.length) + 195)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 612 len floor32(ceil32(arg4.length) + 195) + -ceil32(arg4.length) - 164]
            if floor32(ceil32(arg4.length) + 195) > ceil32(arg4.length) + 164:
                mem[(4 * ceil32(arg4.length)) + 872] = 0
            call arg2.mem[ceil32(arg4.length) + floor32(ceil32(arg4.length) + 195) + 416 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(arg4.length)) + 712 len (6 * ceil32(arg4.length)) + 160]
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length:
                        revert with arg4[all]
                    revert with 0, 
                                32,
                                50,
                                0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[(2 * ceil32(arg4.length)) + 694 len 14] >> 144,
                                0
                require arg4.length >= 32
                require mem[128] == Mask(32, 224, mem[128])
                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                mem[(2 * ceil32(arg4.length)) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                50,
                                0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[(2 * ceil32(arg4.length)) + 694 len 14] >> 144,
                                0
                require return_data.size >= 32
                require mem[(2 * ceil32(arg4.length)) + 740] == Mask(32, 224, mem[(2 * ceil32(arg4.length)) + 740])
                if Mask(32, 224, mem[(2 * ceil32(arg4.length)) + 740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        tokenByIndex[tokenByIndex.length].field_256 = arg2
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor3[arg3] = tokenByIndex.length
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2):
            mem[ceil32(arg4.length) + 644] = arg4.length
            mem[ceil32(arg4.length) + 676 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if ceil32(arg4.length) > arg4.length:
                mem[arg4.length + ceil32(arg4.length) + 676] = 0
            mem[(2 * ceil32(arg4.length)) + 676] = 50
            mem[(2 * ceil32(arg4.length)) + 708 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if not ext_code.size(arg2):
                mem[(2 * ceil32(arg4.length)) + 772] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg4.length)) + 776] = 32
                mem[(2 * ceil32(arg4.length)) + 808] = 29
                mem[(2 * ceil32(arg4.length)) + 840] = 'Address: call to non-contract'
                revert with memory
                  from (2 * ceil32(arg4.length)) + 772
                   len ceil32(arg4.length) + 100
            mem[(2 * ceil32(arg4.length)) + 772 len floor32(ceil32(arg4.length) + 195)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 676 len floor32(ceil32(arg4.length) + 195) + -ceil32(arg4.length) - 164]
            if floor32(ceil32(arg4.length) + 195) > ceil32(arg4.length) + 164:
                mem[(4 * ceil32(arg4.length)) + 936] = 0
            call arg2.mem[ceil32(arg4.length) + floor32(ceil32(arg4.length) + 195) + 480 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(arg4.length)) + 776 len (6 * ceil32(arg4.length)) + 160]
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length:
                        revert with arg4[all]
                    revert with 0, 
                                32,
                                50,
                                0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[(2 * ceil32(arg4.length)) + 758 len 14] >> 144,
                                0
                require arg4.length >= 32
                require mem[128] == Mask(32, 224, mem[128])
                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                mem[(2 * ceil32(arg4.length)) + 804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                50,
                                0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[(2 * ceil32(arg4.length)) + 758 len 14] >> 144,
                                0
                require return_data.size >= 32
                require mem[(2 * ceil32(arg4.length)) + 804] == Mask(32, 224, mem[(2 * ceil32(arg4.length)) + 804])
                if Mask(32, 224, mem[(2 * ceil32(arg4.length)) + 804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function sub_c617f4ed(?) payable {
    mem[64] = 96
    require not msg.value
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < 30:
        if tokenByIndex.length > !idx:
            revert with 0, 17
        _491 = mem[64]
        mem[64] = mem[64] + 32
        mem[_491] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if stor3[stor2.length + idx]:
            revert with 0, 'ERC721: token already minted'
        if tokenOfOwnerByIndex[address(msg.sender)][1][stor2.length + idx]:
            mem[0] = tokenByIndex.length + idx
            mem[32] = 3
            if stor3[stor2.length + idx]:
                if stor3[stor2.length + idx] < 1:
                    revert with 0, 17
                if stor3[stor2.length + idx] - 1 >= tokenByIndex.length:
                    revert with 0, 50
                mem[0] = 2
                tokenByIndex[stor3[tokenByIndex.length + idx] - 1].field_256 = msg.sender
                tokenByIndex[stor3[tokenByIndex.length + idx] - 1].field_416 = 0
                emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                if ext_code.size(msg.sender):
                    _523 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = tokenByIndex.length + idx
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 196] = mem[s + _491 + 32]
                        s = s + 32
                        continue 
                    _983 = mem[64]
                    mem[mem[64]] = 164
                    mem[64] = mem[64] + 196
                    mem[_983 + 32] = mem[_983 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[64] = _523 + 292
                    mem[_523 + 196] = 50
                    mem[_523 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if not ext_code.size(msg.sender):
                        revert with 0, 'Address: call to non-contract'
                    _1023 = mem[_983]
                    s = 0
                    while s < _1023:
                        mem[s + _523 + 292] = mem[s + _983 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1023) > _1023:
                        mem[_1023 + _523 + 292] = 0
                    call msg.sender.mem[_523 + 292 len 4] with:
                         gas gas_remaining wei
                        args mem[_523 + 296 len _1023 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_523 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_523 + 296] = 32
                            idx = 0
                            while idx < 50:
                                mem[idx + _523 + 360] = mem[idx + _523 + 228]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 50, mem[_523 + 360 len 50], 0
                        require mem[96] >= 32
                        require mem[128] == Mask(32, 224, mem[128])
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        mem[64] = _523 + ceil32(return_data.size) + 293
                        mem[_523 + 292] = return_data.size
                        mem[_523 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_523 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_523 + ceil32(return_data.size) + 297] = 32
                            idx = 0
                            while idx < 50:
                                mem[idx + _523 + ceil32(return_data.size) + 361] = mem[idx + _523 + 228]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 50, mem[_523 + ceil32(return_data.size) + 361 len 50], 0
                        require return_data.size >= 32
                        require mem[_523 + 324] == Mask(32, 224, mem[_523 + 324])
                        if Mask(32, 224, mem[_523 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _503 = mem[64]
            mem[64] = mem[64] + 64
            mem[_503] = tokenByIndex.length + idx
            mem[_503 + 32] = msg.sender
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length + idx
            tokenByIndex[tokenByIndex.length].field_256 = msg.sender
            tokenByIndex[tokenByIndex.length].field_416 = 0
            mem[0] = tokenByIndex.length + idx
            mem[32] = 3
            stor3[stor2.length + idx] = tokenByIndex.length
            emit Transfer(0, msg.sender, tokenByIndex.length + idx);
            if not ext_code.size(msg.sender):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _519 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0
            mem[mem[64] + 100] = tokenByIndex.length + idx
            mem[mem[64] + 132] = 128
            mem[mem[64] + 164] = 0
            s = 0
            while s < 0:
                mem[s + mem[64] + 196] = mem[s + _491 + 32]
                s = s + 32
                continue 
            _989 = mem[64]
            mem[mem[64]] = 164
            mem[64] = mem[64] + 196
            mem[_989 + 32] = mem[_989 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[64] = _519 + 292
            mem[_519 + 196] = 50
            mem[_519 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if not ext_code.size(msg.sender):
                revert with 0, 'Address: call to non-contract'
            _1025 = mem[_989]
            idx = 0
            while idx < _1025:
                mem[idx + _519 + 292] = mem[idx + _989 + 32]
                idx = idx + 32
                continue 
            if ceil32(_1025) > _1025:
                mem[_1025 + _519 + 292] = 0
            call msg.sender.mem[_519 + 292 len 4] with:
                 gas gas_remaining wei
                args mem[_519 + 296 len _1025 - 4]
            if not return_data.size:
                if ext_call.success:
                    require mem[96] >= 32
                    require mem[128] == Mask(32, 224, mem[128])
                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    s = 1
                    continue 
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_519 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_519 + 296] = 32
                idx = 0
                while idx < 50:
                    mem[idx + _519 + 360] = mem[idx + _519 + 228]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 50, mem[_519 + 360 len 50], 0
            mem[64] = _519 + ceil32(return_data.size) + 293
            mem[_519 + 292] = return_data.size
            mem[_519 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require return_data.size >= 32
                require mem[_519 + 324] == Mask(32, 224, mem[_519 + 324])
                if Mask(32, 224, mem[_519 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                s = 1
                continue 
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_519 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_519 + ceil32(return_data.size) + 297] = 32
            idx = 0
            while idx < 50:
                mem[idx + _519 + ceil32(return_data.size) + 361] = mem[idx + _519 + 228]
                idx = idx + 32
                continue 
            revert with 0, 32, 50, mem[_519 + ceil32(return_data.size) + 361 len 50], 0
        tokenOfOwnerByIndex[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length + idx
        tokenOfOwnerByIndex[address(msg.sender)][1][stor2.length + idx] = tokenOfOwnerByIndex[address(msg.sender)]
        mem[0] = tokenByIndex.length + idx
        mem[32] = 3
        if stor3[stor2.length + idx]:
            if stor3[stor2.length + idx] < 1:
                revert with 0, 17
            if stor3[stor2.length + idx] - 1 >= tokenByIndex.length:
                revert with 0, 50
            mem[0] = 2
            tokenByIndex[stor3[tokenByIndex.length + idx] - 1].field_256 = msg.sender
            tokenByIndex[stor3[tokenByIndex.length + idx] - 1].field_416 = 0
            emit Transfer(0, msg.sender, tokenByIndex.length + idx);
            if ext_code.size(msg.sender):
                _524 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = tokenByIndex.length + idx
                mem[mem[64] + 132] = 128
                mem[mem[64] + 164] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 196] = mem[s + _491 + 32]
                    s = s + 32
                    continue 
                _995 = mem[64]
                mem[mem[64]] = 164
                mem[64] = mem[64] + 196
                mem[_995 + 32] = mem[_995 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[64] = _524 + 292
                mem[_524 + 196] = 50
                mem[_524 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                if not ext_code.size(msg.sender):
                    revert with 0, 'Address: call to non-contract'
                _1027 = mem[_995]
                s = 0
                while s < _1027:
                    mem[s + _524 + 292] = mem[s + _995 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1027) > _1027:
                    mem[_1027 + _524 + 292] = 0
                call msg.sender.mem[_524 + 292 len 4] with:
                     gas gas_remaining wei
                    args mem[_524 + 296 len _1027 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_524 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_524 + 296] = 32
                        idx = 0
                        while idx < 50:
                            mem[idx + _524 + 360] = mem[idx + _524 + 228]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 50, mem[_524 + 360 len 50], 0
                    require mem[96] >= 32
                    require mem[128] == Mask(32, 224, mem[128])
                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    mem[64] = _524 + ceil32(return_data.size) + 293
                    mem[_524 + 292] = return_data.size
                    mem[_524 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_524 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_524 + ceil32(return_data.size) + 297] = 32
                        idx = 0
                        while idx < 50:
                            mem[idx + _524 + ceil32(return_data.size) + 361] = mem[idx + _524 + 228]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 50, mem[_524 + ceil32(return_data.size) + 361 len 50], 0
                    require return_data.size >= 32
                    require mem[_524 + 324] == Mask(32, 224, mem[_524 + 324])
                    if Mask(32, 224, mem[_524 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _508 = mem[64]
        mem[64] = mem[64] + 64
        mem[_508] = tokenByIndex.length + idx
        mem[_508 + 32] = msg.sender
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length + idx
        tokenByIndex[tokenByIndex.length].field_256 = msg.sender
        tokenByIndex[tokenByIndex.length].field_416 = 0
        mem[0] = tokenByIndex.length + idx
        mem[32] = 3
        stor3[stor2.length + idx] = tokenByIndex.length
        emit Transfer(0, msg.sender, tokenByIndex.length + idx);
        if not ext_code.size(msg.sender):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _520 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = 0
        mem[mem[64] + 100] = tokenByIndex.length + idx
        mem[mem[64] + 132] = 128
        mem[mem[64] + 164] = 0
        s = 0
        while s < 0:
            mem[s + mem[64] + 196] = mem[s + _491 + 32]
            s = s + 32
            continue 
        _1001 = mem[64]
        mem[mem[64]] = 164
        mem[64] = mem[64] + 196
        mem[_1001 + 32] = mem[_1001 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
        mem[64] = _520 + 292
        mem[_520 + 196] = 50
        mem[_520 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
        if not ext_code.size(msg.sender):
            revert with 0, 'Address: call to non-contract'
        _1029 = mem[_1001]
        idx = 0
        while idx < _1029:
            mem[idx + _520 + 292] = mem[idx + _1001 + 32]
            idx = idx + 32
            continue 
        if ceil32(_1029) > _1029:
            mem[_1029 + _520 + 292] = 0
        call msg.sender.mem[_520 + 292 len 4] with:
             gas gas_remaining wei
            args mem[_520 + 296 len _1029 - 4]
        if not return_data.size:
            if ext_call.success:
                require mem[96] >= 32
                require mem[128] == Mask(32, 224, mem[128])
                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                s = 1
                continue 
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            mem[_520 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_520 + 296] = 32
            idx = 0
            while idx < 50:
                mem[idx + _520 + 360] = mem[idx + _520 + 228]
                idx = idx + 32
                continue 
            revert with 0, 32, 50, mem[_520 + 360 len 50], 0
        mem[64] = _520 + ceil32(return_data.size) + 293
        mem[_520 + 292] = return_data.size
        mem[_520 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            require return_data.size >= 32
            require mem[_520 + 324] == Mask(32, 224, mem[_520 + 324])
            if Mask(32, 224, mem[_520 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            s = 1
            continue 
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_520 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_520 + ceil32(return_data.size) + 297] = 32
        idx = 0
        while idx < 50:
            mem[idx + _520 + ceil32(return_data.size) + 361] = mem[idx + _520 + 228]
            idx = idx + 32
            continue 
        revert with 0, 32, 50, mem[_520 + ceil32(return_data.size) + 361 len 50], 0
}

function sub_e42d20f7(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    require calldata.size >= arg1.length + arg1 + 36
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if var81002 >= tokenByIndex.length:
    if not var85001:
        # nil
    else:
        if var47002:
            if var47001 == -1:
                revert with 0, 17
            var47001 = var47001 + 1
            var47002 = var47002 / 10
            continue 
        if var47001 > test266151307():
            revert with 0, 65
        mem[ceil32(arg1.length) + 128] = var47001
        mem[64] = ceil32(arg1.length) + ceil32(var47001) + 160
        if not var47001:
            if var47001 < 1:
                revert with 0, 17
            s = var47001 - 1
            idx = var97002
            while idx:
                if 48 > !(idx % 10):
                    revert with 0, 17
                if not s:
                    revert with 0, 17
                if s >= Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
                    revert with 0, 50
                mem[s + ceil32(arg1.length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                s = s - 1
                idx = idx / 10
                continue 
            if var58001 < var104003:
                mem[var58001 + var104002] = mem[var58001 + 128]
                var58001 = var58001 + 32
                continue 
            if var58001 <= var104003:
                _2282 = mem[var104008]
                mem[var104007 + var104005 len ceil32(mem[var104008])] = mem[var104008 + 32 len ceil32(mem[var104008])]
                if ceil32(_2282) > _2282:
                    mem[_2282 + var104007 + var104005] = 0
                mem[ceil32(arg1.length) + ceil32(var47001) + 160] = _2282 + var104007 + var104005 + -ceil32(arg1.length) + -ceil32(var47001) - 192
                mem[64] = _2282 + var104007 + var104005
                if not stor3[var104012]:
                    revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                mem[32] = 8
                if stor8[var104012].field_0:
                    if stor8[var104012].field_0 == stor8[var104012].field_1 < 32:
                        revert with 0, 34
                    mem[0] = sha3(var104012, 8)
                    if _2282 + var104007 + var104005 + -ceil32(arg1.length) + -ceil32(var47001) - 192:
                        stor8[var104012].field_0 = (2 * _2282 + var104007 + var104005 + -ceil32(arg1.length) + -ceil32(var47001) - 192) + 1
                        s = 0
                        t = ceil32(arg1.length) + ceil32(var47001) + 192
                        while _2282 + var104007 + var104005 > t:
                            stor8[var104012][s].field_0 = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        # nil
                    else:
                        stor8[var104012].field_0 = 0
                        s = 0
                        while stor8[var104012].field_1 + 31 / 32 > s:
                            stor8[var104012][s].field_0 = 0
                            s = s + 1
                            continue 
                        if var104012 == -1:
                            revert with 0, 17
                        if var104012 + 1 >= tokenByIndex.length:
                        if var104012 + 1:
                            var47001 = 0
                            var47002 = var104012 + 1
                            continue 
                        mem[64] = _2282 + var104007 + var104005 + 64
                        mem[_2282 + var104007 + var104005] = 1
                        mem[_2282 + var104007 + var104005 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        var58001 = 0
                        continue 
                else:
                    if stor8[var104012].field_0 == stor8[var104012].field_1 < 32:
                        revert with 0, 34
                    mem[0] = sha3(var104012, 8)
                    if _2282 + var104007 + var104005 + -ceil32(arg1.length) + -ceil32(var47001) - 192:
                        stor8[var104012].field_0 = (2 * _2282 + var104007 + var104005 + -ceil32(arg1.length) + -ceil32(var47001) - 192) + 1
                        s = 0
                        t = ceil32(arg1.length) + ceil32(var47001) + 192
                        while _2282 + var104007 + var104005 > t:
                            stor8[var104012][s].field_0 = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        # nil
                    else:
                        stor8[var104012].field_0 = 0
                        s = 0
                        while stor8[var104012].field_1 + 31 / 32 > s:
                            stor8[var104012][s].field_0 = 0
                            s = s + 1
                            continue 
                        if var104012 == -1:
                            revert with 0, 17
                        if var104012 + 1 >= tokenByIndex.length:
                        if var104012 + 1:
                            var47001 = 0
                            var47002 = var104012 + 1
                            continue 
                        mem[64] = _2282 + var104007 + var104005 + 64
                        mem[_2282 + var104007 + var104005] = 1
                        mem[_2282 + var104007 + var104005 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        var58001 = 0
                        continue 
            else:
                mem[var104003 + var104002] = 0
                _2283 = mem[var104008]
                mem[var104007 + var104005 len ceil32(mem[var104008])] = mem[var104008 + 32 len ceil32(mem[var104008])]
                if ceil32(_2283) > _2283:
                    mem[_2283 + var104007 + var104005] = 0
                mem[ceil32(arg1.length) + ceil32(var47001) + 160] = _2283 + var104007 + var104005 + -ceil32(arg1.length) + -ceil32(var47001) - 192
                mem[64] = _2283 + var104007 + var104005
                if not stor3[var104012]:
                    revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                mem[32] = 8
                if stor8[var104012].field_0:
                    if stor8[var104012].field_0 == stor8[var104012].field_1 < 32:
                        revert with 0, 34
                    mem[0] = sha3(var104012, 8)
                    if _2283 + var104007 + var104005 + -ceil32(arg1.length) + -ceil32(var47001) - 192:
                        stor8[var104012].field_0 = (2 * _2283 + var104007 + var104005 + -ceil32(arg1.length) + -ceil32(var47001) - 192) + 1
                        s = 0
                        t = ceil32(arg1.length) + ceil32(var47001) + 192
                        while _2283 + var104007 + var104005 > t:
                            stor8[var104012][s].field_0 = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        # nil
                    else:
                        stor8[var104012].field_0 = 0
                        s = 0
                        while stor8[var104012].field_1 + 31 / 32 > s:
                            stor8[var104012][s].field_0 = 0
                            s = s + 1
                            continue 
                        if var104012 == -1:
                            revert with 0, 17
                        if var104012 + 1 >= tokenByIndex.length:
                        if var104012 + 1:
                            var47001 = 0
                            var47002 = var104012 + 1
                            continue 
                        mem[64] = _2283 + var104007 + var104005 + 64
                        mem[_2283 + var104007 + var104005] = 1
                        mem[_2283 + var104007 + var104005 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        var58001 = 0
                        continue 
                else:
                    if stor8[var104012].field_0 == stor8[var104012].field_1 < 32:
                        revert with 0, 34
                    mem[0] = sha3(var104012, 8)
                    if _2283 + var104007 + var104005 + -ceil32(arg1.length) + -ceil32(var47001) - 192:
                        stor8[var104012].field_0 = (2 * _2283 + var104007 + var104005 + -ceil32(arg1.length) + -ceil32(var47001) - 192) + 1
                        s = 0
                        t = ceil32(arg1.length) + ceil32(var47001) + 192
                        while _2283 + var104007 + var104005 > t:
                            stor8[var104012][s].field_0 = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        # nil
                    else:
                        stor8[var104012].field_0 = 0
                        s = 0
                        while stor8[var104012].field_1 + 31 / 32 > s:
                            stor8[var104012][s].field_0 = 0
                            s = s + 1
                            continue 
                        if var104012 == -1:
                            revert with 0, 17
                        if var104012 + 1 >= tokenByIndex.length:
                        if var104012 + 1:
                            var47001 = 0
                            var47002 = var104012 + 1
                            continue 
                        mem[64] = _2283 + var104007 + var104005 + 64
                        mem[_2283 + var104007 + var104005] = 1
                        mem[_2283 + var104007 + var104005 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        var58001 = 0
                        continue 
        else:
            mem[ceil32(arg1.length) + 160 len var47001] = call.data[calldata.size len var47001]
            if var47001 < 1:
                revert with 0, 17
            s = var47001 - 1
            idx = var97002
            while idx:
                if 48 > !(idx % 10):
                    revert with 0, 17
                if not s:
                    revert with 0, 17
                if s >= Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
                    revert with 0, 50
                mem[s + ceil32(arg1.length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                s = s - 1
                idx = idx / 10
                continue 
            if var59001 < var105003:
                mem[var59001 + var105002] = mem[var59001 + 128]
                var59001 = var59001 + 32
                continue 
            if var59001 <= var105003:
                _2284 = mem[var105008]
                mem[var105007 + var105005 len ceil32(mem[var105008])] = mem[var105008 + 32 len ceil32(mem[var105008])]
                if ceil32(_2284) > _2284:
                    mem[_2284 + var105007 + var105005] = 0
                mem[ceil32(arg1.length) + ceil32(var47001) + 160] = _2284 + var105007 + var105005 + -ceil32(arg1.length) + -ceil32(var47001) - 192
                mem[64] = _2284 + var105007 + var105005
                if not stor3[var105012]:
                    revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                mem[32] = 8
                if stor8[var105012].field_0:
                    if stor8[var105012].field_0 == stor8[var105012].field_1 < 32:
                        revert with 0, 34
                    mem[0] = sha3(var105012, 8)
                    if _2284 + var105007 + var105005 + -ceil32(arg1.length) + -ceil32(var47001) - 192:
                        stor8[var105012].field_0 = (2 * _2284 + var105007 + var105005 + -ceil32(arg1.length) + -ceil32(var47001) - 192) + 1
                        s = 0
                        t = ceil32(arg1.length) + ceil32(var47001) + 192
                        while _2284 + var105007 + var105005 > t:
                            stor8[var105012][s].field_0 = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        # nil
                    else:
                        stor8[var105012].field_0 = 0
                        s = 0
                        while stor8[var105012].field_1 + 31 / 32 > s:
                            stor8[var105012][s].field_0 = 0
                            s = s + 1
                            continue 
                        if var105012 == -1:
                            revert with 0, 17
                        if var105012 + 1 >= tokenByIndex.length:
                        if var105012 + 1:
                            var47001 = 0
                            var47002 = var105012 + 1
                            continue 
                        mem[64] = _2284 + var105007 + var105005 + 64
                        mem[_2284 + var105007 + var105005] = 1
                        mem[_2284 + var105007 + var105005 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        var59001 = 0
                        continue 
                else:
                    if stor8[var105012].field_0 == stor8[var105012].field_1 < 32:
                        revert with 0, 34
                    mem[0] = sha3(var105012, 8)
                    if _2284 + var105007 + var105005 + -ceil32(arg1.length) + -ceil32(var47001) - 192:
                        stor8[var105012].field_0 = (2 * _2284 + var105007 + var105005 + -ceil32(arg1.length) + -ceil32(var47001) - 192) + 1
                        s = 0
                        t = ceil32(arg1.length) + ceil32(var47001) + 192
                        while _2284 + var105007 + var105005 > t:
                            stor8[var105012][s].field_0 = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        # nil
                    else:
                        stor8[var105012].field_0 = 0
                        s = 0
                        while stor8[var105012].field_1 + 31 / 32 > s:
                            stor8[var105012][s].field_0 = 0
                            s = s + 1
                            continue 
                        if var105012 == -1:
                            revert with 0, 17
                        if var105012 + 1 >= tokenByIndex.length:
                        if var105012 + 1:
                            var47001 = 0
                            var47002 = var105012 + 1
                            continue 
                        mem[64] = _2284 + var105007 + var105005 + 64
                        mem[_2284 + var105007 + var105005] = 1
                        mem[_2284 + var105007 + var105005 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        var59001 = 0
                        continue 
            else:
                mem[var105003 + var105002] = 0
                _2285 = mem[var105008]
                mem[var105007 + var105005 len ceil32(mem[var105008])] = mem[var105008 + 32 len ceil32(mem[var105008])]
                if ceil32(_2285) > _2285:
                    mem[_2285 + var105007 + var105005] = 0
                mem[ceil32(arg1.length) + ceil32(var47001) + 160] = _2285 + var105007 + var105005 + -ceil32(arg1.length) + -ceil32(var47001) - 192
                mem[64] = _2285 + var105007 + var105005
                if not stor3[var105012]:
                    revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                mem[32] = 8
                if stor8[var105012].field_0:
                    if stor8[var105012].field_0 == stor8[var105012].field_1 < 32:
                        revert with 0, 34
                    mem[0] = sha3(var105012, 8)
                    if _2285 + var105007 + var105005 + -ceil32(arg1.length) + -ceil32(var47001) - 192:
                        stor8[var105012].field_0 = (2 * _2285 + var105007 + var105005 + -ceil32(arg1.length) + -ceil32(var47001) - 192) + 1
                        s = 0
                        t = ceil32(arg1.length) + ceil32(var47001) + 192
                        while _2285 + var105007 + var105005 > t:
                            stor8[var105012][s].field_0 = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        # nil
                    else:
                        stor8[var105012].field_0 = 0
                        s = 0
                        while stor8[var105012].field_1 + 31 / 32 > s:
                            stor8[var105012][s].field_0 = 0
                            s = s + 1
                            continue 
                        if var105012 == -1:
                            revert with 0, 17
                        if var105012 + 1 >= tokenByIndex.length:
                        if var105012 + 1:
                            var47001 = 0
                            var47002 = var105012 + 1
                            continue 
                        mem[64] = _2285 + var105007 + var105005 + 64
                        mem[_2285 + var105007 + var105005] = 1
                        mem[_2285 + var105007 + var105005 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        var59001 = 0
                        continue 
                else:
                    if stor8[var105012].field_0 == stor8[var105012].field_1 < 32:
                        revert with 0, 34
                    mem[0] = sha3(var105012, 8)
                    if _2285 + var105007 + var105005 + -ceil32(arg1.length) + -ceil32(var47001) - 192:
                        stor8[var105012].field_0 = (2 * _2285 + var105007 + var105005 + -ceil32(arg1.length) + -ceil32(var47001) - 192) + 1
                        s = 0
                        t = ceil32(arg1.length) + ceil32(var47001) + 192
                        while _2285 + var105007 + var105005 > t:
                            stor8[var105012][s].field_0 = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        # nil
                    else:
                        stor8[var105012].field_0 = 0
                        s = 0
                        while stor8[var105012].field_1 + 31 / 32 > s:
                            stor8[var105012][s].field_0 = 0
                            s = s + 1
                            continue 
                        if var105012 == -1:
                            revert with 0, 17
                        if var105012 + 1 >= tokenByIndex.length:
                        if var105012 + 1:
                            var47001 = 0
                            var47002 = var105012 + 1
                            continue 
                        mem[64] = _2285 + var105007 + var105005 + 64
                        mem[_2285 + var105007 + var105005] = 1
                        mem[_2285 + var105007 + var105005 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        var59001 = 0
                        continue 
}



}
