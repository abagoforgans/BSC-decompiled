contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint256 referrals;

function referrals(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return referrals[arg1]
}

function _fallback() payable {
    revert
}

function getMintFee() {
    require ext_code.size(stor0)
    staticcall stor0.0x145f3c27 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_132621d3(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require ext_code.size(stor0)
    call stor0.0x8ebf3dd3 with:
       value msg.value wei
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Referral(arg2, address(arg3), address(arg1));
    if referrals[address(arg3)] > !arg2:
        revert with 0, 17
    referrals[address(arg3)] += arg2
}



}
