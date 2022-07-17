contract main {




// =====================  Runtime code  =====================


array of uint256 sub_2763b8da;
address sub_2a0ed5ccAddress;
address paymentTokenAddress;
address stor3;
mapping of uint256 sub_37006c61;

function sub_2763b8da(?) {
    return sub_2763b8da[0 len sub_2763b8da.length]
}

function sub_2a0ed5cc(?) {
    return sub_2a0ed5ccAddress
}

function sub_37006c61(?) {
    require arg1 > 0
    return sub_37006c61[arg1]
}

function paymentTokenAddress() {
    return paymentTokenAddress
}

function _fallback() payable {
    revert
}

function payOrder(uint256 arg1, uint256 arg2) {
    require arg1 > 0
    require arg2 > 0
    require not sub_37006c61[arg1]
    require ext_code.size(stor3)
    call stor3.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, sub_2a0ed5ccAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_37006c61[arg1] = arg2
    emit 0xa4678e82: arg2, arg1, msg.sender
    return 1
}



}
