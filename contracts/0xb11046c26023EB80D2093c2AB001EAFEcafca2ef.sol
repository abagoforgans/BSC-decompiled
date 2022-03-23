contract main {




// =====================  Runtime code  =====================


const FASTGAS = 0x47ecd537fb3d1547ff1786c984c75cf49e9f4c93


function _fallback() payable {
    revert
}

function getQuoteLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x47ecd537fb3d1547ff1786c984c75cf49e9f4c93)
    staticcall 0x47ecd537fb3d1547ff1786c984c75cf49e9f4c93.0x50d25bcd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        return 0
    if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
        revert with 0, 'mul: *'
    return (ext_call.return_data[0] * arg1)
}



}
