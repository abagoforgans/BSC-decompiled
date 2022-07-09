contract main {




// =====================  Runtime code  =====================


address sub_181fc0a1Address;
address stor1;

function sub_181fc0a1(?) payable {
    return sub_181fc0a1Address
}

function _fallback() payable {
    revert
}

function sub_f23b05f1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return eth.balance(arg1)
}

function sub_f86e7bc8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(sub_181fc0a1Address)
    staticcall sub_181fc0a1Address.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_d748884a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(sub_181fc0a1Address)
    staticcall sub_181fc0a1Address.0xdd62ed3e with:
            gas gas_remaining wei
           args address(arg1), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_5ab9b880(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require msg.sender == stor1
    require ext_code.size(sub_181fc0a1Address)
    call sub_181fc0a1Address.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), 0x5de7470505f785a8a4aa571a71f0471cc816ccc3, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
