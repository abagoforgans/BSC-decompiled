contract main {




// =====================  Runtime code  =====================


#
#  - sub_6b58be3a(?)
#
address owner;
address sub_e0ee48fcAddress;
address sub_201242f7Address;
address burnAddr;
uint8 stor4; offset 160
uint128 stor4; offset 160
address sub_30267e74Address;
address sub_4fe3d943Address;
address sub_2cbc6cfcAddress;
uint256 sub_cbcfec9d;

function sub_201242f7(?) payable {
    return sub_201242f7Address
}

function sub_2cbc6cfc(?) payable {
    return sub_2cbc6cfcAddress
}

function sub_30267e74(?) payable {
    return sub_30267e74Address
}

function isOpen() payable {
    return bool(uint8(stor4.field_160))
}

function sub_4fe3d943(?) payable {
    return sub_4fe3d943Address
}

function owner() payable {
    return owner
}

function sub_cbcfec9d(?) payable {
    return sub_cbcfec9d
}

function burnAddr() payable {
    return burnAddr
}

function sub_e0ee48fc(?) payable {
    return sub_e0ee48fcAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_81401deb(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_cbcfec9d = arg1
}

function sub_19a02ebb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2cbc6cfcAddress = address(arg1)
}

function setIsOpen(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor4.field_160) = Mask(96, 0, arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_4b6813ef(?) payable {
    require calldata.size - 4 >= 64
    if 1 == arg1:
        require ext_code.size(sub_4fe3d943Address)
        staticcall sub_4fe3d943Address.0x5971359f with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
    else:
        require ext_code.size(sub_201242f7Address)
        staticcall sub_201242f7Address.0x64b7166f with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 256
        require bool(ceil32(return_data.size) + 608 <= test266151307())
    return ext_call.return_data[64]
}



}
