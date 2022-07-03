contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    if call.func_hash == 0xa619486e00000000000000000000000000000000000000000000000000000000:
        return stor0
    delegate stor0 with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}



}
