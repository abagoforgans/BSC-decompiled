contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function run() {
    require ext_code.size(0x98f3d03609cd7a019eeeb0869ef74e453bf7eb93)
    staticcall 0x98f3d03609cd7a019eeeb0869ef74e453bf7eb93.0x5053e461 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x98f3d03609cd7a019eeeb0869ef74e453bf7eb93)
    staticcall 0x98f3d03609cd7a019eeeb0869ef74e453bf7eb93.0x900cf0cf with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        require ext_code.size(0x98f3d03609cd7a019eeeb0869ef74e453bf7eb93)
        call 0x98f3d03609cd7a019eeeb0869ef74e453bf7eb93.0x5e7858cc with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xa1c8c79d5481ac8f4c9c4ad45a11427b813eed78)
        staticcall 0xa1c8c79d5481ac8f4c9c4ad45a11427b813eed78.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xa1c8c79d5481ac8f4c9c4ad45a11427b813eed78)
        call 0xa1c8c79d5481ac8f4c9c4ad45a11427b813eed78.0xa9059cbb with:
             gas gas_remaining wei
            args 0x929648fa0dfc3637d55226ce5e3f75cae1566fce, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}



}
