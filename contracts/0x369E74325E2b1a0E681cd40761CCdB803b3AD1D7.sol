contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function onTokenTransfer(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require ext_code.size(0x32dffc3fe8e3ef3571bf8a72c0d0015c5373f41d)
    staticcall 0x32dffc3fe8e3ef3571bf8a72c0d0015c5373f41d.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x32dffc3fe8e3ef3571bf8a72c0d0015c5373f41d)
    call 0x32dffc3fe8e3ef3571bf8a72c0d0015c5373f41d.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 0x3075e5ae20ed1f1ea4557b943dd2b94ea6d630ca, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
