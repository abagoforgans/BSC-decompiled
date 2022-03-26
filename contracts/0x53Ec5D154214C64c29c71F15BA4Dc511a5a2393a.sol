contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_030e7a33(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return block.number << 128, 
           block.timestamp << 128,
           ext_call.return_data[0] << 144,
           ext_call.return_data[32] << 144,
           uint32(ext_call.return_data[64])
}



}
