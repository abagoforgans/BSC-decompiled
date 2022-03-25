contract main {




// =====================  Runtime code  =====================


address chainlinkAddress;

function chainlink() payable {
    return chainlinkAddress
}

function _fallback() payable {
    revert
}

function getPrice() payable {
    require ext_code.size(chainlinkAddress)
    staticcall chainlinkAddress.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (10^10 * ext_call.return_data[0])
}



}
