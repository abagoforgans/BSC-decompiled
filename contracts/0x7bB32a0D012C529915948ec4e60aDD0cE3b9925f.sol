contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address stor0;
address owner; offset 8
mapping of uint8 stor1;
mapping of address stor2;
address stor3;

function paused() payable {
    return bool(uint8(stor0.field_0))
}

function owner() payable {
    return owner
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

function sub_a03738dc(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor0.field_0):
        revert with 0, 'Pausable: paused'
    uint8(stor0.field_0) = 1
    emit Paused(msg.sender);
}

function sub_9319106b(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor0.field_0):
        revert with 0, 'Pausable: not paused'
    uint8(stor0.field_0) = 0
    emit Unpaused(msg.sender);
}

function sub_1e62d800(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor2[arg1]:
        revert with 0, 'buycity: invalid token name'
    stor1[arg1] = uint8(bool(arg2))
}

function sub_549c62f1(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor2[arg1]:
        revert with 0, 'buycity: token name duplicated'
    if not address(arg2):
        revert with 0, 'buycity: invalid token address'
    stor2[arg1] = address(arg2)
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

function sub_26f2e5cb(?) payable {
    require calldata.size - 4 >= 64
    if uint8(stor0.field_0):
        revert with 0, 'Pausable: paused'
    if not stor2[arg1]:
        revert with 0, 'buycity: invalid token name'
    if stor1[arg1]:
        revert with 0, 'buycity: token is paused'
    call stor2[arg1].0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(stor0.field_0), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor3)
    call stor3.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
