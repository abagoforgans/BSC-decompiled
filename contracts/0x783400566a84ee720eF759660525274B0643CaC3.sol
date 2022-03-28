contract main {




// =====================  Runtime code  =====================


#
#  - initialize(string arg1, string arg2, string arg3)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = sha3(Mask(88, 168, 'MINTER_ROLE') >> 168)

const PAUSER_ROLE = sha3(Mask(88, 168, 'PAUSER_ROLE') >> 168)


array of struct roleAdmin;
mapping of uint8 stor151;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor203;
mapping of address approved;
mapping of uint8 stor205;
array of uint256 name;
array of uint256 symbol;
mapping of struct stor208;
array of struct baseURI;
uint8 paused;
uint256 stor401;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor151[Mask(32, 224, arg1)])
}

function name() payable {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor203[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
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

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e456e756d657261626c654d61703a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return tokenByIndex[arg1].field_0
}

function paused() payable {
    return bool(paused)
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor203[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor203[arg1] - 1 < tokenByIndex.length
    return tokenByIndex[stor203[arg1] - 1].field_256
}

function baseURI() payable {
    return baseURI[0 len baseURI.length].field_0
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

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor205[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor205[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function unpause() payable {
    if not roleAdmin['PAUSER_ROLE'][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x644552433732315072657365744d696e7465725061757365724175746f49643a206d75737420686176652070617573657220726f6c6520746f20756e70617573
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function pause() payable {
    if not roleAdmin['PAUSER_ROLE'][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    62,
                    0x724552433732315072657365744d696e7465725061757365724175746f49643a206d75737420686176652070617573657220726f6c6520746f2070617573,
                    mem[226 len 2]
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x64416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x65416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
                    mem[211 len 17]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x6e416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor203[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor203[arg2] - 1 < tokenByIndex.length
    if arg1 == tokenByIndex[stor203[arg2] - 1].field_256:
        revert with 0, 32, 33, 0x6e4552433732313a20617070726f76616c20746f2063757272656e74206f776e65, mem[293 len 31]
    if tokenByIndex[stor203[arg2] - 1].field_256 != msg.sender:
        if not stor205[stor202[stor203[arg2] - 1].field_256][address(msg.sender)]:
            revert with 0, 
                        32,
                        56,
                        0x654552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                        mem[316 len 8]
    approved[arg2] = arg1
    if not stor203[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor203[arg2] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor203[arg2] - 1].field_256, arg1, arg2);
}

function mint(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin['MINTER_ROLE'][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    61,
                    0x644552433732315072657365744d696e7465725061757365724175746f49643a206d7573742068617665206d696e74657220726f6c6520746f206d696e,
                    mem[225 len 3]
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if stor203[stor401]:
        revert with 0, 'ERC721: token already minted'
    if paused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x734552433732315061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                    mem[207 len 21]
    if not tokenOfOwnerByIndex[address(arg1)][1][stor401]:
        tokenOfOwnerByIndex[address(arg1)]++
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor401
        tokenOfOwnerByIndex[address(arg1)][1][stor401] = tokenOfOwnerByIndex[address(arg1)]
    if stor203[stor401]:
        require stor203[stor401] - 1 < tokenByIndex.length
        tokenByIndex[stor203[stor401] - 1].field_256 = arg1
        tokenByIndex[stor203[stor401] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = stor401
        tokenByIndex[tokenByIndex.length].field_256 = arg1
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor203[stor401] = tokenByIndex.length
    emit Transfer(0, arg1, stor401);
    stor401++
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor203[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    if not stor203[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor203[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor203[arg3] - 1].field_256 != msg.sender:
        if not stor203[arg3]:
            revert with 0, 32, 44, 0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[304 len 20]
        if approved[arg3] != msg.sender:
            if not stor205[stor202[stor203[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[309 len 15]
    if not stor203[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor203[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor203[arg3] - 1].field_256 != arg1:
        revert with 0, 32, 41, 0x644552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[397 len 23]
    if not arg2:
        revert with 0, 32, 36, 0x654552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[392 len 28]
    if paused:
        revert with 0, 32, 43, 0x734552433732315061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365, mem[399 len 21]
    approved[arg3] = 0
    if not stor203[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[361 len 23],
                    mem[407 len 9]
    require stor203[arg3] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor203[arg3] - 1].field_256, 0, arg3);
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
    if stor203[arg3]:
        require stor203[arg3] - 1 < tokenByIndex.length
        tokenByIndex[stor203[arg3] - 1].field_256 = arg2
        tokenByIndex[stor203[arg3] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        tokenByIndex[tokenByIndex.length].field_256 = arg2
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor203[arg3] = tokenByIndex.length
    emit Transfer(arg1, arg2, arg3);
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor203[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    if not stor203[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor203[arg1] - 1 < tokenByIndex.length
    if tokenByIndex[stor203[arg1] - 1].field_256 != msg.sender:
        if not stor203[arg1]:
            revert with 0, 32, 44, 0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[304 len 20]
        if approved[arg1] != msg.sender:
            if not stor205[stor202[stor203[arg1] - 1].field_256][address(msg.sender)]:
                revert with 0, 
                            32,
                            48,
                            0x744552433732314275726e61626c653a2063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[308 len 16]
    if not stor203[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor203[arg1] - 1 < tokenByIndex.length
    if paused:
        revert with 0, 32, 43, 0x734552433732315061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365, mem[399 len 21]
    approved[arg1] = 0
    if not stor203[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[361 len 23],
                    mem[407 len 9]
    require stor203[arg1] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor203[arg1] - 1].field_256, 0, arg1);
    if Mask(255, 1, stor208[arg1].field_0 and (256 * not stor208[arg1].field_0) - 1):
        stor208[arg1].field_0 = 0
        if 31 < stor208[arg1].length:
            idx = 0
            while stor208[arg1].length + 31 / 32 > idx:
                stor208[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    if tokenOfOwnerByIndex[stor202[stor203[arg1] - 1].field_256][1][arg1]:
        require tokenOfOwnerByIndex[stor202[stor203[arg1] - 1].field_256] - 1 < tokenOfOwnerByIndex[stor202[stor203[arg1] - 1].field_256]
        require tokenOfOwnerByIndex[stor202[stor203[arg1] - 1].field_256][1][arg1] - 1 < tokenOfOwnerByIndex[stor202[stor203[arg1] - 1].field_256]
        tokenOfOwnerByIndex[stor202[stor203[arg1] - 1].field_256][tokenOfOwnerByIndex[stor202[stor203[arg1] - 1].field_256][1][arg1]] = tokenOfOwnerByIndex[stor202[stor203[arg1] - 1].field_256][tokenOfOwnerByIndex[stor202[stor203[arg1] - 1].field_256]]
        tokenOfOwnerByIndex[stor202[stor203[arg1] - 1].field_256][1][tokenOfOwnerByIndex[stor202[stor203[arg1] - 1].field_256][tokenOfOwnerByIndex[stor202[stor203[arg1] - 1].field_256]]] = tokenOfOwnerByIndex[stor202[stor203[arg1] - 1].field_256][1][arg1]
        require tokenOfOwnerByIndex[stor202[stor203[arg1] - 1].field_256]
        tokenOfOwnerByIndex[stor202[stor203[arg1] - 1].field_256][tokenOfOwnerByIndex[stor202[stor203[arg1] - 1].field_256]] = 0
        tokenOfOwnerByIndex[stor202[stor203[arg1] - 1].field_256]--
        tokenOfOwnerByIndex[stor202[stor203[arg1] - 1].field_256][1][arg1] = 0
    if stor203[arg1]:
        require tokenByIndex.length - 1 < tokenByIndex.length
        require stor203[arg1] - 1 < tokenByIndex.length
        tokenByIndex[stor203[arg1] - 1].field_0 = tokenByIndex[tokenByIndex.length - 1].field_0
        tokenByIndex[stor203[arg1] - 1].field_256 = tokenByIndex[tokenByIndex.length - 1].field_256
        stor203[stor202[stor202.length - 1].field_0] = stor203[arg1]
        require tokenByIndex.length
        tokenByIndex[tokenByIndex.length - 1].field_0 = 0
        tokenByIndex[tokenByIndex.length - 1].field_256 = 0
        tokenByIndex.length--
        stor203[arg1] = 0
    emit Transfer(tokenByIndex[stor203[arg1] - 1].field_256, 0, arg1);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor203[arg3]:
        revert with 0, 32, 44, 0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
    if not stor203[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[201 len 23],
                    mem[247 len 9]
    require stor203[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor203[arg3] - 1].field_256 != msg.sender:
        if not stor203[arg3]:
            revert with 0, 32, 44, 0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[336 len 20]
        if approved[arg3] != msg.sender:
            if not stor205[stor202[stor203[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[341 len 15]
    if not stor203[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[297 len 23],
                    mem[343 len 9]
    require stor203[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor203[arg3] - 1].field_256 != arg1:
        revert with 0, 32, 41, 0x644552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
    if not arg2:
        revert with 0, 32, 36, 0x654552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
    if paused:
        revert with 0, 32, 43, 0x734552433732315061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365, mem[431 len 21]
    approved[arg3] = 0
    if not stor203[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[393 len 23],
                    mem[439 len 9]
    require stor203[arg3] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor203[arg3] - 1].field_256, 0, arg3);
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
    if stor203[arg3]:
        require stor203[arg3] - 1 < tokenByIndex.length
        tokenByIndex[stor203[arg3] - 1].field_256 = arg2
        tokenByIndex[stor203[arg3] - 1].field_416 = 0
        emit Transfer(arg1, arg2, arg3);
        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            if ext_code.hash(arg2):
                mem[612 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                mem[800 len 4] = 0
                call arg2.0x80 with:
                     gas gas_remaining wei
                    args 0, mem[772 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'tERC721: transfer to non ERC721Receiver implementefer to non ERC'
                mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                50,
                                0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[ceil32(return_data.size) + 731 len 14]
                require return_data.size >= 32
                if Mask(32, 224, mem[644]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[ceil32(return_data.size) + 731 len 14]
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        tokenByIndex[tokenByIndex.length].field_256 = arg2
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor203[arg3] = tokenByIndex.length
        emit Transfer(arg1, arg2, arg3);
        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            if ext_code.hash(arg2):
                mem[676 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                mem[864 len 4] = 0
                call arg2.0x80 with:
                     gas gas_remaining wei
                    args 0, mem[836 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'tERC721: transfer to non ERC721Receiver implementefer to non ERC'
                mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                50,
                                0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[ceil32(return_data.size) + 795 len 14]
                require return_data.size >= 32
                if Mask(32, 224, mem[708]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[ceil32(return_data.size) + 795 len 14]
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor203[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[211 len 17]
    mem[32] = 208
    mem[64] = ceil32(stor208[arg1].length) + 128
    mem[96] = stor208[arg1].length
    mem[128] = stor208[arg1].field_0
    idx = 128
    s = 0
    while stor208[arg1].length + 96 > idx:
        mem[idx + 32] = stor208[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not baseURI.length:
        var23001 = ceil32(stor208[arg1].length)
        return Array(len=stor208[arg1].length, data=mem[128 len stor208[arg1].length])
    if stor208[arg1].length:
        mem[0] = 209
        mem[ceil32(stor208[arg1].length) + 160] = uint256(baseURI.field_0)
        idx = mem[64] + 32
        s = 0
        while ceil32(stor208[arg1].length) + baseURI.length + 128 > idx:
            mem[idx + 32] = baseURI[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor208[arg1].length) + baseURI.length + 160 len floor32(stor208[arg1].length)] = mem[128 len floor32(stor208[arg1].length)]
        mem[ceil32(stor208[arg1].length) + baseURI.length + floor32(stor208[arg1].length) + 160] = mem[floor32(stor208[arg1].length) + -stor208[arg1].length % 32 + 160 len stor208[arg1].length % 32] or Mask(8 * -stor208[arg1].length % 32 + 32, -(8 * -stor208[arg1].length % 32 + 32) + 256, mem[ceil32(stor208[arg1].length) + baseURI.length + floor32(stor208[arg1].length) + 160])
        _1006 = mem[64]
        mem[64] = stor208[arg1].length + ceil32(stor208[arg1].length) + baseURI.length + 160
        mem[stor208[arg1].length + ceil32(stor208[arg1].length) + baseURI.length + 160] = 32
        mem[stor208[arg1].length + ceil32(stor208[arg1].length) + baseURI.length + 192] = mem[_1006]
        _1083 = mem[_1006]
        mem[stor208[arg1].length + ceil32(stor208[arg1].length) + baseURI.length + 224 len ceil32(mem[_1006])] = mem[_1006 + 32 len ceil32(mem[_1006])]
        if not _1083 % 32:
            return 32, mem[stor208[arg1].length + ceil32(stor208[arg1].length) + baseURI.length + 192 len _1083 + 32]
        mem[floor32(_1083) + stor208[arg1].length + ceil32(stor208[arg1].length) + baseURI.length + 224] = mem[floor32(_1083) + stor208[arg1].length + ceil32(stor208[arg1].length) + baseURI.length + -(_1083 % 32) + 256 len _1083 % 32]
        return 32, mem[stor208[arg1].length + ceil32(stor208[arg1].length) + baseURI.length + 192 len floor32(_1083) + 64]
    if not arg1:
        mem[64] = ceil32(stor208[arg1].length) + 192
        mem[ceil32(stor208[arg1].length) + 128] = 1
        mem[ceil32(stor208[arg1].length) + 160] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[0] = 209
        mem[ceil32(stor208[arg1].length) + 224] = uint256(baseURI.field_0)
        idx = mem[64] + 32
        s = 0
        while ceil32(stor208[arg1].length) + baseURI.length + 192 > idx:
            mem[idx + 32] = baseURI[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor208[arg1].length) + baseURI.length + 224 len floor32(mem[ceil32(stor208[arg1].length) + 128])] = mem[ceil32(stor208[arg1].length) + 160 len floor32(mem[ceil32(stor208[arg1].length) + 128])]
        mem[ceil32(stor208[arg1].length) + baseURI.length + floor32(mem[ceil32(stor208[arg1].length) + 128]) + -(mem[ceil32(stor208[arg1].length) + 128] % 32) + 256 len mem[ceil32(stor208[arg1].length) + 128] % 32] = mem[ceil32(stor208[arg1].length) + floor32(mem[ceil32(stor208[arg1].length) + 128]) + -(mem[ceil32(stor208[arg1].length) + 128] % 32) + 192 len mem[ceil32(stor208[arg1].length) + 128] % 32]
        _1002 = mem[64]
        mem[64] = mem[ceil32(stor208[arg1].length) + 128] + ceil32(stor208[arg1].length) + baseURI.length + 224
        mem[mem[ceil32(stor208[arg1].length) + 128] + ceil32(stor208[arg1].length) + baseURI.length + 224] = 32
        mem[mem[ceil32(stor208[arg1].length) + 128] + ceil32(stor208[arg1].length) + baseURI.length + 256] = mem[_1002]
        _1048 = mem[_1002]
        mem[mem[ceil32(stor208[arg1].length) + 128] + ceil32(stor208[arg1].length) + baseURI.length + 288 len ceil32(mem[_1002])] = mem[_1002 + 32 len ceil32(mem[_1002])]
        if not _1048 % 32:
            return 32, mem[mem[ceil32(stor208[arg1].length) + 128] + ceil32(stor208[arg1].length) + baseURI.length + 256 len _1048 + 32]
        mem[floor32(_1048) + mem[ceil32(stor208[arg1].length) + 128] + ceil32(stor208[arg1].length) + baseURI.length + 288] = mem[floor32(_1048) + mem[ceil32(stor208[arg1].length) + 128] + ceil32(stor208[arg1].length) + baseURI.length + -(_1048 % 32) + 320 len _1048 % 32]
        return 32, mem[mem[ceil32(stor208[arg1].length) + 128] + ceil32(stor208[arg1].length) + baseURI.length + 256 len floor32(_1048) + 64], 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[ceil32(stor208[arg1].length) + 128] = s
    mem[64] = ceil32(stor208[arg1].length) + ceil32(s) + 160
    if not s:
        t = s - 1
        idx = arg1
        while idx:
            require t < s
            mem[t + ceil32(stor208[arg1].length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[0] = 209
        mem[ceil32(stor208[arg1].length) + ceil32(s) + 192] = uint256(baseURI.field_0)
        t = mem[64] + 32
        u = 0
        while ceil32(stor208[arg1].length) + ceil32(s) + baseURI.length + 160 > t:
            mem[t + 32] = baseURI[u].field_256
            t = t + 32
            u = u + 1
            continue 
        mem[ceil32(stor208[arg1].length) + ceil32(s) + baseURI.length + 192 len floor32(mem[ceil32(stor208[arg1].length) + 128])] = mem[ceil32(stor208[arg1].length) + 160 len floor32(mem[ceil32(stor208[arg1].length) + 128])]
        mem[ceil32(stor208[arg1].length) + ceil32(s) + baseURI.length + floor32(mem[ceil32(stor208[arg1].length) + 128]) + -(mem[ceil32(stor208[arg1].length) + 128] % 32) + 224 len mem[ceil32(stor208[arg1].length) + 128] % 32] = mem[ceil32(stor208[arg1].length) + floor32(mem[ceil32(stor208[arg1].length) + 128]) + -(mem[ceil32(stor208[arg1].length) + 128] % 32) + 192 len mem[ceil32(stor208[arg1].length) + 128] % 32]
        _1232 = mem[64]
        mem[64] = mem[ceil32(stor208[arg1].length) + 128] + ceil32(stor208[arg1].length) + ceil32(s) + baseURI.length + 192
        mem[mem[ceil32(stor208[arg1].length) + 128] + ceil32(stor208[arg1].length) + ceil32(s) + baseURI.length + 192] = 32
        mem[mem[ceil32(stor208[arg1].length) + 128] + ceil32(stor208[arg1].length) + ceil32(s) + baseURI.length + 224] = mem[_1232]
        _1246 = mem[_1232]
        mem[mem[ceil32(stor208[arg1].length) + 128] + ceil32(stor208[arg1].length) + ceil32(s) + baseURI.length + 256 len ceil32(mem[_1232])] = mem[_1232 + 32 len ceil32(mem[_1232])]
        if not _1246 % 32:
            return 32, mem[mem[ceil32(stor208[arg1].length) + 128] + ceil32(stor208[arg1].length) + ceil32(s) + baseURI.length + 224 len _1246 + 32], 
        mem[floor32(_1246) + mem[ceil32(stor208[arg1].length) + 128] + ceil32(stor208[arg1].length) + ceil32(s) + baseURI.length + 256] = mem[floor32(_1246) + mem[ceil32(stor208[arg1].length) + 128] + ceil32(stor208[arg1].length) + ceil32(s) + baseURI.length + -(_1246 % 32) + 288 len _1246 % 32]
        return 32, mem[mem[ceil32(stor208[arg1].length) + 128] + ceil32(stor208[arg1].length) + ceil32(s) + baseURI.length + 224 len floor32(_1246) + 64], 
    mem[ceil32(stor208[arg1].length) + 160 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < s
        mem[t + ceil32(stor208[arg1].length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[0] = 209
    mem[ceil32(stor208[arg1].length) + ceil32(s) + 192] = uint256(baseURI.field_0)
    t = mem[64] + 32
    u = 0
    while ceil32(stor208[arg1].length) + ceil32(s) + baseURI.length + 160 > t:
        mem[t + 32] = baseURI[u].field_256
        t = t + 32
        u = u + 1
        continue 
    mem[ceil32(stor208[arg1].length) + ceil32(s) + baseURI.length + 192 len floor32(mem[ceil32(stor208[arg1].length) + 128])] = mem[ceil32(stor208[arg1].length) + 160 len floor32(mem[ceil32(stor208[arg1].length) + 128])]
    mem[ceil32(stor208[arg1].length) + ceil32(s) + baseURI.length + floor32(mem[ceil32(stor208[arg1].length) + 128]) + -(mem[ceil32(stor208[arg1].length) + 128] % 32) + 224 len mem[ceil32(stor208[arg1].length) + 128] % 32] = mem[ceil32(stor208[arg1].length) + floor32(mem[ceil32(stor208[arg1].length) + 128]) + -(mem[ceil32(stor208[arg1].length) + 128] % 32) + 192 len mem[ceil32(stor208[arg1].length) + 128] % 32]
    _1236 = mem[64]
    mem[64] = mem[ceil32(stor208[arg1].length) + 128] + ceil32(stor208[arg1].length) + ceil32(s) + baseURI.length + 192
    mem[mem[ceil32(stor208[arg1].length) + 128] + ceil32(stor208[arg1].length) + ceil32(s) + baseURI.length + 192] = 32
    mem[mem[ceil32(stor208[arg1].length) + 128] + ceil32(stor208[arg1].length) + ceil32(s) + baseURI.length + 224] = mem[_1236]
    _1249 = mem[_1236]
    mem[mem[ceil32(stor208[arg1].length) + 128] + ceil32(stor208[arg1].length) + ceil32(s) + baseURI.length + 256 len ceil32(mem[_1236])] = mem[_1236 + 32 len ceil32(mem[_1236])]
    if not _1249 % 32:
        return 32, mem[mem[ceil32(stor208[arg1].length) + 128] + ceil32(stor208[arg1].length) + ceil32(s) + baseURI.length + 224 len _1249 + 32], 
    mem[floor32(_1249) + mem[ceil32(stor208[arg1].length) + 128] + ceil32(stor208[arg1].length) + ceil32(s) + baseURI.length + 256] = mem[floor32(_1249) + mem[ceil32(stor208[arg1].length) + 128] + ceil32(stor208[arg1].length) + ceil32(s) + baseURI.length + -(_1249 % 32) + 288 len _1249 % 32]
    return 32, mem[mem[ceil32(stor208[arg1].length) + 128] + ceil32(stor208[arg1].length) + ceil32(s) + baseURI.length + 224 len floor32(_1249) + 64], 
}



}
