contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_756db8c6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if uint32(ext_code.size(arg1)) > 0:
        require ext_code.size(address(arg1))
        call address(arg1).0xc590a95 with:
             gas gas_remaining wei
            args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
    return 1
}



}
