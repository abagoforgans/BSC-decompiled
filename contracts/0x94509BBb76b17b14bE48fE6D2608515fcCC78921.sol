contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_184889df(?) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(arg1)
    call arg1.ethToTokenTransferInput(uint256 rg1, uint256 rg2, address rg3) with:
       value arg2 wei
         gas gas_remaining wei
        args arg3, block.timestamp, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_5ece86a0(?) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(arg1)
    call arg1.tokenToEthTransferInput(uint256 rg1, uint256 rg2, uint256 rg3, address rg4) with:
         gas gas_remaining wei
        args 0, arg2, arg3, block.timestamp, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
