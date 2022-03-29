contract main {




// =====================  Runtime code  =====================


address thisAddress;

function thisAddress() payable {
    return thisAddress
}

function _fallback() payable {
    revert
}

function sub_0a207715(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x72353a9117456985a3387cd3992d9f251517e1ad)
    staticcall 0x72353a9117456985a3387cd3992d9f251517e1ad.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x72353a9117456985a3387cd3992d9f251517e1ad)
    call 0x72353a9117456985a3387cd3992d9f251517e1ad.0xa9059cbb with:
         gas gas_remaining wei
        args 0x68a03b6c44a8c9002ead9d311b4bfa1e56d615be, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}



}
