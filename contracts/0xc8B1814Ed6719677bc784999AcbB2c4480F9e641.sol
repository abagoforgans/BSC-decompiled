contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function getHistoricalPrice(uint80 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    staticcall stor0.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if ext_call.return_data[32] <= 0:
        revert with 0, 'BNB price is negative'
    require ext_code.size(stor0)
    staticcall stor0.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (100 * Mask(80, 0, arg1) * ext_call.return_data[32] * 10^ext_call.return_data[31 len 1] / 100)
}



}
