contract main {




// =====================  Runtime code  =====================


address sub_47f66f6bAddress;
address thisAddress;

function sub_47f66f6b(?) payable {
    return sub_47f66f6bAddress
}

function thisAddress() payable {
    return thisAddress
}

function _fallback() payable {
    revert
}

function sub_acd29b93(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 0xa9904d4998d8a5f846cf77e72f1fe8e4014f0831, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}



}
