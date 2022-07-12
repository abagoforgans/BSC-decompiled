contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function transfer(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    call 0xe2ebe6e2358720e5baffecd8d06dd505dd4e898f.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function transferFrom(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    call 0xe2ebe6e2358720e5baffecd8d06dd505dd4e898f.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
