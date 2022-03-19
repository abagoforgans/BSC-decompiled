contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    if not arg1:
        revert with 0, 'Address must not be null'
    owner = arg1
    emit OwnerChanged(arg1);
}



}
