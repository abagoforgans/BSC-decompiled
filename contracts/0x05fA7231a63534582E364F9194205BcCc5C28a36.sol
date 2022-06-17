contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;

function owner() payable {
    return owner
}

function newOwner() payable {
    return newOwner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    newOwner = arg1
}

function acceptOwnership() payable {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}



}
