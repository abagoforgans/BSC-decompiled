contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function transfer(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    call 0xe2ebe6e2358720e5baffecd8d06dd505dd4e898f.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(msg.sender)
    call msg.sender.transferFrom(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
