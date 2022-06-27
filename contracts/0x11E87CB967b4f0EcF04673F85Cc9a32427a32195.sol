contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - initialize()
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
const sub_424fa66d(?) = 1

const sub_4bbd7a84(?) = 2

const sub_5dba06e4(?) = sha3(0x4e4f5f4f574e45445f4c494d4954)

const getStaminaMaxWait = 60000

const sub_6a4d521d(?) = sha3(0x64524543454956455f444f45535f4e4f545f5345545f5452414e534645525f54494d455354414d)

const sub_7d66a999(?) = 300

const sub_8f08d9e2(?) = 200

const GAME_ADMIN = sha3(336492626609784167942478)

const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = sha3(Mask(88, 168, 'MINTER_ROLE') >> 168)


mapping of uint8 stor51;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor103;
mapping of address approved;
mapping of uint8 stor105;
array of uint256 name;
array of uint256 symbol;
mapping of struct stor108;
array of struct baseURI;
array of struct roleAdmin;
array of struct stor201;
array of struct stor202;
array of uint16 requiredXpForNextLevel;
mapping of uint256 lastTransferTimestamp;
address promosAddress;
uint256 stor461;
uint256 stor462;
uint256 sub_aa3c6cfc;
mapping of uint256 sub_3c69f91f;
mapping of uint256 sub_3a319b4b;
mapping of struct sub_783efb25;
address sub_9462fa19Address;
mapping of uint256 stor336492626609784167942478;
mapping of uint256 stor1588316470916819674341485992298836;
array of struct stor46472157311649131651317580928243384587355742660275723744700495089454914805032;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor51[Mask(32, 224, arg1)])
}

function name() payable {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor103[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    return approved[arg1]
}

function sub_17b199a4(?) payable {
    require calldata.size - 4 >= 64
    return uint256(sub_783efb25[arg1][arg2].field_0)
}

function totalSupply() payable {
    return tokenByIndex.length
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return uint256(roleAdmin[arg1].field_512)
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= tokenOfOwnerByIndex[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function sub_3a319b4b(?) payable {
    require calldata.size - 4 >= 32
    return sub_3a319b4b[arg1]
}

function sub_3c69f91f(?) payable {
    require calldata.size - 4 >= 32
    return sub_3c69f91f[arg1]
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64456e756d657261626c654d61703a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return uint256(tokenByIndex[arg1].field_0)
}

function promos() payable {
    return promosAddress
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor103[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor103[arg1] - 1 < tokenByIndex.length
    return address(tokenByIndex[stor103[arg1] - 1].field_256)
}

function baseURI() payable {
    return uint256(baseURI[0 len baseURI.length].field_0)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    return tokenOfOwnerByIndex[address(arg1)]
}

function sub_783efb25(?) payable {
    require calldata.size - 4 >= 64
    return uint256(sub_783efb25[arg1][arg2].field_0)
}

function getRequiredXpForNextLevel(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 256
    return uint16(requiredXpForNextLevel[arg1])
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= uint256(roleAdmin[arg1].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return address(roleAdmin[arg1][arg2].field_0)
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(uint256(roleAdmin[arg1][1][address(arg2)].field_0))
}

function sub_9462fa19(?) payable {
    return sub_9462fa19Address
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function lastTransferTimestamp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return lastTransferTimestamp[arg1]
}

function sub_aa3c6cfc(?) payable {
    return sub_aa3c6cfc
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return uint256(roleAdmin[arg1].field_0)
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor105[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function migrateTo_b627f23() payable {
    require uint256(roleAdmin[0][1][address(msg.sender)].field_0)
    sub_aa3c6cfc = 4
}

function sub_d2ed7e06(?) payable {
    require calldata.size - 4 >= 32
    require uint256(roleAdmin[0][1][address(msg.sender)].field_0)
    sub_9462fa19Address = arg1
}

function migrateTo_ef994e2(address arg1) payable {
    require calldata.size - 4 >= 32
    require uint256(roleAdmin[0][1][address(msg.sender)].field_0)
    promosAddress = arg1
}

function migrateTo_951a020() payable {
    require uint256(roleAdmin[0][1][address(msg.sender)].field_0)
    stor51[0xe62e697400000000000000000000000000000000000000000000000000000000] = 1
}

function setCharacterLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'NA'
    sub_aa3c6cfc = arg1
}

function sub_fbb8ef78(?) payable {
    require calldata.size - 4 >= 96
    if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'NA'
    uint256(sub_783efb25[arg1][arg2].field_0) = arg3
}

function getStaminaPointsFromTimestamp(uint64 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 > block.timestamp:
        return 0
    if block.timestamp - arg1 / 300 <= 200:
        return uint8(block.timestamp - arg1 / 300)
    return 200
}

function getXp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor462:
        if stor461 >= block.number:
            revert with 0, 'Too fresh for lookup'
    require arg1 < stor201.length
    return uint16(stor201[arg1].field_0)
}

function getLevel(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor462:
        if stor461 >= block.number:
            revert with 0, 'Too fresh for lookup'
    require arg1 < stor201.length
    return uint8(stor201[arg1].field_16)
}

function getTrait(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor462:
        if stor461 >= block.number:
            revert with 0, 'Too fresh for lookup'
    require arg1 < stor201.length
    return uint8(stor201[arg1].field_24)
}

function getCosmeticsSeed(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor462:
        if stor461 >= block.number:
            revert with 0, 'Too fresh for lookup'
    require arg1 < stor202.length
    return uint256(stor202[arg1].field_256)
}

function getStaminaTimestamp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor462:
        if stor461 >= block.number:
            revert with 0, 'Too fresh for lookup'
    require arg1 < stor201.length
    return uint64(stor201[arg1].field_32)
}

function setTrait(uint256 arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'NA'
    require arg1 < stor201.length
    uint8(stor201[arg1].field_24) = arg2
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor105[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function setStaminaTimestamp(uint256 arg1, uint64 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'NA'
    require arg1 < stor201.length
    uint64(stor201[arg1].field_32) = arg2
}

function getStaminaPoints(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor462:
        if stor461 >= block.number:
            revert with 0, 'Too fresh for lookup'
    require arg1 < stor201.length
    if uint64(stor201[arg1].field_32) > block.timestamp:
        return 0
    if block.timestamp - uint64(stor201[arg1].field_32) / 300 <= 200:
        return uint8(block.timestamp - uint64(stor201[arg1].field_32) / 300)
    return 200
}

function isStaminaFull(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor462:
        if stor461 >= block.number:
            revert with 0, 'Too fresh for lookup'
        if arg1 >= stor462:
            if stor461 >= block.number:
                revert with 0, 'Too fresh for lookup'
    require arg1 < stor201.length
    if uint64(stor201[arg1].field_32) > block.timestamp:
        return 0
    if block.timestamp - uint64(stor201[arg1].field_32) / 300 <= 200:
        return uint8(block.timestamp - uint64(stor201[arg1].field_32) / 300) >= 200
    return 1
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not uint256(roleAdmin[uint256(roleAdmin[arg1].field_512)][1][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not uint256(roleAdmin[arg1][1][address(arg2)].field_0):
        uint256(roleAdmin[arg1].field_0)++
        address(roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_0) = arg2
        Mask(96, 0, roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_160) = 0
        uint256(roleAdmin[arg1][1][address(arg2)].field_0) = uint256(roleAdmin[arg1].field_0)
        emit RoleGranted(arg1, arg2, msg.sender);
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x50416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
                    mem[211 len 17]
    if uint256(roleAdmin[arg1][1][address(arg2)].field_0):
        require uint256(roleAdmin[arg1].field_0) - 1 < uint256(roleAdmin[arg1].field_0)
        require uint256(roleAdmin[arg1][1][address(arg2)].field_0) - 1 < uint256(roleAdmin[arg1].field_0)
        uint256(roleAdmin[arg1][uint256(roleAdmin[arg1][1][address(arg2)].field_0)].field_0) = uint256(roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_0)
        uint256(roleAdmin[arg1][1][uint256(roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_0)].field_0) = uint256(roleAdmin[arg1][1][address(arg2)].field_0)
        require uint256(roleAdmin[arg1].field_0)
        uint256(roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_0) = 0
        uint256(roleAdmin[arg1].field_0)--
        uint256(roleAdmin[arg1][1][address(arg2)].field_0) = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not uint256(roleAdmin[uint256(roleAdmin[arg1].field_512)][1][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x6e416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
    if uint256(roleAdmin[arg1][1][address(arg2)].field_0):
        require uint256(roleAdmin[arg1].field_0) - 1 < uint256(roleAdmin[arg1].field_0)
        require uint256(roleAdmin[arg1][1][address(arg2)].field_0) - 1 < uint256(roleAdmin[arg1].field_0)
        uint256(roleAdmin[arg1][uint256(roleAdmin[arg1][1][address(arg2)].field_0)].field_0) = uint256(roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_0)
        uint256(roleAdmin[arg1][1][uint256(roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_0)].field_0) = uint256(roleAdmin[arg1][1][address(arg2)].field_0)
        require uint256(roleAdmin[arg1].field_0)
        uint256(roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_0) = 0
        uint256(roleAdmin[arg1].field_0)--
        uint256(roleAdmin[arg1][1][address(arg2)].field_0) = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor103[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor103[arg2] - 1 < tokenByIndex.length
    if arg1 == address(tokenByIndex[stor103[arg2] - 1].field_256):
        revert with 0, 32, 33, 0x6e4552433732313a20617070726f76616c20746f2063757272656e74206f776e65, mem[293 len 31]
    if address(tokenByIndex[stor103[arg2] - 1].field_256) != msg.sender:
        if not stor105[address(stor102[stor103[arg2] - 1].field_256)][address(msg.sender)]:
            revert with 0, 
                        32,
                        56,
                        0x654552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                        mem[316 len 8]
    approved[arg2] = arg1
    if not stor103[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor103[arg2] - 1 < tokenByIndex.length
    emit Approval(address(tokenByIndex[stor103[arg2] - 1].field_256), arg1, arg2);
}

function getPowerAtLevel(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if (arg1 / 10) + 1 < arg1 / 10:
        revert with 0, 'SafeMath: addition overflow'
    if not arg1:
        if (1000 * arg1 / 10) + 1000 / 1000 != (arg1 / 10) + 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return ((1000 * arg1 / 10) + 1000 % 16777216)
    if 10 * arg1 / arg1 != 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (10 * arg1) + 1000 < 1000:
        revert with 0, 'SafeMath: addition overflow'
    if not (10 * arg1) + 1000:
        return 0
    if (10 * arg1) + (1000 * arg1 / 10) + (10 * arg1 * arg1 / 10) + 1000 / (10 * arg1) + 1000 != (arg1 / 10) + 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return ((10 * arg1) + (1000 * arg1 / 10) + (10 * arg1 * arg1 / 10) + 1000 % 16777216)
}

function sub_93272d9f(?) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    require tokenOfOwnerByIndex[address(arg1)] <= test266151307()
    if tokenOfOwnerByIndex[address(arg1)]:
        mem[128 len 32 * tokenOfOwnerByIndex[address(arg1)]] = call.data[calldata.size len 32 * tokenOfOwnerByIndex[address(arg1)]]
    idx = 0
    while idx < tokenOfOwnerByIndex[address(arg1)]:
        mem[32] = 101
        if idx >= tokenOfOwnerByIndex[address(arg1)]:
            revert with 0, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 230 len 30]
        mem[0] = sha3(address(arg1), 101)
        require idx < tokenOfOwnerByIndex[address(arg1)]
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        idx = idx + 1
        continue 
    mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 192 len floor32(tokenOfOwnerByIndex[address(arg1)])] = mem[128 len floor32(tokenOfOwnerByIndex[address(arg1)])]
    return Array(len=tokenOfOwnerByIndex[address(arg1)], data=mem[128 len floor32(tokenOfOwnerByIndex[address(arg1)])], mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + floor32(tokenOfOwnerByIndex[address(arg1)]) + 192 len (32 * tokenOfOwnerByIndex[address(arg1)]) - floor32(tokenOfOwnerByIndex[address(arg1)])]), 
}

function get(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor462:
        if stor461 >= block.number:
            revert with 0, 'Too fresh for lookup'
    require arg1 < stor201.length
    require arg1 < stor202.length
    if sha3(sha3(uint256(stor202[arg1].field_256), 1)) % 14 < sha3(sha3(uint256(stor202[arg1].field_256), 1)) % 14:
        revert with 0, 'SafeMath: addition overflow'
    if sha3(sha3(uint256(stor202[arg1].field_256), 2)) % 46 < sha3(sha3(uint256(stor202[arg1].field_256), 2)) % 46:
        revert with 0, 'SafeMath: addition overflow'
    if sha3(sha3(uint256(stor202[arg1].field_256), 3)) % 62 < sha3(sha3(uint256(stor202[arg1].field_256), 3)) % 62:
        revert with 0, 'SafeMath: addition overflow'
    if sha3(sha3(uint256(stor202[arg1].field_256), 4)) % 42 < sha3(sha3(uint256(stor202[arg1].field_256), 4)) % 42:
        revert with 0, 'SafeMath: addition overflow'
    if sha3(sha3(uint256(stor202[arg1].field_256), 5)) % 23 < sha3(sha3(uint256(stor202[arg1].field_256), 5)) % 23:
        revert with 0, 'SafeMath: addition overflow'
    if sha3(sha3(uint256(stor202[arg1].field_256), 6)) % 3 < sha3(sha3(uint256(stor202[arg1].field_256), 6)) % 3:
        revert with 0, 'SafeMath: addition overflow'
    return uint16(stor201[arg1].field_0), 
           uint8(stor201[arg1].field_0),
           uint8(stor201[arg1].field_0),
           uint64(stor201[arg1].field_0),
           sha3(sha3(uint256(stor202[arg1].field_256), 1)) % 14 << 240,
           sha3(sha3(uint256(stor202[arg1].field_256), 2)) % 46 << 240,
           sha3(sha3(uint256(stor202[arg1].field_256), 3)) % 62 << 240,
           sha3(sha3(uint256(stor202[arg1].field_256), 4)) % 42 << 240,
           sha3(sha3(uint256(stor202[arg1].field_256), 5)) % 23 << 240,
           uint16(sha3(sha3(uint256(stor202[arg1].field_256), 6)) % 3)
}

function getPower(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor462:
        if stor461 >= block.number:
            revert with 0, 'Too fresh for lookup'
    require arg1 < stor201.length
    if (uint8(stor201[arg1].field_16) / 10) + 1 < uint8(stor201[arg1].field_16) / 10:
        revert with 0, 'SafeMath: addition overflow'
    if not uint8(stor201[arg1].field_16):
        if (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 / 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return ((1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216)
    if 10 * uint8(stor201[arg1].field_16) / uint8(stor201[arg1].field_16) != 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (10 * uint8(stor201[arg1].field_16)) + 1000 < 1000:
        revert with 0, 'SafeMath: addition overflow'
    if not (10 * uint8(stor201[arg1].field_16)) + 1000:
        return 0
    if (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 / (10 * uint8(stor201[arg1].field_16)) + 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return ((10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216)
}

function gainXp(uint256 arg1, uint16 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    mem[96] = 0x47414d455f41444d494e00000000000000000000000000000000000000000000
    mem[32] = sha3(sha3(336492626609784167942478), 151) + 1
    if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'NA'
    require arg1 < stor201.length
    mem[0] = 201
    if uint8(stor201[arg1].field_16) < 255:
        if arg2 + uint16(stor201[arg1].field_0) < uint16(stor201[arg1].field_0):
            revert with 0, 'SafeMath: addition overflow'
        require uint8(stor201[arg1].field_16) < 256
        idx = arg2 + uint16(stor[sha3(mem[0]) + arg1].field_0)
        while idx >= uint256(requiredXpForNextLevel[uint8(stor201[arg1].field_16)]):
            uint8(stor201[arg1].field_16) = uint8(uint8(stor201[arg1].field_16) + 1)
            _23 = mem[64]
            mem[64] = mem[64] + 96
            mem[_23] = 41
            mem[_23 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
            mem[32] = 103
            if stor103[arg1]:
                require stor103[arg1] - 1 < tokenByIndex.length
                mem[0] = 102
                mem[mem[64]] = uint8(stor201[arg1].field_16)
                emit LevelUp(uint8(stor201[arg1].field_16), address(tokenByIndex[stor103[arg1] - 1].field_256), arg1);
                if uint8(stor201[arg1].field_16) >= 255:
                    idx = 0
                    continue 
                idx = idx - uint256(requiredXpForNextLevel[uint8(stor201[arg1].field_16)])
                continue 
            _25 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 41
            idx = 0
            while idx < 41:
                mem[idx + _25 + 68] = mem[idx + _23 + 32]
                idx = idx + 32
                continue 
            mem[_25 + 100] = mem[_25 + 123 len 9]
            revert with memory
              from mem[64]
               len _25 + -mem[64] + 132
        uint16(stor201[arg1].field_0) = uint16(idx)
}

function getTotalPower(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor462:
        if stor461 >= block.number:
            revert with 0, 'Too fresh for lookup'
    require arg1 < stor201.length
    if (uint8(stor201[arg1].field_16) / 10) + 1 < uint8(stor201[arg1].field_16) / 10:
        revert with 0, 'SafeMath: addition overflow'
    if not uint8(stor201[arg1].field_16):
        if (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 / 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ((1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0) < uint256(sub_783efb25[arg1][2].field_0):
            revert with 0, 'SafeMath: addition overflow'
        return (((1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0))
    if 10 * uint8(stor201[arg1].field_16) / uint8(stor201[arg1].field_16) != 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (10 * uint8(stor201[arg1].field_16)) + 1000 < 1000:
        revert with 0, 'SafeMath: addition overflow'
    if not (10 * uint8(stor201[arg1].field_16)) + 1000:
        if uint256(sub_783efb25[arg1][2].field_0) < uint256(sub_783efb25[arg1][2].field_0):
            revert with 0, 'SafeMath: addition overflow'
        return uint256(sub_783efb25[arg1][2].field_0)
    if (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 / (10 * uint8(stor201[arg1].field_16)) + 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ((10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0) < uint256(sub_783efb25[arg1][2].field_0):
        revert with 0, 'SafeMath: addition overflow'
    return (((10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0))
}

function sub_99d2c2c4(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[96] = 0x47414d455f41444d494e00000000000000000000000000000000000000000000
    mem[0] = msg.sender
    mem[32] = sha3(sha3(336492626609784167942478), 151) + 1
    if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'NA'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require cd[((32 * idx) + cd[4] + 36)] < stor201.length
        mem[0] = 201
        if uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) < 255:
            if cd[((32 * idx) + cd[36] + 36)] + uint16(stor201[cd[((32 * idx) + cd[4] + 36)]].field_0) < uint16(stor201[cd[((32 * idx) + cd[4] + 36)]].field_0):
                revert with 0, 'SafeMath: addition overflow'
            require uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) < 256
            s = cd[((32 * idx) + cd[36] + 36)] + uint16(stor[sha3(mem[0]) + cd[((32 * idx) + cd[4] + 36)]].field_0)
            while s >= uint256(requiredXpForNextLevel[uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16)]):
                uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) = uint8(uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) + 1)
                _38 = mem[64]
                mem[64] = mem[64] + 96
                mem[_38] = 41
                mem[_38 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                mem[32] = 103
                if stor103[cd[((32 * idx) + cd[4] + 36)]]:
                    require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
                    mem[0] = 102
                    mem[mem[64]] = uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16)
                    emit LevelUp(uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16), address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), cd[((32 * idx) + cd[4] + 36)]);
                    if uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) >= 255:
                        s = 0
                        continue 
                    s = s - uint256(requiredXpForNextLevel[uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16)])
                    continue 
                _40 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 41
                idx = 0
                while idx < 41:
                    mem[idx + _40 + 68] = mem[idx + _38 + 32]
                    idx = idx + 32
                    continue 
                mem[_40 + 100] = mem[_40 + 123 len 9]
                revert with memory
                  from mem[64]
                   len _40 + -mem[64] + 132
            uint16(stor201[cd[((32 * idx) + cd[4] + 36)]].field_0) = uint16(s)
        idx = idx + 1
        continue 
}

function processRaidParticipation(uint256 arg1, bool arg2, uint16 arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    mem[96] = 0x47414d455f41444d494e00000000000000000000000000000000000000000000
    if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'NA'
    sub_3c69f91f[arg1]++
    if not arg2:
        mem[32] = sha3(arg1, 466)
        require not uint256(sub_783efb25[arg1][1].field_0)
        require arg1 < stor201.length
        mem[0] = 201
        if uint8(stor201[arg1].field_16) < 255:
            if arg3 + uint16(stor201[arg1].field_0) < uint16(stor201[arg1].field_0):
                revert with 0, 'SafeMath: addition overflow'
            require uint8(stor201[arg1].field_16) < 256
            idx = arg3 + uint16(stor[sha3(mem[0]) + arg1].field_0)
            while idx >= uint256(requiredXpForNextLevel[uint8(stor201[arg1].field_16)]):
                uint8(stor201[arg1].field_16) = uint8(uint8(stor201[arg1].field_16) + 1)
                _48 = mem[64]
                mem[64] = mem[64] + 96
                mem[_48] = 41
                mem[_48 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                mem[32] = 103
                if stor103[arg1]:
                    require stor103[arg1] - 1 < tokenByIndex.length
                    mem[0] = 102
                    mem[mem[64]] = uint8(stor201[arg1].field_16)
                    emit LevelUp(uint8(stor201[arg1].field_16), address(tokenByIndex[stor103[arg1] - 1].field_256), arg1);
                    if uint8(stor201[arg1].field_16) >= 255:
                        idx = 0
                        continue 
                    idx = idx - uint256(requiredXpForNextLevel[uint8(stor201[arg1].field_16)])
                    continue 
                _54 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 41
                idx = 0
                while idx < 41:
                    mem[idx + _54 + 68] = mem[idx + _48 + 32]
                    idx = idx + 32
                    continue 
                mem[_54 + 100] = mem[_54 + 123 len 9]
                revert with memory
                  from mem[64]
                   len _54 + -mem[64] + 132
            uint16(stor201[arg1].field_0) = uint16(idx)
    else:
        sub_3a319b4b[arg1]++
        mem[32] = sha3(arg1, 466)
        require not uint256(sub_783efb25[arg1][1].field_0)
        require arg1 < stor201.length
        mem[0] = 201
        if uint8(stor201[arg1].field_16) < 255:
            if arg3 + uint16(stor201[arg1].field_0) < uint16(stor201[arg1].field_0):
                revert with 0, 'SafeMath: addition overflow'
            require uint8(stor201[arg1].field_16) < 256
            idx = arg3 + uint16(stor[sha3(mem[0]) + arg1].field_0)
            while idx >= uint256(requiredXpForNextLevel[uint8(stor201[arg1].field_16)]):
                uint8(stor201[arg1].field_16) = uint8(uint8(stor201[arg1].field_16) + 1)
                _47 = mem[64]
                mem[64] = mem[64] + 96
                mem[_47] = 41
                mem[_47 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                mem[32] = 103
                if stor103[arg1]:
                    require stor103[arg1] - 1 < tokenByIndex.length
                    mem[0] = 102
                    mem[mem[64]] = uint8(stor201[arg1].field_16)
                    emit LevelUp(uint8(stor201[arg1].field_16), address(tokenByIndex[stor103[arg1] - 1].field_256), arg1);
                    if uint8(stor201[arg1].field_16) >= 255:
                        idx = 0
                        continue 
                    idx = idx - uint256(requiredXpForNextLevel[uint8(stor201[arg1].field_16)])
                    continue 
                _51 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 41
                idx = 0
                while idx < 41:
                    mem[idx + _51 + 68] = mem[idx + _47 + 32]
                    idx = idx + 32
                    continue 
                mem[_51 + 100] = mem[_51 + 123 len 9]
                revert with memory
                  from mem[64]
                   len _51 + -mem[64] + 132
            uint16(stor201[arg1].field_0) = uint16(idx)
}

function sub_b46e6c17(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if cd[((32 * idx) + cd[4] + 36)] >= stor462:
            if stor461 >= block.number:
                revert with 0, 'Too fresh for lookup'
        require cd[((32 * idx) + cd[4] + 36)] < stor201.length
        if (uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + 1 < uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10:
            revert with 0, 'SafeMath: addition overflow'
        if not uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16):
            if (1000 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + 1000 / 1000 != (uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            mem[0] = 2
            mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 466)
            if ((1000 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][2].field_0) < uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][2].field_0):
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = s + (((1000 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][2].field_0) / 10)
            continue 
        if 10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) != 10:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16)) + 1000 < 1000:
            revert with 0, 'SafeMath: addition overflow'
        if not (10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16)) + 1000:
            mem[0] = 2
            mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 466)
            if uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][2].field_0) < uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][2].field_0):
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = s + (uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][2].field_0) / 10)
            continue 
        if (10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16)) + (1000 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + (10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + 1000 / (10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16)) + 1000 != (uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[0] = 2
        mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 466)
        if ((10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16)) + (1000 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + (10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][2].field_0) < uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][2].field_0):
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + (((10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16)) + (1000 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + (10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][2].field_0) / 10)
        continue 
    return s
}

function sub_4946e9cb(?) payable {
    require calldata.size - 4 >= 160
    if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'NA'
    if not stor103[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor103[arg2] - 1 < tokenByIndex.length
    require arg1 == address(tokenByIndex[stor103[arg2] - 1].field_256)
    require not uint256(sub_783efb25[arg2][1].field_0)
    uint256(sub_783efb25[arg2][1].field_0) = arg5 or uint256(sub_783efb25[arg2][1].field_0)
    require arg2 < stor201.length
    if uint64(stor201[arg2].field_32) > block.timestamp:
        if 0 < arg3:
            revert with 0, 'Not enough stamina!'
        uint64(stor201[arg2].field_32) = uint64((300 * arg3) + uint64(stor201[arg2].field_32))
    else:
        if block.timestamp - uint64(stor201[arg2].field_32) / 300 > 200:
            if not arg4:
                if 200 < arg3:
                    revert with 0, 'Not enough stamina!'
            uint64(stor201[arg2].field_32) = uint64(block.timestamp + uint64(300 * arg3) - 60000)
        else:
            if uint8(block.timestamp - uint64(stor201[arg2].field_32) / 300) <= 0:
                if uint8(block.timestamp - uint64(stor201[arg2].field_32) / 300) < arg3:
                    revert with 0, 'Not enough stamina!'
            else:
                if not arg4:
                    if uint8(block.timestamp - uint64(stor201[arg2].field_32) / 300) < arg3:
                        revert with 0, 'Not enough stamina!'
            if uint8(block.timestamp - uint64(stor201[arg2].field_32) / 300) < 200:
                uint64(stor201[arg2].field_32) = uint64((300 * arg3) + uint64(stor201[arg2].field_32))
            else:
                uint64(stor201[arg2].field_32) = uint64(block.timestamp + uint64(300 * arg3) - 60000)
    if arg2 >= stor462:
        if stor461 >= block.number:
            revert with 0, 'Too fresh for lookup'
    require arg2 < stor201.length
    if (uint8(stor201[arg2].field_16) / 10) + 1 < uint8(stor201[arg2].field_16) / 10:
        revert with 0, 'SafeMath: addition overflow'
    if not uint8(stor201[arg2].field_16):
        if (1000 * uint8(stor201[arg2].field_16) / 10) + 1000 / 1000 != (uint8(stor201[arg2].field_16) / 10) + 1:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
        if ((1000 * uint8(stor201[arg2].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg2][2].field_0) < uint256(sub_783efb25[arg2][2].field_0):
            revert with 0, 'SafeMath: addition overflow'
        return 0, 
               uint32(stor201[arg2].field_32),
               0,
               uint16(((1000 * uint8(stor201[arg2].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg2][2].field_0)),
               uint8(stor201[arg2].field_24)
    if 10 * uint8(stor201[arg2].field_16) / uint8(stor201[arg2].field_16) != 10:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
    if (10 * uint8(stor201[arg2].field_16)) + 1000 < 1000:
        revert with 0, 'SafeMath: addition overflow'
    if not (10 * uint8(stor201[arg2].field_16)) + 1000:
        if uint256(sub_783efb25[arg2][2].field_0) < uint256(sub_783efb25[arg2][2].field_0):
            revert with 0, 'SafeMath: addition overflow'
        return 0, uint32(stor201[arg2].field_32), 0, uint16(sub_783efb25[arg2][2].field_0)
    if (10 * uint8(stor201[arg2].field_16)) + (1000 * uint8(stor201[arg2].field_16) / 10) + (10 * uint8(stor201[arg2].field_16) * uint8(stor201[arg2].field_16) / 10) + 1000 / (10 * uint8(stor201[arg2].field_16)) + 1000 != (uint8(stor201[arg2].field_16) / 10) + 1:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
    if ((10 * uint8(stor201[arg2].field_16)) + (1000 * uint8(stor201[arg2].field_16) / 10) + (10 * uint8(stor201[arg2].field_16) * uint8(stor201[arg2].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg2][2].field_0) < uint256(sub_783efb25[arg2][2].field_0):
        revert with 0, 'SafeMath: addition overflow'
    return 0, 
           uint32(stor201[arg2].field_32),
           0,
           uint16(((10 * uint8(stor201[arg2].field_16)) + (1000 * uint8(stor201[arg2].field_16) / 10) + (10 * uint8(stor201[arg2].field_16) * uint8(stor201[arg2].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg2][2].field_0)),
           uint8(stor201[arg2].field_24)
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor103[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    if not stor103[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor103[arg3] - 1 < tokenByIndex.length
    if address(tokenByIndex[stor103[arg3] - 1].field_256) != msg.sender:
        if not stor103[arg3]:
            revert with 0, 32, 44, 0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[304 len 20]
        if approved[arg3] != msg.sender:
            if not stor105[address(stor102[stor103[arg3] - 1].field_256)][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[309 len 15]
    if not stor103[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor103[arg3] - 1 < tokenByIndex.length
    if address(tokenByIndex[stor103[arg3] - 1].field_256) != arg1:
        revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[397 len 23]
    if not arg2:
        revert with 0, 32, 36, 0x724552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[392 len 28]
    require not uint256(sub_783efb25[arg3][1].field_0)
    require ext_code.size(promosAddress)
    staticcall promosAddress.0xbf2a28cf with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(promosAddress)
    call promosAddress.setBit(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(promosAddress)
    staticcall promosAddress.0xbf2a28cf with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(promosAddress)
    call promosAddress.setBit(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    approved[arg3] = 0
    if not stor103[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[361 len 23],
                    mem[407 len 9]
    require stor103[arg3] - 1 < tokenByIndex.length
    emit Approval(address(tokenByIndex[stor103[arg3] - 1].field_256), 0, arg3);
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
    if stor103[arg3]:
        require stor103[arg3] - 1 < tokenByIndex.length
        address(tokenByIndex[stor103[arg3] - 1].field_256) = arg2
        Mask(96, 0, tokenByIndex[stor103[arg3] - 1].field_416) = 0
    else:
        tokenByIndex.length++
        uint256(tokenByIndex[tokenByIndex.length].field_0) = arg3
        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
        stor103[arg3] = tokenByIndex.length
    emit Transfer(arg1, arg2, arg3);
}

function migrateTo_1ee400a() payable {
    require uint256(roleAdmin[0][1][address(msg.sender)].field_0)
    mem[96] = 16
    mem[128] = 17
    mem[160] = 18
    mem[192] = 19
    mem[224] = 20
    mem[256] = 22
    mem[288] = 24
    mem[320] = 26
    mem[352] = 28
    mem[384] = 30
    mem[416] = 33
    mem[448] = 36
    mem[480] = 39
    mem[512] = 42
    mem[544] = 46
    mem[576] = 50
    mem[608] = 55
    mem[640] = 60
    mem[672] = 66
    mem[704] = 72
    mem[736] = 79
    mem[768] = 86
    mem[800] = 94
    mem[832] = 103
    mem[864] = 113
    mem[896] = 124
    mem[928] = 136
    mem[960] = 149
    mem[992] = 163
    mem[1024] = 178
    mem[1056] = 194
    mem[1088] = 211
    mem[1120] = 229
    mem[1152] = 248
    mem[1184] = 268
    mem[1216] = 289
    mem[1248] = 311
    mem[1280] = 334
    mem[1312] = 358
    mem[1344] = 383
    mem[1376] = 409
    mem[1408] = 436
    mem[1440] = 464
    mem[1472] = 493
    mem[1504] = 523
    mem[1536] = 554
    mem[1568] = 586
    mem[1600] = 619
    mem[1632] = 653
    mem[1664] = 688
    mem[1696] = 724
    mem[1728] = 761
    mem[1760] = 799
    mem[1792] = 838
    mem[1824] = 878
    mem[1856] = 919
    mem[1888] = 961
    mem[1920] = 1004
    mem[1952] = 1048
    mem[1984] = 1093
    mem[2016] = 1139
    mem[2048] = 1186
    mem[2080] = 1234
    mem[2112] = 1283
    mem[2144] = 1333
    mem[2176] = 1384
    mem[2208] = 1436
    mem[2240] = 1489
    mem[2272] = 1543
    mem[2304] = 1598
    mem[2336] = 1654
    mem[2368] = 1711
    mem[2400] = 1769
    mem[2432] = 1828
    mem[2464] = 1888
    mem[2496] = 1949
    mem[2528] = 2011
    mem[2560] = 2074
    mem[2592] = 2138
    mem[2624] = 2203
    mem[2656] = 2269
    mem[2688] = 2336
    mem[2720] = 2404
    mem[2752] = 2473
    mem[2784] = 2543
    mem[2816] = 2614
    mem[2848] = 2686
    mem[2880] = 2759
    mem[2912] = 2833
    mem[2944] = 2908
    mem[2976] = 2984
    mem[3008] = 3061
    mem[3040] = 3139
    mem[3072] = 3218
    mem[3104] = 3298
    mem[3136] = 3379
    mem[3168] = 3461
    mem[3200] = 3544
    mem[3232] = 3628
    mem[3264] = 3713
    mem[3296] = 3799
    mem[3328] = 3886
    mem[3360] = 3974
    mem[3392] = 4063
    mem[3424] = 4153
    mem[3456] = 4244
    mem[3488] = 4336
    mem[3520] = 4429
    mem[3552] = 4523
    mem[3584] = 4618
    mem[3616] = 4714
    mem[3648] = 4811
    mem[3680] = 4909
    mem[3712] = 5008
    mem[3744] = 5108
    mem[3776] = 5209
    mem[3808] = 5311
    mem[3840] = 5414
    mem[3872] = 5518
    mem[3904] = 5623
    mem[3936] = 5729
    mem[3968] = 5836
    mem[4000] = 5944
    mem[4032] = 6053
    mem[4064] = 6163
    mem[4096] = 6274
    mem[4128] = 6386
    mem[4160] = 6499
    mem[4192] = 6613
    mem[4224] = 6728
    mem[4256] = 6844
    mem[4288] = 6961
    mem[4320] = 7079
    mem[4352] = 7198
    mem[4384] = 7318
    mem[4416] = 7439
    mem[4448] = 7561
    mem[4480] = 7684
    mem[4512] = 7808
    mem[4544] = 7933
    mem[4576] = 8059
    mem[4608] = 8186
    mem[4640] = 8314
    mem[4672] = 8443
    mem[4704] = 8573
    mem[4736] = 8704
    mem[4768] = 8836
    mem[4800] = 8969
    mem[4832] = 9103
    mem[4864] = 9238
    mem[4896] = 9374
    mem[4928] = 9511
    mem[4960] = 9649
    mem[4992] = 9788
    mem[5024] = 9928
    mem[5056] = 10069
    mem[5088] = 10211
    mem[5120] = 10354
    mem[5152] = 10498
    mem[5184] = 10643
    mem[5216] = 10789
    mem[5248] = 10936
    mem[5280] = 11084
    mem[5312] = 11233
    mem[5344] = 11383
    mem[5376] = 11534
    mem[5408] = 11686
    mem[5440] = 11839
    mem[5472] = 11993
    mem[5504] = 12148
    mem[5536] = 12304
    mem[5568] = 12461
    mem[5600] = 12619
    mem[5632] = 12778
    mem[5664] = 12938
    mem[5696] = 13099
    mem[5728] = 13261
    mem[5760] = 13424
    mem[5792] = 13588
    mem[5824] = 13753
    mem[5856] = 13919
    mem[5888] = 14086
    mem[5920] = 14254
    mem[5952] = 14423
    mem[5984] = 14593
    mem[6016] = 14764
    mem[6048] = 14936
    mem[6080] = 15109
    mem[6112] = 15283
    mem[6144] = 15458
    mem[6176] = 15634
    mem[6208] = 15811
    mem[6240] = 15989
    mem[6272] = 16168
    mem[6304] = 16348
    mem[6336] = 16529
    mem[6368] = 16711
    mem[6400] = 16894
    mem[6432] = 17078
    mem[6464] = 17263
    mem[6496] = 17449
    mem[6528] = 17636
    mem[6560] = 17824
    mem[6592] = 18013
    mem[6624] = 18203
    mem[6656] = 18394
    mem[6688] = 18586
    mem[6720] = 18779
    mem[6752] = 18973
    mem[6784] = 19168
    mem[6816] = 19364
    mem[6848] = 19561
    mem[6880] = 19759
    mem[6912] = 19958
    mem[6944] = 20158
    mem[6976] = 20359
    mem[7008] = 20561
    mem[7040] = 20764
    mem[7072] = 20968
    mem[7104] = 21173
    mem[7136] = 21379
    mem[7168] = 21586
    mem[2 * 3600] = 21794
    mem[7232] = 22003
    mem[7264] = 22213
    mem[7296] = 22424
    mem[7328] = 22636
    mem[7360] = 22849
    mem[7392] = 23063
    mem[7424] = 23278
    mem[7456] = 23494
    mem[7488] = 23711
    mem[7520] = 23929
    mem[7552] = 24148
    mem[7584] = 24368
    mem[7616] = 24589
    mem[7648] = 24811
    mem[7680] = 25034
    mem[7712] = 25258
    mem[7744] = 25483
    mem[7776] = 25709
    mem[7808] = 25936
    mem[7840] = 26164
    mem[7872] = 26393
    mem[7904] = 26623
    mem[7936] = 26854
    mem[7968] = 27086
    mem[8000] = 27319
    mem[8032] = 27553
    mem[8064] = 27788
    mem[8096] = 28024
    mem[8128] = 28261
    mem[8160] = 28499
    mem[8192] = 28738
    mem[8224] = 28978
    s = 203
    idx = 96
    while 8256 > idx:
        uint16(stor[s].field_0) = mem[idx + 30 len 2]
        Mask(240, 0, stor[s].field_16) = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 458
    while 459 > idx:
        uint256(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
}

function sub_a4646669(?) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    require tokenOfOwnerByIndex[address(arg1)] <= test266151307()
    if not tokenOfOwnerByIndex[address(arg1)]:
        idx = 0
        while idx < tokenOfOwnerByIndex[address(arg1)]:
            mem[32] = 101
            if idx >= tokenOfOwnerByIndex[address(arg1)]:
                revert with 0, 
                            32,
                            34,
                            0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 230 len 30]
            mem[0] = sha3(address(arg1), 101)
            require idx < tokenOfOwnerByIndex[address(arg1)]
            mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while idx < tokenOfOwnerByIndex[address(arg1)]:
            require idx < tokenOfOwnerByIndex[address(arg1)]
            mem[0] = 1
            mem[32] = sha3(mem[(32 * idx) + 128], 466)
            if uint256(sub_783efb25[mem[(32 * idx) + 128]][1].field_0) != 0:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = s + 1
            continue 
        require s <= test266151307()
        mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128] = s
        if not s:
            idx = 0
            t = s
            while idx < tokenOfOwnerByIndex[address(arg1)]:
                require idx < tokenOfOwnerByIndex[address(arg1)]
                mem[0] = 1
                mem[32] = sha3(mem[(32 * idx) + 128], 466)
                if uint256(sub_783efb25[mem[(32 * idx) + 128]][1].field_0) != 0:
                    idx = idx + 1
                    t = t
                    continue 
                require idx < tokenOfOwnerByIndex[address(arg1)]
                require t - 1 < mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128]
                mem[(32 * t - 1) + (32 * tokenOfOwnerByIndex[address(arg1)]) + 160] = mem[(32 * idx) + 128]
                idx = idx + 1
                t = t - 1
                continue 
            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + (32 * s) + 160] = 32
            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + (32 * s) + 192] = mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128]
            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + (32 * s) + 224 len floor32(mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128])] = mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 160 len floor32(mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128])]
        else:
            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 160 len 32 * s] = call.data[calldata.size len 32 * s]
            idx = 0
            t = s
            while idx < tokenOfOwnerByIndex[address(arg1)]:
                require idx < tokenOfOwnerByIndex[address(arg1)]
                mem[0] = 1
                mem[32] = sha3(mem[(32 * idx) + 128], 466)
                if uint256(sub_783efb25[mem[(32 * idx) + 128]][1].field_0) != 0:
                    idx = idx + 1
                    t = t
                    continue 
                require idx < tokenOfOwnerByIndex[address(arg1)]
                require t - 1 < mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128]
                mem[(32 * t - 1) + (32 * tokenOfOwnerByIndex[address(arg1)]) + 160] = mem[(32 * idx) + 128]
                idx = idx + 1
                t = t - 1
                continue 
            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + (32 * s) + 160] = 32
            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + (32 * s) + 192] = mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128]
            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + (32 * s) + 224 len floor32(mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128])] = mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 160 len floor32(mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128])]
            var30001 = floor32(mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128])
    else:
        mem[128 len 32 * tokenOfOwnerByIndex[address(arg1)]] = call.data[calldata.size len 32 * tokenOfOwnerByIndex[address(arg1)]]
        idx = 0
        while idx < tokenOfOwnerByIndex[address(arg1)]:
            mem[32] = 101
            if idx >= tokenOfOwnerByIndex[address(arg1)]:
                revert with 0, 
                            32,
                            34,
                            0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 230 len 30]
            mem[0] = sha3(address(arg1), 101)
            require idx < tokenOfOwnerByIndex[address(arg1)]
            mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while idx < tokenOfOwnerByIndex[address(arg1)]:
            require idx < tokenOfOwnerByIndex[address(arg1)]
            mem[0] = 1
            mem[32] = sha3(mem[(32 * idx) + 128], 466)
            if uint256(sub_783efb25[mem[(32 * idx) + 128]][1].field_0) != 0:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = s + 1
            continue 
        require s <= test266151307()
        mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128] = s
        if not s:
            idx = 0
            t = s
            while idx < tokenOfOwnerByIndex[address(arg1)]:
                require idx < tokenOfOwnerByIndex[address(arg1)]
                mem[0] = 1
                mem[32] = sha3(mem[(32 * idx) + 128], 466)
                if uint256(sub_783efb25[mem[(32 * idx) + 128]][1].field_0) != 0:
                    idx = idx + 1
                    t = t
                    continue 
                require idx < tokenOfOwnerByIndex[address(arg1)]
                require t - 1 < mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128]
                mem[(32 * t - 1) + (32 * tokenOfOwnerByIndex[address(arg1)]) + 160] = mem[(32 * idx) + 128]
                idx = idx + 1
                t = t - 1
                continue 
            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + (32 * s) + 160] = 32
            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + (32 * s) + 192] = mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128]
            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + (32 * s) + 224 len floor32(mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128])] = mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 160 len floor32(mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128])]
        else:
            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 160 len 32 * s] = call.data[calldata.size len 32 * s]
            idx = 0
            t = s
            while idx < tokenOfOwnerByIndex[address(arg1)]:
                require idx < tokenOfOwnerByIndex[address(arg1)]
                mem[0] = 1
                mem[32] = sha3(mem[(32 * idx) + 128], 466)
                if uint256(sub_783efb25[mem[(32 * idx) + 128]][1].field_0) != 0:
                    idx = idx + 1
                    t = t
                    continue 
                require idx < tokenOfOwnerByIndex[address(arg1)]
                require t - 1 < mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128]
                mem[(32 * t - 1) + (32 * tokenOfOwnerByIndex[address(arg1)]) + 160] = mem[(32 * idx) + 128]
                idx = idx + 1
                t = t - 1
                continue 
            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + (32 * s) + 160] = 32
            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + (32 * s) + 192] = mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128]
            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + (32 * s) + 224 len floor32(mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128])] = mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 160 len floor32(mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128])]
            var31001 = floor32(mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128])
    return 32, mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + (32 * s) + 192 len (32 * mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128]) + 32], 
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor103[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[211 len 17]
    mem[32] = 108
    mem[96] = stor108[arg1].length
    mem[128] = uint256(stor108[arg1].field_0)
    idx = 128
    s = 0
    while stor108[arg1].length + 96 > idx:
        mem[idx + 32] = uint256(stor108[arg1][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160
    mem[ceil32(stor108[arg1].length) + 128] = baseURI.length
    mem[0] = 109
    mem[ceil32(stor108[arg1].length) + 160] = uint256(baseURI.field_0)
    idx = ceil32(stor108[arg1].length) + 160
    s = 0
    while ceil32(stor108[arg1].length) + baseURI.length + 128 > idx:
        mem[idx + 32] = uint256(baseURI[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    if 0 == baseURI.length:
        return Array(len=stor108[arg1].length, data=mem[128 len stor108[arg1].length])
    if stor108[arg1].length:
        mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 192 len floor32(baseURI.length)] = mem[ceil32(stor108[arg1].length) + 160 len floor32(baseURI.length)]
        mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 192] = 256^(-baseURI.length % 32 + 32) - 1 and mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 192] or mem[ceil32(stor108[arg1].length) + floor32(baseURI.length) + 160] and !(256^(-baseURI.length % 32 + 32) - 1)
        mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 192 len floor32(stor108[arg1].length)] = mem[128 len floor32(stor108[arg1].length)]
        var33001 = floor32(stor108[arg1].length) + 128
        mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + floor32(stor108[arg1].length) + -stor108[arg1].length % 32 + 224 len stor108[arg1].length % 32] = mem[floor32(stor108[arg1].length) + -stor108[arg1].length % 32 + 160 len stor108[arg1].length % 32]
        mem[64] = stor108[arg1].length + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 192
        mem[stor108[arg1].length + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 192] = 32
        mem[stor108[arg1].length + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 224] = mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160]
        mem[stor108[arg1].length + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160])] = mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 192 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160])]
        var38001 = ceil32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160])
        if not mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160] % 32:
            return 32, mem[stor108[arg1].length + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 224 len mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160] + 32], 
        mem[floor32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160]) + stor108[arg1].length + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256] = mem[floor32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160]) + stor108[arg1].length + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + -(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160] % 32) + 288 len mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160] % 32]
        return 32, mem[stor108[arg1].length + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 224 len floor32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160]) + 64], 
    if not arg1:
        mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160] = 1
        mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 256 len floor32(baseURI.length)] = mem[ceil32(stor108[arg1].length) + 160 len floor32(baseURI.length)]
        var34001 = ceil32(stor108[arg1].length) + floor32(baseURI.length) + 160
        mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 256] = 256^(-baseURI.length % 32 + 32) - 1 and mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 256] or mem[ceil32(stor108[arg1].length) + floor32(baseURI.length) + 160] and !(256^(-baseURI.length % 32 + 32) - 1)
        mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256 len 0] = None
        mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256 len 0] = 0
        mem[64] = ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 257
        mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 257] = 32
        mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 289] = mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 224]
        mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 321 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 224])] = mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 256 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 224])]
        if not mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 224] % 32:
            return 32, mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 289 len mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 224] + 32], 
        mem[floor32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 224]) + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 321] = mem[floor32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 224]) + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + -(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 224] % 32) + 353 len mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 224] % 32]
        return 32, mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 289 len floor32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 224]) + 64], 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160] = s
    if s:
        mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 192 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < s
        mem[t + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224 len floor32(baseURI.length)] = mem[ceil32(stor108[arg1].length) + 160 len floor32(baseURI.length)]
    mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + floor32(baseURI.length) + 224] = 256^(-baseURI.length % 32 + 32) - 1 and mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + floor32(baseURI.length) + 224] or mem[ceil32(stor108[arg1].length) + floor32(baseURI.length) + 160] and !(256^(-baseURI.length % 32 + 32) - 1)
    mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224 len floor32(s)] = mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 192 len floor32(s)]
    mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + floor32(s) + -(s % 32) + 256 len s % 32] = mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + floor32(s) + -(s % 32) + 224 len s % 32]
    mem[64] = s + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224
    mem[s + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224] = 32
    mem[s + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 256] = mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]
    mem[s + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 288 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])] = mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])]
    if not mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] % 32:
        return 32, mem[s + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 256 len mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] + 32], 
    mem[floor32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) + s + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 288] = mem[floor32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) + s + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + -(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] % 32) + 320 len mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] % 32]
    return 32, mem[s + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 256 len floor32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) + 64], 
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'NA'
    if stor461 != block.number:
        stor462 = stor201.length
    stor461 = block.number
    if sha3(arg2) % 4 < sha3(arg2) % 4:
        revert with 0, 'SafeMath: addition overflow'
    if 60000 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    stor201.length++
    stor66BE[stor201.length].field_0 % 16777216 = 0
    stor66BE[stor201.length].field_24 % 4 = sha3(arg2) % 4
    stor66BE[stor201.length].field_26 % 64 = 0
    uint64(stor66BE[stor201.length].field_32) = uint64(block.timestamp - 60000)
    stor66BE[stor201.length].field_256 % 1 = 0
    stor66BE[stor201.length].field_256 % 1 = 0
    stor202.length++
    uint8(stor202[stor202.length].field_0) = 0
    stor202[stor202.length].field_256 % 1 = 0
    uint256(stor202[stor202.length].field_256) = sha3(arg2, 1)
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if 57005 == arg1:
        if not arg1:
            revert with 0, 'ERC721: mint to the zero address'
        if stor103[stor201.length]:
            revert with 0, 'ERC721: token already minted'
        require not uint256(sub_783efb25[stor201.length][1].field_0)
        require ext_code.size(promosAddress)
        staticcall promosAddress.0xbf2a28cf with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(promosAddress)
        call promosAddress.setBit(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(promosAddress)
        staticcall promosAddress.0xbf2a28cf with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(promosAddress)
        call promosAddress.setBit(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not tokenOfOwnerByIndex[address(arg1)][1][stor201.length]:
            tokenOfOwnerByIndex[address(arg1)]++
            tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor201.length
            tokenOfOwnerByIndex[address(arg1)][1][stor201.length] = tokenOfOwnerByIndex[address(arg1)]
        if stor103[stor201.length]:
            require stor103[stor201.length] - 1 < tokenByIndex.length
            address(tokenByIndex[stor103[stor201.length] - 1].field_256) = arg1
            Mask(96, 0, tokenByIndex[stor103[stor201.length] - 1].field_416) = 0
        else:
            tokenByIndex.length++
            uint256(tokenByIndex[tokenByIndex.length].field_0) = stor201.length
            address(tokenByIndex[tokenByIndex.length].field_256) = arg1
            Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
            stor103[stor201.length] = tokenByIndex.length
        emit Transfer(0, arg1, stor201.length);
        emit NewCharacter(stor201.length, arg1);
    else:
        if stor151[('name', 'stor4E4F', 1588316470916819674341485992298836)][1][address(arg1)]:
            if not arg1:
                revert with 0, 'ERC721: mint to the zero address'
            if stor103[stor201.length]:
                revert with 0, 'ERC721: token already minted'
            require not uint256(sub_783efb25[stor201.length][1].field_0)
            require ext_code.size(promosAddress)
            staticcall promosAddress.0xbf2a28cf with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(promosAddress)
            call promosAddress.setBit(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(promosAddress)
            staticcall promosAddress.0xbf2a28cf with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(promosAddress)
            call promosAddress.setBit(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not tokenOfOwnerByIndex[address(arg1)][1][stor201.length]:
                tokenOfOwnerByIndex[address(arg1)]++
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor201.length
                tokenOfOwnerByIndex[address(arg1)][1][stor201.length] = tokenOfOwnerByIndex[address(arg1)]
            if stor103[stor201.length]:
                require stor103[stor201.length] - 1 < tokenByIndex.length
                address(tokenByIndex[stor103[stor201.length] - 1].field_256) = arg1
                Mask(96, 0, tokenByIndex[stor103[stor201.length] - 1].field_416) = 0
            else:
                tokenByIndex.length++
                uint256(tokenByIndex[tokenByIndex.length].field_0) = stor201.length
                address(tokenByIndex[tokenByIndex.length].field_256) = arg1
                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                stor103[stor201.length] = tokenByIndex.length
            emit Transfer(0, arg1, stor201.length);
            emit NewCharacter(stor201.length, arg1);
        else:
            if not arg1:
                revert with 0, 32, 42, 0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573, mem[558 len 22]
            if tokenOfOwnerByIndex[address(arg1)] < sub_aa3c6cfc:
                if not arg1:
                    revert with 0, 'ERC721: mint to the zero address'
                if stor103[stor201.length]:
                    revert with 0, 'ERC721: token already minted'
                require not uint256(sub_783efb25[stor201.length][1].field_0)
                require ext_code.size(promosAddress)
                staticcall promosAddress.0xbf2a28cf with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(promosAddress)
                call promosAddress.setBit(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(promosAddress)
                staticcall promosAddress.0xbf2a28cf with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(promosAddress)
                call promosAddress.setBit(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not tokenOfOwnerByIndex[address(arg1)][1][stor201.length]:
                    tokenOfOwnerByIndex[address(arg1)]++
                    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor201.length
                    tokenOfOwnerByIndex[address(arg1)][1][stor201.length] = tokenOfOwnerByIndex[address(arg1)]
                if stor103[stor201.length]:
                    require stor103[stor201.length] - 1 < tokenByIndex.length
                    address(tokenByIndex[stor103[stor201.length] - 1].field_256) = arg1
                    Mask(96, 0, tokenByIndex[stor103[stor201.length] - 1].field_416) = 0
                else:
                    tokenByIndex.length++
                    uint256(tokenByIndex[tokenByIndex.length].field_0) = stor201.length
                    address(tokenByIndex[tokenByIndex.length].field_256) = arg1
                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                    stor103[stor201.length] = tokenByIndex.length
                emit Transfer(0, arg1, stor201.length);
                emit NewCharacter(stor201.length, arg1);
            else:
                require ext_code.size(sub_9462fa19Address)
                call sub_9462fa19Address.0xc39fc42c with:
                     gas gas_remaining wei
                    args address(arg1), stor201.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not sub_9462fa19Address:
                    revert with 0, 'ERC721: mint to the zero address'
                if stor103[stor201.length]:
                    revert with 0, 'ERC721: token already minted'
                require not uint256(sub_783efb25[stor201.length][1].field_0)
                require ext_code.size(promosAddress)
                staticcall promosAddress.0xbf2a28cf with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(promosAddress)
                call promosAddress.setBit(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(promosAddress)
                staticcall promosAddress.0xbf2a28cf with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(promosAddress)
                call promosAddress.setBit(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_9462fa19Address, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not tokenOfOwnerByIndex[stor467][1][stor201.length]:
                    tokenOfOwnerByIndex[stor467]++
                    tokenOfOwnerByIndex[stor467][tokenOfOwnerByIndex[stor467]] = stor201.length
                    tokenOfOwnerByIndex[stor467][1][stor201.length] = tokenOfOwnerByIndex[stor467]
                if stor103[stor201.length]:
                    require stor103[stor201.length] - 1 < tokenByIndex.length
                    uint256(tokenByIndex[stor103[stor201.length] - 1].field_256) = sub_9462fa19Address
                else:
                    tokenByIndex.length++
                    uint256(tokenByIndex[tokenByIndex.length].field_0) = stor201.length
                    uint256(tokenByIndex[tokenByIndex.length].field_256) = sub_9462fa19Address
                    stor103[stor201.length] = tokenByIndex.length
                emit Transfer(0, sub_9462fa19Address, stor201.length);
                emit NewCharacter(stor201.length, sub_9462fa19Address);
}

function sub_845a7ac7(?) payable {
    require calldata.size - 4 >= 224
    if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        if not uint256(roleAdmin['MINTER_ROLE'][1][address(msg.sender)].field_0):
            revert with 0, 'no access'
    if arg6:
        require arg6 < stor201.length
        uint16(stor201[arg6].field_0) = arg2
        uint8(stor201[arg6].field_16) = arg3
        uint8(stor201[arg6].field_24) = arg4
        uint64(stor201[arg6].field_32) = uint64(block.timestamp)
        require arg6 < stor202.length
        uint256(stor202[arg6].field_256) = arg5
        sub_783efb25[arg6][2].field_0 % 16777216 = arg7 % 16777216
        Mask(232, 0, sub_783efb25[arg6][2].field_24) = 0
        return arg6
    if stor461 != block.number:
        stor462 = stor201.length
    stor461 = block.number
    stor201.length++
    uint16(stor66BE[stor201.length].field_0) = arg2
    uint8(stor66BE[stor201.length].field_16) = arg3
    uint8(stor66BE[stor201.length].field_24) = arg4
    uint64(stor66BE[stor201.length].field_32) = uint64(block.timestamp)
    stor202.length++
    uint8(stor202[stor202.length].field_0) = 0
    stor202[stor202.length].field_256 % 1 = 0
    uint256(stor202[stor202.length].field_256) = sha3(arg5, 1)
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if 57005 == arg1:
        if not arg1:
            revert with 0, 'ERC721: mint to the zero address'
        if stor103[stor201.length]:
            revert with 0, 'ERC721: token already minted'
        require not uint256(sub_783efb25[stor201.length][1].field_0)
        require ext_code.size(promosAddress)
        staticcall promosAddress.0xbf2a28cf with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(promosAddress)
        call promosAddress.setBit(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(promosAddress)
        staticcall promosAddress.0xbf2a28cf with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(promosAddress)
        call promosAddress.setBit(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not tokenOfOwnerByIndex[address(arg1)][1][stor201.length]:
            tokenOfOwnerByIndex[address(arg1)]++
            tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor201.length
            tokenOfOwnerByIndex[address(arg1)][1][stor201.length] = tokenOfOwnerByIndex[address(arg1)]
        if stor103[stor201.length]:
            require stor103[stor201.length] - 1 < tokenByIndex.length
            address(tokenByIndex[stor103[stor201.length] - 1].field_256) = arg1
            Mask(96, 0, tokenByIndex[stor103[stor201.length] - 1].field_416) = 0
        else:
            tokenByIndex.length++
            uint256(tokenByIndex[tokenByIndex.length].field_0) = stor201.length
            address(tokenByIndex[tokenByIndex.length].field_256) = arg1
            Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
            stor103[stor201.length] = tokenByIndex.length
        emit Transfer(0, arg1, stor201.length);
        emit NewCharacter(stor201.length, arg1);
    else:
        if stor151[('name', 'stor4E4F', 1588316470916819674341485992298836)][1][address(arg1)]:
            if not arg1:
                revert with 0, 'ERC721: mint to the zero address'
            if stor103[stor201.length]:
                revert with 0, 'ERC721: token already minted'
            require not uint256(sub_783efb25[stor201.length][1].field_0)
            require ext_code.size(promosAddress)
            staticcall promosAddress.0xbf2a28cf with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(promosAddress)
            call promosAddress.setBit(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(promosAddress)
            staticcall promosAddress.0xbf2a28cf with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(promosAddress)
            call promosAddress.setBit(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not tokenOfOwnerByIndex[address(arg1)][1][stor201.length]:
                tokenOfOwnerByIndex[address(arg1)]++
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor201.length
                tokenOfOwnerByIndex[address(arg1)][1][stor201.length] = tokenOfOwnerByIndex[address(arg1)]
            if stor103[stor201.length]:
                require stor103[stor201.length] - 1 < tokenByIndex.length
                address(tokenByIndex[stor103[stor201.length] - 1].field_256) = arg1
                Mask(96, 0, tokenByIndex[stor103[stor201.length] - 1].field_416) = 0
            else:
                tokenByIndex.length++
                uint256(tokenByIndex[tokenByIndex.length].field_0) = stor201.length
                address(tokenByIndex[tokenByIndex.length].field_256) = arg1
                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                stor103[stor201.length] = tokenByIndex.length
            emit Transfer(0, arg1, stor201.length);
            emit NewCharacter(stor201.length, arg1);
        else:
            if not arg1:
                revert with 0, 32, 42, 0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573, mem[494 len 22]
            if tokenOfOwnerByIndex[address(arg1)] < sub_aa3c6cfc:
                if not arg1:
                    revert with 0, 'ERC721: mint to the zero address'
                if stor103[stor201.length]:
                    revert with 0, 'ERC721: token already minted'
                require not uint256(sub_783efb25[stor201.length][1].field_0)
                require ext_code.size(promosAddress)
                staticcall promosAddress.0xbf2a28cf with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(promosAddress)
                call promosAddress.setBit(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(promosAddress)
                staticcall promosAddress.0xbf2a28cf with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(promosAddress)
                call promosAddress.setBit(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not tokenOfOwnerByIndex[address(arg1)][1][stor201.length]:
                    tokenOfOwnerByIndex[address(arg1)]++
                    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor201.length
                    tokenOfOwnerByIndex[address(arg1)][1][stor201.length] = tokenOfOwnerByIndex[address(arg1)]
                if stor103[stor201.length]:
                    require stor103[stor201.length] - 1 < tokenByIndex.length
                    address(tokenByIndex[stor103[stor201.length] - 1].field_256) = arg1
                    Mask(96, 0, tokenByIndex[stor103[stor201.length] - 1].field_416) = 0
                else:
                    tokenByIndex.length++
                    uint256(tokenByIndex[tokenByIndex.length].field_0) = stor201.length
                    address(tokenByIndex[tokenByIndex.length].field_256) = arg1
                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                    stor103[stor201.length] = tokenByIndex.length
                emit Transfer(0, arg1, stor201.length);
                emit NewCharacter(stor201.length, arg1);
            else:
                require ext_code.size(sub_9462fa19Address)
                call sub_9462fa19Address.0xc39fc42c with:
                     gas gas_remaining wei
                    args address(arg1), stor201.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not sub_9462fa19Address:
                    revert with 0, 'ERC721: mint to the zero address'
                if stor103[stor201.length]:
                    revert with 0, 'ERC721: token already minted'
                require not uint256(sub_783efb25[stor201.length][1].field_0)
                require ext_code.size(promosAddress)
                staticcall promosAddress.0xbf2a28cf with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(promosAddress)
                call promosAddress.setBit(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(promosAddress)
                staticcall promosAddress.0xbf2a28cf with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(promosAddress)
                call promosAddress.setBit(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_9462fa19Address, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not tokenOfOwnerByIndex[stor467][1][stor201.length]:
                    tokenOfOwnerByIndex[stor467]++
                    tokenOfOwnerByIndex[stor467][tokenOfOwnerByIndex[stor467]] = stor201.length
                    tokenOfOwnerByIndex[stor467][1][stor201.length] = tokenOfOwnerByIndex[stor467]
                if stor103[stor201.length]:
                    require stor103[stor201.length] - 1 < tokenByIndex.length
                    uint256(tokenByIndex[stor103[stor201.length] - 1].field_256) = sub_9462fa19Address
                else:
                    tokenByIndex.length++
                    uint256(tokenByIndex[tokenByIndex.length].field_0) = stor201.length
                    uint256(tokenByIndex[tokenByIndex.length].field_256) = sub_9462fa19Address
                    stor103[stor201.length] = tokenByIndex.length
                emit Transfer(0, sub_9462fa19Address, stor201.length);
                emit NewCharacter(stor201.length, sub_9462fa19Address);
    sub_783efb25[stor201.length][2].field_0 % 16777216 = arg7 % 16777216
    Mask(232, 0, sub_783efb25[stor201.length][2].field_24) = 0
    return stor201.length
}

function sub_6129ca32(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[96] = 0x47414d455f41444d494e00000000000000000000000000000000000000000000
    mem[0] = msg.sender
    mem[32] = sha3(sha3(336492626609784167942478), 151) + 1
    if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'NA'
    idx = 0
    while idx < ('cd', 4).length:
        _290 = mem[64]
        mem[64] = mem[64] + 96
        mem[_290] = 41
        mem[_290 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
        mem[32] = 103
        if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
            _292 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 41
            idx = 0
            while idx < 41:
                mem[idx + _292 + 68] = mem[idx + _290 + 32]
                idx = idx + 32
                continue 
            mem[_292 + 100] = mem[_292 + 123 len 9]
            revert with memory
              from mem[64]
               len _292 + -mem[64] + 132
        require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
        mem[0] = 102
        require idx < ('cd', 4).length
        if sub_9462fa19Address != address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256):
            _302 = mem[64]
            mem[64] = mem[64] + 96
            mem[_302] = 41
            mem[_302 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
            mem[32] = 103
            if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
                _308 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 41
                idx = 0
                while idx < 41:
                    mem[idx + _308 + 68] = mem[idx + _302 + 32]
                    idx = idx + 32
                    continue 
                mem[_308 + 100] = mem[_308 + 123 len 9]
                revert with memory
                  from mem[64]
                   len _308 + -mem[64] + 132
            require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
            require not uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][1].field_0)
            require ext_code.size(promosAddress)
            staticcall promosAddress.0xbf2a28cf with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(promosAddress)
            call promosAddress.setBit(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(promosAddress)
            staticcall promosAddress.0xbf2a28cf with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64]] = 0x260730e000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = ext_call.return_data[0]
            require ext_code.size(promosAddress)
            call promosAddress.setBit(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 104
            approved[cd[((32 * idx) + cd[4] + 36)]] = 0
            _349 = mem[64]
            mem[64] = mem[64] + 96
            mem[_349] = 41
            mem[_349 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
            mem[32] = 103
            if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
                _354 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 41
                idx = 0
                while idx < 41:
                    mem[idx + _354 + 68] = mem[idx + _349 + 32]
                    idx = idx + 32
                    continue 
                mem[_354 + 100] = mem[_354 + 123 len 9]
                revert with memory
                  from mem[64]
                   len _354 + -mem[64] + 132
            require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
            emit Approval(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), 0, cd[((32 * idx) + cd[4] + 36)]);
            if Mask(255, 1, uint256(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0) and (256 * not bool(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0)) - 1):
                uint256(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0) = 0
                if 31 < stor108[cd[((32 * idx) + cd[4] + 36)]].length:
                    s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 108))
                    while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 108)) + (stor108[cd[((32 * idx) + cd[4] + 36)]].length + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            if tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]:
                require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]] = tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]]
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]]] = tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]
                require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]] = 0
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]--
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]] = 0
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 103
            if stor103[cd[((32 * idx) + cd[4] + 36)]]:
                require tokenByIndex.length - 1 < tokenByIndex.length
                require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
                uint256(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_0) = uint256(tokenByIndex[tokenByIndex.length - 1].field_0)
                uint256(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256) = uint256(tokenByIndex[tokenByIndex.length - 1].field_256)
                stor103[uint256(stor102[stor102.length - 1].field_0)] = stor103[cd[((32 * idx) + cd[4] + 36)]]
                require tokenByIndex.length
                uint256(tokenByIndex[tokenByIndex.length - 1].field_0) = 0
                uint256(tokenByIndex[tokenByIndex.length - 1].field_256) = 0
                tokenByIndex.length--
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 103
                stor103[cd[((32 * idx) + cd[4] + 36)]] = 0
            emit Transfer(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), 0, cd[((32 * idx) + cd[4] + 36)]);
            require idx < ('cd', 4).length
            emit Burned(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), cd[((32 * idx) + cd[4] + 36)]);
        else:
            require ext_code.size(sub_9462fa19Address)
            staticcall sub_9462fa19Address.0xb8cae950 with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < ('cd', 4).length
            require ext_code.size(sub_9462fa19Address)
            call sub_9462fa19Address.updateOnBurn(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < ('cd', 4).length
            _318 = mem[64]
            mem[64] = mem[64] + 96
            mem[_318] = 41
            mem[_318 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
            mem[32] = 103
            if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
                _323 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 41
                idx = 0
                while idx < 41:
                    mem[idx + _323 + 68] = mem[idx + _318 + 32]
                    idx = idx + 32
                    continue 
                mem[_323 + 100] = mem[_323 + 123 len 9]
                revert with memory
                  from mem[64]
                   len _323 + -mem[64] + 132
            require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
            require not uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][1].field_0)
            require ext_code.size(promosAddress)
            staticcall promosAddress.0xbf2a28cf with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(promosAddress)
            call promosAddress.setBit(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(promosAddress)
            staticcall promosAddress.0xbf2a28cf with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64]] = 0x260730e000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = ext_call.return_data[0]
            require ext_code.size(promosAddress)
            call promosAddress.setBit(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 104
            approved[cd[((32 * idx) + cd[4] + 36)]] = 0
            _369 = mem[64]
            mem[64] = mem[64] + 96
            mem[_369] = 41
            mem[_369 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
            mem[32] = 103
            if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
                _375 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 41
                idx = 0
                while idx < 41:
                    mem[idx + _375 + 68] = mem[idx + _369 + 32]
                    idx = idx + 32
                    continue 
                mem[_375 + 100] = mem[_375 + 123 len 9]
                revert with memory
                  from mem[64]
                   len _375 + -mem[64] + 132
            require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
            emit Approval(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), 0, cd[((32 * idx) + cd[4] + 36)]);
            if Mask(255, 1, uint256(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0) and (256 * not bool(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0)) - 1):
                uint256(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0) = 0
                if 31 < stor108[cd[((32 * idx) + cd[4] + 36)]].length:
                    s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 108))
                    while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 108)) + (stor108[cd[((32 * idx) + cd[4] + 36)]].length + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            if tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]:
                require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]] = tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]]
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]]] = tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]
                require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]] = 0
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]--
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]] = 0
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 103
            if stor103[cd[((32 * idx) + cd[4] + 36)]]:
                require tokenByIndex.length - 1 < tokenByIndex.length
                require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
                uint256(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_0) = uint256(tokenByIndex[tokenByIndex.length - 1].field_0)
                uint256(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256) = uint256(tokenByIndex[tokenByIndex.length - 1].field_256)
                stor103[uint256(stor102[stor102.length - 1].field_0)] = stor103[cd[((32 * idx) + cd[4] + 36)]]
                require tokenByIndex.length
                uint256(tokenByIndex[tokenByIndex.length - 1].field_0) = 0
                uint256(tokenByIndex[tokenByIndex.length - 1].field_256) = 0
                tokenByIndex.length--
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 103
                stor103[cd[((32 * idx) + cd[4] + 36)]] = 0
            emit Transfer(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), 0, cd[((32 * idx) + cd[4] + 36)]);
            require idx < ('cd', 4).length
            emit Burned(address(ext_call.return_data[0]), cd[((32 * idx) + cd[4] + 36)]);
        idx = idx + 1
        continue 
}

function sub_e1b3b2d6(?) payable {
    require calldata.size - 4 >= 64
    if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'NA'
    if not arg2:
        if arg1 >= stor462:
            if stor461 >= block.number:
                revert with 0, 'Too fresh for lookup'
        require arg1 < stor201.length
        if (uint8(stor201[arg1].field_16) / 10) + 1 < uint8(stor201[arg1].field_16) / 10:
            revert with 0, 'SafeMath: addition overflow'
        if not uint8(stor201[arg1].field_16):
            if (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 / 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ((1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0) < uint256(sub_783efb25[arg1][2].field_0):
                revert with 0, 'SafeMath: addition overflow'
            require arg1 < stor201.length
            if (uint8(stor201[arg1].field_16) / 10) + 1 < uint8(stor201[arg1].field_16) / 10:
                revert with 0, 'SafeMath: addition overflow'
            if not uint8(stor201[arg1].field_16):
                if (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 / 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 != (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 4 * (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 < ((1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0):
                    revert with 0, 'Power limit'
            else:
                if 10 * uint8(stor201[arg1].field_16) / uint8(stor201[arg1].field_16) != 10:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (10 * uint8(stor201[arg1].field_16)) + 1000 < 1000:
                    revert with 0, 'SafeMath: addition overflow'
                if not (10 * uint8(stor201[arg1].field_16)) + 1000:
                    if 0 < ((1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0):
                        revert with 0, 'Power limit'
                else:
                    if (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 / (10 * uint8(stor201[arg1].field_16)) + 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 != (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 4 * (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 < ((1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0):
                        revert with 0, 'Power limit'
        else:
            if 10 * uint8(stor201[arg1].field_16) / uint8(stor201[arg1].field_16) != 10:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (10 * uint8(stor201[arg1].field_16)) + 1000 < 1000:
                revert with 0, 'SafeMath: addition overflow'
            if not (10 * uint8(stor201[arg1].field_16)) + 1000:
                if uint256(sub_783efb25[arg1][2].field_0) < uint256(sub_783efb25[arg1][2].field_0):
                    revert with 0, 'SafeMath: addition overflow'
                require arg1 < stor201.length
                if (uint8(stor201[arg1].field_16) / 10) + 1 < uint8(stor201[arg1].field_16) / 10:
                    revert with 0, 'SafeMath: addition overflow'
                if not uint8(stor201[arg1].field_16):
                    if (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 / 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 != (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 4 * (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 < uint256(sub_783efb25[arg1][2].field_0):
                        revert with 0, 'Power limit'
                else:
                    if 10 * uint8(stor201[arg1].field_16) / uint8(stor201[arg1].field_16) != 10:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (10 * uint8(stor201[arg1].field_16)) + 1000 < 1000:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (10 * uint8(stor201[arg1].field_16)) + 1000:
                        if 0 < uint256(sub_783efb25[arg1][2].field_0):
                            revert with 0, 'Power limit'
                    else:
                        if (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 / (10 * uint8(stor201[arg1].field_16)) + 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 != (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 4 * (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 < uint256(sub_783efb25[arg1][2].field_0):
                            revert with 0, 'Power limit'
            else:
                if (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 / (10 * uint8(stor201[arg1].field_16)) + 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ((10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0) < uint256(sub_783efb25[arg1][2].field_0):
                    revert with 0, 'SafeMath: addition overflow'
                require arg1 < stor201.length
                if (uint8(stor201[arg1].field_16) / 10) + 1 < uint8(stor201[arg1].field_16) / 10:
                    revert with 0, 'SafeMath: addition overflow'
                if not uint8(stor201[arg1].field_16):
                    if (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 / 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 != (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 4 * (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 < ((10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0):
                        revert with 0, 'Power limit'
                else:
                    if 10 * uint8(stor201[arg1].field_16) / uint8(stor201[arg1].field_16) != 10:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (10 * uint8(stor201[arg1].field_16)) + 1000 < 1000:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (10 * uint8(stor201[arg1].field_16)) + 1000:
                        if 0 < ((10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0):
                            revert with 0, 'Power limit'
                    else:
                        if (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 / (10 * uint8(stor201[arg1].field_16)) + 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 != (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 4 * (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 < ((10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0):
                            revert with 0, 'Power limit'
        if uint256(sub_783efb25[arg1][2].field_0) < 0:
            revert with 0, 'SafeMath: addition overflow'
    else:
        if 10 * arg2 / arg2 != 10:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg1 >= stor462:
            if stor461 >= block.number:
                revert with 0, 'Too fresh for lookup'
        require arg1 < stor201.length
        if (uint8(stor201[arg1].field_16) / 10) + 1 < uint8(stor201[arg1].field_16) / 10:
            revert with 0, 'SafeMath: addition overflow'
        if not uint8(stor201[arg1].field_16):
            if (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 / 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ((1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0) < uint256(sub_783efb25[arg1][2].field_0):
                revert with 0, 'SafeMath: addition overflow'
            if 10 * arg2 < 0:
                revert with 0, 'SafeMath: addition overflow'
            require arg1 < stor201.length
            if (uint8(stor201[arg1].field_16) / 10) + 1 < uint8(stor201[arg1].field_16) / 10:
                revert with 0, 'SafeMath: addition overflow'
            if not uint8(stor201[arg1].field_16):
                if (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 / 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 != (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 4 * (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 < (10 * arg2) + ((1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0):
                    revert with 0, 'Power limit'
            else:
                if 10 * uint8(stor201[arg1].field_16) / uint8(stor201[arg1].field_16) != 10:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (10 * uint8(stor201[arg1].field_16)) + 1000 < 1000:
                    revert with 0, 'SafeMath: addition overflow'
                if not (10 * uint8(stor201[arg1].field_16)) + 1000:
                    if 0 < (10 * arg2) + ((1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0):
                        revert with 0, 'Power limit'
                else:
                    if (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 / (10 * uint8(stor201[arg1].field_16)) + 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 != (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 4 * (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 < (10 * arg2) + ((1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0):
                        revert with 0, 'Power limit'
        else:
            if 10 * uint8(stor201[arg1].field_16) / uint8(stor201[arg1].field_16) != 10:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (10 * uint8(stor201[arg1].field_16)) + 1000 < 1000:
                revert with 0, 'SafeMath: addition overflow'
            if not (10 * uint8(stor201[arg1].field_16)) + 1000:
                if uint256(sub_783efb25[arg1][2].field_0) < uint256(sub_783efb25[arg1][2].field_0):
                    revert with 0, 'SafeMath: addition overflow'
                if (10 * arg2) + uint256(sub_783efb25[arg1][2].field_0) < uint256(sub_783efb25[arg1][2].field_0):
                    revert with 0, 'SafeMath: addition overflow'
                require arg1 < stor201.length
                if (uint8(stor201[arg1].field_16) / 10) + 1 < uint8(stor201[arg1].field_16) / 10:
                    revert with 0, 'SafeMath: addition overflow'
                if not uint8(stor201[arg1].field_16):
                    if (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 / 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 != (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 4 * (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 < (10 * arg2) + uint256(sub_783efb25[arg1][2].field_0):
                        revert with 0, 'Power limit'
                else:
                    if 10 * uint8(stor201[arg1].field_16) / uint8(stor201[arg1].field_16) != 10:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (10 * uint8(stor201[arg1].field_16)) + 1000 < 1000:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (10 * uint8(stor201[arg1].field_16)) + 1000:
                        if 0 < (10 * arg2) + uint256(sub_783efb25[arg1][2].field_0):
                            revert with 0, 'Power limit'
                    else:
                        if (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 / (10 * uint8(stor201[arg1].field_16)) + 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 != (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 4 * (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 < (10 * arg2) + uint256(sub_783efb25[arg1][2].field_0):
                            revert with 0, 'Power limit'
            else:
                if (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 / (10 * uint8(stor201[arg1].field_16)) + 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ((10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0) < uint256(sub_783efb25[arg1][2].field_0):
                    revert with 0, 'SafeMath: addition overflow'
                if 10 * arg2 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require arg1 < stor201.length
                if (uint8(stor201[arg1].field_16) / 10) + 1 < uint8(stor201[arg1].field_16) / 10:
                    revert with 0, 'SafeMath: addition overflow'
                if not uint8(stor201[arg1].field_16):
                    if (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 / 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 != (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 4 * (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 < (10 * arg2) + ((10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0):
                        revert with 0, 'Power limit'
                else:
                    if 10 * uint8(stor201[arg1].field_16) / uint8(stor201[arg1].field_16) != 10:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (10 * uint8(stor201[arg1].field_16)) + 1000 < 1000:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (10 * uint8(stor201[arg1].field_16)) + 1000:
                        if 0 < (10 * arg2) + ((10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0):
                            revert with 0, 'Power limit'
                    else:
                        if (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 / (10 * uint8(stor201[arg1].field_16)) + 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 != (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 4 * (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 < (10 * arg2) + ((10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0):
                            revert with 0, 'Power limit'
        if uint256(sub_783efb25[arg1][2].field_0) + (10 * arg2) < 10 * arg2:
            revert with 0, 'SafeMath: addition overflow'
        uint256(sub_783efb25[arg1][2].field_0) += 10 * arg2
}

function sub_bef6ec26(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[96] = 0x47414d455f41444d494e00000000000000000000000000000000000000000000
    mem[0] = msg.sender
    mem[32] = sha3(sha3(336492626609784167942478), 151) + 1
    if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'NA'
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] < stor201.length
        if (uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + 1 < uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10:
            revert with 0, 'SafeMath: addition overflow'
        if not uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16):
            if (1000 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + 1000 / 1000 != (uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + 1:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require idx < ('cd', 4).length
            mem[0] = 2
            mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 466)
            if ((1000 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][2].field_0) < uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][2].field_0):
                revert with 0, 'SafeMath: addition overflow'
            require idx < ('cd', 4).length
            _1231 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1231] = 41
            mem[_1231 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
            mem[32] = 103
            if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
                _1247 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 41
                idx = 0
                while idx < 41:
                    mem[idx + _1247 + 68] = mem[idx + _1231 + 32]
                    idx = idx + 32
                    continue 
                mem[_1247 + 100] = mem[_1247 + 123 len 9]
                revert with memory
                  from mem[64]
                   len _1247 + -mem[64] + 132
            require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
            mem[0] = 102
            require idx < ('cd', 4).length
            if sub_9462fa19Address != address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256):
                _1294 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1294] = 41
                mem[_1294 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                mem[32] = 103
                if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
                    _1323 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 41
                    idx = 0
                    while idx < 41:
                        mem[idx + _1323 + 68] = mem[idx + _1294 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1323 + 100] = mem[_1323 + 123 len 9]
                    revert with memory
                      from mem[64]
                       len _1323 + -mem[64] + 132
                require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
                require not uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][1].field_0)
                require ext_code.size(promosAddress)
                staticcall promosAddress.0xbf2a28cf with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(promosAddress)
                call promosAddress.setBit(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(promosAddress)
                staticcall promosAddress.0xbf2a28cf with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64]] = 0x260730e000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = ext_call.return_data[0]
                require ext_code.size(promosAddress)
                call promosAddress.setBit(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 104
                approved[cd[((32 * idx) + cd[4] + 36)]] = 0
                _1534 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1534] = 41
                mem[_1534 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                mem[32] = 103
                if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
                    _1610 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 41
                    idx = 0
                    while idx < 41:
                        mem[idx + _1610 + 68] = mem[idx + _1534 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1610 + 100] = mem[_1610 + 123 len 9]
                    revert with memory
                      from mem[64]
                       len _1610 + -mem[64] + 132
                require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
                emit Approval(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), 0, cd[((32 * idx) + cd[4] + 36)]);
                if Mask(255, 1, uint256(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0) and (256 * not bool(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0)) - 1):
                    uint256(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0) = 0
                    if 31 < stor108[cd[((32 * idx) + cd[4] + 36)]].length:
                        t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 108))
                        while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 108)) + (stor108[cd[((32 * idx) + cd[4] + 36)]].length + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                if tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]:
                    require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                    require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]] = tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]]
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]]] = tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]
                    require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]] = 0
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]--
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]] = 0
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 103
                if stor103[cd[((32 * idx) + cd[4] + 36)]]:
                    require tokenByIndex.length - 1 < tokenByIndex.length
                    require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
                    uint256(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_0) = uint256(tokenByIndex[tokenByIndex.length - 1].field_0)
                    uint256(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256) = uint256(tokenByIndex[tokenByIndex.length - 1].field_256)
                    stor103[uint256(stor102[stor102.length - 1].field_0)] = stor103[cd[((32 * idx) + cd[4] + 36)]]
                    require tokenByIndex.length
                    uint256(tokenByIndex[tokenByIndex.length - 1].field_0) = 0
                    uint256(tokenByIndex[tokenByIndex.length - 1].field_256) = 0
                    tokenByIndex.length--
                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                    mem[32] = 103
                    stor103[cd[((32 * idx) + cd[4] + 36)]] = 0
                emit Transfer(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), 0, cd[((32 * idx) + cd[4] + 36)]);
                require idx < ('cd', 4).length
                emit Burned(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), cd[((32 * idx) + cd[4] + 36)]);
            else:
                require ext_code.size(sub_9462fa19Address)
                staticcall sub_9462fa19Address.0xb8cae950 with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < ('cd', 4).length
                require ext_code.size(sub_9462fa19Address)
                call sub_9462fa19Address.updateOnBurn(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), cd[((32 * idx) + cd[4] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < ('cd', 4).length
                _1361 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1361] = 41
                mem[_1361 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                mem[32] = 103
                if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
                    _1391 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 41
                    idx = 0
                    while idx < 41:
                        mem[idx + _1391 + 68] = mem[idx + _1361 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1391 + 100] = mem[_1391 + 123 len 9]
                    revert with memory
                      from mem[64]
                       len _1391 + -mem[64] + 132
                require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
                require not uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][1].field_0)
                require ext_code.size(promosAddress)
                staticcall promosAddress.0xbf2a28cf with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(promosAddress)
                call promosAddress.setBit(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(promosAddress)
                staticcall promosAddress.0xbf2a28cf with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64]] = 0x260730e000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = ext_call.return_data[0]
                require ext_code.size(promosAddress)
                call promosAddress.setBit(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 104
                approved[cd[((32 * idx) + cd[4] + 36)]] = 0
                _1685 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1685] = 41
                mem[_1685 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                mem[32] = 103
                if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
                    _1744 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 41
                    idx = 0
                    while idx < 41:
                        mem[idx + _1744 + 68] = mem[idx + _1685 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1744 + 100] = mem[_1744 + 123 len 9]
                    revert with memory
                      from mem[64]
                       len _1744 + -mem[64] + 132
                require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
                emit Approval(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), 0, cd[((32 * idx) + cd[4] + 36)]);
                if Mask(255, 1, uint256(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0) and (256 * not bool(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0)) - 1):
                    uint256(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0) = 0
                    if 31 < stor108[cd[((32 * idx) + cd[4] + 36)]].length:
                        t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 108))
                        while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 108)) + (stor108[cd[((32 * idx) + cd[4] + 36)]].length + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                if tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]:
                    require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                    require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]] = tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]]
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]]] = tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]
                    require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]] = 0
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]--
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]] = 0
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 103
                if stor103[cd[((32 * idx) + cd[4] + 36)]]:
                    require tokenByIndex.length - 1 < tokenByIndex.length
                    require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
                    uint256(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_0) = uint256(tokenByIndex[tokenByIndex.length - 1].field_0)
                    uint256(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256) = uint256(tokenByIndex[tokenByIndex.length - 1].field_256)
                    stor103[uint256(stor102[stor102.length - 1].field_0)] = stor103[cd[((32 * idx) + cd[4] + 36)]]
                    require tokenByIndex.length
                    uint256(tokenByIndex[tokenByIndex.length - 1].field_0) = 0
                    uint256(tokenByIndex[tokenByIndex.length - 1].field_256) = 0
                    tokenByIndex.length--
                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                    mem[32] = 103
                    stor103[cd[((32 * idx) + cd[4] + 36)]] = 0
                emit Transfer(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), 0, cd[((32 * idx) + cd[4] + 36)]);
                require idx < ('cd', 4).length
                emit Burned(address(ext_call.return_data[0]), cd[((32 * idx) + cd[4] + 36)]);
            idx = idx + 1
            s = s + ((1000 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][2].field_0)
            continue 
        if 10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) != 10:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if (10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16)) + 1000 < 1000:
            revert with 0, 'SafeMath: addition overflow'
        if not (10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16)) + 1000:
            require idx < ('cd', 4).length
            mem[0] = 2
            mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 466)
            if uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][2].field_0) < uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][2].field_0):
                revert with 0, 'SafeMath: addition overflow'
            require idx < ('cd', 4).length
            _1230 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1230] = 41
            mem[_1230 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
            mem[32] = 103
            if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
                _1244 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 41
                idx = 0
                while idx < 41:
                    mem[idx + _1244 + 68] = mem[idx + _1230 + 32]
                    idx = idx + 32
                    continue 
                mem[_1244 + 100] = mem[_1244 + 123 len 9]
                revert with memory
                  from mem[64]
                   len _1244 + -mem[64] + 132
            require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
            mem[0] = 102
            require idx < ('cd', 4).length
            if sub_9462fa19Address != address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256):
                _1292 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1292] = 41
                mem[_1292 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                mem[32] = 103
                if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
                    _1320 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 41
                    idx = 0
                    while idx < 41:
                        mem[idx + _1320 + 68] = mem[idx + _1292 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1320 + 100] = mem[_1320 + 123 len 9]
                    revert with memory
                      from mem[64]
                       len _1320 + -mem[64] + 132
                require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
                require not uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][1].field_0)
                require ext_code.size(promosAddress)
                staticcall promosAddress.0xbf2a28cf with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(promosAddress)
                call promosAddress.setBit(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(promosAddress)
                staticcall promosAddress.0xbf2a28cf with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64]] = 0x260730e000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = ext_call.return_data[0]
                require ext_code.size(promosAddress)
                call promosAddress.setBit(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 104
                approved[cd[((32 * idx) + cd[4] + 36)]] = 0
                _1531 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1531] = 41
                mem[_1531 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                mem[32] = 103
                if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
                    _1604 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 41
                    idx = 0
                    while idx < 41:
                        mem[idx + _1604 + 68] = mem[idx + _1531 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1604 + 100] = mem[_1604 + 123 len 9]
                    revert with memory
                      from mem[64]
                       len _1604 + -mem[64] + 132
                require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
                emit Approval(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), 0, cd[((32 * idx) + cd[4] + 36)]);
                if Mask(255, 1, uint256(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0) and (256 * not bool(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0)) - 1):
                    uint256(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0) = 0
                    if 31 < stor108[cd[((32 * idx) + cd[4] + 36)]].length:
                        t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 108))
                        while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 108)) + (stor108[cd[((32 * idx) + cd[4] + 36)]].length + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                if tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]:
                    require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                    require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]] = tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]]
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]]] = tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]
                    require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]] = 0
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]--
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]] = 0
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 103
                if stor103[cd[((32 * idx) + cd[4] + 36)]]:
                    require tokenByIndex.length - 1 < tokenByIndex.length
                    require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
                    uint256(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_0) = uint256(tokenByIndex[tokenByIndex.length - 1].field_0)
                    uint256(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256) = uint256(tokenByIndex[tokenByIndex.length - 1].field_256)
                    stor103[uint256(stor102[stor102.length - 1].field_0)] = stor103[cd[((32 * idx) + cd[4] + 36)]]
                    require tokenByIndex.length
                    uint256(tokenByIndex[tokenByIndex.length - 1].field_0) = 0
                    uint256(tokenByIndex[tokenByIndex.length - 1].field_256) = 0
                    tokenByIndex.length--
                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                    mem[32] = 103
                    stor103[cd[((32 * idx) + cd[4] + 36)]] = 0
                emit Transfer(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), 0, cd[((32 * idx) + cd[4] + 36)]);
                require idx < ('cd', 4).length
                emit Burned(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), cd[((32 * idx) + cd[4] + 36)]);
            else:
                require ext_code.size(sub_9462fa19Address)
                staticcall sub_9462fa19Address.0xb8cae950 with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < ('cd', 4).length
                require ext_code.size(sub_9462fa19Address)
                call sub_9462fa19Address.updateOnBurn(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), cd[((32 * idx) + cd[4] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < ('cd', 4).length
                _1358 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1358] = 41
                mem[_1358 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                mem[32] = 103
                if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
                    _1387 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 41
                    idx = 0
                    while idx < 41:
                        mem[idx + _1387 + 68] = mem[idx + _1358 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1387 + 100] = mem[_1387 + 123 len 9]
                    revert with memory
                      from mem[64]
                       len _1387 + -mem[64] + 132
                require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
                require not uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][1].field_0)
                require ext_code.size(promosAddress)
                staticcall promosAddress.0xbf2a28cf with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(promosAddress)
                call promosAddress.setBit(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(promosAddress)
                staticcall promosAddress.0xbf2a28cf with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64]] = 0x260730e000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = ext_call.return_data[0]
                require ext_code.size(promosAddress)
                call promosAddress.setBit(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 104
                approved[cd[((32 * idx) + cd[4] + 36)]] = 0
                _1683 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1683] = 41
                mem[_1683 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                mem[32] = 103
                if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
                    _1739 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 41
                    idx = 0
                    while idx < 41:
                        mem[idx + _1739 + 68] = mem[idx + _1683 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1739 + 100] = mem[_1739 + 123 len 9]
                    revert with memory
                      from mem[64]
                       len _1739 + -mem[64] + 132
                require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
                emit Approval(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), 0, cd[((32 * idx) + cd[4] + 36)]);
                if Mask(255, 1, uint256(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0) and (256 * not bool(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0)) - 1):
                    uint256(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0) = 0
                    if 31 < stor108[cd[((32 * idx) + cd[4] + 36)]].length:
                        t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 108))
                        while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 108)) + (stor108[cd[((32 * idx) + cd[4] + 36)]].length + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                if tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]:
                    require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                    require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]] = tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]]
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]]] = tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]
                    require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]] = 0
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]--
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]] = 0
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 103
                if stor103[cd[((32 * idx) + cd[4] + 36)]]:
                    require tokenByIndex.length - 1 < tokenByIndex.length
                    require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
                    uint256(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_0) = uint256(tokenByIndex[tokenByIndex.length - 1].field_0)
                    uint256(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256) = uint256(tokenByIndex[tokenByIndex.length - 1].field_256)
                    stor103[uint256(stor102[stor102.length - 1].field_0)] = stor103[cd[((32 * idx) + cd[4] + 36)]]
                    require tokenByIndex.length
                    uint256(tokenByIndex[tokenByIndex.length - 1].field_0) = 0
                    uint256(tokenByIndex[tokenByIndex.length - 1].field_256) = 0
                    tokenByIndex.length--
                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                    mem[32] = 103
                    stor103[cd[((32 * idx) + cd[4] + 36)]] = 0
                emit Transfer(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), 0, cd[((32 * idx) + cd[4] + 36)]);
                require idx < ('cd', 4).length
                emit Burned(address(ext_call.return_data[0]), cd[((32 * idx) + cd[4] + 36)]);
            idx = idx + 1
            s = s + uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][2].field_0)
            continue 
        if (10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16)) + (1000 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + (10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + 1000 / (10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16)) + 1000 != (uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + 1:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        require idx < ('cd', 4).length
        mem[0] = 2
        mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 466)
        if ((10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16)) + (1000 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + (10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][2].field_0) < uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][2].field_0):
            revert with 0, 'SafeMath: addition overflow'
        require idx < ('cd', 4).length
        _1238 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1238] = 41
        mem[_1238 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
        mem[32] = 103
        if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
            _1254 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 41
            idx = 0
            while idx < 41:
                mem[idx + _1254 + 68] = mem[idx + _1238 + 32]
                idx = idx + 32
                continue 
            mem[_1254 + 100] = mem[_1254 + 123 len 9]
            revert with memory
              from mem[64]
               len _1254 + -mem[64] + 132
        require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
        mem[0] = 102
        require idx < ('cd', 4).length
        if sub_9462fa19Address != address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256):
            _1296 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1296] = 41
            mem[_1296 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
            mem[32] = 103
            if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
                _1328 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 41
                idx = 0
                while idx < 41:
                    mem[idx + _1328 + 68] = mem[idx + _1296 + 32]
                    idx = idx + 32
                    continue 
                mem[_1328 + 100] = mem[_1328 + 123 len 9]
                revert with memory
                  from mem[64]
                   len _1328 + -mem[64] + 132
            require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
            require not uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][1].field_0)
            require ext_code.size(promosAddress)
            staticcall promosAddress.0xbf2a28cf with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(promosAddress)
            call promosAddress.setBit(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(promosAddress)
            staticcall promosAddress.0xbf2a28cf with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64]] = 0x260730e000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = ext_call.return_data[0]
            require ext_code.size(promosAddress)
            call promosAddress.setBit(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 104
            approved[cd[((32 * idx) + cd[4] + 36)]] = 0
            _1571 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1571] = 41
            mem[_1571 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
            mem[32] = 103
            if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
                _1624 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 41
                idx = 0
                while idx < 41:
                    mem[idx + _1624 + 68] = mem[idx + _1571 + 32]
                    idx = idx + 32
                    continue 
                mem[_1624 + 100] = mem[_1624 + 123 len 9]
                revert with memory
                  from mem[64]
                   len _1624 + -mem[64] + 132
            require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
            emit Approval(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), 0, cd[((32 * idx) + cd[4] + 36)]);
            if Mask(255, 1, uint256(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0) and (256 * not bool(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0)) - 1):
                uint256(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0) = 0
                if 31 < stor108[cd[((32 * idx) + cd[4] + 36)]].length:
                    t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 108))
                    while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 108)) + (stor108[cd[((32 * idx) + cd[4] + 36)]].length + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        t = t + 1
                        continue 
            if tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]:
                require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]] = tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]]
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]]] = tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]
                require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]] = 0
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]--
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]] = 0
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 103
            if stor103[cd[((32 * idx) + cd[4] + 36)]]:
                require tokenByIndex.length - 1 < tokenByIndex.length
                require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
                uint256(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_0) = uint256(tokenByIndex[tokenByIndex.length - 1].field_0)
                uint256(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256) = uint256(tokenByIndex[tokenByIndex.length - 1].field_256)
                stor103[uint256(stor102[stor102.length - 1].field_0)] = stor103[cd[((32 * idx) + cd[4] + 36)]]
                require tokenByIndex.length
                uint256(tokenByIndex[tokenByIndex.length - 1].field_0) = 0
                uint256(tokenByIndex[tokenByIndex.length - 1].field_256) = 0
                tokenByIndex.length--
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 103
                stor103[cd[((32 * idx) + cd[4] + 36)]] = 0
            emit Transfer(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), 0, cd[((32 * idx) + cd[4] + 36)]);
            require idx < ('cd', 4).length
            emit Burned(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), cd[((32 * idx) + cd[4] + 36)]);
        else:
            require ext_code.size(sub_9462fa19Address)
            staticcall sub_9462fa19Address.0xb8cae950 with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < ('cd', 4).length
            require ext_code.size(sub_9462fa19Address)
            call sub_9462fa19Address.updateOnBurn(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < ('cd', 4).length
            _1366 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1366] = 41
            mem[_1366 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
            mem[32] = 103
            if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
                _1397 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 41
                idx = 0
                while idx < 41:
                    mem[idx + _1397 + 68] = mem[idx + _1366 + 32]
                    idx = idx + 32
                    continue 
                mem[_1397 + 100] = mem[_1397 + 123 len 9]
                revert with memory
                  from mem[64]
                   len _1397 + -mem[64] + 132
            require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
            require not uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][1].field_0)
            require ext_code.size(promosAddress)
            staticcall promosAddress.0xbf2a28cf with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(promosAddress)
            call promosAddress.setBit(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(promosAddress)
            staticcall promosAddress.0xbf2a28cf with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64]] = 0x260730e000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = ext_call.return_data[0]
            require ext_code.size(promosAddress)
            call promosAddress.setBit(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 104
            approved[cd[((32 * idx) + cd[4] + 36)]] = 0
            _1687 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1687] = 41
            mem[_1687 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
            mem[32] = 103
            if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
                _1799 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 41
                idx = 0
                while idx < 41:
                    mem[idx + _1799 + 68] = mem[idx + _1687 + 32]
                    idx = idx + 32
                    continue 
                mem[_1799 + 100] = mem[_1799 + 123 len 9]
                revert with memory
                  from mem[64]
                   len _1799 + -mem[64] + 132
            require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
            emit Approval(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), 0, cd[((32 * idx) + cd[4] + 36)]);
            if Mask(255, 1, uint256(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0) and (256 * not bool(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0)) - 1):
                uint256(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0) = 0
                if 31 < stor108[cd[((32 * idx) + cd[4] + 36)]].length:
                    t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 108))
                    while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 108)) + (stor108[cd[((32 * idx) + cd[4] + 36)]].length + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        t = t + 1
                        continue 
            if tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]:
                require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]] = tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]]
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]]] = tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]
                require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]] = 0
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]--
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]] = 0
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 103
            if stor103[cd[((32 * idx) + cd[4] + 36)]]:
                require tokenByIndex.length - 1 < tokenByIndex.length
                require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
                uint256(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_0) = uint256(tokenByIndex[tokenByIndex.length - 1].field_0)
                uint256(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256) = uint256(tokenByIndex[tokenByIndex.length - 1].field_256)
                stor103[uint256(stor102[stor102.length - 1].field_0)] = stor103[cd[((32 * idx) + cd[4] + 36)]]
                require tokenByIndex.length
                uint256(tokenByIndex[tokenByIndex.length - 1].field_0) = 0
                uint256(tokenByIndex[tokenByIndex.length - 1].field_256) = 0
                tokenByIndex.length--
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 103
                stor103[cd[((32 * idx) + cd[4] + 36)]] = 0
            emit Transfer(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), 0, cd[((32 * idx) + cd[4] + 36)]);
            require idx < ('cd', 4).length
            emit Burned(address(ext_call.return_data[0]), cd[((32 * idx) + cd[4] + 36)]);
        idx = idx + 1
        s = s + ((10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16)) + (1000 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + (10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][2].field_0)
        continue 
    if cd[36] >= stor462:
        if stor461 >= block.number:
            revert with 0, 'Too fresh for lookup'
    require cd[36] < stor201.length
    if (uint8(stor201[cd[36]].field_16) / 10) + 1 < uint8(stor201[cd[36]].field_16) / 10:
        revert with 0, 'SafeMath: addition overflow'
    if not uint8(stor201[cd[36]].field_16):
        if (1000 * uint8(stor201[cd[36]].field_16) / 10) + 1000 / 1000 != (uint8(stor201[cd[36]].field_16) / 10) + 1:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if ((1000 * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[cd[36]][2].field_0) < uint256(sub_783efb25[cd[36]][2].field_0):
            revert with 0, 'SafeMath: addition overflow'
        if s < 0:
            revert with 0, 'SafeMath: addition overflow'
        require cd[36] < stor201.length
        if (uint8(stor201[cd[36]].field_16) / 10) + 1 < uint8(stor201[cd[36]].field_16) / 10:
            revert with 0, 'SafeMath: addition overflow'
        if not uint8(stor201[cd[36]].field_16):
            if (1000 * uint8(stor201[cd[36]].field_16) / 10) + 1000 / 1000 != (uint8(stor201[cd[36]].field_16) / 10) + 1:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (1000 * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216 != (1000 * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 4 * (1000 * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216 < s + ((1000 * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[cd[36]][2].field_0):
                revert with 0, 'Power limit'
        else:
            if 10 * uint8(stor201[cd[36]].field_16) / uint8(stor201[cd[36]].field_16) != 10:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (10 * uint8(stor201[cd[36]].field_16)) + 1000 < 1000:
                revert with 0, 'SafeMath: addition overflow'
            if not (10 * uint8(stor201[cd[36]].field_16)) + 1000:
                if 0 < s + ((1000 * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[cd[36]][2].field_0):
                    revert with 0, 'Power limit'
            else:
                if (10 * uint8(stor201[cd[36]].field_16)) + (1000 * uint8(stor201[cd[36]].field_16) / 10) + (10 * uint8(stor201[cd[36]].field_16) * uint8(stor201[cd[36]].field_16) / 10) + 1000 / (10 * uint8(stor201[cd[36]].field_16)) + 1000 != (uint8(stor201[cd[36]].field_16) / 10) + 1:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (10 * uint8(stor201[cd[36]].field_16)) + (1000 * uint8(stor201[cd[36]].field_16) / 10) + (10 * uint8(stor201[cd[36]].field_16) * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216 != (10 * uint8(stor201[cd[36]].field_16)) + (1000 * uint8(stor201[cd[36]].field_16) / 10) + (10 * uint8(stor201[cd[36]].field_16) * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 4 * (10 * uint8(stor201[cd[36]].field_16)) + (1000 * uint8(stor201[cd[36]].field_16) / 10) + (10 * uint8(stor201[cd[36]].field_16) * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216 < s + ((1000 * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[cd[36]][2].field_0):
                    revert with 0, 'Power limit'
    else:
        if 10 * uint8(stor201[cd[36]].field_16) / uint8(stor201[cd[36]].field_16) != 10:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if (10 * uint8(stor201[cd[36]].field_16)) + 1000 < 1000:
            revert with 0, 'SafeMath: addition overflow'
        if not (10 * uint8(stor201[cd[36]].field_16)) + 1000:
            if uint256(sub_783efb25[cd[36]][2].field_0) < uint256(sub_783efb25[cd[36]][2].field_0):
                revert with 0, 'SafeMath: addition overflow'
            if s + uint256(sub_783efb25[cd[36]][2].field_0) < uint256(sub_783efb25[cd[36]][2].field_0):
                revert with 0, 'SafeMath: addition overflow'
            require cd[36] < stor201.length
            if (uint8(stor201[cd[36]].field_16) / 10) + 1 < uint8(stor201[cd[36]].field_16) / 10:
                revert with 0, 'SafeMath: addition overflow'
            if not uint8(stor201[cd[36]].field_16):
                if (1000 * uint8(stor201[cd[36]].field_16) / 10) + 1000 / 1000 != (uint8(stor201[cd[36]].field_16) / 10) + 1:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (1000 * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216 != (1000 * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 4 * (1000 * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216 < s + uint256(sub_783efb25[cd[36]][2].field_0):
                    revert with 0, 'Power limit'
            else:
                if 10 * uint8(stor201[cd[36]].field_16) / uint8(stor201[cd[36]].field_16) != 10:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (10 * uint8(stor201[cd[36]].field_16)) + 1000 < 1000:
                    revert with 0, 'SafeMath: addition overflow'
                if not (10 * uint8(stor201[cd[36]].field_16)) + 1000:
                    if 0 < s + uint256(sub_783efb25[cd[36]][2].field_0):
                        revert with 0, 'Power limit'
                else:
                    if (10 * uint8(stor201[cd[36]].field_16)) + (1000 * uint8(stor201[cd[36]].field_16) / 10) + (10 * uint8(stor201[cd[36]].field_16) * uint8(stor201[cd[36]].field_16) / 10) + 1000 / (10 * uint8(stor201[cd[36]].field_16)) + 1000 != (uint8(stor201[cd[36]].field_16) / 10) + 1:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (10 * uint8(stor201[cd[36]].field_16)) + (1000 * uint8(stor201[cd[36]].field_16) / 10) + (10 * uint8(stor201[cd[36]].field_16) * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216 != (10 * uint8(stor201[cd[36]].field_16)) + (1000 * uint8(stor201[cd[36]].field_16) / 10) + (10 * uint8(stor201[cd[36]].field_16) * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 4 * (10 * uint8(stor201[cd[36]].field_16)) + (1000 * uint8(stor201[cd[36]].field_16) / 10) + (10 * uint8(stor201[cd[36]].field_16) * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216 < s + uint256(sub_783efb25[cd[36]][2].field_0):
                        revert with 0, 'Power limit'
        else:
            if (10 * uint8(stor201[cd[36]].field_16)) + (1000 * uint8(stor201[cd[36]].field_16) / 10) + (10 * uint8(stor201[cd[36]].field_16) * uint8(stor201[cd[36]].field_16) / 10) + 1000 / (10 * uint8(stor201[cd[36]].field_16)) + 1000 != (uint8(stor201[cd[36]].field_16) / 10) + 1:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if ((10 * uint8(stor201[cd[36]].field_16)) + (1000 * uint8(stor201[cd[36]].field_16) / 10) + (10 * uint8(stor201[cd[36]].field_16) * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[cd[36]][2].field_0) < uint256(sub_783efb25[cd[36]][2].field_0):
                revert with 0, 'SafeMath: addition overflow'
            if s < 0:
                revert with 0, 'SafeMath: addition overflow'
            require cd[36] < stor201.length
            if (uint8(stor201[cd[36]].field_16) / 10) + 1 < uint8(stor201[cd[36]].field_16) / 10:
                revert with 0, 'SafeMath: addition overflow'
            if not uint8(stor201[cd[36]].field_16):
                if (1000 * uint8(stor201[cd[36]].field_16) / 10) + 1000 / 1000 != (uint8(stor201[cd[36]].field_16) / 10) + 1:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (1000 * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216 != (1000 * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 4 * (1000 * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216 < s + ((10 * uint8(stor201[cd[36]].field_16)) + (1000 * uint8(stor201[cd[36]].field_16) / 10) + (10 * uint8(stor201[cd[36]].field_16) * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[cd[36]][2].field_0):
                    revert with 0, 'Power limit'
            else:
                if 10 * uint8(stor201[cd[36]].field_16) / uint8(stor201[cd[36]].field_16) != 10:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (10 * uint8(stor201[cd[36]].field_16)) + 1000 < 1000:
                    revert with 0, 'SafeMath: addition overflow'
                if not (10 * uint8(stor201[cd[36]].field_16)) + 1000:
                    if 0 < s + ((10 * uint8(stor201[cd[36]].field_16)) + (1000 * uint8(stor201[cd[36]].field_16) / 10) + (10 * uint8(stor201[cd[36]].field_16) * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[cd[36]][2].field_0):
                        revert with 0, 'Power limit'
                else:
                    if (10 * uint8(stor201[cd[36]].field_16)) + (1000 * uint8(stor201[cd[36]].field_16) / 10) + (10 * uint8(stor201[cd[36]].field_16) * uint8(stor201[cd[36]].field_16) / 10) + 1000 / (10 * uint8(stor201[cd[36]].field_16)) + 1000 != (uint8(stor201[cd[36]].field_16) / 10) + 1:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (10 * uint8(stor201[cd[36]].field_16)) + (1000 * uint8(stor201[cd[36]].field_16) / 10) + (10 * uint8(stor201[cd[36]].field_16) * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216 != (10 * uint8(stor201[cd[36]].field_16)) + (1000 * uint8(stor201[cd[36]].field_16) / 10) + (10 * uint8(stor201[cd[36]].field_16) * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 4 * (10 * uint8(stor201[cd[36]].field_16)) + (1000 * uint8(stor201[cd[36]].field_16) / 10) + (10 * uint8(stor201[cd[36]].field_16) * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216 < s + ((10 * uint8(stor201[cd[36]].field_16)) + (1000 * uint8(stor201[cd[36]].field_16) / 10) + (10 * uint8(stor201[cd[36]].field_16) * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[cd[36]][2].field_0):
                        revert with 0, 'Power limit'
    if not s:
        if uint256(sub_783efb25[cd[36]][2].field_0) < 0:
            revert with 0, 'SafeMath: addition overflow'
    else:
        if cd[68] * s / s != cd[68]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if uint256(sub_783efb25[cd[36]][2].field_0) + (cd[68] * s / 10^18) < cd[68] * s / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        uint256(sub_783efb25[cd[36]][2].field_0) += cd[68] * s / 10^18
}



}
