contract main {




// =====================  Runtime code  =====================


address registryAddress;

function registry() payable {
    return registryAddress
}

function _fallback() payable {
    revert
}

function sub_97be07d2(?) payable {
    require calldata.size - 4 >= 64
    create contract with 0 wei
                    code: code.data[672 len 5579], msg.sender, address(arg1), arg2
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(registryAddress)
    call registryAddress.0xe909ebfa with:
         gas gas_remaining wei
        args msg.sender, address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Created(address(create.new_address));
}



}
