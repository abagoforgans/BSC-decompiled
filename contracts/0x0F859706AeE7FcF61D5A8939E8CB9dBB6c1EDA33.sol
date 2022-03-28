contract main {




// =====================  Runtime code  =====================


#
#  - querySellQuoteToken(address arg1, uint256 arg2)
#
function _fallback() payable {
    revert
}

function querySellBaseToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.querySellBaseToken(uint256 rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
