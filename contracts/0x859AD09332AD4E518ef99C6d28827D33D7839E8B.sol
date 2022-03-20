contract main {




// =====================  Runtime code  =====================


address sub_a7630045Address;
mapping of uint256 _balanceOf;
mapping of struct stor2;

function sub_a7630045(?) payable {
    return sub_a7630045Address
}

function _balanceOf(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return _balanceOf[arg1][arg2]
}

function _fallback() payable {
    revert
}

function oracleCallback(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if sub_a7630045Address != msg.sender:
        revert with 0, 'ERR_ONLY_ORCALIAZE'
    _balanceOf[stor2[arg1].field_0][stor2[arg1].field_256] = arg2
    return 1
}

function getBalance(uint256 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_a7630045Address)
    call sub_a7630045Address.0x26742272 with:
         gas gas_remaining wei
        args arg1, address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}



}
