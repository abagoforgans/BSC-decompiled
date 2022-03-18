contract main {




// =====================  Runtime code  =====================


address _OWNER_;
uint256 price;

function _OWNER_() payable {
    return _OWNER_
}

function tokenPrice() payable {
    return price
}

function getPrice() payable {
    return price
}

function _fallback() payable {
    revert
}

function setPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    price = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    if not arg1:
        revert with 0, 'INVALID_OWNER'
    emit OwnershipTransfer(_OWNER_, arg1);
    _OWNER_ = arg1
}



}
