contract main {




// =====================  Runtime code  =====================


#
#  - sub_06d40efe(?)
#  - liquidateFlashloan(address arg1, address arg2, address arg3, address arg4, address arg5)
#  - sub_5719bfd3(?)
#  - pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_fdad5bc5(?)
#  - _fallback()
#
function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args 0xf8f181d466d44974257f9ccf0ce8398b7e059054, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
