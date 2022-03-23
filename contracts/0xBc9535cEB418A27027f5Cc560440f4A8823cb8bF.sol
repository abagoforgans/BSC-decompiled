contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
const ROOT_ROLE = sha3(Mask(72, 184, 'ROOT_ROLE') >> 184)

const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = sha3(Mask(88, 168, 'MINTER_ROLE') >> 168)


address owner;
array of struct roleAdmin;
mapping of uint8 stor2;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor5;
mapping of address approved;
mapping of uint8 stor7;
array of uint256 name;
array of uint256 symbol;
mapping of struct stor10;
array of struct baseURI;
uint256 stor12;
mapping of address tokenCreator;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[Mask(32, 224, arg1)])
}

function name() payable {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor5[arg1]:
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
    if tokenOfOwnerByIndex[address(arg1)] <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenCreator(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor5[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[211 len 17]
    return tokenCreator[arg1]
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if tokenByIndex.length <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e456e756d657261626c654d61703a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1].field_0
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor5[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor5[arg1] - 1 < tokenByIndex.length
    return tokenByIndex[stor5[arg1] - 1].field_256
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

function owner() payable {
    return owner
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if roleAdmin[arg1].field_0 <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require arg2 < roleAdmin[arg1].field_0
    return roleAdmin[arg1][arg2].field_0
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
    return bool(stor7[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return not not roleAdmin[arg1][1][address(arg2)].field_0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor7[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setTokenCreator(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor5[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[211 len 17]
    tokenCreator[arg1] = arg2
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not roleAdmin['MINTER_ROLE'][1][address(arg1)].field_0:
        roleAdmin['MINTER_ROLE'].field_0++
        roleAdmin['MINTER_ROLE'][roleAdmin['MINTER_ROLE'].field_0].field_0 = arg1
        roleAdmin['MINTER_ROLE'][roleAdmin['MINTER_ROLE'].field_0].field_160 = 0
        roleAdmin['MINTER_ROLE'][1][address(arg1)].field_0 = roleAdmin['MINTER_ROLE'].field_0
        emit RoleGranted(sha3('MINTER_ROLE'), arg1, msg.sender);
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
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
                    0x73416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
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

function addRootRole() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit RoleAdminChanged(sha3('MINTER_ROLE'), roleAdmin['MINTER_ROLE'].field_512, sha3('ROOT_ROLE'));
    roleAdmin['MINTER_ROLE'].field_512 = sha3('ROOT_ROLE')
    if not roleAdmin['ROOT_ROLE'][1][address(msg.sender)].field_0:
        roleAdmin['ROOT_ROLE'].field_0++
        roleAdmin['ROOT_ROLE'][roleAdmin['ROOT_ROLE'].field_0].field_0 = msg.sender
        roleAdmin['ROOT_ROLE'][roleAdmin['ROOT_ROLE'].field_0].field_160 = 0
        roleAdmin['ROOT_ROLE'][1][address(msg.sender)].field_0 = roleAdmin['ROOT_ROLE'].field_0
        emit RoleGranted(sha3('ROOT_ROLE'), msg.sender, msg.sender);
    if not roleAdmin['MINTER_ROLE'][1][address(msg.sender)].field_0:
        roleAdmin['MINTER_ROLE'].field_0++
        roleAdmin['MINTER_ROLE'][roleAdmin['MINTER_ROLE'].field_0].field_0 = msg.sender
        roleAdmin['MINTER_ROLE'][roleAdmin['MINTER_ROLE'].field_0].field_160 = 0
        roleAdmin['MINTER_ROLE'][1][address(msg.sender)].field_0 = roleAdmin['MINTER_ROLE'].field_0
        emit RoleGranted(sha3('MINTER_ROLE'), msg.sender, msg.sender);
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
    if not stor5[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor5[arg2] - 1 < tokenByIndex.length
    if arg1 == tokenByIndex[stor5[arg2] - 1].field_256:
        revert with 0, 32, 33, 0x6e4552433732313a20617070726f76616c20746f2063757272656e74206f776e65, mem[293 len 31]
    if tokenByIndex[stor5[arg2] - 1].field_256 != msg.sender:
        if not stor7[stor4[stor5[arg2] - 1].field_256][address(msg.sender)]:
            revert with 0, 
                        32,
                        56,
                        0x654552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                        mem[316 len 8]
    approved[arg2] = arg1
    if not stor5[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor5[arg2] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor5[arg2] - 1].field_256, arg1, arg2);
}

function revokeMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not roleAdmin[roleAdmin['MINTER_ROLE'].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x6e416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
    if roleAdmin['MINTER_ROLE'][1][address(arg1)].field_0:
        require roleAdmin['MINTER_ROLE'].field_0 - 1 < roleAdmin['MINTER_ROLE'].field_0
        require roleAdmin['MINTER_ROLE'][1][address(arg1)].field_0 - 1 < roleAdmin['MINTER_ROLE'].field_0
        roleAdmin['MINTER_ROLE'][roleAdmin['MINTER_ROLE'][1][address(arg1)].field_0].field_0 = roleAdmin['MINTER_ROLE'][roleAdmin['MINTER_ROLE'].field_0].field_0
        roleAdmin['MINTER_ROLE'][1][roleAdmin['MINTER_ROLE'][roleAdmin['MINTER_ROLE'].field_0].field_0].field_0 = roleAdmin['MINTER_ROLE'][1][address(arg1)].field_0
        require roleAdmin['MINTER_ROLE'].field_0
        roleAdmin['MINTER_ROLE'][roleAdmin['MINTER_ROLE'].field_0].field_0 = 0
        roleAdmin['MINTER_ROLE'].field_0--
        roleAdmin['MINTER_ROLE'][1][address(arg1)].field_0 = 0
        emit RoleRevoked(sha3('MINTER_ROLE'), arg1, msg.sender);
}

function addNewTokenToCreator(string arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12++
    if not arg2:
        revert with 0, 'ERC721: mint to the zero address'
    if stor5[stor12]:
        revert with 0, 'ERC721: token already minted'
    if not tokenOfOwnerByIndex[address(arg2)][1][stor12]:
        tokenOfOwnerByIndex[address(arg2)]++
        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = stor12
        tokenOfOwnerByIndex[address(arg2)][1][stor12] = tokenOfOwnerByIndex[address(arg2)]
    if stor5[stor12]:
        require stor5[stor12] - 1 < tokenByIndex.length
        tokenByIndex[stor5[stor12] - 1].field_256 = arg2
        tokenByIndex[stor5[stor12] - 1].field_416 = 0
        emit Transfer(0, arg2, stor12);
        if not stor5[stor12]:
            revert with 0, 
                        32,
                        44,
                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                        mem[ceil32(arg1.length) + 240 len 20]
        stor10[stor12][].field_0 = Array(len=arg1.length, data=arg1[all])
        tokenCreator[stor12] = arg2
        mem[ceil32(arg1.length) + 128] = stor12
        return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length].field_0 = stor12
    tokenByIndex[tokenByIndex.length].field_256 = arg2
    tokenByIndex[tokenByIndex.length].field_416 = 0
    stor5[stor12] = tokenByIndex.length
    emit Transfer(0, arg2, stor12);
    if not stor5[stor12]:
        revert with 0, 
                    32,
                    44,
                    0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg1.length) + 304 len 20]
    stor10[stor12][].field_0 = Array(len=arg1.length, data=arg1[all])
    tokenCreator[stor12] = arg2
    return stor12
}

function addNewTokenToOwner(string arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12++
    if not arg3:
        revert with 0, 'ERC721: mint to the zero address'
    if stor5[stor12]:
        revert with 0, 'ERC721: token already minted'
    if not tokenOfOwnerByIndex[address(arg3)][1][stor12]:
        tokenOfOwnerByIndex[address(arg3)]++
        tokenOfOwnerByIndex[address(arg3)][tokenOfOwnerByIndex[address(arg3)]] = stor12
        tokenOfOwnerByIndex[address(arg3)][1][stor12] = tokenOfOwnerByIndex[address(arg3)]
    if stor5[stor12]:
        require stor5[stor12] - 1 < tokenByIndex.length
        tokenByIndex[stor5[stor12] - 1].field_256 = arg3
        tokenByIndex[stor5[stor12] - 1].field_416 = 0
        emit Transfer(0, arg3, stor12);
        if not stor5[stor12]:
            revert with 0, 
                        32,
                        44,
                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                        mem[ceil32(arg1.length) + 240 len 20]
        stor10[stor12][].field_0 = Array(len=arg1.length, data=arg1[all])
        tokenCreator[stor12] = arg2
        mem[ceil32(arg1.length) + 128] = stor12
        return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length].field_0 = stor12
    tokenByIndex[tokenByIndex.length].field_256 = arg3
    tokenByIndex[tokenByIndex.length].field_416 = 0
    stor5[stor12] = tokenByIndex.length
    emit Transfer(0, arg3, stor12);
    if not stor5[stor12]:
        revert with 0, 
                    32,
                    44,
                    0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg1.length) + 304 len 20]
    stor10[stor12][].field_0 = Array(len=arg1.length, data=arg1[all])
    tokenCreator[stor12] = arg2
    return stor12
}

function updateTokenMetadata(uint256 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if not stor5[arg1]:
        revert with 0, 
                    32,
                    44,
                    0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg2.length) + 240 len 20]
    if not stor5[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg2.length) + 201 len 23],
                    mem[ceil32(arg2.length) + 247 len 9]
    require stor5[arg1] - 1 < tokenByIndex.length
    if tokenByIndex[stor5[arg1] - 1].field_256 != msg.sender:
        if not stor5[arg1]:
            revert with 0, 
                        32,
                        44,
                        0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[ceil32(arg2.length) + 336 len 20]
        if approved[arg1] != msg.sender:
            if not stor7[stor4[stor5[arg1] - 1].field_256][address(msg.sender)]:
                revert with 0, 
                            32,
                            59,
                            0x7242636165784f776e65727368697056323a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[ceil32(arg2.length) + 351 len 5]
    if not stor5[arg1]:
        revert with 0, 
                    32,
                    47,
                    0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg2.length) + 339 len 17]
    if not stor5[arg1]:
        revert with 0, 
                    32,
                    44,
                    0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg2.length) + 336 len 20]
    stor10[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
    emit TokenURIUpdated(Array(len=arg2.length, data=arg2[all]), arg1);
}

function updateTokenMetadataOnlyOwner(uint256 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor5[arg1]:
        revert with 0, 
                    32,
                    47,
                    0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg2.length) + 243 len 17]
    if not stor5[arg1]:
        revert with 0, 
                    32,
                    44,
                    0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg2.length) + 240 len 20]
    stor10[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg2.length) + 128] = 32
    mem[ceil32(arg2.length) + 160] = arg2.length
    mem[ceil32(arg2.length) + 192 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit TokenURIUpdated(uint256 rg1, string rg2):
                             Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                             mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32],
                             Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256,
                             arg1,
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 192] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32]
        emit TokenURIUpdated(uint256 rg1, string rg2):
                             Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                             mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32],
                             Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                             mem[(2 * ceil32(arg2.length)) + 192 len floor32(arg2.length) + -ceil32(arg2.length) + 32],
                             arg1,
}

function addNewToken(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if not roleAdmin[Mask(88, -(8 * ceil32(arg1.length) + -arg1.length + 11) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffa8 + (8 * -ceil32(arg1.length)) + (8 * arg1.length) + 256][1][address(msg.sender)].field_0:
        revert with 0, 
                    32,
                    36,
                    0x646d7573742062652077686974656c697374656420746f2063726561746520746f6b656e,
                    mem[ceil32(arg1.length) + 232 len 28]
    stor12++
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if stor5[stor12]:
        revert with 0, 'ERC721: token already minted'
    if not tokenOfOwnerByIndex[address(msg.sender)][1][stor12]:
        tokenOfOwnerByIndex[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor12
        tokenOfOwnerByIndex[address(msg.sender)][1][stor12] = tokenOfOwnerByIndex[address(msg.sender)]
    if stor5[stor12]:
        require stor5[stor12] - 1 < tokenByIndex.length
        tokenByIndex[stor5[stor12] - 1].field_256 = msg.sender
        tokenByIndex[stor5[stor12] - 1].field_416 = 0
        emit Transfer(0, msg.sender, stor12);
        if not stor5[stor12]:
            revert with 0, 
                        32,
                        44,
                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                        mem[ceil32(arg1.length) + 240 len 20]
        stor10[stor12][].field_0 = Array(len=arg1.length, data=arg1[all])
        tokenCreator[stor12] = msg.sender
        mem[ceil32(arg1.length) + 128] = 0
        return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length].field_0 = stor12
    tokenByIndex[tokenByIndex.length].field_256 = msg.sender
    tokenByIndex[tokenByIndex.length].field_416 = 0
    stor5[stor12] = tokenByIndex.length
    emit Transfer(0, msg.sender, stor12);
    if not stor5[stor12]:
        revert with 0, 
                    32,
                    44,
                    0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg1.length) + 304 len 20]
    stor10[stor12][].field_0 = Array(len=arg1.length, data=arg1[all])
    tokenCreator[stor12] = msg.sender
    return 0
}

function deleteTokenOnlyOwner(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor5[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[211 len 17]
    if not stor5[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor5[arg1] - 1 < tokenByIndex.length
    approved[arg1] = 0
    if not stor5[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor5[arg1] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor5[arg1] - 1].field_256, 0, arg1);
    if Mask(255, 1, (256 * not stor10[arg1].field_0) - 1 and stor10[arg1].field_0):
        stor10[arg1].field_0 = 0
        if 31 < stor10[arg1].length:
            idx = 0
            while stor10[arg1].length + 31 / 32 > idx:
                stor10[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    if tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][arg1]:
        require tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256] - 1 < tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]
        require tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][arg1] - 1 < tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]
        tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][arg1]] = tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]]
        tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]]] = tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][arg1]
        require tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]
        tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]] = 0
        tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]--
        tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][arg1] = 0
    if stor5[arg1]:
        require tokenByIndex.length - 1 < tokenByIndex.length
        require stor5[arg1] - 1 < tokenByIndex.length
        tokenByIndex[stor5[arg1] - 1].field_0 = tokenByIndex[tokenByIndex.length - 1].field_0
        tokenByIndex[stor5[arg1] - 1].field_256 = tokenByIndex[tokenByIndex.length - 1].field_256
        stor5[stor4[stor4.length - 1].field_0] = stor5[arg1]
        require tokenByIndex.length
        tokenByIndex[tokenByIndex.length - 1].field_0 = 0
        tokenByIndex[tokenByIndex.length - 1].field_256 = 0
        tokenByIndex.length--
        stor5[arg1] = 0
    emit Transfer(tokenByIndex[stor5[arg1] - 1].field_256, 0, arg1);
    tokenCreator[arg1] = 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor5[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    if not stor5[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor5[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor5[arg3] - 1].field_256 != msg.sender:
        if not stor5[arg3]:
            revert with 0, 32, 44, 0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[304 len 20]
        if approved[arg3] != msg.sender:
            if not stor7[stor4[stor5[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[309 len 15]
    if not stor5[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor5[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor5[arg3] - 1].field_256 != arg1:
        revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[397 len 23]
    if not arg2:
        revert with 0, 32, 36, 0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[392 len 28]
    approved[arg3] = 0
    if not stor5[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[361 len 23],
                    mem[407 len 9]
    require stor5[arg3] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor5[arg3] - 1].field_256, 0, arg3);
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
    if stor5[arg3]:
        require stor5[arg3] - 1 < tokenByIndex.length
        tokenByIndex[stor5[arg3] - 1].field_256 = arg2
        tokenByIndex[stor5[arg3] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        tokenByIndex[tokenByIndex.length].field_256 = arg2
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor5[arg3] = tokenByIndex.length
    emit Transfer(arg1, arg2, arg3);
}

function deleteToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor5[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    if not stor5[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor5[arg1] - 1 < tokenByIndex.length
    if tokenByIndex[stor5[arg1] - 1].field_256 != msg.sender:
        if not stor5[arg1]:
            revert with 0, 32, 44, 0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[304 len 20]
        if approved[arg1] != msg.sender:
            if not stor7[stor4[stor5[arg1] - 1].field_256][address(msg.sender)]:
                revert with 0, 
                            32,
                            59,
                            0x7242636165784f776e65727368697056323a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[319 len 5]
    if not stor5[arg1]:
        revert with 0, 
                    32,
                    47,
                    0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[307 len 17]
    if not stor5[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor5[arg1] - 1 < tokenByIndex.length
    approved[arg1] = 0
    if not stor5[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[361 len 23],
                    mem[407 len 9]
    require stor5[arg1] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor5[arg1] - 1].field_256, 0, arg1);
    if Mask(255, 1, (256 * not stor10[arg1].field_0) - 1 and stor10[arg1].field_0):
        stor10[arg1].field_0 = 0
        if 31 < stor10[arg1].length:
            idx = 0
            while stor10[arg1].length + 31 / 32 > idx:
                stor10[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    if tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][arg1]:
        require tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256] - 1 < tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]
        require tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][arg1] - 1 < tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]
        tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][arg1]] = tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]]
        tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]]] = tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][arg1]
        require tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]
        tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]] = 0
        tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]--
        tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][arg1] = 0
    if stor5[arg1]:
        require tokenByIndex.length - 1 < tokenByIndex.length
        require stor5[arg1] - 1 < tokenByIndex.length
        tokenByIndex[stor5[arg1] - 1].field_0 = tokenByIndex[tokenByIndex.length - 1].field_0
        tokenByIndex[stor5[arg1] - 1].field_256 = tokenByIndex[tokenByIndex.length - 1].field_256
        stor5[stor4[stor4.length - 1].field_0] = stor5[arg1]
        require tokenByIndex.length
        tokenByIndex[tokenByIndex.length - 1].field_0 = 0
        tokenByIndex[tokenByIndex.length - 1].field_256 = 0
        tokenByIndex.length--
        stor5[arg1] = 0
    emit Transfer(tokenByIndex[stor5[arg1] - 1].field_256, 0, arg1);
    tokenCreator[arg1] = 0
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor5[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[211 len 17]
    mem[32] = 10
    mem[64] = ceil32(stor10[arg1].length) + 128
    mem[96] = stor10[arg1].length
    mem[128] = stor10[arg1].field_0
    idx = 128
    s = 0
    while stor10[arg1].length + 96 > idx:
        mem[idx + 32] = stor10[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not Mask(255, 1, (256 * not bool(baseURI.length)) - 1 and baseURI.length):
        var22001 = ceil32(stor10[arg1].length)
        return Array(len=stor10[arg1].length, data=mem[128 len stor10[arg1].length])
    if stor10[arg1].length > 0:
        mem[0] = 11
        mem[ceil32(stor10[arg1].length) + 160] = uint256(baseURI.field_0)
        idx = mem[64] + 32
        s = 0
        while ceil32(stor10[arg1].length) + baseURI.length + 128 > idx:
            mem[idx + 32] = baseURI[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor10[arg1].length) + baseURI.length + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[ceil32(stor10[arg1].length) + baseURI.length + floor32(mem[96]) + -(mem[96] % 32) + 192 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
        _1006 = mem[64]
        mem[64] = mem[96] + ceil32(stor10[arg1].length) + baseURI.length + 160
        mem[mem[96] + ceil32(stor10[arg1].length) + baseURI.length + 160] = 32
        mem[mem[96] + ceil32(stor10[arg1].length) + baseURI.length + 192] = mem[_1006]
        _1077 = mem[_1006]
        mem[mem[96] + ceil32(stor10[arg1].length) + baseURI.length + 224 len ceil32(mem[_1006])] = mem[_1006 + 32 len ceil32(mem[_1006])]
        if not _1077 % 32:
            return 32, mem[mem[96] + ceil32(stor10[arg1].length) + baseURI.length + 192 len _1077 + 32]
        mem[floor32(_1077) + mem[96] + ceil32(stor10[arg1].length) + baseURI.length + 224] = mem[floor32(_1077) + mem[96] + ceil32(stor10[arg1].length) + baseURI.length + -(_1077 % 32) + 256 len _1077 % 32]
        return 32, mem[mem[96] + ceil32(stor10[arg1].length) + baseURI.length + 192 len floor32(_1077) + 64]
    if not arg1:
        mem[64] = ceil32(stor10[arg1].length) + 192
        mem[ceil32(stor10[arg1].length) + 128] = 1
        mem[ceil32(stor10[arg1].length) + 160] = '0'
        mem[0] = 11
        mem[ceil32(stor10[arg1].length) + 224] = uint256(baseURI.field_0)
        idx = mem[64] + 32
        s = 0
        while ceil32(stor10[arg1].length) + baseURI.length + 192 > idx:
            mem[idx + 32] = baseURI[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor10[arg1].length) + baseURI.length + 224 len floor32(mem[ceil32(stor10[arg1].length) + 128])] = mem[ceil32(stor10[arg1].length) + 160 len floor32(mem[ceil32(stor10[arg1].length) + 128])]
        var31001 = ceil32(stor10[arg1].length) + floor32(mem[ceil32(stor10[arg1].length) + 128]) + 160
        mem[ceil32(stor10[arg1].length) + baseURI.length + floor32(mem[ceil32(stor10[arg1].length) + 128]) + -(mem[ceil32(stor10[arg1].length) + 128] % 32) + 256 len mem[ceil32(stor10[arg1].length) + 128] % 32] = mem[ceil32(stor10[arg1].length) + floor32(mem[ceil32(stor10[arg1].length) + 128]) + -(mem[ceil32(stor10[arg1].length) + 128] % 32) + 192 len mem[ceil32(stor10[arg1].length) + 128] % 32]
        _1002 = mem[64]
        mem[64] = mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + baseURI.length + 224
        mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + baseURI.length + 224] = 32
        mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + baseURI.length + 256] = mem[_1002]
        _1074 = mem[_1002]
        mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + baseURI.length + 288 len ceil32(mem[_1002])] = mem[_1002 + 32 len ceil32(mem[_1002])]
        if not _1074 % 32:
            return 32, mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + baseURI.length + 256 len _1074 + 32]
        mem[floor32(_1074) + mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + baseURI.length + 288] = mem[floor32(_1074) + mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + baseURI.length + -(_1074 % 32) + 320 len _1074 % 32]
        return 32, mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + baseURI.length + 256 len floor32(_1074) + 64], 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    mem[ceil32(stor10[arg1].length) + 128] = s
    mem[64] = ceil32(stor10[arg1].length) + ceil32(s) + 160
    if not s:
        t = s - 1
        idx = arg1
        while idx:
            require t < s
            mem[t + ceil32(stor10[arg1].length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[0] = 11
        mem[ceil32(stor10[arg1].length) + ceil32(s) + 192] = uint256(baseURI.field_0)
        t = mem[64] + 32
        u = 0
        while ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 160 > t:
            mem[t + 32] = baseURI[u].field_256
            t = t + 32
            u = u + 1
            continue 
        mem[ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 192 len floor32(mem[ceil32(stor10[arg1].length) + 128])] = mem[ceil32(stor10[arg1].length) + 160 len floor32(mem[ceil32(stor10[arg1].length) + 128])]
        mem[ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + floor32(mem[ceil32(stor10[arg1].length) + 128]) + -(mem[ceil32(stor10[arg1].length) + 128] % 32) + 224 len mem[ceil32(stor10[arg1].length) + 128] % 32] = mem[ceil32(stor10[arg1].length) + floor32(mem[ceil32(stor10[arg1].length) + 128]) + -(mem[ceil32(stor10[arg1].length) + 128] % 32) + 192 len mem[ceil32(stor10[arg1].length) + 128] % 32]
        _1232 = mem[64]
        mem[64] = mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 192
        mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 192] = 32
        mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 224] = mem[_1232]
        _1252 = mem[_1232]
        mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 256 len ceil32(mem[_1232])] = mem[_1232 + 32 len ceil32(mem[_1232])]
        if not _1252 % 32:
            return 32, mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 224 len _1252 + 32], 
        mem[floor32(_1252) + mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 256] = mem[floor32(_1252) + mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + -(_1252 % 32) + 288 len _1252 % 32]
        return 32, mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 224 len floor32(_1252) + 64], 
    mem[ceil32(stor10[arg1].length) + 160 len s] = code.data[20630 len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < s
        mem[t + ceil32(stor10[arg1].length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[0] = 11
    mem[ceil32(stor10[arg1].length) + ceil32(s) + 192] = uint256(baseURI.field_0)
    t = mem[64] + 32
    u = 0
    while ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 160 > t:
        mem[t + 32] = baseURI[u].field_256
        t = t + 32
        u = u + 1
        continue 
    mem[ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 192 len floor32(mem[ceil32(stor10[arg1].length) + 128])] = mem[ceil32(stor10[arg1].length) + 160 len floor32(mem[ceil32(stor10[arg1].length) + 128])]
    mem[ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + floor32(mem[ceil32(stor10[arg1].length) + 128]) + -(mem[ceil32(stor10[arg1].length) + 128] % 32) + 224 len mem[ceil32(stor10[arg1].length) + 128] % 32] = mem[ceil32(stor10[arg1].length) + floor32(mem[ceil32(stor10[arg1].length) + 128]) + -(mem[ceil32(stor10[arg1].length) + 128] % 32) + 192 len mem[ceil32(stor10[arg1].length) + 128] % 32]
    _1236 = mem[64]
    mem[64] = mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 192
    mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 192] = 32
    mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 224] = mem[_1236]
    _1255 = mem[_1236]
    mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 256 len ceil32(mem[_1236])] = mem[_1236 + 32 len ceil32(mem[_1236])]
    if not _1255 % 32:
        return 32, mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 224 len _1255 + 32], 
    mem[floor32(_1255) + mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 256] = mem[floor32(_1255) + mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + -(_1255 % 32) + 288 len _1255 % 32]
    return 32, mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 224 len floor32(_1255) + 64], 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor5[arg3]:
        revert with 0, 32, 44, 0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
    if not stor5[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[201 len 23],
                    mem[247 len 9]
    require stor5[arg3] - 1 < tokenByIndex.length
    if msg.sender == tokenByIndex[stor5[arg3] - 1].field_256:
        if not stor5[arg3]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[297 len 23],
                        mem[343 len 9]
        require stor5[arg3] - 1 < tokenByIndex.length
        if tokenByIndex[stor5[arg3] - 1].field_256 != arg1:
            revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
        if not arg2:
            revert with 0, 32, 36, 0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
        approved[arg3] = 0
        if not stor5[arg3]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[393 len 23],
                        mem[439 len 9]
        require stor5[arg3] - 1 < tokenByIndex.length
        emit Approval(tokenByIndex[stor5[arg3] - 1].field_256, 0, arg3);
        if tokenOfOwnerByIndex[address(arg1)][1][arg3]:
            require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
            require tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 < tokenOfOwnerByIndex[address(arg1)]
            tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)][1][arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
            tokenOfOwnerByIndex[address(arg1)][1][tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]] = tokenOfOwnerByIndex[address(arg1)][1][arg3]
            require tokenOfOwnerByIndex[address(arg1)]
            tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
            tokenOfOwnerByIndex[address(arg1)]--
            tokenOfOwnerByIndex[address(arg1)][1][arg3] = 0
        if tokenOfOwnerByIndex[address(arg2)][1][arg3]:
            if stor5[arg3]:
                require stor5[arg3] - 1 < tokenByIndex.length
                tokenByIndex[stor5[arg3] - 1].field_256 = arg2
                tokenByIndex[stor5[arg3] - 1].field_416 = 0
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2) > 0:
                    if ext_code.size(arg2) <= 0:
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
                                    0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[694 len 14],
                                    Mask(144, -256, mem[694 len 14]) << 256
                    mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[694 len 14],
                                    Mask(144, -256, mem[694 len 14]) << 256
                    require return_data.size >= 32
                    if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[ceil32(return_data.size) + 827 len 14]
            else:
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = arg3
                tokenByIndex[tokenByIndex.length].field_256 = arg2
                tokenByIndex[tokenByIndex.length].field_416 = 0
                stor5[arg3] = tokenByIndex.length
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2) > 0:
                    if ext_code.size(arg2) <= 0:
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
                                    0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[758 len 14],
                                    Mask(144, -256, mem[758 len 14]) << 256
                    mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[758 len 14],
                                    Mask(144, -256, mem[758 len 14]) << 256
                    require return_data.size >= 32
                    if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[ceil32(return_data.size) + 891 len 14]
        else:
            tokenOfOwnerByIndex[address(arg2)]++
            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
            tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
            if stor5[arg3]:
                require stor5[arg3] - 1 < tokenByIndex.length
                tokenByIndex[stor5[arg3] - 1].field_256 = arg2
                tokenByIndex[stor5[arg3] - 1].field_416 = 0
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2) > 0:
                    if ext_code.size(arg2) <= 0:
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
                                    0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[694 len 14],
                                    Mask(144, -256, mem[694 len 14]) << 256
                    mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[694 len 14],
                                    Mask(144, -256, mem[694 len 14]) << 256
                    require return_data.size >= 32
                    if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[ceil32(return_data.size) + 827 len 14]
            else:
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = arg3
                tokenByIndex[tokenByIndex.length].field_256 = arg2
                tokenByIndex[tokenByIndex.length].field_416 = 0
                stor5[arg3] = tokenByIndex.length
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2) > 0:
                    if ext_code.size(arg2) <= 0:
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
                                    0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[758 len 14],
                                    Mask(144, -256, mem[758 len 14]) << 256
                    mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[758 len 14],
                                    Mask(144, -256, mem[758 len 14]) << 256
                    require return_data.size >= 32
                    if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[ceil32(return_data.size) + 891 len 14]
    else:
        if not stor5[arg3]:
            revert with 0, 32, 44, 0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[336 len 20]
        if approved[arg3] == msg.sender:
            if not stor5[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[297 len 23],
                            mem[343 len 9]
            require stor5[arg3] - 1 < tokenByIndex.length
            if tokenByIndex[stor5[arg3] - 1].field_256 != arg1:
                revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
            if not arg2:
                revert with 0, 32, 36, 0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
            approved[arg3] = 0
            if not stor5[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[393 len 23],
                            mem[439 len 9]
            require stor5[arg3] - 1 < tokenByIndex.length
            emit Approval(tokenByIndex[stor5[arg3] - 1].field_256, 0, arg3);
            if not tokenOfOwnerByIndex[address(arg1)][1][arg3]:
                if tokenOfOwnerByIndex[address(arg2)][1][arg3]:
                    if stor5[arg3]:
                        require stor5[arg3] - 1 < tokenByIndex.length
                        tokenByIndex[stor5[arg3] - 1].field_256 = arg2
                        tokenByIndex[stor5[arg3] - 1].field_416 = 0
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if ext_code.size(arg2) <= 0:
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
                                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 827 len 14]
                    else:
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = arg3
                        tokenByIndex[tokenByIndex.length].field_256 = arg2
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        stor5[arg3] = tokenByIndex.length
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if ext_code.size(arg2) <= 0:
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
                                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 891 len 14]
                else:
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
                    if stor5[arg3]:
                        require stor5[arg3] - 1 < tokenByIndex.length
                        tokenByIndex[stor5[arg3] - 1].field_256 = arg2
                        tokenByIndex[stor5[arg3] - 1].field_416 = 0
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if ext_code.size(arg2) <= 0:
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
                                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 827 len 14]
                    else:
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = arg3
                        tokenByIndex[tokenByIndex.length].field_256 = arg2
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        stor5[arg3] = tokenByIndex.length
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if ext_code.size(arg2) <= 0:
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
                                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
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
                if stor5[arg3]:
                    require stor5[arg3] - 1 < tokenByIndex.length
                    tokenByIndex[stor5[arg3] - 1].field_256 = arg2
                    tokenByIndex[stor5[arg3] - 1].field_416 = 0
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        if ext_code.size(arg2) <= 0:
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
                                        0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[694 len 14],
                                        Mask(144, -256, mem[694 len 14]) << 256
                        mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[694 len 14],
                                        Mask(144, -256, mem[694 len 14]) << 256
                        require return_data.size >= 32
                        if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 827 len 14]
                else:
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = arg3
                    tokenByIndex[tokenByIndex.length].field_256 = arg2
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    stor5[arg3] = tokenByIndex.length
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        if ext_code.size(arg2) <= 0:
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
                                        0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[758 len 14],
                                        Mask(144, -256, mem[758 len 14]) << 256
                        mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[758 len 14],
                                        Mask(144, -256, mem[758 len 14]) << 256
                        require return_data.size >= 32
                        if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 891 len 14]
        else:
            if not stor7[stor4[stor5[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[341 len 15]
            if not stor5[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[297 len 23],
                            mem[343 len 9]
            require stor5[arg3] - 1 < tokenByIndex.length
            if tokenByIndex[stor5[arg3] - 1].field_256 != arg1:
                revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
            if not arg2:
                revert with 0, 32, 36, 0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
            approved[arg3] = 0
            if not stor5[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[393 len 23],
                            mem[439 len 9]
            require stor5[arg3] - 1 < tokenByIndex.length
            emit Approval(tokenByIndex[stor5[arg3] - 1].field_256, 0, arg3);
            if not tokenOfOwnerByIndex[address(arg1)][1][arg3]:
                if tokenOfOwnerByIndex[address(arg2)][1][arg3]:
                    if stor5[arg3]:
                        require stor5[arg3] - 1 < tokenByIndex.length
                        tokenByIndex[stor5[arg3] - 1].field_256 = arg2
                        tokenByIndex[stor5[arg3] - 1].field_416 = 0
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if ext_code.size(arg2) <= 0:
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
                                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 827 len 14]
                    else:
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = arg3
                        tokenByIndex[tokenByIndex.length].field_256 = arg2
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        stor5[arg3] = tokenByIndex.length
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if ext_code.size(arg2) <= 0:
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
                                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 891 len 14]
                else:
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
                    if stor5[arg3]:
                        require stor5[arg3] - 1 < tokenByIndex.length
                        tokenByIndex[stor5[arg3] - 1].field_256 = arg2
                        tokenByIndex[stor5[arg3] - 1].field_416 = 0
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if ext_code.size(arg2) <= 0:
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
                                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 827 len 14]
                    else:
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = arg3
                        tokenByIndex[tokenByIndex.length].field_256 = arg2
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        stor5[arg3] = tokenByIndex.length
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if ext_code.size(arg2) <= 0:
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
                                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
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
                if stor5[arg3]:
                    require stor5[arg3] - 1 < tokenByIndex.length
                    tokenByIndex[stor5[arg3] - 1].field_256 = arg2
                    tokenByIndex[stor5[arg3] - 1].field_416 = 0
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        if ext_code.size(arg2) <= 0:
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
                                        0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[694 len 14],
                                        Mask(144, -256, mem[694 len 14]) << 256
                        mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[694 len 14],
                                        Mask(144, -256, mem[694 len 14]) << 256
                        require return_data.size >= 32
                        if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 827 len 14]
                else:
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = arg3
                    tokenByIndex[tokenByIndex.length].field_256 = arg2
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    stor5[arg3] = tokenByIndex.length
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        if ext_code.size(arg2) <= 0:
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
                                        0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[758 len 14],
                                        Mask(144, -256, mem[758 len 14]) << 256
                        mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[758 len 14],
                                        Mask(144, -256, mem[758 len 14]) << 256
                        require return_data.size >= 32
                        if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 891 len 14]
}



}
