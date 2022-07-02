contract main {




// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
    delegate stor0 with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    require delegate.return_code
    return ext_call.return_data[0 len return_data.size]
}



}
