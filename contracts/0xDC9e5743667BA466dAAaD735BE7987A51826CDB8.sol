contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
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

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[9804 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_1e0937ed(?) payable {
    require calldata.size - 4 >= 288
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 0
    require ext_code.size(arg2)
    staticcall arg2.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 0
    create2 contract with 0 wei
                    salt: sha3(arg1, arg2, arg4)
                    code: code.data[1468 len 8336]
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).0x90c8aa5c with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3, arg4, arg5, arg6, address(arg7), arg8, arg9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit NewSmartChefContract(address(create2.new_address));
}



}
