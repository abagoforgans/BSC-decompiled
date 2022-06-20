contract main {




// =====================  Runtime code  =====================


#
#  - sub_02a242da(?)
#  - sub_ce62ccfe(?)
#
address owner;
uint256 NONCE;
mapping of uint8 stor2;
array of address userLockIDForTokenAtIndex;
mapping of struct lOCKS;

function getUserLockIDForTokenAtIndex(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if arg3 >= uint256(userLockIDForTokenAtIndex[address(arg1)][2][address(arg2)]):
        revert with 0, 50
    return uint256(userLockIDForTokenAtIndex[address(arg1)][2][address(arg2)][arg3])
}

function owner() payable {
    return owner
}

function getUserLockedTokenAtIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= uint256(userLockIDForTokenAtIndex[address(arg1)]):
        revert with 0, 50
    return address(userLockIDForTokenAtIndex[address(arg1)][arg2])
}

function getUserLockedTokensLength(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint256(userLockIDForTokenAtIndex[address(arg1)])
}

function getUserLocksForTokenLength(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return uint256(userLockIDForTokenAtIndex[address(arg1)][2][address(arg2)])
}

function LOCKS(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return lOCKS[arg1].field_0, 
           lOCKS[arg1].field_256,
           lOCKS[arg1].field_512,
           lOCKS[arg1].field_768,
           lOCKS[arg1].field_1024,
           lOCKS[arg1].field_1280,
           lOCKS[arg1].field_1536
}

function sub_d6704577(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor2[arg1])
}

function NONCE() payable {
    return NONCE
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function transferLockOwnership(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if lOCKS[arg1].field_1536 != msg.sender:
        revert with 0, 'OWNER'
    if arg2 == msg.sender:
        revert with 0, 'SELF'
    lOCKS[stor1].field_0 = NONCE
    lOCKS[stor1].field_256 = lOCKS[arg1].field_256
    lOCKS[stor1].field_512 = lOCKS[arg1].field_512
    lOCKS[stor1].field_768 = lOCKS[arg1].field_768
    lOCKS[stor1].field_1024 = lOCKS[arg1].field_1024
    lOCKS[stor1].field_1280 = lOCKS[arg1].field_1280
    lOCKS[stor1].field_1536 = arg2
    if not uint256(userLockIDForTokenAtIndex[address(arg2)][1][stor4[arg1].field_1280]):
        uint256(userLockIDForTokenAtIndex[address(arg2)])++
        uint256(userLockIDForTokenAtIndex[address(arg2)][uint256(userLockIDForTokenAtIndex[address(arg2)])]) = lOCKS[arg1].field_1280
        uint256(userLockIDForTokenAtIndex[address(arg2)][1][stor4[arg1].field_1280]) = uint256(userLockIDForTokenAtIndex[address(arg2)])
    uint256(userLockIDForTokenAtIndex[address(arg2)][2][stor4[arg1].field_1280])++
    uint256(userLockIDForTokenAtIndex[address(arg2)][2][stor4[arg1].field_1280][uint256(userLockIDForTokenAtIndex[address(arg2)][2][stor4[arg1].field_1280])]) = NONCE
    if NONCE == -1:
        revert with 0, 17
    NONCE++
    lOCKS[arg1].field_512 = lOCKS[arg1].field_256
    emit 0x526b482e: arg1, NONCE, msg.sender, arg2
}

function vestedAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not lOCKS[arg1].field_768:
        if block.timestamp < lOCKS[arg1].field_1024:
            return 0
        if lOCKS[arg1].field_256 < lOCKS[arg1].field_512:
            revert with 0, 17
        return (lOCKS[arg1].field_256 - lOCKS[arg1].field_512)
    if block.timestamp < lOCKS[arg1].field_768:
        return 0
    if block.timestamp > lOCKS[arg1].field_1024:
        if lOCKS[arg1].field_256 < lOCKS[arg1].field_512:
            revert with 0, 17
        return (lOCKS[arg1].field_256 - lOCKS[arg1].field_512)
    if lOCKS[arg1].field_256 == lOCKS[arg1].field_512:
        return 0
    if lOCKS[arg1].field_1024 < lOCKS[arg1].field_768:
        revert with 0, 17
    if block.timestamp < lOCKS[arg1].field_768:
        revert with 0, 17
    if lOCKS[arg1].field_256 and block.timestamp - lOCKS[arg1].field_768 > -1 / lOCKS[arg1].field_256:
        revert with 0, 17
    if not lOCKS[arg1].field_1024 - lOCKS[arg1].field_768:
        revert with 0, 18
    if (block.timestamp * lOCKS[arg1].field_256) - (lOCKS[arg1].field_768 * lOCKS[arg1].field_256) / lOCKS[arg1].field_1024 - lOCKS[arg1].field_768 < lOCKS[arg1].field_512:
        revert with 0, 17
    return (((block.timestamp * lOCKS[arg1].field_256) - (lOCKS[arg1].field_768 * lOCKS[arg1].field_256) / lOCKS[arg1].field_1024 - lOCKS[arg1].field_768) - lOCKS[arg1].field_512)
}



}
