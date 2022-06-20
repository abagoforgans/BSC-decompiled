contract main {




// =====================  Runtime code  =====================


#
#  - sub_7e10e1a6(?)
#
uint8 stor0;
address stor0; offset 8
address owner;
address masterContractAddress;
address sub_116f71acAddress;

function sub_116f71ac(?) payable {
    return sub_116f71acAddress
}

function owner() payable {
    return owner
}

function masterContract() payable {
    return masterContractAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        if owner:
            revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 1);
    uint8(stor0.field_0) = 1
    Mask(152, 0, stor0.field_8) = 0
}

function sub_bd023c1d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if owner:
            revert with 0, 'Ownable: caller is not the owner'
    masterContractAddress = address(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if owner:
            revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    if 1 == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}



}
