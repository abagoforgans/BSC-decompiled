contract main {




// =====================  Runtime code  =====================


address aggregatorAddress;

function aggregator() payable {
    return aggregatorAddress
}

function _fallback() payable {
    revert
}

function getPrice() payable {
    require ext_code.size(aggregatorAddress)
    staticcall aggregatorAddress.getReferenceData(string rg1, string rg2) with:
            gas gas_remaining wei
           args 0, 64, 128, 3, 0x424e420000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
