contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint256 stor1;
uint256 stor4;
address owner;
address stor8;

function owner() payable {
    return owner
}

function sub_ffd77b4d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor0[address(arg1)])
}

function _fallback() payable {
    revert
}

function getBalance() payable {
    require ext_code.size(stor8)
    staticcall stor8.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_2b3c640e(?) payable {
    require ext_code.size(stor8)
    staticcall stor8.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_3e3f2359(?) payable {
    if owner != msg.sender:
        revert with 0, 'No tiene acceso a esta funcion'
    require ext_code.size(stor8)
    staticcall stor8.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor8)
    call stor8.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function sub_c07eab3b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 != stor4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'La cantidad que quiere depositar no es valida'
    require ext_code.size(stor8)
    staticcall stor8.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[0] >= arg1
    require ext_code.size(stor8)
    call stor8.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    if stor1[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    stor1[address(msg.sender)] += arg1
    stor0[address(msg.sender)] = 1
    return 1
}



}
