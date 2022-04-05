contract main {




// =====================  Runtime code  =====================


address _OWNER_;
uint8 stor1; offset 160
uint8 stor1; offset 168
address _NEW_OWNER_;
mapping of uint8 stor2;
mapping of uint8 stor3;

function _OWNER_() payable {
    return _OWNER_
}

function _WHITELIST_MODE_ON_() payable {
    return bool(uint8(stor1.field_168))
}

function _NEW_OWNER_() payable {
    return _NEW_OWNER_
}

function _fallback() payable {
    revert
}

function openWhitelistMode() payable {
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    uint8(stor1.field_168) = 1
}

function openBlacklistMode() payable {
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    uint8(stor1.field_168) = 0
}

function addToBlacklist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    stor3[address(arg1)] = 1
}

function addToWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    stor2[address(arg1)] = 1
}

function claimOwnership() payable {
    if _NEW_OWNER_ != msg.sender:
        revert with 0, 'INVALID_CLAIM'
    emit OwnershipTransferred(_OWNER_, _NEW_OWNER_);
    _OWNER_ = _NEW_OWNER_
    _NEW_OWNER_ = 0
}

function removeFromBlacklist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    stor3[address(arg1)] = 0
}

function removeFromWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    stor2[address(arg1)] = 0
}

function isAllowed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor1.field_168):
        return not bool(stor3[address(arg1)])
    return bool(stor2[address(arg1)])
}

function initOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor1.field_160):
        revert with 0, 'DODO_INITIALIZED'
    uint8(stor1.field_160) = 1
    _OWNER_ = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    emit OwnershipTransferPrepared(_OWNER_, arg1);
    _NEW_OWNER_ = arg1
}



}
