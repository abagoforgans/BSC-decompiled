contract main {




// =====================  Runtime code  =====================


const FASTGAS = 0x87c695732d242c0d6b66ed8341ee30c8b5c4b8a7


function _fallback() payable {
    revert
}

function getQuoteLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x87c695732d242c0d6b66ed8341ee30c8b5c4b8a7)
    staticcall 0x87c695732d242c0d6b66ed8341ee30c8b5c4b8a7.0x50d25bcd with:
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
