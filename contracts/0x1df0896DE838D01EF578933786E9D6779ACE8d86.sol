contract main {




// =====================  Runtime code  =====================


address sub_12e1c10fAddress;

function sub_12e1c10f(?) payable {
    return sub_12e1c10fAddress
}

function _fallback() payable {
    revert
}

function sub_6ddd0ded(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return 1
}

function sub_4586c7ad(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return 1
}

function sub_f7791817(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_12e1c10fAddress != address(arg1):
        return 0
    require ext_code.size(sub_12e1c10fAddress)
    staticcall sub_12e1c10fAddress.0x7d1db4a5 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
