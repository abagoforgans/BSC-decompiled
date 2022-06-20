contract main {




// =====================  Runtime code  =====================


address stor1;

function _fallback() payable {
    revert
}

function sub_6991d438(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == 0x2f56ff9f166a6928f45537f5097a33ff24338633
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}



}
