contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function changeTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    stor1 = arg1
}

function setAllowance(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    call stor1.0x39509351 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function transferFrom(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approve(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
